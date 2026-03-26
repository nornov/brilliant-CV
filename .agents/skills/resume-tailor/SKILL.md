---
name: resume-tailor
description: >
  Tailors resume for Data Engineer, Analytics Engineer,
  and Data Scientist roles. Uses the reference CV content as ground truth.
  Never fabricates experience.
  Populates respective typst files with tailored content.
---

# Data Engineer Resume Tailor — Nursultan Ornov

> **Typst syntax questions?** Consult the `typst-author` skill first before writing or editing any `.typ` file.
> Path: `c:\local\repos\brilliant-CV-1\.agents\skills\typst-author\SKILL.md`

---

## 1 · Ground Truth — Experience & Facts

### Career Timeline (NEVER extend Data Engineering tenure)

| Period            | Company                        | Role                               | Type                          |
| ----------------- | ------------------------------ | ---------------------------------- | ----------------------------- |
| 02/2023 – heute   | Daimler Truck AG               | Data Engineer / Data Scientist     | ✅ Data Engineering           |
| 09/2019 – 01/2023 | Daimler Truck AG               | Berechnungsingenieur HV/LV-Systeme | ⚙️ Engineering mit Datenfokus |
| 02/2018 – 08/2019 | Valeo Siemens eAutomotive GmbH | Resident-Ingenieur bei Daimler AG  | ⚙️ Engineering                |

**CRITICAL RULE:** Nursultan has ~2 years as Data Engineer, ~7 years total professional experience.  
Never write "7 years of Data Engineering experience". Write "2 Jahre als Data Engineer, ergänzt durch 5 Jahre ingenieurwissenschaftliche Erfahrung mit starkem Datenfokus" or similar honest framing.

**Reference:** look into template modules `template\modules_en` and `template\modules_de` for the full description of educational and professional background.

---

## 2 · Workspace Structure

```
c:\local\repos\brilliant-CV-1\
├── brilliant-cv\
│   ├── cv.typ                  ← Entry point. Controls which modules are included & language.
│   ├── letter.typ              ← Cover letter entry point.
│   ├── metadata.toml           ← Personal info, layout, colors, header_quote per language.
│   ├── assets\
│   │   └── avatar.png          ← Profile photo. DO NOT modify.
│   ├── modules_de\             ← German CV sections (edit these for DE roles)
│   │   ├── professional.typ    ← Work experience bullets
│   │   ├── education.typ       ← Degrees
│   │   ├── skills.typ          ← Skill rows (cv-skill entries)
│   │   ├── certificates.typ    ← Certifications (cv-honor entries)
│   │   ├── projects.typ        ← Side projects / internal projects
│   │   └── publications.typ    ← Publications (usually empty)
│   └── modules_en\             ← English CV sections (edit these for EN roles)
│       ├── professional.typ
│       ├── education.typ
│       ├── skills.typ
│       ├── certificates.typ
│       ├── projects.typ
│       └── publications.typ
├── output_cvs\                 ← Save final PDFs here
├── job_descriptions\           ← Store JD files here for reference
└── justfile                    ← Build automation (see §5)
```

---

## 3 · Typst Section Map (What to Touch & How)

> **If in doubt about Typst syntax, always read `typst-author` skill before writing code.**

### 3.1 `metadata.toml` — Personal Info & Layout

**Touch when:** changing header quote, colors, font size, injected ATS keywords, or personal contact fields.  
**Do NOT touch:** font stacks (regular_fonts, header_font), profile photo, layout spacing (unless explicitly asked).

Key fields to tailor per job:

```toml
[lang.de]
header_quote = "YOUR TAILORED TAGLINE HERE"  # max ~100 chars, role-specific

[inject]
inject_keywords = true
injected_keywords_list = ["dbt", "Azure", "PySpark", "ETL"]  # match JD keywords
```

### 3.2 `modules_de/professional.typ` (and `modules_en/`) — Work Experience

**Touch:**

