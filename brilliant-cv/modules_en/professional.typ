// Imports
#import "@preview/brilliant-cv:3.2.0": cv-entry, cv-section

#cv-section("Work Experience")

#cv-entry(
  title: [Data Engineer, Analytics & Infrastructure],
  society: [Daimler Truck AG],
  date: [02/2023 – Present],
  location: [Stuttgart, Germany],
  description: list(
    [Lakehouse Architecture: Architected and owned the Delta Lakehouse end-to-end — from ingestion design to production operation — processing high-frequency IoT telemetry from a global fleet on Databricks.],
    [Spark Performance Tuning: Refactored legacy jobs using advanced techniques (Z-Ordering, Partitioning, Broadcast Joins), reducing data-to-insight latency by 85% and cloud compute costs by €470k/year.],
    [Technical Leadership: Drove architectural decisions, enforced CI/CD and testing standards, and built an internal RAG-based Coding Copilot enabling semantic search for 50+ engineers across all codebases.],
    [Data Quality & Governance: Designed ML Anomaly Detection within the ingestion layer and enforced RBAC and GDPR compliance across the Lakehouse — ensuring reliable, auditable data for downstream models.],
  ),
  tags: ("PySpark", "Databricks", "Delta Lake", "Azure", "CI/CD", "RAG", "Python"),
)

#cv-entry(
  title: [Simulation Engineer (Synthetic Data Generation)],
  society: [Daimler Truck AG],
  date: [09/2019 – 01/2023],
  location: [Stuttgart, Germany],
  description: list(
    [Data Modeling & Pipelines: Developed Python-based simulation frameworks integrating physical models with large-scale data analysis to validate electrical systems and drive EV charging algorithm improvements.],
    [Trusted Datasets: Translated complex engineering requirements into durable, well-modeled datasets consumed by cross-functional squads of analysts and researchers.],
  ),
)

#cv-entry(
  title: [Resident Engineer (System Integration and Testing)],
  society: [Valeo Siemens eAutomotive GmbH],
  date: [02/2018 – 08/2019],
  location: [Stuttgart, Germany],
  description: list(
    [Stakeholder Management: Led technical communication between clients and development teams, translating complex engineering requirements into actionable data tasks across organizational levels.],
  ),
)
