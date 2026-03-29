# AEBM - Soutenance 1 Page (Architecture + Validation)

- Generated (UTC): `2026-03-29 02:56:16Z`

## 1) Problem and contribution
- Goal: robust CV audit for PhD/Postdoc -> industry transition.
- Core contribution: hybrid agentic pipeline with anti-hallucination controls.
- Two operating modes: Internal hiring flow and Candidate CV-only flow.

## 2) Logical architecture (6 layers)
- Ingestion: parsing, PII guard, state initialization.
- Memory/Retrieval: FAISS + BM25 + Neo4j ontology.
- Orchestration: LangGraph conditional routing by mode.
- Agents: bridge, auditor, CV global advisor, role recommender.
- Scoring: mode-aware scoring + deterministic/LLM controls.
- Outputs: Streamlit UI, Markdown/JSON reports, evaluation artifacts.

## 3) Engineering hardening done
- Unique thread ids per run/session (state collision mitigation).
- Auditor fail-closed (no auto-validation on LLM failures).
- Neo4j Cypher parameterization (no string-injected queries).
- Vector store integrity manifest with SHA256 verification.
- FR/EN PII detection + encrypted vault handling.
- Temp files retention and cleanup policy.

## 4) Scientific validation status
- D3 quality gate: `PASS` (micro_f1=0.8571).
- D4 ablation top variant: `baseline` (micro_f1=0.8571).
- D5 stability gate: `PASS`.
- D6 readiness gate (final): `PASS`.

## 5) Current quantitative snapshot
- micro_precision: `0.75`
- micro_recall: `1`
- micro_f1: `0.8571`
- unsupported_evidence_rate: `0.3333`
- false_claim_acceptance_rate: `0.5`

## 6) Limits and next step
- Golden set currently small; scale to real annotated dataset for stronger external validity.
- Next step: expand domain coverage and re-run D3-D6 automatically in CI.