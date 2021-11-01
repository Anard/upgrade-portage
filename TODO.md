Graphical interface via zenity
- skip pretend & use ask ?

- get 'important' messages from emerge log :
```
 * IMPORTANT: config file '/etc/portage/savedconfig/sys-kernel/linux-firmware-20210919' needs updating.
 * See the CONFIGURATION FILES and CONFIGURATION FILES UPDATE TOOLS
 * sections of the emerge man page to learn how to update config files.
```

- check handle of emerge @preserved-libs
- check first upgrade portage

- transfer all zenity functions in zenity_upgrade

- see if -t --tree option can be used in emerge to better understand dependencies

- check errors handling from emerge
- check new portage messages with less blank line
- track an upgrade of portage and build it first after ask
after syncin :
	=> check a newer version of portage when no sync

- check progress bar estimation => choice is longer than emerge list if exclude some packages

- Clean code (more functions when possible etc)

- get colored/bold output from emerge to zenity