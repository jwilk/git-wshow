#!/usr/bin/env perl

# Copyright © 2017-2019 Jakub Wilk <jwilk@jwilk.net>
# SPDX-License-Identifier: MIT

no lib '.';  # CVE-2016-1238

use strict;
use warnings;

use English qw(-no_match_vars);
use File::Temp ();
use FindBin ();
use Cwd ();

use autodie qw(open close symlink);

use Test::More;

use IPC::System::Simple qw(capture system);

my $basedir = "$FindBin::Bin/..";
$basedir = Cwd::realpath($basedir);

my $filter = qr/^/;
if (@ARGV) {
    my $r = join('|', map { quotemeta } @ARGV);
    $filter = qr{/(?:$r)\z};
}

my %rules = ();
my %coverage = ();
my %tests = ();

my @data_files = glob("$basedir/data/*");
for my $path (@data_files) {
    $path =~ $filter or next;
    my $section = '';
    my $prev_line = '';
    open(my $fh, '<', $path);
    while (defined(my $line = <$fh>)) {
        chomp $line;
        if ($line =~ /^(?:#|\s*$)/) {
            next;
        }
        if ($line eq '[rules]') {
            if ($section eq '') {
                $section = 'rules';
                $prev_line = '';
                next;
            } else {
                die "$path:$NR: unexpected section [rules]";
            }
        }
        if ($line eq '[tests]') {
            if ($section eq 'rules') {
                $section = 'tests';
                $prev_line = '';
                next;
            } else {
                die "$path:$NR: unexpected section [tests]";
            }
        }
        if ($line =~ /^(\[.+\])$/) {
            die "$path:$NR: unexpected section $1";
        }
        if ($section eq 'rules') {
            if ($line =~ /(\w\S*) = (\w\S*)$/) {
                if ($line le $prev_line) {
                   die "$path:$NR: unsorted lines";
                }
                $prev_line = $line;
                my ($src, $dst) = ($1, $2);
                if (exists $rules{$src}) {
                   die "$path:$NR: duplicate $src";
                };
                $rules{$src} = $dst;
                $coverage{$src} = 0;
                next;
            }
        }
        if ($section eq 'tests') {
            if ($line =~ m/^(\w\S*) = (?:(\w\S*)|[(]TODO[)])$/) {
                if ($line le $prev_line) {
                   die "$path:$NR: unsorted lines";
                }
                my ($src, $dst) = ($1, $2);
                $tests{$src} = $dst;
                next;
            }
        }
        die "$path:$NR: syntax error";
    }
    close($fh);
}

plan tests => (keys %tests) + (keys %coverage);

my $tmpdir = File::Temp->newdir(TEMPLATE => 'git-wshow.test.XXXXXX', TMPDIR => 1);

system('git', 'init', "$tmpdir/repo");
my @gitcmd = ('git', '-C', "$tmpdir/repo");
system(@gitcmd, 'commit', '-m', '', '--allow-empty', '--allow-empty-message');
system(@gitcmd, 'remote', 'add', 'origin', 'git://example.org/');
my $fake_commit = capture(@gitcmd, 'rev-parse', 'HEAD');
chomp $fake_commit;

while (my ($repo, $url) = each %tests) {
    for my $url_template (keys %rules) {
        my $url_re = quotemeta $url_template;
        $url_re =~ s{\\[*]}{.*}g;
        if ($repo =~ qr{\A$url_re\z$}) {
            $coverage{$url_template} += 1;
        }
    }
    if (defined $url) {
        $url =~ s/\b[0-9a-f]{40}\b/$fake_commit/ or
        $url =~ s/[0-9a-f]{40}\z/$fake_commit/;
        system(@gitcmd, 'remote', 'set-url', 'origin', $repo);
        my $actual_url;
        {
            local $ENV{BROWSER} = 'echo';
            local $ENV{http_proxy} = local $ENV{https_proxy} = 'http://127.0.0.1:9';  # paranoia
            local $ENV{DISPLAY} = '';  # more paranoia
            local $ENV{PATH} = "$basedir:$ENV{PATH}";
            $actual_url = capture(@gitcmd, 'wshow', $fake_commit);
        }
        chomp $actual_url;
        cmp_ok($actual_url, 'eq', $url, "URL for $repo");
    } else {
        local $TODO = "URL for $repo";
        ok(0);
    }
}
while (my ($rule, $covered) = each %coverage) {
    cmp_ok($covered, '==', 1, "coverage for $rule");
}

# vim:ts=4 sts=4 sw=4 et
