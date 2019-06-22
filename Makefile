# Copyright © 2019 Jakub Wilk <jwilk@jwilk.net>
# SPDX-License-Identifier: MIT

.PHONY: all
all: git-wshow

git-wshow: git-wshow.in devel/generate-code $(wildcard data/*)
	grep -B 999999 -x '# BEGIN GENERATED CODE' git-wshow.in > git-wshow.tmp
	devel/generate-code data/* >>  git-wshow.tmp
	grep -A 999999 -x '# END GENERATED CODE' git-wshow.in >> git-wshow.tmp
	chmod +x git-wshow.tmp
	mv git-wshow.tmp git-wshow

.PHONY: clean
clean:
	rm -f git-wshow *.tmp

# vim:ts=4 sts=4 sw=4 noet
