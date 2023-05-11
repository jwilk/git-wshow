[rules]
https://gitlab.com/* = https://gitlab.com/$repo/commit/$commit

[tests]
https://gitlab.com/federicomenaquintero/bzip2.git = https://gitlab.com/federicomenaquintero/bzip2/commit/17a7a0ebfa220c170be07646711a47b07cc264fb

# vim:ft=dosini
