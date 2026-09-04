# scroll-lock

## Makes the "Scroll Lock" key and LED on your keyboard actually DO something!

On many computers, the "Scroll Lock" key and LED are not actually used by the OS or software. That seemed a waste, so I devised a way to press them back into service.

## Installation instructions:

1. Launch a console, become root, and navigate to "/usr/local/sbin" (or create it if it doesn't exist).
2. Make a subdirectory of "/usr/local/sbin" called "scroll-lock". Make sure the ownership is "root:root" and the permissions are "0755".
3. Copy the file "scroll-lock.sh" to "/usr/local/sbin/scroll-lock". Make sure that the ownership is "root:root" and the permissions are "0755".
4. Execute command "SUDO_EDITOR=micro visudo -f /etc/sudoers.d/scroll-lock" (or substitute your favorite text editor for "micro").
5. In the file opened by visudo, write "MyUserName ALL=(root) NOPASSWD: /usr/local/sbin/scroll-lock/scroll-lock.sh on, /usr/local/sbin/scroll-lock/scroll-lock.sh off", substituting your actual user name for "MyUserName". Save and exit.
6. Exit from root and resume operations as normal user.
7. Put the files "scroll-lock-toggle.sh" and "aleatoric.pl" in "~/scroll-lock" and add that directory to your PATH. Also make sure those two files are owned by your regular user and have permissions "0755".
8. Go into your desktop's settings, in the "Keyboard Shortcuts" section, and bind the "Scroll Lock" key to the absolute path of the "scroll-lock-toggle.sh" script (eg, "/home/MyUserName/scroll-lock/scroll-lock-toggle.sh").
9. Install the program "abeep" on your system if you want the "aleatoric.pl" script to work correctly when the Scroll Lock key is toggled.
10. Save all open files, exit all running apps, log out of your GUI session, and log back in.

## Et voila!

Congratulations, your Scroll Lock key and LED is now active. And if you have program "abeep" installed, your computer will emit aleatoric (random) music when you tap "Scroll Lock". (Tap "Scroll Lock" again to make it stop.)

Or, you can substitute whatever other program you want for "aleatoric.pl". That's just one example of "something which can be toggled on and off by the Scroll Lock key".
