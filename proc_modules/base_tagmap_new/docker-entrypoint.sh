#!/bin/bash
# docker-entrypoint.sh

echo "Starting processing module..."
python /app/tagmap_new.py "$MERCURE_IN_DIR" "$MERCURE_OUT_DIR"
exit_code=$?
echo "Processing complete with exit code: $exit_code"
exit $exit_code