[rules]
git://git.ghostscript.com/* = https://cgit.ghostscript.com/cgi-bin/cgit.cgi/$repo.git/commit/?id=$commit
https://git.ghostscript.com/* = https://cgit.ghostscript.com/cgi-bin/cgit.cgi/$repo.git/commit/?id=$commit

[tests]
git://git.ghostscript.com/jbig2dec.git = https://cgit.ghostscript.com/cgi-bin/cgit.cgi/jbig2dec.git/commit/?id=59be9fea452d6079836e8fd6e3ae9e79c6dddcf4
https://git.ghostscript.com/jbig2dec.git = https://cgit.ghostscript.com/cgi-bin/cgit.cgi/jbig2dec.git/commit/?id=59be9fea452d6079836e8fd6e3ae9e79c6dddcf4

# vim:ft=dosini
