#!/bin/bash
#
echo "###############################################################################"
echo -e "\nReady to commence a new workout session!, when you are ready hit ENTER to Start"
read 
START_TIME=`date`
START_TIME_EPOC=`date --date="$START_TIME" +%s` 
echo -e "\n\tWORKOUT STARTED: $START_TIME"
echo -e "\tWhen you are ready to finish, hit ENTER"
read
END_TIME=`date`
END_TIME_EPOC=`date --date="$END_TIME" +%s` 
let ELAPSED_TIME=$END_TIME_EPOC-$START_TIME_EPOC
#let ELAPSED_TIME_MINUTES=$ELAPSED_TIME/60 
ELAPSED_TIME_MINUTES=`bc -l <<< $ELAPSED_TIME/60`
echo -e "\n\tWORKOUT STOPPED: $END_TIME"
#echo -e "\tRANKING ACHIEVEID (1,2,3)?: "
read -ep "        RANKING ACHIEVED (1,2,3)?: "
echo -e "\n\nThanks for working out today!"

echo "$START_TIME, $END_TIME, $ELAPSED_TIME_MINUTES, $REPLY" >> tracking.csv
echo "###############################################################################"

# ---
exit 0
