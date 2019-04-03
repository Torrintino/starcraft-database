#!/bin/bash

scp frontend/* pi@himbeergeist:/home/pi/frontend
ssh pi@himbeergeist "sudo cp frontend/* /var/www/nginx"
