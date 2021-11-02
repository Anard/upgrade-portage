Graphical interface via zenity
- skip pretend & use ask ?

- get 'important' messages from emerge log after upgrade :
```
 * IMPORTANT: config file '/etc/portage/savedconfig/sys-kernel/linux-firmware-20210919' needs updating.
 * See the CONFIGURATION FILES and CONFIGURATION FILES UPDATE TOOLS
 * sections of the emerge man page to learn how to update config files.
```
- find messages about ebuilds blocked by conflict which don't appear with -q option
- add -q option to --sync ?

- check handle of emerge @preserved-rebuild
- check first upgrade portage
	=> check a newer version of portage when no sync
	
- see if -t --tree option can be used in emerge to better understand dependencies
- check progress bar estimation => choice may be longer than emerge list if some packages are excluded

- check errors handling from emerge
- check new portage messages with less blank line

- Clean code (more functions when possible etc)
	=> transfer all zenity functions in zenity_upgrade

- get colored/bold output from emerge to zenity