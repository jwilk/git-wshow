[rules]
https://git.opensvc.com/* = https://git.opensvc.com/?p=$repo/.git;a=commitdiff;h=$commit

[tests]
https://git.opensvc.com/multipath-tools/.git = https://git.opensvc.com/?p=multipath-tools/.git;a=commitdiff;h=ebbb56f28d56816423133b3d679b658c725c4685

# vim:ft=dosini
