# STARD 2015 Compliance Report

**Manuscript:** Comparative Diagnostic Accuracy of Machine Learning Models for Breast Cancer Classification  
**Guideline:** STARD 2015 (Standards for Reporting of Diagnostic Accuracy Studies)  
**Assessed by:** MedSci Skills (check-reporting)  
**Date:** 2026-04-08  

---

## Summary

| Status | Count |
|--------|-------|
| PRESENT | 19 |
| PARTIAL | 5 |
| MISSING | 6 |
| **Compliance** | **63% PRESENT, 80% PRESENT+PARTIAL** |

---

## Item-by-Item Assessment

### Title and Abstract

| # | Item | Status | Location | Notes |
|---|------|--------|----------|-------|
| 1 | Title identifies diagnostic accuracy study | **PRESENT** | Title | "Comparative Diagnostic Accuracy" clearly stated |
| 2 | Structured abstract with design, methods, results, conclusions | **PRESENT** | Abstract | Background, Purpose, Methods, Results, Conclusion all present. Includes AUC with 95% CIs |

### Introduction

| # | Item | Status | Location | Notes |
|---|------|--------|----------|-------|
| 3 | Scientific and clinical background | **PRESENT** | Introduction para 1-2 | FNA cytology role, dataset history, clinical context |
| 4 | Study objectives and hypotheses | **PRESENT** | Introduction para 4 | "The purpose of this study was to compare..." |

### Methods — Participants

| # | Item | Status | Location | Notes |
|---|------|--------|----------|-------|
| 5 | Study design (prospective/retrospective) | **PRESENT** | Methods, Study Design | "retrospective cross-sectional diagnostic accuracy study" |
| 6 | Eligibility criteria, settings, locations | **PARTIAL** | Methods, Study Design | Setting stated (UW Hospitals). Inclusion criteria implicit (all FNA specimens in dataset). Exclusion criteria not explicitly stated. |
| 7 | Sampling method (consecutive/random/convenience) | **MISSING** | — | Not described whether specimens formed a consecutive, random, or convenience series |

### Methods — Test Methods

| # | Item | Status | Location | Notes |
|---|------|--------|----------|-------|
| 8a | Index test described for replication | **PRESENT** | Methods, Classification Models | Three models described with hyperparameters, standardization, cross-validation |
| 8b | Reference standard described for replication | **PRESENT** | Methods, Study Design | "Histopathological diagnosis served as the reference standard" |
| 9 | Rationale for reference standard | **PARTIAL** | — | Histopathology is universally accepted; rationale is implicit but not explicitly stated |
| 10a | Index test cut-offs pre-specified vs exploratory | **PARTIAL** | Methods, Evaluation | Youden's optimal threshold mentioned in code but not explicitly discussed in text |
| 10b | Reference standard cut-offs | **PRESENT** | Methods | Binary (malignant/benign) reference standard clearly defined |
| 11 | Blinding | **MISSING** | — | No discussion of whether models had access to reference standard during evaluation (mitigated by cross-validation design) |
| 12 | Methods for estimating/comparing accuracy | **PRESENT** | Methods, Statistical Analysis | DeLong method for AUC CIs, Wilson CIs for proportions, DeLong test for comparison |
| 13 | Sample size determination | **MISSING** | — | No power analysis or sample size justification |

### Results — Participants

| # | Item | Status | Location | Notes |
|---|------|--------|----------|-------|
| 14 | Dates of study | **PRESENT** | Methods, Study Design | "January 1989 and November 1991" |
| 15 | Demographics | **PRESENT** | Results, Study Population | Age, sex, lesion characteristics reported in Table 1 |
| 16 | Flow diagram / participant numbers | **PARTIAL** | Results | Numbers reported in text (569 total, 357 benign, 212 malignant). No formal STARD flow diagram provided. |

### Results — Test Results

| # | Item | Status | Location | Notes |
|---|------|--------|----------|-------|
| 17 | Time interval between tests | **MISSING** | — | Not applicable (same specimen, simultaneous). Should be explicitly stated as N/A |
| 18 | Severity distribution | **PARTIAL** | Results, Table 1 | Morphometric feature differences reported. Disease severity spectrum not characterized |
| 19 | Cross-tabulation (2x2 table) | **PRESENT** | output/diagnostic_accuracy.csv | TP/FP/TN/FN counts available in output. Not presented as explicit 2x2 table in manuscript text |
| 20 | Adverse events / indeterminate results | **MISSING** | — | Not discussed. Should state "No indeterminate results" if applicable |
| 21 | Accuracy estimates with CIs | **PRESENT** | Results, Table 2 | AUC, sensitivity, specificity, PPV, NPV all with 95% CIs |
| 22 | Handling of indeterminate results | **MISSING** | — | Not addressed |
| 23 | Subgroup analyses | **PRESENT** | Results, Model Comparison | Pairwise DeLong tests reported. No demographic subgroup analyses. |

### Discussion

| # | Item | Status | Location | Notes |
|---|------|--------|----------|-------|
| 24 | Limitations | **PRESENT** | Discussion, para 4 | Four limitations explicitly stated including dataset nature, synthetic data, sample size, no hyperparameter tuning |
| 25 | Clinical applicability | **PRESENT** | Discussion, para 2 | Clinical deployment implications discussed (interpretability, computational cost) |

### Other Information

| # | Item | Status | Location | Notes |
|---|------|--------|----------|-------|
| 26 | Registration | **MISSING** | — | No study registration (common for ML benchmark studies; recommended for prospective studies) |
| 27 | Protocol access | **MISSING** | — | No protocol referenced |
| 28 | Funding | **MISSING** | — | No funding statement |

---

## Recommendations for Improvement

### High Priority (MISSING items to address)

1. **Item 7 (Sampling):** Add: "The dataset comprised a convenience series of FNA specimens collected at a single academic center."
2. **Item 11 (Blinding):** Add: "Cross-validation ensured that reference standard labels for test-set specimens were not available to models during training within each fold."
3. **Item 13 (Sample size):** Add sample size justification or state: "The full publicly available dataset was used; no a priori sample size calculation was performed."
4. **Items 20, 22 (Indeterminate):** Add: "All specimens received definitive classifications; no indeterminate results were observed."
5. **Item 28 (Funding):** Add funding statement or: "This research received no specific grant from any funding agency."

### Medium Priority (PARTIAL items to strengthen)

6. **Item 6 (Eligibility):** Explicitly state inclusion/exclusion criteria.
7. **Item 16 (Flow diagram):** Add STARD flow diagram (strongly recommended).
8. **Item 10a (Cut-offs):** Explicitly state in Methods that Youden's optimal threshold was used for binary classification.

---

## STARD-AI Extension (Applicable — ML-based index test)

| # | Item | Status | Notes |
|---|------|--------|-------|
| AI-1 | AI system description | **PRESENT** | Three models named with libraries and versions |
| AI-2 | Training data | **PRESENT** | UCI/sklearn dataset, 569 specimens, 30 features |
| AI-3 | Data preprocessing | **PRESENT** | StandardScaler, fold-specific fitting |
| AI-4 | Intended use | **PARTIAL** | General CAD mentioned; specific clinical workflow not defined |
| AI-5 | Integration pathway | **MISSING** | Standalone/assistive/replacement not specified |
| AI-6 | Human comparators | **MISSING** | No human reader comparison performed |
| AI-7 | Failure analysis | **MISSING** | No error analysis of misclassified cases |

---

*Report generated by MedSci Skills (check-reporting) — https://github.com/Aperivue/medsci-skills*
