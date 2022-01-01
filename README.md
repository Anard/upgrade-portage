# upgrade-portage
## Script to easily upgrade Gentoo system

Use `sudo upgrade` to upgrade your system or `upgrade --help` for help

Use `sudo upgrade -x` (or launch .desktop file) to upgrade your system via a gtk interactive interface

If launched from desktop file, script's stdout will be recorded in ~/.upgrade-portage/upgrade.log, this log file is cutted before execution to never exceed 10Ko
You can track script log while upgrading system by typing `tail -f ~/.upgrade-portage/upgradelog` in a terminal

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
To translate to another language, copy the locale/en.pot file and rename it to your locale, with .po extension.

Translate messages (msgid) in msgstr lines. Always keep special caracters as $, [, ], \\n, etc.