#!/bin/bash
curl -s -c cookie.txt --data 'username=prabhakaran9397%40gmail.com&password=qwerty931997&login=' http://wikitechy.com/login.php \
> /dev/null

while [ 1 ]; do
	curl -s -b cookie.txt http://wikitechy.com/tutorialspoint/node-js/nodejs-introduction > /dev/null
	sleep 31
	curl -s -b cookie.txt http://wikitechy.com/tutorialspoint/node-js/nodejs-advantages > /dev/null
	sleep 31
done
