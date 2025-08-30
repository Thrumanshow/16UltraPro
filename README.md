# 16UltraPro — Servidor Node.js + barrera.js + Dashboard en tiempo real

**UltraPro16** es un servidor Node.js optimizado para **Termux en Android**, con:

- `barrera.js` para bloquear acciones y registrar intentos.
- Alertas en **Slack** (Webhook o Bot Token) y correo **Gmail**.
- Dashboard en tiempo real con **Socket.IO + Chart.js**.
- Ejecución automática “one-paste” y en segundo plano (`nohup` o `tmux`).

---

## 🚀 Requisitos

- Termux en Android
- Node.js ≥ 18
- npm
- localtunnel (`npm install -g localtunnel`)
- Conexión a Internet
- Credenciales Slack y Gmail (opcional para alertas)

---

## 🛠 Instalación rápida

1. Clona el repo o copia el script de instalación.
2. Crea `.env` en `~/miapp` con tus credenciales.
3. Da permisos de ejecución:

```bash
chmod +x ~/miapp/run16.sh
chmod +x ~/miapp/panel.sh
