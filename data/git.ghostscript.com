[rules]
git://git.ghostscript.com/* = https://git.ghostscript.com/?p=$repo.git;a=commitdiff;h=$commit
https://git.ghostscript.com/* = https://git.ghostscript.com/?p=$repo.git;a=commitdiff;h=$commit

[tests]
git://git.ghostscript.com/jbig2dec.git = https://git.ghostscript.com/?p=jbig2dec.git;a=commitdiff;h=59be9fea452d6079836e8fd6e3ae9e79c6dddcf4
https://git.ghostscript.com/jbig2dec.git = https://git.ghostscript.com/?p=jbig2dec.git;a=commitdiff;h=59be9fea452d6079836e8fd6e3ae9e79c6dddcf4

# vim:ft=dosini
