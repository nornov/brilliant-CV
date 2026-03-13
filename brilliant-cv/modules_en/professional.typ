// Imports
#import "@preview/brilliant-cv:3.2.0": cv-section, cv-entry

#cv-section("Work Experience")

#cv-entry(
  title: [Data Engineer, Analytics & Infrastructure],
  society: [Daimler Truck AG],
  date: [02/2023 – Present],
  location: [Germany],
  description: list(
    [Pipeline Architecture (User Event Data): Architected and managed fault-tolerant ETL pipelines using PySpark on Databricks to ingest high-frequency IoT event data (telemetry) from the global fleet.],
    [Canonical Datasets: Developed the "Single Source of Truth" (canonical datasets) for vehicle energy consumption, enabling Product and Finance teams to track key performance metrics and fleet usage growth.],
    [Spark Optimization: Refactored legacy jobs using advanced Spark techniques (Z-Ordering, Partitioning, Broadcast Joins), reducing data-to-insight latency by 85% and cloud compute costs by €470k/year.],
    [Data Safety & Integrity: Designed Anomaly Detection systems within the ingestion layer to flag irregular data patterns and "bad actors" (faulty sensors/corrupted logs) before they impacted downstream ML models.],
    [GenAI / RAG Implementation: Built an internal "Coding Copilot" for the engineering team. Engineered the pipeline to ingest GitHub repositories, chunk codebases, and generate embeddings, enabling semantic search for 50+ engineers.],
    [Security & Governance: Enforced strict data compliance (GDPR) and Role-Based Access Control (RBAC) across the Data Lakehouse, ensuring security standards were met for sensitive fleet data.],
  ),
  tags: ("PySpark", "Databricks", "Azure", "CI/CD", "Testing"),
)

#cv-entry(
  title: [Simulation Engineer (Synthetic Data Generation)],
  society: [Daimler Truck AG],
  date: [09/2019 – 01/2023],
  location: [Germany],
  description: list(
    [Modeling & Simulation: Developed Python-based simulation frameworks to validate complex electrical systems. Integrated physical models with large-scale data analysis to drive algorithmic improvements in EV charging.],
    [Trusted Datasets: Translated complex engineering requirements into durable, well-modeled datasets for cross-functional squads of analysts and researchers.],
  ),
)

#cv-entry(
  title: [Resident Engineer (System Integration and testing)],
  society: [Valeo Siemens eAutomotive GmbH],
  date: [02/2018 – 08/2019],
  location: [Germany],
  description: list(
    [Stakeholder Management: Led technical communication with clients, translating complex engineering requirements into actionable data tasks—demonstrating the ability to collaborate across the organization from engineers to leadership.],
  ),
)
