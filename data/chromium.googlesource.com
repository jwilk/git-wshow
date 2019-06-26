[rules]
https://chromium.googlesource.com/* = https://chromium.googlesource.com/$repo/+/$commit

[tests]
https://chromium.googlesource.com/webm/libwebp = https://chromium.googlesource.com/webm/libwebp/+/812a6b49fccb9a07e9f82b356f8b6bcb9aab0874

# vim:ft=dosini
