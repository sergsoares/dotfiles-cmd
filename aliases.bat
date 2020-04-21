:: http://technet.microsoft.com/en-us/library/bb490894.aspx
:: https://gist.github.com/PierreMage/6874814
:: [SOF Call alias from any path](https://stackoverflow.com/questions/3534346/how-to-call-a-bat-file-from-any-location-in-cmd-on-windows)
:: [Doskey as linux alias]](https://www.jamescoyle.net/how-to/1100-doskey-in-windows-is-just-like-alias-in-linux)
:: https://www.c-sharpcorner.com/article/save-your-precious-dev-time-with-command-aliases-in-windows-terminal/
:: [Aliases Windwos cmd](https://stackoverflow.com/questions/20530996/aliases-in-windows-command-prompt)
:: [Ohmyzsh alias reference](https://github.com/ohmyzsh/ohmyzsh/wiki/Cheatsheet)
:: [Clink](https://superuser.com/questions/584013/how-to-use-cmds-tab-autocomplete-effectively)
:: F7     = history
:: Alt+F7 = history -c
:: F8     = Ctrl+R
:: Use & to run multiple commands e.g.: command1 & command2
:: Add this file as a REG_SZ/REG_EXPAND_SZ registry variables in HKEY_LOCAL_MACHINE\Software\Microsoft\Command or Processor\AutoRun HKEY_CURRENT_USER\Software\Microsoft\Command Processor\AutoRun

@echo off

title "Of course faster than powershell and cmder!!!!"

:: Linux commands
doskey alias   = doskey $*
doskey cat     = type $*
doskey clear   = cls
doskey cp      = copy $*
doskey cpr     = xcopy $*
doskey grep    = find $*
doskey history = doskey /history
doskey kill    = taskkill /PID $*
doskey ls      = dir $*
doskey man     = help $*
doskey mv      = move $*
doskey ps      = tasklist $*
doskey pwd     = cd
doskey rm      = del $*
doskey rmr     = deltree $*
doskey sudo    = runas /user:administrator $*
doskey open    = start "" $*
doskey printenv = SET

:: Oh my zsh - System
doskey aliases = doskey /MACROS
doskey /       = cd /
doskey t       = mkdir $* $T cd $*
doskey take    = mkdir $* $T cd $*
doskey ts      = mkdir $* $T cd $* $T subl .
doskey takes   = mkdir $* $T cd $* $T subl .

doskey e       = explorer $*

:: Ag 
doskey ag      = ag --ignore=venv $*

:: Oh my zsh - Git
doskey g       = git $*
doskey gi      = git init
doskey ga      = git add $*
doskey gb      = git branch $*
doskey gcm     = git commit -m $*
doskey gcmsg   = git commit -m $*
doskey gc!     = git commit $*
doskey gco     = git checkout $*
doskey gfa     = git fetch --all
doskey gg      = git gui citool
doskey gpull   = git pull origin $*
doskey gpush   = git push origin $*
doskey gm      = git merge $*
doskey gra     = git remote add $*
doskey gst     = git status
doskey gstash  = git stash $*
doskey gurl    = git config --get remote.origin.url
doskey gd      = git diff $*
::doskey gopen   = for /F "tokens=*" %n IN ('git config --get remote.origin.url') DO @(start "" %n)

:: Python
doskey p        = python
doskey pv       = python --version
doskey pidle    = python -m idlelib.idle
doskey pvenv    = python -m venv venv
doskey act      = venv\Scripts\activate
doskey activate = venv\Scripts\activate
doskey deac     = deactivate 

:: Js
doskey npmi = npm install

:: Web Shortcuts
doskey gist       = start "" https://gist.github.com
doskey lobste.rs  = start "" https://lobste.rs
doskey hackernews = start "" https://news.ycombinator.com
doskey todoist    = start "" https://todoist.com

:: Easier navigation
doskey ..    = cd ..\$*
doskey ...   = cd ..\..\$*
doskey ....  = cd ..\..\..\$*
doskey ..... = cd ..\..\..\..\$*

:: Mixin
doskey clone    = git clone $1 .
doskey edit     = subl %USERPROFILE%\Documents\doskey
doskey jdocuments = cd %USERPROFILE%\Documents
doskey jprojects  = cd %USERPROFILE%\projects
doskey jaws       = cd %USERPROFILE%\.aws
doskey jssh       = cd %USERPROFILE%\.aws
doskey jnotes     = cd %USERPROFILE%\Dropbox\notes
doskey notes      = subl %USERPROFILE%\Dropbox\notes
doskey typora     = "C:\Program Files\Typora\Typora.exe" $*


