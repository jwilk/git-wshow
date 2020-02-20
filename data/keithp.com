[rules]
https://keithp.com/cgit/* = https://keithp.com/cgit/$repo.git/commit/?id=$commit

[tests]
https://keithp.com/cgit/lola.git = https://keithp.com/cgit/lola.git/commit/?id=39f272af71d5a062dc6fba43079fdb264e44097b

# vim:ft=dosini
