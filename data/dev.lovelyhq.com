[rules]
https://dev.lovelyhq.com/* = https://dev.lovelyhq.com/$repo/commit/$commit

[tests]
https://dev.lovelyhq.com/libburnia/libisofs.git = https://dev.lovelyhq.com/libburnia/libisofs/commit/6b31667ee4b989e5a60f57e6c96be9d196a23d7e

# vim:ft=dosini
