[rules]
https://git.inaugust.com/* = https://git.inaugust.com/$repo/commit/?id=$commit

[tests]
https://git.inaugust.com/cgit/presentty = https://git.inaugust.com/cgit/presentty/commit/?id=2716b255d8be39d2dca4b681d7724ee2a20f3244

# vim:ft=dosini
