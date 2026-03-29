# Dry-Run Soutenance Script

- Generated at (UTC): `2026-03-29 03:07:29Z`
- Total duration: `15 min`
- D6 readiness status: `PASS`
- Pre-soutenance checklist: `PASS`
- JSON script: `outputs/soutenance/DRY_RUN_SOUTENANCE.json`

## Timeline (minute-by-minute)

| Slot | Segment | What to say | Demo action |
|---|---|---|---|
| `0-1` | Contexte et objectif | Je presente une plateforme d'audit CV pour profils PhD/Postdoc vers industrie, avec garde-fous anti-hallucination. | Afficher la slide 1-page. |
| `1-3` | Probleme scientifique | Le probleme est la traductibilite recherche -> impact industrie, avec preuves verifiables. | Montrer la motivation et les limites des approches heuristiques. |
| `3-5` | Architecture logique (6 couches) | Le systeme combine ingestion, memoire hybride, orchestration LangGraph, agents experts, scoring, et sorties. | Afficher le schema d'architecture. |
| `5-7` | Hardening technique | Nous avons introduit fail-closed, Cypher parametre, integrite d'index, chiffrement PII, et cleanup temp. | Presenter la liste de controles de securite. |
| `7-9` | D3 - Qualite extraction | Je montre precision/recall/F1 et metriques anti-hallucination. | Executer test D3 et ouvrir metrics_d3/report_d3. |
| `9-10` | D4 - Ablation | Le baseline doit surpasser les variantes degradees, ce qui valide la contribution des composants. | Executer ablation et montrer le classement des variantes. |
| `10-11` | D5 - Stabilite | Je verifie la repetabilite inter-runs et la variance faible. | Executer stabilite et afficher gate PASS. |
| `11-12` | D6 - Calibration finale | Le scorecard final consolide les seuils et donne un readiness gate. | Executer calibration et montrer readiness PASS/FAIL. |
| `12-13` | Checklist avant demo | Je securise la demo avec une checklist automatique pre-soutenance. | Executer checklist et montrer PASS global. |
| `13-14` | Pack de soutenance | Le pack est genere automatiquement avec architecture, securite et validation. | Executer generation pack et ouvrir SOUTENANCE_1PAGE.md. |
| `14-15` | Limites et roadmap | La limite principale est la taille du golden set; roadmap: extension dataset et couverture domaines. | Conclure avec plan d'industrialisation et Q&A. |

## Command checklist (live demo)

- `.\scripts\test_d3.ps1`
- `.\scripts\test_d4_ablation.ps1`
- `.\scripts\test_d5_stability.ps1`
- `.\scripts\test_d6_calibration.ps1`
- `.\scripts\test_e2_checklist.ps1`
- `.\scripts\test_e1_pack.ps1`

## Fallback protocol

- If a command fails, show latest generated artifact from `outputs/evaluation/d3/`.
- Keep narrative focused on methodology and validated gates (D3/D4/D5/D6).
- If API is unavailable, present deterministic and previously generated evidence.