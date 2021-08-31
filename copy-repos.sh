#!/bin/bash
set -e

# Check the two repos can be found
if [ ! -d ../sd-webhook-framework ]; then
    echo "Cannot find sd-webhook-framework"
    exit 1
fi
if [ ! -d ../cl-sd-handlers ]; then
    echo "Cannot find cl-sd-handlers"
    exit 1
fi

# Clean up any previous copy
if [ -d rt_handlers ]; then
    rm -rf rt_handlers
fi
if [ -d shared ]; then
    rm -rf shared
fi

cp ../sd-webhook-framework/app.py ./
cp ../sd-webhook-framework/Pipfile ./
cp -R "../sd-webhook-framework/shared" ./
cp -R "../cl-sd-handlers/" ./
mv cl-sd-handlers rt_handlers
