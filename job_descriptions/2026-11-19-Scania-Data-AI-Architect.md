# 📊 Job Analysis Report

**Position:** Data & AI Architect (Scania Commercial, Process & Digitalization)
**Company:** Scania CV AB (TRATON Group)
**Location:** Södertälje, Sweden · Hybrid
**Source:** https://jobs.scania.com/job/S%C3%B6dert%C3%A4lje-Data-&-AI-Architect-151-38/1458936033/ (fetched 2026-11-19)
**Deadline:** 2026-12-03 (screening on an ongoing basis)
**Estimated Match:** 55%
**Estimated Compensation:** 780k–1,020k SEK gross base/year (65–85k SEK/month, ~€71–93k) · Confidence: Low–Medium
**Application Language:** English (posting in English; no Swedish requirement stated)

---

## 📋 Requirements Breakdown

The posting has no formal "required / preferred" split and no stated years of experience. The responsibilities and "Who You Are" lists are treated as required, and the named tech stack is treated as preferred.

### 🎯 Required Skills (2/7 full, 4 partial)

- ⚠️ **Define and govern the target Data & AI architecture, roadmaps and future-state capabilities across data, ML and GenAI** (You have: designed the multi-agent Jira-to-pipeline system and the lakehouse pipelines for fleet telemetry. That is solution-level design for one team, not an enterprise target architecture across markets)
- ⚠️ **Architecture principles, standards, guardrails, reusable blueprints** (You have: unit testing, linting and CI/CD made the team default; quality contracts between LLM agents; patterns shared through the Center of Expertise. These are engineering standards rather than enterprise architecture governance)
- ❌ **ERP / system-of-record landscapes and how their data is made usable for AI, analytics and BI** (You have: no ERP or SAP experience on the verified profile. Your source systems were IoT telemetry and simulation data)
- ⚠️ **Data Mesh operating model: domain ownership, governance, data products** (You have: canonical datasets consumed by Product and Finance, which is data-product thinking. No explicit Data Mesh, data catalog or MDM experience)
- ✅ **Hands-on with data platforms and structures, not only conceptual** (You have: production PySpark on Azure Databricks / Delta Lake, €470k/year in savings from Spark tuning, Palantir Foundry)
- ⚠️ **Lead architecture governance, design reviews and alignment across markets and domains** (You have: code review and team standards, Center of Expertise, cross-company work as Resident Engineer between Daimler and Valeo. No global, multi-market architecture board)
- ✅ **Strong understanding of AI and why the underlying data structures matter** (You have: RAG assistant in production for 50+ engineers, agentic workflow, anomaly detection in ingestion, Databricks GenAI certifications)

### 💡 Preferred Skills / Named Stack (2/7, 1 partial)

- ❌ **AWS** (You have: Azure only, certified)
- ❌ **Snowflake** (You have: Databricks / Delta Lake, the closest equivalent)
- ✅ **AI/ML and GenAI reference architectures** (You have: RAG, LangChain, vector search, multi-agent LLM)
- ✅ **Analytics / lakehouse patterns** (You have: Azure Databricks lakehouse, ADF)
- ⚠️ **Streaming** (You have: high-frequency IoT telemetry ingestion. Not stated whether this was real-time streaming, e.g. Kafka or Structured Streaming)
- ❌ **Integration architecture (ERP/MDM/API integration at enterprise scale)** (You have: REST APIs, Docker)
- ❌ **Power BI** (Not on the verified profile)

### 🤝 Soft Skills & Culture

- ✅ **Experienced communicator** (Evidence: presents the same systems to engineers and non-technical decision-makers)
- ⚠️ **Track record of working with data in a global context** (Evidence: Daimler Truck is a global OEM and you are multilingual (EN/DE C2/RU/KZ). Your work covered fleet data, not global commercial operations across markets)
- ✅ **Knowledge sharing, learning culture** (Evidence: Center of Expertise, onboarding standards for new hires)
- ✅ **Cross-functional collaboration** (Evidence: Product and Finance consumers; Resident Engineer at the customer site)

---

## 🏆 Strategic Positioning

### Your Top 3 Selling Points

