Graphical interface via zenity
- skip pretend & use ask ?

- separate 'important' messages from packages messages :
```
 * Messages for package sys-kernel/linux-firmware-20210919:
 * Building using saved configfile "/etc/portage/savedconfig/sys-kernel/linux-firmware-20210919"
 * Your configuration for sys-kernel/linux-firmware-20210919 has been saved in 
 * "/etc/portage/savedconfig/sys-kernel/linux-firmware-20210919" for your editing pleasure.
 * You can edit these files by hand and remerge this package with
 * USE=savedconfig to customise the configuration.
 * You can rename this file/directory to one of the following for
 * its configuration to apply to multiple versions:
 * ${PORTAGE_CONFIGROOT}/etc/portage/savedconfig/
 * [${CTARGET}|${CHOST}|""]/${CATEGORY}/[${PF}|${P}|${PN}]
 * USE=savedconfig is active. You must handle file collisions manually.
 * If you are only interested in particular firmware files, edit the saved
 * configfile and remove those that you do not want.



 * IMPORTANT: config file '/etc/portage/savedconfig/sys-kernel/linux-firmware-20210919' needs updating.
 * See the CONFIGURATION FILES and CONFIGURATION FILES UPDATE TOOLS
 * sections of the emerge man page to learn how to update config files.
```

- also handle emerge @preserved-libs
!!! existing preserved libs:
>>> package: media-gfx/openvdb-7.1.0-r5
 *  - /usr/lib64/libopenvdb.so.8.0
 *  - /usr/lib64/libopenvdb.so.8.0.1
 *      used by /usr/bin/blender-2.93 (media-gfx/blender-2.93.2-r1)
>>> package: media-libs/opensubdiv-3.4.4-r1
 *  - /usr/lib64/libosdCPU.so.3.4.3
 *      used by /usr/bin/blender-2.93 (media-gfx/blender-2.93.2-r1)
Use emerge @preserved-rebuild to rebuild packages using these libraries

- see if -t --tree option can be used in emerge to bettter understand dependencies

- check errors handling from emerge
- check new portage messages with less blank line
- track an upgrade of portage and build it first after ask
after syncin :
	=> check a newer version of portage when no sync

- check progress bar estimation => choice is longer than emerge list if exclude some packages

- Clean code (more functions when possible etc)

- get colored/bold output from emerge to zenity