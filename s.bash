#!/bin/bash
curl -c cookie.txt --data 'username=prabhakaran9397%40gmail.com&password=qwerty931997&login=' http://wikitechy.com/login.php

while [ 1 ]; do
	curl -b cookie.txt http://wikitechy.com/tutorialspoint/node-js/nodejs-introduction
	sleep 31
	curl -b cookie.txt http://wikitechy.com/tutorialspoint/node-js/nodejs-advantages
	sleep 31
done
