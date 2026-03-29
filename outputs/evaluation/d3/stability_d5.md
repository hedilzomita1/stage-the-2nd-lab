# D5 Stability Report

- Generated at (UTC): `2026-03-29 02:45:33Z`
- Protocol: `d5_stability_v1`
- Runs: `10`
- Golden set: `evaluation/d3/golden_set.template.jsonl`
- Predictions: `evaluation/d3/predictions.template.jsonl`
- JSON output: `outputs/evaluation/d3/stability_d5.json`

## Aggregate Statistics

| Metric | Mean | Std | Min | Max |
|---|---:|---:|---:|---:|
| `micro_f1` | `0.8571` | `0.0` | `0.8571` | `0.8571` |
| `unsupported_evidence_rate` | `0.3333` | `0.0` | `0.3333` | `0.3333` |
| `false_claim_acceptance_rate` | `0.5` | `0.0` | `0.5` | `0.5` |

## Stability Gate

- Status: `PASS`
- Reason: `PASS: stability variance thresholds satisfied.`

## Per-run snapshot

| Run | Micro F1 | Unsupported Evidence Rate | False Claim Acceptance Rate | Quality Gate |
|---:|---:|---:|---:|---|
| 1 | 0.8571 | 0.3333 | 0.5 | PASS |
| 2 | 0.8571 | 0.3333 | 0.5 | PASS |
| 3 | 0.8571 | 0.3333 | 0.5 | PASS |
| 4 | 0.8571 | 0.3333 | 0.5 | PASS |
| 5 | 0.8571 | 0.3333 | 0.5 | PASS |
| 6 | 0.8571 | 0.3333 | 0.5 | PASS |
| 7 | 0.8571 | 0.3333 | 0.5 | PASS |
| 8 | 0.8571 | 0.3333 | 0.5 | PASS |
| 9 | 0.8571 | 0.3333 | 0.5 | PASS |
| 10 | 0.8571 | 0.3333 | 0.5 | PASS |