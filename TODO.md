Graphical interface via zenity
- skip pretend & use ask ?

- see if -t --tree option can be used in emerge to better understand dependencies
- check progress bar estimation => choice may be longer than emerge list if some packages are excluded

- check handle of emerge @preserved-rebuild
- check errors handling from emerge
- check portage messages

- get colored/bold output from emerge to zenity

- see how to automatically increase zenity width (specially with checklists)

- uninstall / blocks packages are not necessary in at end of list so all lists are wrong when existing uninstall/blocks
	-- when looping on zenity_emerge --check, grep -q '^!!!' is not sufficient
	-- after the loop, must create merge and nomerge lists as one, and differentiate it on second time