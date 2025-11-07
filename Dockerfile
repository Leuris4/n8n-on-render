FROM n8nio/n8n:latest

WORKDIR /home/node

ENV N8N_HOST=0.0.0.0
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Usar forma exec en lugar de shell
CMD ["sh", "-c", "N8N_PORT=${PORT:-5678} n8n start"]