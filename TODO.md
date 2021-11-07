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

- see if -t --tree option can be used in emerge to better understand dependencies
- check progress bar estimation => choice may be longer than emerge list if some packages are excluded

- check handle of emerge @preserved-rebuild
- check errors handling from emerge
- check new portage messages with less blank line
		-- use only tmpFile[logs] as source (portage log give ebuild related messages)
- check unified zenity functions

- get colored/bold output from emerge to zenity