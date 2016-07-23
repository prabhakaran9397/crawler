#!/bin/bash
if [ $1 = "-k" ]; then
	sudo kill -9 `ps aux | grep "e[0-9]*.bash" | awk '{print$2}'`
	exit 0
fi
if [ $# -ne 3]; then
	echo "Please use like this => bash ex.bash 10 hello@gmail.com password"
	exit 1
fi
sed -i "s/email/$2/g" `pwd`/e0.bash
sed -i "s/dalda/$3/g" `pwd`/e0.bash
sed -i "s/@/%40/g" `pwd` /e0.bash
for i in `seq 1 $1`;
do
	file="e"$i."bash"
	rep="c"$i
	cp e0.bash $file
	sed -i "s/c0/$rep/g" `pwd`/$file
	bash $file&
done
