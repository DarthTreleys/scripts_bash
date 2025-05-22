#!/bin/bash

# Actualizar sistema
echo "Actualizando sistema..."
sudo apt update && sudo apt upgrade -y

# Instalar Nginx y ffmpeg (opcional, por si quieres convertir vídeos)
echo "Instalando Nginx y FFmpeg..."
sudo apt install -y nginx ffmpeg

# Crear carpeta para vídeos
echo "Creando carpeta de vídeos en /var/www/html/videos..."
sudo mkdir -p /var/www/html/videos
sudo chmod -R 755 /var/www/html/videos

# Permitir acceso por el puerto 80
echo "Configurando firewall..."
sudo ufw allow 'Nginx Full'

# Reiniciar Nginx
echo "Reiniciando Nginx..."
sudo systemctl restart nginx

# Mensaje final
echo "✅ Servidor de vídeo instalado."
echo "📁 Coloca tus archivos MP4 en /var/www/html/videos"
echo "🌐 Accede desde un navegador con: http://TU_IP/videos/archivo.mp4"
