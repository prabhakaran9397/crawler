#!/bin/bash
curl -s -c c0.txt --data 'username=prabhakaran9397%40gmail.com&password=qwerty931997&login=' http://wikitechy.com/login.php \
> /dev/null

while [ 1 ]; do
	curl -s -b c0.txt http://wikitechy.com/tutorialspoint/ajax/ajax-introduction > /dev/null
	sleep 31
	curl -s -b c0.txt http://wikitechy.com/tutorialspoint/ajax/what-is-ajax > /dev/null
	sleep 31
done

