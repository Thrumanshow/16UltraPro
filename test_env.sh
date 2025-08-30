#!/data/data/com.termux/files/usr/bin/bash
# ------------------------------
# test_env.sh - Prueba de entorno 16UltraPro en Termux
# ------------------------------

REPO_DIR=~/16UltraPro
ENV_FILE="$REPO_DIR/.env"

# Verificar existencia del archivo .env
if [ ! -f "$ENV_FILE" ]; then
    echo "❌ No se encontró $ENV_FILE"
    exit 1
fi

# Cargar variables del .env
export $(grep -v '^#' "$ENV_FILE" | xargs)

echo "==============================="
echo "🔹 Prueba de entorno 16UltraPro 🔹"
echo "==============================="

# Verificar variables críticas
[[ -z "$SLACK_WEBHOOK_URL" ]] && echo "❌ SLACK_WEBHOOK_URL no definida" || echo "✅ SLACK_WEBHOOK_URL cargada"
[[ -z "$SLACK_CHANNEL" ]] && echo "❌ SLACK_CHANNEL no definido" || echo "✅ SLACK_CHANNEL cargado"
[[ -z "$SMTP_USER" ]] && echo "❌ SMTP_USER no definido" || echo "✅ SMTP_USER cargado"
[[ -z "$SMTP_PASS" ]] && echo "❌ SMTP_PASS no definido" || echo "✅ SMTP_PASS cargado"
[[ -z "$THRESHOLD" ]] && echo "❌ THRESHOLD no definido" || echo "✅ THRESHOLD cargado ($THRESHOLD)"
[[ -z "$PORT" ]] && echo "❌ PORT no definido" || echo "✅ PORT cargado ($PORT)"

# Verificar Node.js
if command -v node &>/dev/null; then
    echo "✅ Node.js instalado: $(node -v)"
else
    echo "❌ Node.js no está instalado"
fi

# Verificar acceso a archivos principales
for file in index.js barrera.js patch_hibrido.js; do
    [ -f "$REPO_DIR/$file" ] && echo "✅ $file existe" || echo "❌ $file NO existe"
done

echo ""
echo "🔹 Prueba finalizada. Si todos los checks son ✅, el entorno está listo para correr run16.sh 🔹"
