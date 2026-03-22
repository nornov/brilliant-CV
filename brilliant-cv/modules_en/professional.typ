// Imports
#import "@preview/brilliant-cv:3.2.0": cv-entry, cv-section

#cv-section("Work Experience")

#cv-entry(
  title: [Data Engineer, Analytics & Infrastructure],
  society: [Daimler Truck AG],
  date: [02/2023 – Present],
  location: [Stuttgart, Germany],
  description: list(
    [Designed the Delta Lakehouse architecture on Databricks and owned it end-to-end, from ingestion design to production operation, for IoT telemetry from a global fleet.],
    [Refactored legacy Spark jobs using Z-Ordering, partition pruning, and Broadcast Joins; latency dropped 85%, cloud compute costs fell by €470k/year.],
    [Set CI/CD and testing standards for the team, then built a RAG-based Coding Copilot giving 50+ engineers semantic search across the codebase.],
    [Built anomaly detection into the ingestion pipeline to catch bad data early, and enforced RBAC and GDPR access controls across the Lakehouse.],
  ),
  tags: ("PySpark", "Databricks", "Delta Lake", "Azure", "CI/CD", "RAG", "Python"),
)

#cv-entry(
  title: [Simulation Engineer (Synthetic Data Generation)],
  society: [Daimler Truck AG],
  date: [09/2019 – 01/2023],
  location: [Stuttgart, Germany],
  description: list(
    [Wrote Python simulation frameworks integrating physical models with large-scale test data to validate HV/LV electrical systems.],
    [Built structured datasets from engineering specs, consumed by analyst and research teams for EV charging algorithm development.],
  ),
)

#cv-entry(
  title: [Resident Engineer (System Integration and Testing)],
  society: [Valeo Siemens eAutomotive GmbH],
  date: [02/2018 – 08/2019],
  location: [Stuttgart, Germany],
  description: list(
    [Handled technical communication between Daimler clients and Valeo development during system integration, translating hardware requirements into software work items.],
  ),
)
