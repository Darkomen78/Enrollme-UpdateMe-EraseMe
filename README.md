# UpdateMe and Erase&Install
 Some stuff to facilitate macOS major update or full erase and reinstall for non-admin users.

**A working Munki installation is required. https://github.com/munki/munki**
**Hello-IT functionals parameters with the key "allow subdomains" to true are mandatory. See https://github.com/ygini/Hello-IT/wiki/Preferences-subdomain**
**Latest release for erase-install.sh file can be found here : https://github.com/grahampugh/erase-install/releases**

You can make two packages to split these functions in two items for Munki.
The IT folder can be relocated, but beware of the folder access confidential limitation and change ITFOLDER variable in both post-install scripts.

---
Major Update package need these files : 
/etc/sudoers.d/com-github-darkomen78-majorupdate-sudoers
/Users/Shared/IT/update/com.github.ygini.Hello-IT.MajorUpdate.plist
/Users/Shared/IT/erase/erase-install.sh 

And as post-install script : /scripts/postinstall_majorupdate
---
Erase & Install package need these files :
/etc/sudoers.d/com-github-darkomen78-eraseinstall-sudoers
/Users/Shared/IT/erase/com.github.ygini.Hello-IT.Erase
/Users/Shared/IT/erase/erase-install.sh 

And as post-install script : /scripts/postinstall_erase

Optional : you can add some .pkg files in /Users/Shared/IT/erase/pkg/ folder for an auto-installation after the macOS reinstallation.