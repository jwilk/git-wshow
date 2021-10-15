# Copyright © 2019-2021 Jakub Wilk <jwilk@jwilk.net>
# SPDX-License-Identifier: MIT

PREFIX = /usr/local
DESTDIR =

bindir = $(PREFIX)/bin

.PHONY: all
all: git-wshow

git-wshow: git-wshow.in devel/generate-code $(wildcard data/*)
	grep -B 999999 -x '# BEGIN GENERATED CODE' git-wshow.in > git-wshow.tmp
	devel/generate-code data/* >>  git-wshow.tmp
	grep -A 999999 -x '# END GENERATED CODE' git-wshow.in >> git-wshow.tmp
	chmod +x git-wshow.tmp
	mv git-wshow.tmp git-wshow

.PHONY: install
install: git-wshow
	install -d $(DESTDIR)$(bindir)
	install -m755 $(<) $(DESTDIR)$(bindir)/

.PHONY: test
test: only =
test: git-wshow
	prove -v :: $(only)

.PHONY: clean
clean:
	rm -f git-wshow *.tmp

# vim:ts=4 sts=4 sw=4 noet
