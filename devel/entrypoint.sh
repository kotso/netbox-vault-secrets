#!/bin/bash

source /opt/netbox/venv/bin/activate

pip install -e /src

python /opt/netbox/netbox/manage.py collectstatic --no-input

exec /opt/netbox/docker-entrypoint.sh "$@"
