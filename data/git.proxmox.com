[rules]
git://git.proxmox.com/git/* = https://git.proxmox.com/?p=$repo.git;a=commitdiff;h=$commit
https://git.proxmox.com/git/* = https://git.proxmox.com/?p=$repo.git;a=commitdiff;h=$commit

[tests]
git://git.proxmox.com/git/perlmod.git = https://git.proxmox.com/?p=perlmod.git;a=commitdiff;h=ba9864d3b9e5f02b003aa9c1c84111a3dfcfabbc
https://git.proxmox.com/git/perlmod.git = https://git.proxmox.com/?p=perlmod.git;a=commitdiff;h=ba9864d3b9e5f02b003aa9c1c84111a3dfcfabbc

# vim:ft=dosini
