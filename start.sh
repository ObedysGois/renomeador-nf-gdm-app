#!/bin/bash

echo "========================================"
echo "   Renomeador de NF - GDM"
echo "========================================"
echo ""
echo "Iniciando o servidor backend..."
echo ""

# Navegar para a pasta do servidor
cd "$(dirname "$0")/server"

# Iniciar o servidor backend em background
node index.js &
BACKEND_PID=$!

echo ""
echo "Aguardando 3 segundos para o servidor inicializar..."
sleep 3

echo ""
echo "Iniciando o aplicativo React..."
echo ""

# Navegar para a pasta do app React
cd "$(dirname "$0")/renomeador-nf-gdm-app"

# Iniciar o app React em background
npm start &
FRONTEND_PID=$!

echo ""
echo "========================================"
echo "   Aplicativo iniciado com sucesso!"
echo "========================================"
echo ""
echo "Backend: http://localhost:5000"
echo "Frontend: http://localhost:3000"
echo ""
echo "Pressione Ctrl+C para parar ambos os serviços..."

# Função para limpar processos ao sair
cleanup() {
    echo ""
    echo "Parando serviços..."
    kill $BACKEND_PID 2>/dev/null
    kill $FRONTEND_PID 2>/dev/null
    exit 0
}

# Capturar Ctrl+C
trap cleanup SIGINT

# Manter o script rodando
wait 