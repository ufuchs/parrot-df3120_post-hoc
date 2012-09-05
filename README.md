There are some belated things concerning the Parrot DF3120.

The project is structered into two parts:

First, the kernel patches to get rid of the kernel startup messages concerning 'gpio', 'rtc' and 'debugfs'.

This part is complete and applicable (directory 'minifs').

There is also a video snippet available on Youtube :

  http://www.youtube.com/watch?v=2Mf5_hQsJDE

(And please have a look at the website of my soundtrack sponsor. Klick on the 'Show more' button...)

In the second part (directory 'workflow-improvments') you find some abstract concepts like hotplugin functionality for the usb0 device to initialise the corresponding network interface e.g.

This is still in progress but the basics yet exists.

Note:

From my knowledge there are two minifs repositories

- https://sites.google.com/site/repurposelinux/df3120 --> http://oomz.net/git/minifs.git

  The repo is in a froozen state and a pull request results in no changes(date 2012-SEP-05).

  But by this time some changes have been taken place in version numbers and URLs.

  Invoking 'minifs_build.sh' from this repo will cause errors in downloads.

  To fix this circumstance please apply the 'packages-adjust-versions-2012-AUG.patch' just after cloning.

  Copy and paste(Ctrl-Shift-V) into your console

  1. 'git apply --check packages-adjust-versions-2012-AUG.patch'

      check the output before you invoke the next command!

  2. 'git am --signoff < packages-adjust-versions-2012-AUG.patch'

  This is also the repo I'm working with until now.

- https://github.com/buserror-uk/minifs.git (the repo of the orginator of minifs,  Michel Pollet)

  Today (2012-SEP-05) a pull request from this repo results in 

    18 files changed, 669 insertions(+), 321 deletions(-)

  against the unpatched repo from http://oomz.net/git/minifs.git

  I haven't made a full build yet and tested on the DF3120, but one should give it a try.

  That's what it was.
 

It's also a good idea to install 'etckeeper' before you manipulate your system configuration.

And don't forget to create a branch e.g. 'df3210' for your activities.

So you can switch back to 'master' in a worst case scenario.

Best regards, Uli

PS:
Please excuse the mispellings. I'm not a native english speaker even less an english writer.
