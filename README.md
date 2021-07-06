# EnrollMe, UpdateMe and EraseMe
Some stuff to facilitate enrollment, major system update and full erase for non-admin users.

## Prerequises
* __Hello-IT functionals parameters with the key _allow subdomains_ to true are mandatory.__ See Wiki [here](https://github.com/ygini/Hello-IT/wiki/Preferences-subdomain).
* A working Munki installation is optional. More infos [here](https://github.com/munki/munki).
* Latest release for erase-install.sh file can be found [here](https://github.com/grahampugh/erase-install/releases).
* [Packages](http://s.sudre.free.fr/Software/files/Packages.dmg) if you want to make custom installs or add pkg files in EraseMe. 

## Usage & Tips
You can split these functions into different items for Munki. EraseMe must be an optional install for self-service or scoped on "wipeable" computer only. <br/>The IT folder can be relocated (change ITFOLDER variable in both post-install scripts), but beware of the folder access confidential limitation. <br/>__Warning ! These tools can easily destroy all data on your computer, please test them and understand how it's work before use.__

## Packages content

### EnrollMe package need these files :
* /etc/sudoers.d/com-github-darkomen78-enrollme-sudoers
* /Users/Shared/IT/enrollme/com.github.ygini.Hello-IT.Enrollme.plist
* /Users/Shared/IT/enrollme/enrollme.sh  
* /Library/Application Support/com.github.ygini.hello-it/CustomScripts/com.github.darkomen78.hello-it.enrollme.sh
* As a post-install script : /scripts/postinstall_enrollme  

### UpdateMe package need these files :
* /etc/sudoers.d/com-github-darkomen78-updateme-sudoers
* /Users/Shared/IT/update/com.github.ygini.Hello-IT.updateme.plist
* /Users/Shared/IT/erase/erase-install.sh  
* /Library/Application Support/com.github.ygini.hello-it/CustomScripts/com.github.darkomen78.hello-it.updateme.sh
* As a post-install script : /scripts/postinstall_updateme  

### EraseMe package need these files :
* /etc/sudoers.d/com-github-darkomen78-eraseme-sudoers
* /Users/Shared/IT/erase/com.github.ygini.Hello-IT.eraseme
* /Users/Shared/IT/erase/erase-install.sh
* /Library/Application Support/com.github.ygini.hello-it/CustomScripts/com.github.darkomen78.hello-it.eraseme.sh  
* As a post-install script : /scripts/postinstall_eraseme  
_Optional_ : you can add some .pkg files in /Users/Shared/IT/erase/pkg/ folder for auto-installation after the macOS reinstallation.

