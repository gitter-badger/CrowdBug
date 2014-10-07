#!/bin/sh
height=16
width=64

assignees=
cnt=0
for i in $(awk '{print $1}' assignees.txt)
  do
    cnt=`expr $cnt + 1`
    assignees+=$cnt' '$i' '
done;

choice=$(dialog --stdout --menu "CrowdBug" $height $width $width "Create issue" "Post issue at your JIRA environment")

echo "Entered: $choice"

assignee=$(dialog --stdout --menu "Choose assignee" $height $width $width $assignees)

echo $assignee