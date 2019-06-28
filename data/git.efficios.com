[rules]
git://git.efficios.com/* = http://git.efficios.com/?p=$repo.git;a=commitdiff;h=$commit

[tests]
git://git.efficios.com/babeltrace.git = http://git.efficios.com/?p=babeltrace.git;a=commitdiff;h=09a926c19afa6e137319da5f9fd60b0852946ea4

# vim:ft=dosini
