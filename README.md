There are some belated things concerning the DF3120.

The basics yet exists.

(Getting rid of the kernel messages on startup 

and 

improvments of the workflow/turn around times)

In the 'workflow-improvments' directory you will find some abstract concepts like hotplugin functionality for the usb0 device to initialise the corresponding network interface e.g.

Note:

In case of brand-new installation of 'minifs' by this time some changes have been taken place in version numbers and URLs.

Invoking 'minifs_build.sh' on an unpatched 'minifs' will cause errors in downloads.

To fix this circumstance please apply the 'packages-adjust-versions-2012-AUG.patch' first after installation of 'minifs'.

Copy and paste(Ctrl-Shift-V) into your console

1. 'git apply --check packages-adjust-versions-2012-AUG.patch'

   check the output before you invoke the next command!

2. 'git am --signoff < packages-adjust-versions-2012-AUG.patch'

It's also a good idea to install 'etckeeper' before you manipulate your system configuration.

And don't forget to create a branch e.g. 'df3210' for your activities.

So you can switch back to 'master' in a worst case scenario.

Best regards, Uli
