#! /bin/bash
# get all links from url
wget --spider --recursive --no-verbose --output-file=wgetlog.txt https://blackchaose.github.io/
sed -n "s@.\+ URL:\([^ ]\+\) .\+@\1@p" wgetlog.txt | sed "s@&@\&amp;@" > sedlog.txt
