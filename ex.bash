#!/bin/bash
sed -i "s/prabhakaran9397/$2/g" `pwd`/e0.bash
sed -i "s/qwerty931997/$3/g" `pwd`/e0.bash
for i in `seq 1 $1`;
do
	file="e"$i."bash"
	rep="c"$i
	cp e0.bash $file
	sed -i "s/c0/$rep/g" `pwd`/$file
	bash $file&
done
