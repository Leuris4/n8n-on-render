#!/usr/bin/env bash
# Render expone el puerto en la variable $PORT; n8n por defecto usa 5678.
export N8N_PORT="${PORT:-5678}"
export N8N_HOST=0.0.0.0
# (opcional pero recomendable si usarás webhooks)
# export N8N_PROTOCOL=https
# export WEBHOOK_URL="https://TU-DOMINIO-RENDER.onrender.com/"

# Arranca n8n
n8n start
