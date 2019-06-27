[rules]
https://git.einval.com/git/* = https://git.einval.com/cgi-bin/gitweb.cgi?p=$repo.git;a=commitdiff;h=$commit

[tests]
https://git.einval.com/git/jigit.git = https://git.einval.com/cgi-bin/gitweb.cgi?p=jigit.git;a=commitdiff;h=a3d1fb149e3c8b75fab107fbb346ec88b3642c1a

# vim:ft=dosini
