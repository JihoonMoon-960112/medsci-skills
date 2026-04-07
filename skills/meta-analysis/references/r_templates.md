# R Code Templates for Meta-Analysis

## Required Packages

```r
# DTA meta-analysis
library(mada)      # bivariate model, forest/SROC plots
library(meta)      # general meta-analysis utilities
library(metafor)   # advanced models

# Intervention meta-analysis
library(meta)
library(metafor)
```

## DTA Meta-Analysis

### Bivariate Model (Recommended)

```r
# Bivariate model (Reitsma et al.)
fit <- reitsma(data, formula = cbind(tsens, tfpr) ~ 1)
summary(fit)

# SROC curve with confidence and prediction regions
plot(fit, sroclwd = 2, main = "SROC Curve")

# Forest plot (paired: sensitivity + specificity)
forest(fit, type = "sens")
forest(fit, type = "spec")
```

### Key Outputs for DTA

- Pooled sensitivity (95% CI)
- Pooled specificity (95% CI)
- Pooled positive LR, negative LR
- Pooled DOR
- SROC curve with AUC, confidence region, prediction region
- Heterogeneity: I-squared for sensitivity and specificity separately
- Threshold effect: Spearman correlation between sensitivity and FPR

### Publication Bias (DTA)

- Use Deeks' funnel plot asymmetry test (standard funnel plots are inappropriate for DTA)

## Intervention Meta-Analysis

### Random-Effects Model

```r
# Random-effects model
res <- metagen(TE, seTE, data = dat, studlab = study,
               method.tau = "REML", sm = "OR")
forest(res)
funnel(res)

# Heterogeneity
summary(res)  # I-squared, tau-squared, Q test

# Publication bias
metabias(res, method.bias = "Egger")

# Sensitivity analysis: leave-one-out
metainf(res, pooled = "random")
```

### Publication Bias (Intervention)

- Funnel plot + Egger's or Peters' test
- Note: Tests underpowered for <10 studies

## Subgroup / Meta-Regression

- Subgroup analysis for pre-specified covariates
- Meta-regression for continuous moderators
- Report interaction test p-value, not just within-subgroup p-values

## Sensitivity Analysis

- Leave-one-out analysis
- Excluding high RoB studies
- Excluding outliers (identified via influence diagnostics)
- Alternative model specifications
