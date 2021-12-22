Graphical interface via zenity
- skip pretend & use ask ?

- see if -t --tree option can be used in emerge to better understand dependencies
- check progress bar estimation => choice may be longer than emerge list if some packages are excluded

- check handle of emerge @preserved-rebuild
- check errors handling from emerge
- check portage messages

- get colored/bold output from emerge to zenity

- see how to automatically increase zenity width (specially with checklists)

- check install/not-install lists
- when looping on zenity_emerge --check, check grep control, sometimes '^!!!' could be non-blocking, how to decide if loop or not (confirmation ...) ?
	- check try anyway button ?

- record last width in user config file to re-use (also create config file in /var/lib ?)
- use "following packages are causing rebuilds" to make depgraph & hide these lines