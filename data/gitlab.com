[rules]
https://gitlab.com/* = https://gitlab.com/$repo/commit/$commit

# vim:ft=dosini
