FROM n8nio/n8n:latest

# Script de arranque para respetar el puerto que Render asigna
# Usando --chmod=755 para copiar con permisos de ejecución
COPY --chmod=755 start.sh /start.sh

# n8n guardará datos en /home/node/.n8n (¡lo montaremos como disco!)
WORKDIR /home/node

CMD ["/start.sh"]
