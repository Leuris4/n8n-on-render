FROM n8nio/n8n:latest

# Script de arranque para respetar el puerto que Render asigna
COPY start.sh /start.sh
RUN ls -l /start.sh && chmod +x /start.sh

# n8n guardará datos en /home/node/.n8n (¡lo montaremos como disco!)
WORKDIR /home/node

CMD ["/start.sh"]
