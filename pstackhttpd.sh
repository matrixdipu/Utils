#!/bin/bash

for i in $( pgrep httpd );do
echo "---------------------------------------------------------">> /tmp/pstackhttpd.txt;
date >> /tmp/pstackhttpd.txt;
pstack $i >> /tmp/pstackhttpd.txt;
echo "-----------------------------------------------------" >> /tmp/pstackhttpd.txt;
done
