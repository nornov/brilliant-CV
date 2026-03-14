// Imports
#import "@preview/brilliant-cv:3.2.0": cv-entry, cv-section

#cv-section("Work Experience")

#cv-entry(
  title: [Data Engineer, Analytics & Infrastructure],
  society: [Daimler Truck AG],
  date: [02/2023 – Present],
  location: [Stuttgart, Germany],
  description: list(
    [Pipeline Architecture: Architected and managed fault-tolerant ETL pipelines using PySpark on Databricks to ingest high-frequency IoT telemetry from the global fleet.],
    [Canonical Datasets: Developed the "Single Source of Truth" (canonical datasets) for vehicle energy metrics, enabling Product and Finance teams to track fleet performance.],
    [Spark Optimization: Refactored legacy jobs using advanced techniques (Z-Ordering, Partitioning, Broadcast Joins), reducing latency by 85% and costs by €470k/year.],
    [Data Safety & Integrity: Designed Anomaly Detection systems within the ingestion layer to flag irregular data patterns and faulty logs before impacting downstream models.],
    [GenAI / RAG Implementation: Built an internal "Coding Copilot" for the engineering team by ingesting codebases into vector stores for semantic search across 50+ engineers.],
    [Ownership: Full-cycle responsibility – from architectural design and development to reliable production operation and FinOps optimization.],
  ),
  tags: ("PySpark", "Databricks", "Azure", "CI/CD", "Testing"),
)

#cv-entry(
  title: [Simulation Engineer (Synthetic Data Generation)],
  society: [Daimler Truck AG],
  date: [09/2019 – 01/2023],
  location: [Stuttgart, Germany],
  description: list(
    [Modeling & Simulation: Developed Python-based simulation frameworks to validate complex electrical systems, integrating physical models with large-scale data analysis.],
    [Trusted Datasets: Translated complex engineering requirements into durable, well-modeled datasets for cross-functional squads of analysts and researchers.],
    [Algorithmic Improvements: Drove improvements in EV charging algorithms through data-driven engineering and anomaly detection in large test datasets.],
  ),
)

#cv-entry(
  title: [Resident Engineer (System Integration and testing)],
  society: [Valeo Siemens eAutomotive GmbH],
  date: [02/2018 – 08/2019],
  location: [Stuttgart, Germany],
  description: list(
    [Stakeholder Management: Led technical communication between clients and development teams, translating complex requirements into actionable data tasks.],
    [Project Steering: Ensured data availability and quality during critical commissioning milestones for electric vehicle power electronics.],
  ),
)
