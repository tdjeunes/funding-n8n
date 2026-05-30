#!/bin/bash
#
# Idempotent script to build and run the n8n container with
# custom resources.
#

touch .env
docker build -t n8n-custom .
# volume create is idempotent.
docker volume create n8n_data
./scripts/destroy-but-keep-data.sh
docker run -d \
  --name n8n \
  -p 5678:5678 \
  -e GENERIC_TIMEZONE="America/Montreal" \
  -e TZ="America/Montreal" \
  -v n8n_data:/home/node/.n8n \
  --env-file .env \
  -e N8N_BLOCK_ENV_ACCESS_IN_NODE=false \
  -e NODE_FUNCTION_ALLOW_EXTERNAL=mammoth \
  --restart unless-stopped \
  n8n-custom

echo "Visit http://localhost:5678 to access n8n (you might need to wait a minute or so). Use 'docker logs -f n8n' to see the logs."
