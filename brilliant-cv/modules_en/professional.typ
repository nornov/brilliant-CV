// Imports
#import "@preview/brilliant-cv:3.2.0": cv-entry, cv-section

#cv-section("Work Experience")

#cv-entry(
  title: [Applied AI & Data Engineer, Azure Cloud Platform],
  society: [Daimler Truck AG],
  date: [02/2023 – Present],
  location: [Stuttgart, Germany],
  description: list(
    [*Agentic AI workflow:* Designed and built a multi-agent system on Databricks that turns a Jira ticket into a deployable analytics pipeline on its own; getting from ticket to a pipeline ready for review went from 14 hours to 30 minutes. LLM subagents hand work to each other through quality contracts (agreed inputs, outputs and acceptance checks), which keeps results consistent across runs.],
    [*LLM assistant in production:* Took a RAG coding assistant (Python, LangChain, vector search) from prototype through evaluation to a service 50+ engineers use daily, and set the bar for when its answers were good enough to ship.],
    [*Reusable data foundation:* Wrote fault-tolerant PySpark pipelines on an Azure Databricks lakehouse for high-frequency fleet IoT telemetry, with anomaly detection in the ingestion layer. Product and Finance build on the resulting canonical datasets; Spark tuning brought cloud cost down by €470k/year.],
    [*Engineering standards:* Introduced unit testing, linting and CI/CD in Azure DevOps as the team default, which cut deployments from 2 hours to 15 minutes. These are now the standards new hires are onboarded on.],
    [*Sharing what works:* Present the same systems to engineers and to non-technical decision-makers, and pass patterns on to other teams through the Center of Expertise.],
  ),
  tags: ("Agentic AI", "Multi-Agent LLM", "LangChain", "Azure", "Databricks", "CI/CD"),
)

#cv-entry(
  title: [Simulation Engineer (Synthetic Data Generation)],
  society: [Daimler Truck AG],
  date: [09/2019 – 01/2023],
  location: [Stuttgart, Germany],
  description: list(
    [Wrote Python simulation frameworks that combine physical models of HV/LV vehicle electrical systems with large test datasets; used anomaly detection on that data to improve EV charging algorithms.],
  ),
)

#cv-entry(
  title: [Resident Engineer (System Integration & Commissioning)],
  society: [Valeo Siemens eAutomotive GmbH],
  date: [02/2018 – 08/2019],
  location: [Stuttgart, Germany],
  description: list(
    [On-site at the customer (Daimler) as the technical link to Valeo development for EV power electronics; ran workshops and kept data available and reliable through commissioning milestones.],
  ),
)
