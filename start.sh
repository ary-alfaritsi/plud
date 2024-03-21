#!/bin/bash

rm -f /tmp/com.com
/usr/bin/perl prepare.pl >> /tmp/com.com

while read -r line; do { 
	/usr/bin/perl udp.pl $line &
} done </tmp/com.com

