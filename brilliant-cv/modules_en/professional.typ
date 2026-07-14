// Imports
#import "@preview/brilliant-cv:3.2.0": cv-entry, cv-section

#cv-section("Work Experience")

#cv-entry(
  title: [Data Engineer, Cloud Data Platform],
  society: [Daimler Truck AG],
  date: [02/2023 – Present],
  location: [Stuttgart, Germany],
  description: list(
    [*Palantir Foundry:* Migrated a production pipeline from Azure (Data Factory + DevOps) to Palantir Foundry during the platform's evaluation and rollout, rebuilding the transforms and datasets and validating parity against the legacy pipeline.],
    [*Embedded with domain teams:* Sit with Product and Finance to turn their reporting workflows into the canonical Delta datasets they now treat as the single source of truth, serving 50+ downstream engineers and analysts.],
    [*Production pipelines & data quality:* Built fault-tolerant PySpark pipelines on a Databricks lakehouse ingesting high-frequency fleet telemetry, with anomaly detection guarding quality; Spark retuning cut cloud cost €470k/year.],
    [*User-facing delivery:* Took a RAG assistant from prototype to production; 50+ engineers now use it daily.],
    [*Reusable standards & mentoring:* Wrote the team's CI/CD, tests, and review standards, which cut deployment from 2h to 15min and became the onboarding baseline for new engineers.],
  ),
  tags: ("Palantir Foundry", "Databricks", "PySpark", "SQL", "Data Modeling", "Azure"),
)

#cv-entry(
  title: [Simulation Engineer (Synthetic Data Generation)],
  society: [Daimler Truck AG],
  date: [09/2019 – 01/2023],
  location: [Stuttgart, Germany],
  description: list(
    [Wrote Python simulation frameworks that pair physical models with large-scale test data to validate HV/LV electrical systems before hardware existed.],
    [Turned rough engineering specs into structured, well-modeled datasets that analyst and research teams used to build EV charging algorithms.],
  ),
)

#cv-entry(
  title: [Resident Engineer (Customer-Embedded, System Integration)],
  society: [Valeo Siemens eAutomotive GmbH],
  date: [02/2018 – 08/2019],
  location: [Stuttgart, Germany],
  description: list(
    [Embedded on-site with the customer (Daimler) as the technical link between their engineers and Valeo development, translating requirements into work items through commissioning milestones.],
  ),
)
