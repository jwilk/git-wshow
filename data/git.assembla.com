[rules]
https://git.assembla.com/* = https://app.assembla.com/spaces/$repo/git/commits/$commit

[tests]
https://git.assembla.com/gitmagic.git = https://app.assembla.com/spaces/gitmagic/git/commits/b9d8379d939e35669dd7778347fb579958626415

# vim:ft=dosini