- `description: list(...)` — rewrite, reorder, or **remove** bullets that are not relevant to the JD. You do not need to keep all bullets. Only include bullets that add value for this specific role.
- `title` — may be **slightly reworded** to better match JD terminology, but must remain truthful and recognisable (e.g., "Data Analytics Engineer" → "Data and Analytics Engineer" is ok; inventing a new role is not).
- `tags` — update to match JD keywords.

**NEVER touch:**

- `society` — company name is factual. Never rename, abbreviate, or translate it.
- `date` — employment periods are factual. Never change, omit, or shift dates.
- `location` — factual. Leave as-is.

Pattern — each `cv-entry` looks like this:

```typst
#import "@preview/brilliant-cv:3.2.0": cv-section, cv-entry

#cv-section("Beruflicher Werdegang")

#cv-entry(
  title: [Data Analytics Engineer / Data Scientist],
  society: [Daimler Truck AG],
  date: [02/2023 – heute],
  location: [Esslingen, Deutschland],
  description: list(
    [Bullet 1: What + How + Result/Technology.],
    [Bullet 2: ...],
  ),
  tags: ("Azure", "Databricks", "Python", "SQL"),
)
```

Rules for bullets:

- Format: **[Was] + [Wie] + [Ergebnis/Technologie]**
- Most important bullet ALWAYS first
- No empty filler — concrete actions only
- Use verified numbers: 470.000 € and >80% only in appropriate context
- Max 5 bullets per role for 1-page constraint

### 3.3 `modules_de/skills.typ` (and `modules_en/`) — Skills

**Touch:** reorder rows, add/remove `#h-bar()`-separated items to match JD requirements.  
**Do NOT touch:** `cv-skill` function call structure. Never add skills not in the verified inventory.

Pattern:

```typst
#import "@preview/brilliant-cv:3.2.0": cv-section, cv-skill, h-bar

#cv-section("Kenntnisse & Weiterbildungen")

#cv-skill(
  type: [ETL & Datenpipelines],
  info: [Azure Data Factory (ADF) #h-bar() Databricks #h-bar() dbt #h-bar() ELT/ETL-Pipelines],
)
```

Tailoring: put JD-matched skills first within each row. Drop low-relevance rows if space is tight.

### 3.4 `modules_de/certificates.typ` (and `modules_en/`) — Certifications

**Touch:** reorder certs to put most relevant first. Add exam date if known.  
**Do NOT touch:** never add certifications not in the verified list.

Pattern:

```typst
#import "@preview/brilliant-cv:3.2.0": cv-section, cv-honor

#cv-section("Zertifizierungen")

#cv-honor(
  date: [],
  title: [Azure Data Engineer Associate],
  issuer: [Microsoft],
)
```

### 3.5 `modules_de/education.typ` (and `modules_en/`) — Education

**Touch:** description bullets only (e.g., emphasize a relevant specialisation for the target domain).

**NEVER touch:**

- Institution names (`society`) — university names are factual. Never rename or translate them.
- Degree titles (`title`) — factual. Do not change.
- Dates (`date`) — enrolment periods are factual. Never adjust.
- GPA — factual. Keep exact values.

### 3.6 `cv.typ` — Module Loader

**Touch:** add or remove module names from the `#import-modules((...))` list to include/exclude sections.  
**Do NOT touch:** the `#show: cv.with(...)` block, language resolution, or package import line.

To compile for a specific language, pass `--input language=de` (see §5).

---

## 4 · Role Archetypes & Tailoring Strategy

### Archetype A: Data Engineer (Cloud/Pipeline-focused)

_e.g., SIX Group, Azure-heavy Enterprise_

**Profil-Schwerpunkt:** ETL/ELT-Pipelines, Datenqualität, CI/CD, Cloud-Zertifizierungen  
**Titel:** `Data Engineer | Azure Databricks & ETL-Experte`  
**Profil-Satz:** 2 Jahre Data Engineering + 5 Jahre datennaher Ingenieurshintergrund  
**Bullets priorisieren:**

