#!/bin/bash
source .env
WORKFLOW=$(jq '.data[0] | {name, nodes, connections, staticData, pinData, settings: {executionOrder: .settings.executionOrder}}' ./workflow.json)
WORKFLOW_ID=$(jq -r '.data[0].id' ./workflow.json)

curl -X PUT http://localhost:5678/api/v1/workflows/$WORKFLOW_ID \
  -H "Content-Type: application/json" \
  -H "X-N8N-API-KEY: $N8N_API_KEY" \
  -d "$WORKFLOW"
