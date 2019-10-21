#!/bin/bash

bold=$(tput bold);
normal=$(tput sgr0);

AUTHOR=${1}
DAYS=${2}

echo
echo "${bold}$(tput setaf 3)Welcome to the Commit Wizzard ${normal}🧙";
echo
if [ -z "$1" ];
then
  echo "${normal}Which Author should the Wizzard look for?";
  read authorname;
  AUTHOR=$authorname;
  echo "Looking for $authorname!";
  echo
fi
if [ -z "$2" ]
then
  echo "Commits since how many days?";
  read vardays;
  DAYS=$vardays;
  echo
fi
echo "**************** COMMITS FROM $AUTHOR SINCE $DAYS days *****************";
echo
OUTPUT=`git log --since=$DAYS.days --author=$AUTHOR --pretty="- %s%n    %b" | grep -v "Merge branch" | grep -v "^\s*$" `;
if  [[ $1 = "-cp" ]]; then
  echo `$OUTPUT | pbcopy`;
else
  echo "$OUTPUT";
fi
echo
echo "*****************************************************************";
echo
echo
echo "${bold}Done! See you next Time ${normal} 🧙 !"

