#!/bin/bash

bold=$(tput bold);
normal=$(tput sgr0);

if  [[ $1 = "-cp" ]]; then
  OPTION=${1}
  AUTHOR=${2}
  DAYS=${3}
else
  AUTHOR=${1}
  DAYS=${2}
fi

echo
echo "${bold}$(tput setaf 3)Welcome to the Commit Wizzard ${normal}🧙";
echo
if [ -z "$AUTHOR" ];
then
  echo "${normal}Which Author should the Wizzard look for?";
  read authorname;
  AUTHOR=$authorname;
  echo "Looking for $authorname!";
  echo
fi
if [ -z "$DAYS" ]
then
  echo "Commits since how many days?";
  read vardays;
  DAYS=$vardays;
  echo
fi
echo "**************** COMMITS FROM $AUTHOR SINCE $DAYS days *****************";
echo
if  [[ $1 = "-cp" ]]; then
  OUTPUT_CP=`git log --since=$DAYS.days --author=$AUTHOR --pretty="- %s%n    %b" | grep -v "Merge branch" | grep -v "^\s*$" | pbcopy`;
fi
OUTPUT=`git log --since=$DAYS.days --author=$AUTHOR --pretty="- %s%n    %b" | grep -v "Merge branch" | grep -v "^\s*$"`;
echo "$OUTPUT";
echo
echo "*****************************************************************";
echo
echo
echo "${bold}Done! See you next Time ${normal} 🧙 !"



