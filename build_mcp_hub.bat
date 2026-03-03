@echo off
echo ==========================================
echo [Team Sigma] Building mcp-hub Docker Image
echo ==========================================
echo.
echo Building image... This may take a few minutes for the first time.
docker build -t mcp-hub -f Dockerfile .
echo.
echo Done. You can now use 'docker run -i --rm mcp-hub npx [mcp-server]'
echo ==========================================
pause
