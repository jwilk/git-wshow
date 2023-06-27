[rules]
git://kernel.ubuntu.com/* = https://kernel.ubuntu.com/git/$repo.git/commit/?id=$commit

[tests]
git://kernel.ubuntu.com/ubuntu/stress-ng.git = https://kernel.ubuntu.com/git/ubuntu/stress-ng.git/commit/?id=9093bce765cfd02256c92f2da33e762b253080ae

# vim:ft=dosini
