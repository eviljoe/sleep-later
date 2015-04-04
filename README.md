# sleep-later
Put Windows to sleep... later.

## Setup
 1. Download the [PsTools](https://technet.microsoft.com/en-us/sysinternals/bb896649.aspx) suite from Microsoft.  The tool that is most important is [PsShutdown](https://technet.microsoft.com/en-us/sysinternals/bb897541).  I have not included these as part of the repository, because after reading their license, I don't think it allows for me to host them here.
 1. Extract all of the PsTools into a directory called `ps-tools` that is in the same directory as the Sleep Later scripts (`SLEEP_LATER_HOME`).
 1. Run `sleep-later.bat` from `SLEEP_LATER_HOME`

## But... Why?
Because Windows is a real jerk sometimes.  That's why.

My Windows installation insists on waking my computer from sleep every night to check and see if there is a Windows update available for download.  It does not actually do the Windows update.  It just checks to see if one exists.  No matter what I do, I have not been able to prevent Windows from waking my computer from sleep.  I have changed permissions so that nothing but user input is allowed to wake the computer.  Windows just doesn't care.  It will wake when it feels like.

So, after a few months of that happening, I made this script.  Every night, two minutes after Windows wakes my computer, I have scheduled `sleep-later.bat` to run.  It gives me 90 seconds to cancel the sleep in case I am actually using the computer, and then it puts Windows back to sleep.

If you can't beat 'em, join 'em.
