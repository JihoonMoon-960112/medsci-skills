# Marketing Assets — Demo 1: Wisconsin Breast Cancer

## Asset Inventory

| Asset | Path | Format | Use |
|-------|------|--------|-----|
| ROC Curve | figures/roc_curve.png | PNG 300dpi | Blog hero image, SNS 첨부 |
| ROC Curve (vector) | figures/roc_curve.pdf | PDF | 고해상도 인쇄물 |
| **Presentation** | **output/presentation.pptx** | **PPTX 12슬라이드** | **데모 시연, 학회/세미나** |
| **Blog Post** | **output/blog_post.md** | **MD ~2,000단어** | **aperivue.com/blog 게시** |
| Demo Log | DEMO_LOG.md | MD | 블로그 본문 소스 |
| Pipeline Flow | (below) | Text | 블로그/SNS 인포그래픽 소스 |
| Performance Table | (below) | MD | 블로그 테이블 |
| STARD Report | output/stard_compliance_report.md | MD | 블로그 심화 섹션 |
| Manuscript Draft | output/manuscript_draft.md | MD ~1,600단어 | 논문 샘플 |

---

## Social Media Copy (Copy-Paste Ready)

### Twitter/X Thread

**Tweet 1 (Hook):**
```
One line of code. Five AI skills. One publication-ready manuscript.

I just ran sklearn.datasets.load_breast_cancer() through our open-source MedSci Skills bundle for Claude Code — and got a full IMRAD manuscript with STARD compliance audit.

Here's the pipeline 🧵
```

**Tweet 2 (Pipeline):**
```
The pipeline:
1. Load data (1 line, zero download)
2. analyze-stats → Table 1 + 3-model comparison with DeLong CIs
3. make-figures → publication-ready ROC curve
4. write-paper → full IMRAD manuscript
5. check-reporting → 30-item STARD audit

All from templates. All reproducible.
```

**Tweet 3 (Results):**
```
Results from the demo:
• Logistic Regression: AUC 0.995 (0.990-1.000)
• SVM: AUC 0.994 (0.989-0.999)  
• Random Forest: AUC 0.987 (0.976-0.998)

DeLong test caught a significant difference between RF and SVM (p=0.043) that point estimates alone would miss.

Proper stats matter.
```

**Tweet 4 (STARD):**
```
The check-reporting skill auto-audited the manuscript against STARD 2015:
• 19/30 items PRESENT
• 5 PARTIAL
• 6 MISSING — with specific fix recommendations

This is what usually takes a reviewer 30+ minutes, done in seconds.
```

**Tweet 5 (CTA):**
```
20 skills. All open source. Built by a radiologist who actually writes papers.

Anti-hallucination citation checking. Proper DeLong CIs. STARD/STROBE/PRISMA/TRIPOD compliance.

GitHub: github.com/Aperivue/medsci-skills
```

---

### LinkedIn Post

```
From one line of code to a publication-ready manuscript — in minutes.

I built MedSci Skills, an open-source bundle of 20 Claude Code skills for medical researchers. To prove it works, I ran a demo:

Input: sklearn.datasets.load_breast_cancer() — a single Python command.

Output:
→ Table 1 with demographics (t-test, Mann-Whitney, proper normality checks)
→ 3-model comparison (Logistic Regression, Random Forest, SVM)
→ ROC curves with DeLong 95% CIs and pairwise statistical tests
→ Publication-ready figures at 300 dpi
→ Full IMRAD manuscript draft (~1,600 words)
→ 30-item STARD 2015 compliance audit

What makes this different from "just using ChatGPT":
• Every CI is calculated correctly (DeLong for AUC, Wilson for proportions)
• Cross-validation prevents data leakage — StandardScaler fits only on training folds
• The STARD audit caught 6 missing items with specific recommendations
• Zero hallucinated citations — every reference needs verified DOI/PMID

This is what I wish I had as a research fellow.

20 skills, MIT licensed, free forever.
🔗 github.com/Aperivue/medsci-skills

#MedicalResearch #OpenSource #ClaudeCode #MedicalAI #Radiology
```

---

### Facebook Post (한국어)

```
sklearn 데이터 한 줄로 논문 초고를 만들어 봤습니다.

의료 연구자를 위한 오픈소스 도구 MedSci Skills의 데모입니다.

[입력]
sklearn.datasets.load_breast_cancer() — 한 줄

[출력]
✅ Table 1 (인구통계, 정규성검정 자동선택)
✅ 3개 ML 모델 비교 (AUC, 민감도, 특이도 + 95% CI)
✅ ROC Curve (300 dpi, 저널 투고용)
✅ DeLong test로 모델 간 통계적 비교
✅ IMRAD 구조 원고 초안 (~1,600단어)
✅ STARD 2015 체크리스트 30항목 자동 감사

핵심 차별점:
- ChatGPT와 다르게 통계가 정확합니다 (DeLong CI, Wilson CI)
- 교차검증에서 데이터 누수 방지 (fold별 StandardScaler)
- 레퍼런스 안 만들어냅니다 (DOI/PMID 검증 필수)
- STARD 누락 항목 6개를 자동으로 찾아내고 수정안 제시

20개 스킬, MIT 라이선스, 무료입니다.
🔗 github.com/Aperivue/medsci-skills
```

---

### Blog Post Outline (aperivue.com/blog)

**Title:** "From One Line of Code to a Publication-Ready Manuscript: A Live Demo of MedSci Skills"

**URL slug:** `/blog/medsci-skills-live-demo-breast-cancer`

**Sections:**
1. **Hook**: "What if you could go from `load_breast_cancer()` to a submission-ready manuscript in one session?"
2. **The Pipeline**: Visual flow diagram (데이터 → 분석 → 피겨 → 원고 → 체크리스트)
3. **Step 1: Data Loading** — code snippet + output
4. **Step 2: Statistical Analysis** — Table 1 screenshot + ROC curve image
5. **Step 3: Manuscript Draft** — IMRAD structure highlight, word count
6. **Step 4: STARD Compliance** — compliance summary table + "what it caught"
7. **Why This Matters** — comparison with manual workflow
8. **The Numbers**: 20 skills, 5 used here, 7 output files, 0 hallucinated citations
9. **Try It Yourself**: installation instructions + GitHub link
10. **What's Next**: Demo 2 (metafor BCG → meta-analysis) and Demo 3 (NHANES → epidemiology)

**SEO Keywords:** medical research skills, Claude Code medical, automated manuscript writing, STARD compliance checker, diagnostic accuracy analysis, medical AI tools, publication-ready figures

**Estimated length:** 1,500-2,000 words

---

## Visual Assets Needed

| Asset | Description | Status |
|-------|-------------|--------|
| ROC Curve | 3-model comparison with DeLong CIs | ✅ Generated |
| Pipeline Diagram | Flow: data → analysis → figures → manuscript → checklist | TODO (D2 or Mermaid) |
| STARD Summary | Pie chart or bar: 19 PRESENT / 5 PARTIAL / 6 MISSING | TODO |
| Before/After | Manual workflow (hours) vs MedSci Skills (minutes) | TODO |
| Code Snippet | Highlighted Python showing 1-line data loading | Extract from 01_load_data.py |

---

*Assets prepared: 2026-04-08*
