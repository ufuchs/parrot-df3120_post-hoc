There are some belated things concerning the DF3120.

The basics yet exists.

(Getting rid of the kernel messages on startup 

and 

improvments of the workflow/turn around times)

NOTE:
-----

In case of brand-new installation of 'minifs' by this time some changes have been taken place in version numbers and URLs.

Invoking 'minifs_build.sh' on an unpatched 'minifs' will cause errors in downloads.

To fix this circumstance please apply the 'packages-adjust-versions-2012-AUG.patch' first after installation of 'minifs'.

Copy and paste(Ctrl-Shift-V) into your console

  git apply --check packages-adjust-versions-2012-AUG.patch
  git am --signoff < packages-adjust-versions-2012-AUG.patch

Best regards, Uli
