#!/bin/bash
for i in {1..10};do alhstnmb=`ping -w 1 -c 1 "argus-$i.student.lth.se"|sed  -e '/bytes from argus/!d' -e 's/^.*argus-\([0-9]\+\)\.student\.lth\.se.*$/\1/'`;alhstnmb="${alhstnmb#"${alhstnmb%%[![:space:]]*}"}";alhstnmb="${alhstnmb%"${alhstnmb##*[![:space:]]}"}";if [[ -n $alhstnmb ]];then colrhstnmb=`printf "\033[31m$alhstnmb\033[0m"`;echo "argus-${colrhstnmb}.student.lth.se is alive!";fi;done
