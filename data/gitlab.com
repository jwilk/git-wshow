[rules]
https://gitlab.com/* = https://gitlab.com/$repo/commit/$commit

[tests]
https://gitlab.com/pycqa/flake8-polyfill.git = https://gitlab.com/pycqa/flake8-polyfill/commit/708747a008adb050a549834d0f539afed89f22f3

# vim:ft=dosini
