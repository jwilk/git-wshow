[rules]
https://git.ghostscript.com/* = https://git.ghostscript.com/?p=$repo.git;a=commitdiff;h=$commit

# vim:ft=dosini
