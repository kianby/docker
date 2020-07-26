#!/bin/bash

# clone and build  blog
cd / 
git clone https://github.com/kianby/blog.git
cd /blog
rm -rf _site
make

# nginx serve
nginx -g 'daemon off;'
