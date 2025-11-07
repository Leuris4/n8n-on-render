FROM n8nio/n8n:latest

# n8n guardará datos en /home/node/.n8n
WORKDIR /home/node

# Variables de entorno necesarias
ENV N8N_HOST=0.0.0.0
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Comando directo sin script
CMD N8N_PORT=${PORT:-5678} n8n start