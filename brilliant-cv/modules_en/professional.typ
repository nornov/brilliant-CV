// Imports
#import "@preview/brilliant-cv:3.2.0": cv-entry, cv-section

#cv-section("Work Experience")

#cv-entry(
  title: [Applied AI & Data Engineer, Cloud Platform],
  society: [Daimler Truck AG],
  date: [02/2023 – Present],
  location: [Stuttgart, Germany],
  description: list(
    [*Applied AI, prototype to production:* Took a retrieval-augmented (RAG) assistant from an early prototype through evaluation to a deployed service now used daily by 50+ engineers, and defined how we judged whether its answers were good enough to ship.],
    [*Building tools with the people who use them:* Sit with Product and Finance, learn how they actually work, and turn their day-to-day analysis into small data-driven apps and canonical datasets they reach for directly.],
    [*Applied ML in production:* Put anomaly-detection and time-series models into the ingestion layer so bad signals get caught before they reach downstream models.],
    [*Engineering at scale:* Wrote fault-tolerant PySpark pipelines on a Databricks lakehouse for high-frequency fleet telemetry; retuning Spark cut cost by €470k/year.],
    [*Talking to both rooms:* Present the same work to engineers and to non-technical decision-makers, and wrote the team's testing and review standards used to onboard new hires.],
  ),
  tags: ("Applied AI / RAG", "Python", "Machine Learning", "Data Apps", "Analyst Collaboration", "Cloud"),
)

#cv-entry(
  title: [Simulation Engineer (Synthetic Data Generation)],
  society: [Daimler Truck AG],
  date: [09/2019 – 01/2023],
  location: [Stuttgart, Germany],
  description: list(
    [Wrote Python simulation frameworks pairing physical models with large-scale data to validate complex electrical systems, and turned engineering requirements into datasets research teams could act on.],
  ),
)

#cv-entry(
  title: [Resident Engineer (Customer-Facing, System Integration)],
  society: [Valeo Siemens eAutomotive GmbH],
  date: [02/2018 – 08/2019],
  location: [Stuttgart, Germany],
  description: list(
    [Worked on-site at the customer (Daimler) as the technical link between their engineers and Valeo development, running workshops and translating requirements through commissioning milestones.],
  ),
)
