#!/bin/bash

python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic
gunicorn webpython.wsgi -b 0.0.0.0:8080 -w 3