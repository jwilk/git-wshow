[rules]
git://thyrsus.com/repositories/* = http://thyrsus.com/gitweb/?p=$repo.git;a=commitdiff;h=$commit

[tests]
git://thyrsus.com/repositories/ascii.git = http://thyrsus.com/gitweb/?p=ascii.git;a=commitdiff;h=7fd1b0708d0c893b4cebf6665fa69c60b74fb9c8

# vim:ft=dosini
