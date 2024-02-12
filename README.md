
<p align="center">
  <img align="center" src="https://github.com/chelunike/ulp-website/blob/master/public/assets/logo/logo-black.png?raw=True#gh-light-mode-only" width="350" height="350">
  <img align="center" src="https://github.com/chelunike/ulp-website/blob/master/public/assets/logo/logo-white.png?raw=True#gh-dark-mode-only" width="350" height="350">
</p>

# ULP Website

Página web oficial de la UGR LAN Party 2024.

## Instalación Docker para desarrollo

1. Construir la imagen de Docker:

```bash
docker build -t ulp-website:latest .
```

2. Ejecutar el contenedor:

```bash
docker run -d -v ./src:/app/src -v ./public:/app/public -p 4321:4321 ulp-website:latest
```
