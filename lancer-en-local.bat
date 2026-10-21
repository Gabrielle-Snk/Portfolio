@echo off
rem Lance le portfolio sur http://localhost:8000 (necessaire pour lire le trailer YouTube sur la page).
rem Ferme cette fenetre pour arreter le serveur.
cd /d "%~dp0"
start "" cmd /c "timeout /t 2 >nul & start http://localhost:8000/index.html"
python -m http.server 8000 2>nul || py -m http.server 8000 2>nul || npx --yes serve -l 8000 .
pause
