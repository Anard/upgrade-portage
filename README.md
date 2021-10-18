# upgrade-portage
Script to easily upgrade Gentoo system

Use `sudo upgrade` to upgrade your system or `upgrade --help` for help

## Installation
Prefered way is to use [overlay](https://github.com/Anard/anard-overlay) and emerge it :
```
# eselect repository enable anard
# emerge --sync anard
# emerge -a upgrade-portage
```

## Dependencies
```
zenity for gtk
a askpass program for sudo for .desktop
```
