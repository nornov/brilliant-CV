// Imports
#import "@preview/brilliant-cv:3.2.0": cv-entry, cv-section

#cv-section("Work Experience")

#cv-entry(
  title: [Machine Learning & Data Engineer],
  society: [Daimler Truck AG],
  date: [02/2023 – Present],
  location: [Stuttgart, Germany],
  description: list(
    [*Data Pipelines:* Built fault-tolerant PySpark pipelines on Databricks that ingest high-frequency sensor telemetry from a global truck fleet and produce the datasets used to train and evaluate downstream models.],
    [*Optimization:* Refactored Spark jobs with Z-Ordering, partition pruning, and broadcast joins, cutting pipeline latency 85% and cloud cost €470k/year.],
    [*Edge-Case Detection:* Added anomaly detection to the ingestion layer that flags irregular patterns, faulty logs, and edge cases before they reach downstream models.],
    [*Testing & CI/CD:* Wrote the CI/CD pipelines, unit tests, and code-review practices that became the team's onboarding baseline and cut deployment cycles from 2h to 15min.],
    [*Ownership:* Owned data and ML systems end to end, from architecture through production and on-call reliability, and shipped a RAG assistant now used daily by 50+ engineers.],
  ),
  tags: ("Python", "PySpark", "Distributed ETL", "ML Pipelines", "Databricks", "CI/CD"),
)

#cv-entry(
  title: [Simulation Engineer (Synthetic Data Generation)],
  society: [Daimler Truck AG],
  date: [09/2019 – 01/2023],
  location: [Stuttgart, Germany],
  description: list(
    [Wrote Python simulation frameworks that pair physical models with large-scale test data to validate HV/LV electrical systems before hardware was available.],
    [Turned rough engineering specs into structured datasets that analyst and research teams used to develop EV charging algorithms.],
  ),
)

#cv-entry(
  title: [Resident Engineer (Customer-Embedded, System Integration)],
  society: [Valeo Siemens eAutomotive GmbH],
  date: [02/2018 – 08/2019],
  location: [Stuttgart, Germany],
  description: list(
    [Embedded on-site with the customer (Daimler) as the technical link between their engineers and Valeo development, translating hardware requirements into work items and keeping integration on track through commissioning milestones.],
  ),
)
