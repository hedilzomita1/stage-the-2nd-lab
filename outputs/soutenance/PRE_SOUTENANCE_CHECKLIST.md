# Pre-Soutenance Checklist Report

- Generated at (UTC): `2026-03-29 03:03:27Z`
- Project root: `C:/Users/hadil/OneDrive/Bureau/ULAVAL/maitrise/stage sem 2/AEBM_Project`
- Global status: `PASS` (16/16 checks)

## 1) Required files

- [PASS] App entrypoint: `C:/Users/hadil/OneDrive/Bureau/ULAVAL/maitrise/stage sem 2/AEBM_Project/app.py`
- [PASS] Launcher: `C:/Users/hadil/OneDrive/Bureau/ULAVAL/maitrise/stage sem 2/AEBM_Project/Demarrer_The_Sovereign.bat`
- [PASS] Guide utilisateur: `C:/Users/hadil/OneDrive/Bureau/ULAVAL/maitrise/stage sem 2/AEBM_Project/Guide_Utilisation.md`
- [PASS] D3 metrics: `C:/Users/hadil/OneDrive/Bureau/ULAVAL/maitrise/stage sem 2/AEBM_Project/outputs/evaluation/d3/metrics_d3.json`
- [PASS] D4 ablation: `C:/Users/hadil/OneDrive/Bureau/ULAVAL/maitrise/stage sem 2/AEBM_Project/outputs/evaluation/d3/ablation_d4.json`
- [PASS] D5 stability: `C:/Users/hadil/OneDrive/Bureau/ULAVAL/maitrise/stage sem 2/AEBM_Project/outputs/evaluation/d3/stability_d5.json`
- [PASS] D6 calibration: `C:/Users/hadil/OneDrive/Bureau/ULAVAL/maitrise/stage sem 2/AEBM_Project/outputs/evaluation/d3/calibration_d6.json`
- [PASS] Soutenance 1-page: `C:/Users/hadil/OneDrive/Bureau/ULAVAL/maitrise/stage sem 2/AEBM_Project/outputs/soutenance/SOUTENANCE_1PAGE.md`
- [PASS] Soutenance detaillee: `C:/Users/hadil/OneDrive/Bureau/ULAVAL/maitrise/stage sem 2/AEBM_Project/outputs/soutenance/SOUTENANCE_DETAILLEE.md`

## 2) Environment readiness

- [PASS] Env var GROQ_API_KEY: `configured`
- [PASS] Env var NEO4J_URI: `configured`
- [PASS] Env var NEO4J_USER: `configured`
- [PASS] Env var NEO4J_PASSWORD: `configured`

## 3) Quality gates

- [PASS] D3 quality gate: `PASS`
- [PASS] D5 stability gate: `PASS`
- [PASS] D6 readiness gate: `PASS`

## 4) Demo command sequence

```powershell
.\scripts\test_d3.ps1
.\scripts\test_d4_ablation.ps1
.\scripts\test_d5_stability.ps1
.\scripts\test_d6_calibration.ps1
.\scripts\test_e1_pack.ps1
python -m pytest -c pytest.ini tests_d1 -q
```