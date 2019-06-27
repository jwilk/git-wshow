[rules]
https://gitlab.kitware.com/* = https://gitlab.kitware.com/$repo/commit/$commit

[tests]
https://gitlab.kitware.com/cmake/cmake.git = https://gitlab.kitware.com/cmake/cmake/commit/3327fe948ef61ec907b1d0c056d8933f65c18214

# vim:ft=dosini
