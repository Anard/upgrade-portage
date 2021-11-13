Graphical interface via zenity
- skip pretend & use ask ?

- find messages about ebuilds blocked by conflict which don't appear with -q option
- add -q option to --sync ?

- qlop : find also other log files, compressed one can be uncomppressed with
`qlop -a firefox -f <(zcat /var/log/emerge.log-20211003.gz)`

- see if -t --tree option can be used in emerge to better understand dependencies
- check progress bar estimation => choice may be longer than emerge list if some packages are excluded

- check handle of emerge @preserved-rebuild
- check errors handling from emerge
- check portage messages
- check 'IMPORTANT' messages
- check unified zenity functions

-- error on time ests when exclude packages

- get colored/bold output from emerge to zenity
