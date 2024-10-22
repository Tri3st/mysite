#!/bin/sh
# entry point for api


set -e

# migrate runs

cd /home/Triest/mysite/

python manage.py collectstatic --no-input
python manage.py migrate

python manage.py runserver 
