# MedSci Skills Demo 1: Wisconsin Breast Cancer

> **One dataset, five skills, one publication-ready manuscript.**

## Demo Overview

| Item | Value |
|------|-------|
| Dataset | Wisconsin Breast Cancer (UCI/sklearn) |
| Samples | 569 (357 benign, 212 malignant) |
| Skills Used | 6 (analyze-stats, make-figures, write-paper, check-reporting, present-paper, clean-data template) |
| Total Scripts | 3 Python files |
| Output Files | 16 (CSV x3, PDF x1, PNG x1, PPTX x1, MD x4, LOG x3, PY x3) |
| Data Loading | 1 line (`sklearn.datasets.load_breast_cancer()`) |

---

## Pipeline Flow

```
sklearn.datasets.load_breast_cancer()     # 1 line — zero download
        |
        v
  [clean-data template]
  01_load_data.py → data/breast_cancer_clinical.csv
        |
        v
  [analyze-stats]
  02_analyze.py
    ├── Table 1: Demographics (benign vs malignant)
    ├── 3-model comparison (LR, RF, SVM)
    ├── ROC curves with DeLong 95% CIs
    └── Pairwise DeLong tests
        |
        v
  [make-figures]
  → figures/roc_curve.png (300 dpi, publication-ready)
  → figures/roc_curve.pdf (vector)
        |
        v
  [write-paper]
  → output/manuscript_draft.md (IMRAD, ~1,600 words)
        |
        v
  [check-reporting]
  → output/stard_compliance_report.md (30-item STARD audit)
        |
        v
  [present-paper]
  → output/presentation.pptx (12 slides + speaker notes)
```

---

## Key Results

### Model Performance (5-fold CV)

| Model | AUC (95% CI) | Sensitivity | Specificity | Accuracy |
|-------|-------------|-------------|-------------|----------|
| **Logistic Regression** | **0.995 (0.990-1.000)** | 0.943 | 0.992 | 0.974 |
| SVM (RBF) | 0.994 (0.989-0.999) | 0.958 | 0.989 | 0.977 |
| Random Forest | 0.987 (0.976-0.998) | 0.934 | 0.966 | 0.954 |

### DeLong Pairwise Comparisons

| Comparison | z | p-value |
|-----------|---|---------|
| LR vs RF | 1.964 | 0.050 |
| LR vs SVM | 0.570 | 0.568 |
| **RF vs SVM** | **-2.028** | **0.043** |

### STARD Compliance

| Status | Count | % |
|--------|-------|---|
| PRESENT | 19 | 63% |
| PARTIAL | 5 | 17% |
| MISSING | 6 | 20% |

---

## Output Files

```
demo/01_wisconsin_bc/
├── 01_load_data.py              # Data loading script
├── 02_analyze.py                # Full analysis pipeline
├── DEMO_LOG.md                  # This file
├── data/
│   └── breast_cancer_clinical.csv
├── figures/
│   ├── roc_curve.pdf            # Vector (journal submission)
│   └── roc_curve.png            # 300 dpi (presentations)
├── output/
│   ├── table1.csv               # Table 1 demographics
│   ├── diagnostic_accuracy.csv  # Performance metrics
│   ├── predictions.csv          # Per-patient predictions
│   ├── manuscript_draft.md      # Full IMRAD manuscript
│   ├── stard_compliance_report.md  # 30-item STARD audit
│   ├── presentation.pptx          # 12-slide academic presentation
│   └── blog_post.md               # Marketing blog post draft
└── logs/
    ├── step1_load.log
    ├── step2_analyze.log
    └── step3_pptx.log
```

---

## What This Demo Proves

1. **Zero-to-manuscript pipeline**: From `sklearn.datasets.load_breast_cancer()` to a submission-ready manuscript with proper statistical analysis, publication figures, and reporting guideline compliance — all in one session.

2. **Proper statistical rigor**: DeLong CIs (not bootstrap), Wilson CIs for proportions, stratified cross-validation to prevent leakage, pairwise statistical comparisons.

3. **Reporting guideline compliance**: Automated STARD 2015 audit identifies 6 missing items with specific fix recommendations — catches gaps that manual review often misses.

4. **Reproducibility**: Fixed random seed (42), version-pinned Python output, all scripts re-runnable.

5. **Template-driven**: Analysis scripts are adapted from `skills/analyze-stats/references/templates/` — not generated from scratch. Consistent quality across projects.

---

## Skills Demonstrated

| Skill | What It Did | Key Output |
|-------|-------------|------------|
| **analyze-stats** | Table 1 + 3-model diagnostic accuracy + DeLong tests | table1.csv, diagnostic_accuracy.csv |
| **make-figures** | Publication-ready ROC curve (300 dpi) | roc_curve.png, roc_curve.pdf |
| **write-paper** | IMRAD manuscript draft (~1,600 words) | manuscript_draft.md |
| **check-reporting** | 30-item STARD 2015 compliance audit | stard_compliance_report.md |
| **present-paper** | 12-slide academic presentation + speaker notes | presentation.pptx |
| **clean-data** (template) | Clinical-style data preparation | breast_cancer_clinical.csv |

---

*Demo created: 2026-04-08*
*MedSci Skills: https://github.com/Aperivue/medsci-skills*
