#!/bin/bash

echo "asdfasdfdsf"
# Define the URL
URL="https://webhook.site/2a84dbd8-ef52-4f9e-9087-1b802dda9877"

# Define the data using GoCD environment variables
DATA='{
    "GO_SERVER_URL": "'"$GO_SERVER_URL"'",
    "GO_ENVIRONMENT_NAME": "'"$GO_ENVIRONMENT_NAME"'",
    "GO_PIPELINE_NAME": "'"$GO_PIPELINE_NAME"'",
    "GO_PIPELINE_COUNTER": "'"$GO_PIPELINE_COUNTER"'",
    "GO_PIPELINE_LABEL": "'"$GO_PIPELINE_LABEL"'",
    "GO_STAGE_NAME": "'"$GO_STAGE_NAME"'",
    "GO_STAGE_COUNTER": "'"$GO_STAGE_COUNTER"'",
    "GO_JOB_NAME": "'"$GO_JOB_NAME"'",
    "GO_TRIGGER_USER": "'"$GO_TRIGGER_USER"'",
    "GO_DEPENDENCY_LABEL": "'"$GO_DEPENDENCY_LABEL"'",
    "GO_DEPENDENCY_LOCATOR": "'"$GO_DEPENDENCY_LOCATOR"'",
    "GO_REVISION": "'"$GO_REVISION"'",
    "GO_TO_REVISION": "'"$GO_TO_REVISION"'",
    "GO_FROM_REVISION": "'"$GO_FROM_REVISION"'",
    "GO_MATERIAL_HAS_CHANGED": "'"$GO_MATERIAL_HAS_CHANGED"'"
}'

# Set content type
CONTENT_TYPE="Content-Type: application/json"

# Post the data using curl
curl -X POST -H "$CONTENT_TYPE" -d "$DATA" "$URL"
