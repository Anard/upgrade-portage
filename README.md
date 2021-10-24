# upgrade-portage
## Script to easily upgrade Gentoo system

Use `sudo upgrade` to upgrade your system or `upgrade --help` for help

`-x` option (or desktop file) provides a gtk interactive script via zenity

If launched from desktop file, last script's stdout is recorded in ~/.upgrade-portage/upgrade.log

## Installation
Prefered way is to use [overlay](https://github.com/Anard/anard-overlay) and emerge it :
```
# eselect repository enable anard
# emerge --sync anard
# emerge -a upgrade-portage
```

## Dependencies
```
portage
zenity for gtk
a askpass program for sudo for .desktop
```