1. ETL-Pipeline-Design (Azure Databricks, Python, PySpark)
2. CI/CD & Datenqualität (Azure DevOps, Unit Tests, 80%-Reduktion)
3. Datenprodukte & Power BI Dashboards
4. FinOps (470.000 € Einsparung)
5. Stakeholder-Management / Center of Expertise  
   **Keywords:** Schema-Mapping, Fehler-Handling, Datenfrische, ADF, Blob Storage

---

### Archetype B: Analytics Engineer (dbt/BI-focused)

_e.g., Deloitte, Consulting, Finance-Domäne_

**Profil-Schwerpunkt:** Datenmodellierung, dbt, BI-Dashboards, Business-Übersetzung  
**Titel:** `Analytics Engineer | Datenmodellierung · dbt · Power BI`  
**Profil-Satz:** Brückenbauer zwischen Technik und Business, M.Sc. RWTH als analytisches Fundament  
**Bullets priorisieren:**

1. Datenprodukte & Power BI Dashboards (Management-Reporting)
2. Datenmodellierung (dbt, SQL, strukturierte Datenmodelle)
3. Stakeholder-Management / Fachbereichsberatung
4. ETL/ELT-Pipelines
5. FinOps als Business-Value-Beweis  
   **Ingenieurszeit hervorheben:** Simulation = Datenmodellierung physikalischer Systeme  
   **Keywords:** dbt, Data Mart, dimensionales Modell, KPI-Definition, Fachbereichsübersetzung

---

### Archetype C: Data Engineer (Search/ML-Integration)

_e.g., Schwarz Digits, e-Commerce, Product-nah_

**Profil-Schwerpunkt:** Python-Qualität, ML-Integration, REST APIs, Search-Infrastruktur  
**Titel:** `Data Engineer | Python · ETL/ELT · Cloud-native · ML-Integration`  
**Profil-Satz:** Sauberer Python-Code (Type Hints, Linting, TDD), ML-Produktivierung, RAG/LangChain  
**Bullets priorisieren:**

1. Python ETL-Pipelines (Codequalität, Testing)
2. ML-Integration: RAG-Chatbot, Anomalieerkennung in Produktion
3. REST API & Datendienste
4. CI/CD & Observability (Logging, Monitoring)
5. FinOps als Tech-Impact-Nachweis  
   **Keywords:** Elasticsearch, FastAPI, Docker, Kubernetes, Pub/Sub, Typ-Annotierungen, Code-Reviews

---

### Archetype D: Senior Data Engineer / Lead

_e.g., Scale-up, TeamLead-Rolle, Tech + Führung_

**Profil-Schwerpunkt:** Führungserfahrung, Team-Enablement, technische Tiefe  
**Titel:** `Senior Data Engineer | Tech Lead · Cloud · ML-Integration`  
**Center of Expertise hervorheben** als Quasi-Führungserfahrung  
**Bullets priorisieren:**

1. Center of Expertise — Aufbau, Leitung, Wissenstransfer
2. ETL-Pipeline-Architektur (Design-Entscheidungen, nicht nur Umsetzung)
3. CI/CD & Engineering Best Practices (Vorbildfunktion)
4. FinOps / Business Impact
5. ML-Integration

---

## 5 · Compiling the PDF

### Standard compile commands

Run from the repo root `c:\local\repos\brilliant-CV-1\`:

```powershell
# German CV
typst compile brilliant-cv/cv.typ --input language=de output_cvs/cv_de.pdf --font-path fonts

# English CV
typst compile brilliant-cv/cv.typ --input language=en output_cvs/cv_en.pdf --font-path fonts
```

### Save with proper naming convention

Use this filename pattern for output PDFs:

```
[CV]_[Language]_Ornov_[Firma]_[Rolle]_[YYYY-MM-DD].pdf
```

Example:

```powershell
typst compile brilliant-cv/cv.typ `
  --input language=de `
  --font-path fonts `
  output_cvs/CV_DE_Ornov_SIXGroup_DataEngineer_2026-03-14.pdf
```

