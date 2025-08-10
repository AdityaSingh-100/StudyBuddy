#!/bin/bash

# Install dependencies
pip install -r requirements.txt

# Run database migrations
python studybud/manage.py migrate

# Collect static files
python studybud/manage.py collectstatic --noinput

# Start the Django server
python studybud/manage.py runserver 0.0.0.0:$PORT
