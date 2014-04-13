#!/bin/bash
# script to generate and upload londonjoinery.com to nimbus
rm -rf /tmp/jekyllbuild
bundle exec jekyll build -d /tmp/jekyllbuild
rsync -avzPhc --stats /tmp/jekyllbuild/* bob@nimbus.geekcloud.com:web/vhosts/londonjoinery.com/
