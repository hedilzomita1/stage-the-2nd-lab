@echo off
setlocal EnableExtensions EnableDelayedExpansion
cd /d "%~dp0"

title The Sovereign - Demarrage
color 0B

echo =======================================================
echo     INITIALISATION 
echo =======================================================
echo.

echo [1/3] Demarrage du Cerveau Graphe (Neo4j)...
where docker >nul 2>nul
if errorlevel 1 (
    echo [WARN] Docker n'est pas detecte dans le PATH.
    echo        Assurez-vous que Docker Desktop est lance.
) else (
    set "TARGET_CONTAINER=%NEO4J_CONTAINER%"
    if not defined TARGET_CONTAINER set "TARGET_CONTAINER=neo4j-aebm"

    docker start "%TARGET_CONTAINER%" >nul 2>nul
    if errorlevel 1 (
        docker start "neo4j" >nul 2>nul
        if errorlevel 1 (
            echo [WARN] Impossible de demarrer Neo4j automatiquement.
            echo        Verifiez Docker Desktop et le nom du conteneur.
            echo        Nom attendu par defaut: neo4j-aebm ou neo4j.
        ) else (
            set "TARGET_CONTAINER=neo4j"
            echo [OK] Conteneur Neo4j "%TARGET_CONTAINER%" demarre ou deja actif.
            timeout /t 5 /nobreak >nul
        )
    ) else (
        echo [OK] Conteneur Neo4j "%TARGET_CONTAINER%" demarre ou deja actif.
        timeout /t 5 /nobreak >nul
    )
)
echo.

echo [2/3] Activation de l'environnement Python...
if not exist ".\.venv\Scripts\activate.bat" (
    echo [ERREUR] Environnement virtuel introuvable: .\.venv\Scripts\activate.bat
    echo          Creez le venv une fois, puis relancez ce script.
    goto :end
)
call ".\.venv\Scripts\activate.bat"
if errorlevel 1 (
    echo [ERREUR] Echec activation du venv.
    goto :end
)
echo [OK] venv active.
echo.

echo [3/4] Verification preflight...
python scripts\preflight.py --quick
if errorlevel 1 (
    echo [ERREUR] Preflight KO. Corrigez les erreurs puis relancez.
    goto :end
)
echo [OK] Preflight valide.
echo.

echo [4/4] Ouverture de l'interface web...
python -m streamlit --version >nul 2>nul
if errorlevel 1 (
    echo [ERREUR] Streamlit n'est pas installe dans le venv.
    echo          Lancez une fois: scripts\install_env.bat
    goto :end
)
echo Ne fermez pas cette fenetre noire pendant l'utilisation.
echo.
python -m streamlit run app.py

:end
echo.
echo =======================================================
echo  Fin du script.
echo =======================================================
pause
exit /b
