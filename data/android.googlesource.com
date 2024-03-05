[rules]
https://android.googlesource.com/* = https://android.googlesource.com/$repo.git/+/$commit^!/

[tests]
https://android.googlesource.com/platform/system/adb = https://android.googlesource.com/platform/system/adb.git/+/3919c537cfbffd2b584f35951c35b64254090798^!/

# vim:ft=dosini
