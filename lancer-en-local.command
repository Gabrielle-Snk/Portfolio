#!/bin/bash
# Lance le portfolio sur http://localhost:8000 (necessaire pour lire le trailer YouTube sur la page).
# Ctrl+C pour arreter. (Mac : si besoin, "chmod +x lancer-en-local.command" une fois.)
cd "$(dirname "$0")"
(sleep 1; (open http://localhost:8000/index.html || xdg-open http://localhost:8000/index.html) >/dev/null 2>&1) &
python3 -m http.server 8000
