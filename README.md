# 16UltraPro

**UltraPro16 + barrera.js + Dashboard Web + Slack + Email Alerts**  
Repositorio de ejemplo para Termux/Node.js que automatiza un servidor de monitoreo con dashboard en tiempo real y notificaciones.

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
git clone https://github.com/<thrumanshow>/16UltraPro.git
cd 16UltraPro

# Instalar dependencias Node.js
npm install
npm install -g nodemon localtunnel

```
