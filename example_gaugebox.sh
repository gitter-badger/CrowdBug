#!/bin/sh
(
c=10
while [ $c -ne 110 ]
  do
    echo $c
    echo "###"
    echo "$c %"
    echo "###"
    ((c+=10))
    sleep 1
done
) |
dialog --title "Test Gaugebox" --gauge "Just wait" -1 -1 