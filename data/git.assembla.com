[rules]
https://git.assembla.com/* = https://app.assembla.com/spaces/$repo/git/commits/$commit

[tests]
https://git.assembla.com/portaudio.git = https://app.assembla.com/spaces/portaudio/git/commits/c5d2c51bd6fe354d0ee1119ba932bfebd3ebfacc

# vim:ft=dosini
