#!/bin/ash

# to stop on first error
set -e

# Install packages
pip install virtualenv
virtualenv env --python=python3.8
source env/bin/activate
pip install -r requirements.txt

# reset Database
export FLASK_APP=core/server.py
flask db upgrade -d core/migrations/

# flask db init -d core/migrations/
# flask db migrate -m "Initial migration." -d core/migrations/
# flask db upgrade -d core/migrations/

# Run server
gunicorn -c gunicorn_config.py core.server:app
