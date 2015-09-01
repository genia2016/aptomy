# Author: Andrew Zhang
# Data:  2015/05



ps -fu $LOGNAME |grep scilab > scilab_processID


cat scilab_processID  |
        while read line
        do
           set $line
           echo $2
        #   sleep 1
           kill -9 $2
         done
