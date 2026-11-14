FROM nginx:alpine

# Copia el sitio estatico al directorio publico de Nginx
COPY src/ /usr/share/nginx/html/

EXPOSE 80

# Verifica que Nginx responda dentro del contenedor
HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
  CMD wget -q --spider http://localhost/ || exit 1
