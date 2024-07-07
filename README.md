# upgrade-portage
## Script to easily upgrade Gentoo system

Use `sudo upgrade` to upgrade your system or `upgrade --help` for help

Use `sudo upgrade -x` (or launch .desktop file) to upgrade your system via a gtk interactive interface

If launched from desktop file, script's stdout will be recorded in ~/.upgrade-portage/upgrade.log
You can track script log while upgrading system by typing `tail -f ~/.upgrade-portage/upgradelog` in a terminal
This log file is cutted before execution to prevent exceeding 10Ko, you can customize this value by setting it in a file named maxSize in ~/.upgrade-portage/

## Installation
Prefered way is to use [overlay](https://github.com/Anard/anard-overlay) and emerge it
For a better cross-desktop integration, choice have been made to keep an older Zenity version (<4.0). This one is available in haarp overlay :
```
# eselect repository enable anard haarp
# emerge --sync anard haarp
# emerge -a upgrade-portage
```

## Dependencies
```
portage
<zenity-4
an askpass program for sudo to use .desktop file
```

## Translating
To translate to another language, copy the locale/en.pot file and rename it to your locale, with .po extension.

Translate messages (msgid) in msgstr lines. Always keep special caracters as $, [, ], \\n, etc.
