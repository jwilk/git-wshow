[rules]
https://git.gavinhoward.com/* = https://git.gavinhoward.com/$repo/commit/$commit

[tests]
https://git.gavinhoward.com/gavin/bc = https://git.gavinhoward.com/gavin/bc/commit/72bc0ebd7f23c3485a866c3165f654c7ebd56300

# vim:ft=dosini
