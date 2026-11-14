# Reserva de horas medicas - Proyecto DevOps

Servicio web estatico de reserva de horas medicas para una empresa del rubro salud, servido con Nginx dentro de un contenedor Docker. Proyecto integrador de la asignatura DevOps (IACC).

## Requisitos
- Git, Docker Desktop (iniciado) y navegador web.

## Instalacion
1. Clonar el repositorio:
   git clone https://github.com/Geraldrivera10/reserva-horas-devops.git
2. Entrar a la carpeta: cd reserva-horas-devops
3. Crear el archivo de variables: cp .env.example .env (Windows: copy .env.example .env)

## Ejecucion
docker compose up -d --build

## Verificacion
- Abrir http://localhost:8080 en el navegador.
- Estado: docker compose ps
- Logs: docker logs reserva-horas-web
- Metricas: docker stats --no-stream

## Detencion
docker compose down

## Seguridad
- No se versionan credenciales ni datos reales: .env esta en .gitignore y solo se publica .env.example.
- El formulario usa datos ficticios y no envia informacion a ningun servidor. No ingresar datos personales reales.
