#!/bin/bash
source .env
jq '.data' workflow.json > workflow_fixed.json
docker cp workflow_fixed.json n8n:/tmp/workflow_fixed.json
docker exec n8n n8n import:workflow --input=/tmp/workflow_fixed.json
