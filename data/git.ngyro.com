[rules]
https://git.ngyro.com/* = https://git.ngyro.com/$repo/commit/?id=$commit

[tests]
https://git.ngyro.com/disarchive = https://git.ngyro.com/disarchive/commit/?id=f7fcf96e6637181071802b6ae6cb87c1ba27313b

# vim:ft=dosini
