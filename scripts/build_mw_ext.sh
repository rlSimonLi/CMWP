#!/bin/bash

cd /var/mw

# you have to do this twice for some reason
composer update --no-dev
composer update --no-dev

# output just to make sure this works
ls /var/mw/extensions