1. **Hands-on architect for AI on real data**: They explicitly want someone who "can work with data platforms and structures rather than staying at a high level". You build production lakehouse pipelines and GenAI systems yourself, which is the hands-on half of the role.
2. **GenAI in production with guardrails**: Quality contracts between agents (14 hours → 30 minutes from ticket to pipeline) and an evaluated RAG assistant map directly to "guardrails and reusable blueprints" for data, ML and generative AI.
3. **Truck industry insider**: Daimler Truck fleet data, EV systems and Valeo Siemens give you the commercial-vehicle domain. TRATON is a direct competitor, so you know the business without needing ramp-up on the product side.

### Critical Gaps & Mitigation Strategy

- **Gap:** ERP / system-of-record data (likely SAP) and MDM
  **Impact:** High. It appears in the summary, the responsibilities and "Who You Are", and the team works with MDM specialists.
  **Strategy:** This is the core of the role and cannot be faked. In the CV, foreground the canonical-dataset work (one trusted source reused by Product and Finance) as "system-of-record to data product". In the interview, be open about it and show how quickly you learned Foundry and Databricks.
- **Gap:** Enterprise-level architecture leadership (global target state, governance boards, multi-market alignment)
  **Impact:** High. The title is architect and they ask for "strategic leadership".
  **Strategy:** Present the agentic workflow and team standards as architecture decisions that others adopted, not as code. Do not claim enterprise architecture titles you have not held.
- **Gap:** AWS, Snowflake, Power BI
  **Impact:** Medium. The concepts transfer (cloud lakehouse, warehousing, BI semantics) and Databricks ↔ Snowflake is a well-known mapping.
  **Strategy:** In the skills section, list them as "concepts transferable from Azure/Databricks". Optionally get an AWS or Snowflake fundamentals cert (SnowPro Core) in the coming weeks.
- **Gap:** Data Mesh operating model
  **Impact:** Medium
  **Strategy:** Use Data Mesh vocabulary (domain ownership, data products, federated governance) only where it describes things you did, i.e. the datasets built for Product and Finance.

---

## 💰 Compensation Estimate

**Stated in posting:** Not stated. Benefits listed: result bonus, flexible hours, health centre or wellness allowance, company car leasing.
**Best-guess range (gross base):** 780k–1,020k SEK/year (65–85k SEK/month) ≈ €71–93k (rate ~1 EUR = 11 SEK, approximate; check the current rate)
**Point estimate for your profile:** ~70k SEK/month (~840k SEK/year, ~€76k). You would be a stretch hire for a global lead-architect role, so expect an offer in the lower half of the band.
**Variable / benefits:** Scania result bonus (amount not published), employer-paid occupational pension (typically ITP under the Swedish collective agreement; confirm), company car leasing.
**Confidence:** Low–Medium. No Scania-specific salary data was found. The range is built from national IT-architect statistics plus adjustments.

### Why this range

1. **SCB baseline:** SCB's group "Systemanalytiker och IT-arkitekter" averages ~56.8k SEK/month nationally (quoted by Ledigajobb). That is the mean across all seniority levels and all of Sweden.
2. **Stockholm and seniority uplift:** Stockholm-region pay is typically above the national mean. The posting implies a senior role ("lead the development of … global Data and AI architecture", architecture governance across markets), so pay should sit in the upper part of the distribution. Paylab puts the top 10% of Swedish IT analysts above ~83k SEK/month, which sets the upper bound of the range.
3. **Aggregator cross-check:** Payscale's data-architect median is ~645k SEK/year (~54k/month), which confirms the national mid-point. Levels.fyi shows a p90 of 1.56M SEK *total comp* for Stockholm solution architects. That figure reflects tech companies with equity and does not apply to a traditional industrial employer, so it is excluded.
4. **Employer type:** Scania is a large industrial company under a Swedish collective agreement. Base pay is structured and rarely at tech-company levels; the result bonus and pension make up part of the package.
5. **Low outlier ignored:** Visulry's Södertälje "information architect" figures (445–540k SEK/year for senior) describe a different, more junior job family.

### Net pay & relocation note

