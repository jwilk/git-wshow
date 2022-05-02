[rules]
https://www.kylheku.com/git/* = https://www.kylheku.com/cgit/$repo/commit/?id=$commit

[tests]
https://www.kylheku.com/git/pw = https://www.kylheku.com/cgit/pw/commit/?id=ecc171ceb985734dc429cefc5700a5c23ce0cf89

# vim:ft=dosini
