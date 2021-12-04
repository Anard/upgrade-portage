# upgrade-portage
## Script to easily upgrade Gentoo system

Use `sudo upgrade` to upgrade your system or `upgrade --help` for help

Use `sudo upgrade -x` (or launch .desktop file) to upgrade your system via a gtk interactive interface

If launched from desktop file, last script's stdout is recorded in ~/.upgrade-portage/upgrade.log
You can follow script log while typing `tail -f ~/.upgrade-portage/upgradelog` in a terminal

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
zenity
an askpass program for sudo to use .desktop file
```

## Translating
To translate to another language, copy the locale/en.po file and rename it to your locale, keeping the .po extension.

Translate messages (msgid) in msgstr lines. Always keep special caracters as $, [, ], etc.