- Sweden taxes more progressively than its headline rates suggest: municipal tax in Södertälje is roughly a third of income, and national income tax of 20% applies above roughly 50–55k SEK/month. Most of this range is therefore taxed at the top marginal rate.
- Employer social contributions and the occupational pension are paid on top of the gross salary, unlike in Germany where you pay a large share of social insurance yourself. Compare net pay with a calculator (e.g. Skatteverket's) against your German net pay, not gross against gross.
- The Swedish expert tax relief (*expertskatt*) requires a monthly salary well above this range, so it likely does not apply. Verify the current threshold.
- The Stockholm rental market is tight (queue system), so ask whether Scania offers relocation or housing support.

### Negotiation tip

Anchor at ~80–85k SEK/month by pointing to the global scope and the GenAI production experience. If base pay is capped by the salary structure, negotiate a relocation package, a higher starting grade and an early salary review instead.

**Sources:**

- [Ledigajobb – IT-arkitekt lön (SCB figures)](https://ledigajobb.se/articles/it-arkitekt-lon): national mean for IT architects
- [SCB – Lönestatistik](https://www.scb.se/hitta-statistik/sverige-i-siffror/lonesok/Search/?lon=arkitekt): official occupation statistics (page not reachable from this session; figures taken via Ledigajobb)
- [Paylab – IT analyst salaries, Sweden](https://paylab.com/se/salaryinfo/information-technology/it-analyst): top 10% above ~83k SEK/month
- [Payscale – Data Architect, Sweden](https://www.payscale.com/research/SE/Job=Data_Architect/Salary): median ~645k SEK/year
- [Levels.fyi – Solution Architect, Greater Stockholm](https://www.levels.fyi/de-de/t/solution-architect/locations/greater-stockholm): tech-company total comp, excluded
- [Visulry – Information Architect, Södertälje](https://visulry.com/salary/information-architect/sweden/stockholm/sodertalje): low outlier, excluded

---

## 🚩 Red Flags & Concerns

- **Scope breadth**: "AWS, Snowflake, analytics, AI/ML, streaming, integration and Power BI", together with Data Mesh, ERP and global governance → a very wide remit for one person. This is probably the first dedicated Data & AI architect in a growing org, so expect high expectations and plenty of stakeholder politics.
- **Seniority not stated**: No years required, but "lead the development of Scania Commercial's global Data and AI architecture" implies a senior hire, likely 8+ years with prior architect roles. This is where your profile is weakest.
- **No cover letter**: "kindly ask you not to share a cover letter" → the CV alone has to make the case, so the profile summary and the first bullets carry the whole application.
- **Selection process**: "Logical and personality tests... background check" → standard for Scania, but plan time for the tests.
- **Relocation**: Södertälje, Sweden, hybrid. You are based in Stuttgart, so relocation is required. The posting says nothing about relocation support, and Swedish salaries are typically lower than in Germany after tax.
- **Competitor**: Moving from Daimler Truck to a TRATON brand. Check any non-compete or confidentiality clauses.

---

## ✉️ Cover Letter Hooks

Scania asks for no cover letter, so use these as the CV profile line or a short recruiter/LinkedIn message to the hiring manager (Eleonor Lillestöl, Head of Commercial AI and Data).

1. **The Problem-Solver Hook:** "Getting the data structures right is what decided whether our GenAI work at Daimler Truck shipped. I built the lakehouse pipelines that Product and Finance rely on, then the agents and RAG assistant on top of them, with quality contracts so results stay consistent."
2. **The Domain Expert Hook:** "Seven years on the truck side of the industry, from EV power electronics to fleet telemetry to production AI at Daimler Truck. I'd like to bring that hands-on view of data and AI architecture to Scania Commercial."

---

## ✅ Next Steps

1. [ ] **Decision:** Apply (stretch). There is no hard dealbreaker (no degree, licence or years requirement), but the ERP/MDM and enterprise-architecture gaps are central. Expect a lower hit rate than for Applied AI / Data Engineering roles. Deadline 2026-12-03.
2. [x] Save this report to `/job_descriptions/2026-11-19-Scania-Data-AI-Architect.md`
3. [ ] Tailor the EN CV (resume-tailor): architecture-first profile line, lead with the lakehouse/canonical-data bullet before the GenAI bullets, add a "transferable: AWS, Snowflake" note to the skills section.
4. [ ] Check whether these are open, as they may fit better: "Data Architect – EE Analytics" and "Senior Data Architect: Engineering Data & AI Enablement" (R&D side, closer to your vehicle-data background).

## Full Job Description Text

Scania is undergoing a transformation from being a leading supplier of trucks, buses, and engines to providing complete and sustainable transport solutions. Together with TRATON and our sister brands MAN, Volkswagen Truck & Bus, and International, we are working to shape the future of mobility with innovative and environmentally conscious solutions.

Our values – customer first, respect, team spirit, responsibility, and elimination of waste – are at the heart of everything we do. Together, we are at the forefront of creating a sustainable future

**Role Summary**

As Data & AI Architect, you will lead the development of Scania Commercial's global Data and AI architecture. You will connect our ERP and other system-of-record landscapes with data platforms and products, ensuring trusted, well-structured data can be used effectively across AI, analytics and BI. You will establish architecture principles, standards and blueprints that accelerate innovation while ensuring quality, reliability and sustainability. The role combines strategic leadership with hands-on architectural work, shaping the target state while working closely with platform, engineering and business teams to make it real.

**Job Responsibilities**

- Define and govern Scania Commercial's target Data and AI architecture, including transition roadmaps, architecture runway and future-state capabilities across data, machine learning and generative AI.
- Establish and maintain architecture principles, standards, guardrails and reusable blueprints that enable innovation while ensuring quality, reliability, interoperability, sustainability and cost effectiveness.
- Assess how data is created and managed across ERP and other systems of record, and shape how trusted data is made accessible and fit for use across data products, AI, analytics and BI.
- Drive the evolution of Scania Commercial's Data Mesh operating model, working across domains to strengthen data ownership, governance and data product practices.
- Work hands-on with platform and engineering teams to design and apply modern engineering patterns and reference architectures across AWS, Snowflake, analytics, AI/ML, streaming, integration and Power BI.
- Lead architecture governance, design reviews and cross-functional alignment across markets and domains to harmonise the landscape, accelerate time to value and support strategic business priorities.

**Who You Are**

- Strategic and forward-looking, with a strong understanding of AI and the importance of getting the underlying data structures right.
- Able to take a global perspective and lead strategy across markets, particularly from an architecture standpoint.
- Hands-on as well as strategic: someone who can work with data platforms and structures, rather than staying at a high-level or conceptual level.
- An experienced communicator, with a track record of working with data in a global context.
- Familiar with ERP and system-of-record landscapes, including how data is sourced and made usable for AI, data and BI.

**This Is Us**

We are part of Scania Commercial's Process & Digitalization organization, where we are building the foundations that enable data-driven and AI-powered business transformation across commercial operations. Our team works closely with domain data owners, MDM specialists, engineering teams, analytics and ML experts, Solution Architects, and enterprise architecture stakeholders to create scalable and future-ready solutions.

We believe that great ideas come from diverse perspectives. That is why we foster an inclusive, collaborative, and learning-oriented culture where knowledge sharing and continuous improvement are part of everyday work. Based in Södertälje, we offer hybrid ways of working, flexible hours, wellness support, result bonus, and convenient commuting through Scania Job Express buses. Together, we are shaping sustainable mobility solutions for the future.

**Scania Offers**

We offer a dynamic and engaging workplace where collaboration, innovation, and continuous improvement are part of everyday life. You will be part of a strong team environment that encourages knowledge sharing and close cooperation across functions.

With a structured development plan and a wide range of training opportunities, Scania supports your professional growth both locally and internationally.

Benefits include access to our health center in Gröndal or a wellness allowance, result bonus, flexible working hours, and company car leasing. Scania also arranges events for employees and their families, and for those living in Stockholm, convenient commuting is supported through direct Scania Job express buses to Södertälje.

**Application**

We look forward to receiving your application, consisting of your CV and kindly ask you not to share a cover letter to ensure an efficient and unbiased recruitment process for all parties.

Apply as soon as possible, no later than 2026-12-03. Screening will take place on an ongoing basis during the application period. Logical and personality tests may be used as part of the selection process, and a background check may be required for this role.

If you have questions or would like more information, please contact: Eleonor Lillestöl, Head of Commercial AI and Data, eleonor.lillestol@scania.com.
