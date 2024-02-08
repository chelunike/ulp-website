
# ULP Website

Página web oficial de la UGR LAN Party 2024.

## Instalación Docker para desarrollo

1. Construir la imagen de Docker:

```bash
docker build -t ulp-website:latest .
```

2. Ejecutar el contenedor:

```bash
docker run -d -v ./src:/app/src -p 4321:4321 ulp-website:latest
```
