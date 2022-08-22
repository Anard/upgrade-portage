Graphical interface via zenity
- skip pretend & use ask ?

- see if -t --tree option can be used in emerge to better understand dependencies
- maybe simply with -pv too...
- check progress bar estimation => choice may be longer than emerge list if some packages are excluded

- check handle of emerge @preserved-rebuild
- check errors handling from emerge
- check portage messages

- get colored/bold output from emerge to zenity

- see how to automatically increase zenity width (specially with checklists)
- record last width in user config file to re-use (also create config file in /var/lib ?)
- add a text-info message if checklist messages are too long
	- see zenity --attach option ?

- check install/not-install/rebuilds lists
- use rebuilds list to make depgraph
- when looping on zenity_emerge --check, check grep control, sometimes '^!!!' could be non-blocking, how to decide if loop or not (confirmation ...) ?
	- check try anyway button ?

- when a rebuild occurs ('R'), add informations about why (only visible in verbose mode)

- after --depclean, eclean packages && distfiles - eclean depends on app-portage/gentoolkit

zenity-auto-kill : 
http://www.bernaerts-nicolas.fr/linux/331-linux-cancel-zenity-progress-dialog-right-way
```...

(
  echo "# running command 1"
  command1 ...

  echo "# running command 2"
  command2 ...
) | zenity --title="my specific title" --progress --pulsate --auto-close &

# get zenity process id
PID_ZENITY=${!}

# get firstly created child process id, which is running all tasks
PID_CHILD=$(pgrep -o -P $$)

# loop to check that progress dialog has not been cancelled
while
  # get PID of all running tasks
  PID_TASKS=$(pgrep -d ' ' -P ${PID_CHILD})

  # check if zenity PID is still there (dialog box still open)
  PID_ZENITY=$(ps h -o pid --pid ${PID_ZENITY} | xargs)
  [ "$PID_ZENITY" != "" ]  
# sleep for 2 second
do sleep 2; done

# if some running tasks are still there, kill them
[ "${PID_TASKS}" != "" ] && kill -9 ${PID_TASKS}

next-command```
