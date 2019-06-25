[rules]
https://git.zx2c4.com/* = https://git.zx2c4.com/$repo/commit/?id=$commit

[tests]
https://git.zx2c4.com/password-store = https://git.zx2c4.com/password-store/commit/?id=2f65a6cecd51c6966b52d68e9f44d90e95a0e155

# vim:ft=dosini
