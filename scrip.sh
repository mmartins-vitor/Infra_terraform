#! /bin/bash
sudo apt update
echo "<h1> Ana formata o celular por favor</h1>" > index.html
nohup busybox httpd -f -p 8080 &