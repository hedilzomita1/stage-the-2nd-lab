# Guide Utilisation - The Sovereign (AEBM V5)

## 1. Public cible
Ce guide est pour les superviseurs/non-developpeurs.
Objectif: lancer l'application, faire un audit, et mettre a jour la base candidats sans manipulations techniques complexes.

## 2. Prerequis (une seule fois)
1. Windows + Docker Desktop installe.
2. Projet decompresse dans un dossier local.
3. Fichier `.env` configure.

### 2.1 Configurer le .env
1. Copier `.env.example` vers `.env`.
2. Remplir au minimum:
- `GROQ_API_KEY`
- `NEO4J_PASSWORD`

Exemple:
```env
GROQ_API_KEY=your_groq_key_here
NEO4J_URI=bolt://localhost:7687
NEO4J_USER=neo4j
NEO4J_PASSWORD=your_neo4j_password_here
LLM_MODEL=llama-3.3-70b-versatile
```

## 3. Installation automatique (une seule fois)
Dans PowerShell, depuis la racine projet:
```powershell
.\scripts\install_env.bat
```
Ce script:
- cree/active `.venv`
- installe les dependances (`requirements.lock`)
- lance un preflight de verification

## 4. Lancement quotidien (one-click)
Double-cliquer:
- `Demarrer_The_Sovereign.bat`

Le script fait automatiquement:
1. demarrage Neo4j (Docker)
2. activation venv
3. preflight rapide
4. lancement Streamlit

Ensuite ouvrir:
- http://localhost:8501

Important: ne pas fermer la fenetre noire tant que vous utilisez l'application.

## 5. Utilisation fonctionnelle
### 5.1 Mode Interne
- Uploader l'offre PDF
- Lancer la recherche vectorielle
- Lancer l'audit d'un profil shortlist
- Lire le rapport dans les onglets resultats

### 5.2 Mode Candidat (CV seul)
- Uploader uniquement le CV PDF
- (Optionnel) secteurs/domaines cibles
- Lancer "Generer mon diagnostic CV"
- Lire: diagnostic CV + postes suggeres

## 6. Mise a jour base candidats
### Option A (interface)
Dans le mode interne > expander "Maintenance donnees (Admin)":
- "Lancer Ingestion + Reindexation"

### Option B (terminal)
```powershell
.\.venv\Scripts\python.exe run_phase1_ingestion.py
.\.venv\Scripts\python.exe reindex.py
```

## 7. Depannage rapide
### Cas 1 - Module manquant / import error
Executer:
```powershell
.\scripts\install_env.bat
```

### Cas 2 - Preflight KO
Executer:
```powershell
.\.venv\Scripts\python.exe .\scripts\preflight.py --quick
```
Puis corriger les lignes `[FAIL]` affichees.

### Cas 3 - Neo4j indisponible
- Verifier Docker Desktop lance
- Verifier conteneur `neo4j-aebm` (ou `neo4j`)
- Verifier mot de passe `NEO4J_PASSWORD` dans `.env`

### Cas 4 - Page Streamlit vide
- Cliquer "Reinitialiser l'affichage"
- Relancer `Demarrer_The_Sovereign.bat`

## 8. Bonnes pratiques operationnelles
1. Toujours lancer via `Demarrer_The_Sovereign.bat`.
2. Ne pas modifier `requirements.lock` manuellement.
3. Pour mise a jour package: faire via equipe technique, puis regenerer lock.
4. Garder `data/vault/` protege (contient les artefacts d'anonymisation).

## 9. Arret propre
- Fermer l'onglet navigateur
- Puis fermer la fenetre noire du script

## 10. Commandes qualite (equipe technique)
Tests D1 (rapide):
```powershell
.\scripts\test_d1.bat
```

Tests D1 + couverture (gate 20%):
```powershell
.\scripts\test_d1.bat cov 20
```

Equivalent PowerShell:
```powershell
.\scripts\test_d1.ps1
.\scripts\test_d1.ps1 -Coverage -MinCoverage 20
```

Pack soutenance (1-page + detail):
```powershell
.\scripts\test_e1_pack.ps1
```

Checklist finale avant soutenance:
```powershell
.\scripts\test_e2_checklist.ps1
```

Script dry-run soutenance (timeline + narration):
```powershell
.\scripts\test_e3_dryrun.ps1
```

Pack Q&A jury (questions difficiles + reponses):
```powershell
.\scripts\test_e4_qa.ps1
```

Pack de livraison superviseur (zip partageable):
```powershell
.\scripts\test_e5_bundle.ps1
```

Verdict final de readiness (PASS/FAIL):
```powershell
.\scripts\test_e6_release.ps1
```
