[rules]
git://git.efficios.com/* = https://git.efficios.com/?p=$repo.git;a=commitdiff;h=$commit
https://git.efficios.com/* = https://git.efficios.com/?p=$repo.git;a=commitdiff;h=$commit

[tests]
git://git.efficios.com/babeltrace.git = https://git.efficios.com/?p=babeltrace.git;a=commitdiff;h=09a926c19afa6e137319da5f9fd60b0852946ea4
https://git.efficios.com/babeltrace.git = https://git.efficios.com/?p=babeltrace.git;a=commitdiff;h=09a926c19afa6e137319da5f9fd60b0852946ea4

# vim:ft=dosini
