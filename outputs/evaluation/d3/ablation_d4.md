# D4 Ablation Report

- Generated at (UTC): `2026-03-29 02:37:27Z`
- Golden set: `evaluation/d3/golden_set.template.jsonl`
- Variants dir: `evaluation/d3/variants`
- Baseline variant: `baseline`
- JSON output: `outputs/evaluation/d3/ablation_d4.json`
- CSV output: `outputs/evaluation/d3/ablation_d4.csv`

## Variant Comparison

| Rank | Variant | Gate | Micro F1 | Delta vs Baseline | Unsupported Evidence Rate | False Claim Acceptance Rate | Coverage |
|---:|---|---|---:|---:|---:|---:|---:|
| 1 | `baseline` | `PASS` | `0.8571` | `0.0` | `0.3333` | `0.5` | `1.0` |
| 2 | `noisy_no_evidence` | `FAIL` | `0.0` | `-0.8571` | `1.0` | `1.0` | `1.0` |

## Notes

- Ranking is sorted by `micro_f1` descending.
- `delta_micro_f1_vs_baseline` > 0 means improvement over baseline.