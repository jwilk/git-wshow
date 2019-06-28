[rules]
git://kernel.ubuntu.com/* = https://kernel.ubuntu.com/git/$repo.git/commit/?id=$commit

[tests]
git://kernel.ubuntu.com/cking/pagemon.git = https://kernel.ubuntu.com/git/cking/pagemon.git/commit/?id=edc3789756227ff38bca485571a06b5a54dc815f

# vim:ft=dosini
