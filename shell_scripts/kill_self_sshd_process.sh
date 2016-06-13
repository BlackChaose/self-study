#! /bin/bash
# find and kill my disconnect ssh sessions

# show who is connected
who
# find process sshd
ps -ef | grep sshd

#find <PID> - second column
#kill <PID>

#delete history
history -c
