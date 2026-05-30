#!/bin/bash

docker kill n8n 2>/dev/null || true
docker rm n8n 2>/dev/null || true

echo "Container destroyed, but data volume 'n8n_data' is kept intact."
