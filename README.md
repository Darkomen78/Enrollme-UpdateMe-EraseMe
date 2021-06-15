UpdateMe and Erase&Install
==========

Some stuff to facilitate macOS major update or full erase and reinstall for non-admin users.

** A working Munki installation is required. ** https://github.com/munki/munki 
** Hello-IT functionals parameters with the key "allow subdomains" to true are mandatory. ** See https://github.com/ygini/Hello-IT/wiki/Preferences-subdomain
** Latest release for erase-install.sh file can be found here : ** https://github.com/grahampugh/erase-install/releases

You can make two packages to split these functions in two items for Munki.
The IT folder can be relocated, but beware of the folder access confidential limitation and change ITFOLDER variable in both post-install scripts.

---