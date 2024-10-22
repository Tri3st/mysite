#!/bin/sh
# entry point for api


set -e

# migrate runs

cd /home/Triest/backend

python manage.py collectstatic --no-input
python manage.py migrate

python manage.py runserver 0.0.0.0:8001
