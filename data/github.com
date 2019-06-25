[rules]
https://github.com/* = https://github.com/$repo/commit/$commit

[tests]
https://github.com/joeyespo/path-and-address.git = https://github.com/joeyespo/path-and-address/commit/f8193a09f4b785574d920e8a2aeeb55ea6ff4e20

# vim:ft=dosini
