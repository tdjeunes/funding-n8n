#!/bin/bash
source .env
curl -s http://localhost:5678/api/v1/workflows \
  -H "X-N8N-API-KEY: $N8N_API_KEY" | jq '.' > ./workflow.json