### Watch mode (live preview during editing)

```powershell
typst watch brilliant-cv/cv.typ --input language=de output_cvs/preview.pdf --font-path fonts
```

### Troubleshooting compile errors

- **Font warnings** (`unknown font family`): harmless — document still compiles with fallback fonts.
- **Package not found** (`@preview/brilliant-cv:3.2.0`): run `typst update` or verify internet access. The version is pinned in `cv.typ` line 2.
- **Content overflow / 2-page output**: reduce bullet count or trim bullet text. Target 1 page max.
- **Symbol rendering broken (e.g., phone icon)**: check `metadata.toml` [personal.info] — do not add emoji or raw Unicode symbols; use the built-in fields (`phone`, `email`, `linkedin`, `location`).

---

## 6 · Language Rules

| Job language       | CV language                         | Cover letter language |
| ------------------ | ----------------------------------- | --------------------- |
| Deutsch            | Deutsch (`modules_de/`)             | Deutsch               |
| Englisch           | Englisch (`modules_en/`)            | Englisch              |
| Gemischt / Schweiz | Deutsch (CV), Englisch ok im Profil | Deutsch               |

**Never:** English CV for German-language role without explicit requirement.  
**Always:** Keep terminology consistent — no mix of "ETL-Pipeline" and "Datenpipeline" in the same document.

---

## 7 · Tailoring Process (Step-by-Step)

### Step 0: Analyse the job posting

Job description is provided as a structured markdown file.

### Step 1: Read existing files

Always read before editing:

- [ ] `brilliant-cv/metadata.toml` — current tagline and color
- [ ] `brilliant-cv/modules_de/` or `modules_en/` — current bullet content
- [ ] `brilliant-cv/cv.typ` — which modules are active
- [ ] `template/modules_de/professional.typ` — full list of bullet points per position in german
- [ ] `template/modules_en/professional.typ` — full list of bullet points per position in english
- [ ] `template/modules_de/skills.typ` — full list of skills and interests in german
- [ ] `template/modules_en/skills.typ` — full list of skills and interests in english

### Step 2: Update `metadata.toml`

- Set `header_quote` under the appropriate `[lang.XX]` section
- Update `injected_keywords_list` to match JD keywords
- Leave all layout, font, and personal.info fields untouched

### Step 3: Rewrite `professional.typ` bullets using the full list of bullet points per position in the template files.

- Collect bullets from both template files (german and english) and choose the most relevant ones for the job description
- Prioritize bullets per archetype strategy above
- Keep bullet format: **[What] + [How] + [Result/Technology]**
- Use only verified numbers (470.000 € and >80%)

### Step 3.5: Humanizer pass on all written bullets (MANDATORY)

After writing bullets in `professional.typ`, **you MUST run a humanizer audit before saving the file**. Apply the humanizer skill (`humanizer`) to every bullet you wrote.

Specifically check for and fix:
- **Power verb overuse** (Pattern 29): Replace "Spearheaded/Orchestrated/Leveraged/Championed" with plain verbs describing the actual method ("built", "refactored", "wrote", "ran", "owned").
- **Perfect bullet parallelism** (Pattern 32): Break the mold — vary structure, sentence length, whether a metric appears.
- **Hollow trait claims** (Pattern 30): Delete any claim not backed by a specific fact.
- **Metric inflation without context** (Pattern 31): Every number needs before/after baseline. Remove numbers that lack context.
- **Mirror-the-JD language** (Pattern 35): If a bullet uses a phrase verbatim from the JD, rewrite it in your own words.
- **AI vocabulary** (Pattern 7): Remove "spearheaded", "streamlined", "leveraged", "ensured", "highlighting", "showcasing", etc.
- **Em dash overuse** (Pattern 13): Replace em dashes with commas or restructure.

Only after the humanizer pass, write the final content to the file.

### Step 4: Reorder `skills.typ`

