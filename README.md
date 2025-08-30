## 16UltraPro

Automatización ligera y adaptable en entornos móviles (Termux + Node.js + Slack + Email). Proyecto enfocado en pruebas de barrera, notificaciones y despliegue rápido.

---

## 🚀 Descripción

16UltraPro es un proyecto que combina:

- **Node.js + Express**: Servidor web para monitoreo.  
- **barrera.js**: Bloqueo y registro de eventos con alertas en Slack.  
- **Dashboard web**: Visualización de métricas en tiempo real usando Chart.js y Socket.IO.  
- **Notificaciones**: Slack (Webhook o Bot Token) y Email (Gmail App Password).  
- **Ejecución persistente**: Compatible con Termux usando `nohup` o multiplexores de terminal como `tmux`.  

Este repositorio está pensado para entornos Android/Termux, pero puede adaptarse a cualquier servidor Linux con Node.js.

---

## ⚙️ Instalación rápida en Termux

```bash
# Actualizar Termux
pkg update -y && pkg upgrade -y

```

# Instalar utilidades necesarias
pkg install -y nodejs git nano curl termux-api

# Clonar repositorio
git clone https://thrumanshow.github.io/16UltraPro/

# Instalar dependencias Node.js
npm install
npm install -g nodemon localtunnel

```
