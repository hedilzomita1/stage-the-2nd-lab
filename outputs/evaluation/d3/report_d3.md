# D3 Evaluation Report

- Generated at (UTC): `2026-03-29 02:37:56Z`
- Protocol: `d3_v1`
- Golden set: `evaluation/d3/golden_set.template.jsonl`
- Predictions: `evaluation/d3/predictions.template.jsonl`
- JSON metrics: `outputs/evaluation/d3/metrics_d3.json`

## Summary

| Metric | Value |
|---|---:|
| `samples_total` | `2` |
| `samples_with_prediction` | `2` |
| `coverage_rate` | `1.0` |
| `micro_precision` | `0.75` |
| `micro_recall` | `1.0` |
| `micro_f1` | `0.8571` |
| `macro_precision` | `0.75` |
| `macro_recall` | `1.0` |
| `macro_f1` | `0.8571` |
| `unsupported_evidence_rate` | `0.3333` |
| `false_claim_acceptance_rate` | `0.5` |
| `gate_status` | `PASS` |
| `gate_reason` | `PASS: micro_f1=0.8571 >= min_micro_f1=0.7000` |

## Per-sample details

| Sample | TP | FP | FN | Precision | Recall | F1 | Unsupported Evidence | False Accept Absent |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| `CV_001` | `3` | `1` | `0` | `0.75` | `1.0` | `0.8571` | `1` | `1` |
| `CV_002` | `3` | `1` | `0` | `0.75` | `1.0` | `0.8571` | `1` | `1` |

## Notes

- `unsupported_evidence_rate` measures evidence not supported by CV text.
- `false_claim_acceptance_rate` measures predicted absent skills accepted as present.
- Use these metrics for regression tracking between model/prompt versions.