- Front-load JD-matched skills within each `cv-skill` row
- Do not include skills that are not relevant to the job description
- Drop irrelevant sections to preserve 1-page constraint

### Step 5: Compile & Quality Assurance (QA) Verification

Before finalizing, **you MUST rigorously verify** the following:

- **1-Page Limit (Strict):**
  - Run the compile command (§5). If the PDF exceeds 1 page, _you must fix it._
  - _Fix:_ remove interests section from skills.typ and try again. Review until the resume is looking good and is ATS compatible.
- **ATS Compatibility:**
  - Verify that EXACT keywords from the JD are populated in `metadata.toml` (`injected_keywords_list`).
  - Standard naming convention MUST be followed for the output file.
- **Visual Impact & Power:**
  - Check the PDF visually: ensure there is no text overflow, symbols display correctly, and the photo is visible.
  - Bullets must not be "walls of text". They should start with strong action verbs and highlight quantifiable metrics (e.g., "470.000 €", ">80%"). Whitespace is crucial for a aesthetically pleasing, premium look.
- **Save:** Use the correct filename convention.
- **Review visually:** Ensure there is no text overflow, symbols display correctly, resume is on one page. If not, fix until the resume is looking good and is ATS compatible.

---

## 8 · Common Mistakes to Avoid

| Fehler                                            | Korrekt                                                                |
| ------------------------------------------------- | ---------------------------------------------------------------------- |
| „7 Jahre Data Engineering"                        | „2 Jahre DE + 5 Jahre datennaher Ingenieurshintergrund"                |
| Erfahrungen erfinden                              | Nur verifizierten Skill-Inventar verwenden                             |
| Englisches CV für deutsche Stelle                 | Immer Stellensprache matchen                                           |
| 470k oder 80% verändern                           | Zahlen exakt übernehmen                                                |
| UCL Summer School als eigener Block               | Höchstens einzeilig unter Ausbildung                                   |
| „verhandlungssicher" für alle Sprachen            | RU/KZ = Muttersprache, DE/EN = Verhandlungssicher/C1-C2                |
| Firmennamen ändern/abkürzen (`society`)           | **NIEMALS** — Firmennamen sind unveränderliche Fakten                  |
| Universitätsnamen ändern (`society` in education) | **NIEMALS** — Institutionsnamen sind unveränderliche Fakten            |
| Zeiträume ändern (Jobs oder Studium, `date`)      | **NIEMALS** — alle Datumsangaben sind unveränderliche Fakten           |
| Jobtitel komplett erfinden                        | Leichte Anpassung ok (z.B. „Analytics" ↔ „Data Analytics"), kein Lügen |
| Alle Bullets auflisten, auch irrelevante          | Nur JD-relevante Bullets behalten — nicht passende ENTFERNEN           |

| 2-seitiger Output | Max 5 Bullets pro Rolle, skills kompaktieren |
| Emoji/Unicode in metadata.toml | Nur strukturierte Felder (phone, email, linkedin) nutzen |
| Avoid general formulations like: "Ganzheitliche Verantwortung im Software-Development-Lifecycle – von der Architektur-Konzeption über Entwicklung bis zum ausfallsicheren Betrieb." | Use data domain specific examples and technologies instead: "Ganzheitliche Verantwortung von Analytics- & ML-Projekten – von der Anforderungen Definition über Entwicklung bis zum Deployment und Monitoring.". |
| Avoid mentioning FinOps or anything unrelated to data engineering if not explicitly mentioned in the job description. Bad Example: "Business Value & FinOps: Identifikation von Effizienzpotenzialen in der Cloud-Infrastruktur und Reduktion technischer Schulden, was zu jährlichen Einsparungen von 470.000 € führte." | Present financial benefits in the context of data engineering projects. Good Example: Spark Optimization: Refactored legacy jobs using advanced techniques (Z-Ordering, Partitioning, Broadcast Joins, Stratified Sampling), reducing latency by 85% and costs by €470k/year. |
