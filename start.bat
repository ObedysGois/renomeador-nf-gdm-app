@echo off
echo ========================================
echo   Renomeador de NF - GDM
echo ========================================
echo.
echo Iniciando o servidor backend...
echo.

cd /d "%~dp0server"
start "Backend Server" cmd /k "node index.js"

echo.
echo Aguardando 3 segundos para o servidor inicializar...
timeout /t 3 /nobreak > nul

echo.
echo Iniciando o aplicativo React...
echo.

cd /d "%~dp0renomeador-nf-gdm-app"
start "React App" cmd /k "npm start"

echo.
echo ========================================
echo   Aplicativo iniciado com sucesso!
echo ========================================
echo.
echo Backend: http://localhost:5000
echo Frontend: http://localhost:3000
echo.
echo Pressione qualquer tecla para fechar esta janela...
pause > nul 