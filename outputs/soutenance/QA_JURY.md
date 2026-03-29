# Q&A Jury - Soutenance

- Generated at (UTC): `2026-03-29 03:23:08Z`

## Questions et reponses pretes

### Q1. Quelle est la contribution scientifique principale ?
Une pipeline agentique avec garde-fous anti-hallucination et validation en 4 gates (D3-D6), au lieu d un simple scoring heuristique.

### Q2. Comment prouvez-vous que le modele n hallucine pas ?
Par metriques explicites: unsupported_evidence_rate=0.3333, false_claim_acceptance_rate=0.5, plus fail-closed en cas d erreur LLM.

### Q3. Pourquoi utiliser LangGraph ici ?
Pour orchestrer proprement les agents par mode (interne vs candidat), tracer les branches, et imposer des points d agregation et gates verifiables.

### Q4. Comment gerez-vous les risques securite ?
Cypher parametre, vault PII chiffre FR/EN, controle d integrite des index (SHA256), et cleanup des fichiers temporaires.

### Q5. Comment garantissez-vous la reproductibilite ?
Tests automatises + stabilite D5 (status=PASS) + scorecard D6 (status=PASS) + scripts de re-run complets.

### Q6. Quel est le niveau actuel de performance ?
Micro-F1 D3=0.8571 sur le golden set courant. Les gates D3=PASS, D5=PASS et D6=PASS.

### Q7. Quelle est la principale limite actuelle ?
La taille du golden set est encore limitee. L axe prioritaire est d augmenter le corpus annote pour renforcer la validite externe.

### Q8. Pourquoi garder un composant deterministe si vous utilisez un LLM ?
Le deterministe sert de garde-fou et de base defendable; le LLM enrichit, mais ne doit pas casser les contraintes de preuve.

### Q9. Si l API LLM tombe pendant la demo, que se passe-t-il ?
Le systeme reste exploitable en mode securise (fail-closed), et la soutenance s appuie sur les artefacts deja generes (D3-D6, pack E1/E2/E3).

### Q10. Quelle roadmap apres soutenance ?
Extension du golden set multi-domaines, calibration des seuils par cohorte, et suivi longitudinal des erreurs par type de profil.