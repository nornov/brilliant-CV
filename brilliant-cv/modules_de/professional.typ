// Imports
#import "@preview/brilliant-cv:3.2.0": cv-entry, cv-section

#cv-section("Beruflicher Werdegang")

#cv-entry(
  title: [Data Engineer & Data Scientist],
  society: [Daimler Truck AG],
  date: [02/2023 – heute],
  location: [Stuttgart, Deutschland],
  description: list(
    [Lakehouse-Architektur & ELT-Pipelines: Skalierbare Datenpipelines auf Azure Databricks (PySpark, Delta Lake) verantwortet; Medallion-Architektur (Bronze/Silver/Gold) für Reporting-, Analytics- und ML-Szenarien modelliert.],
    [Datenqualität & Betrieb: Automatisierte Datenqualitätsprüfungen und Monitoring in Produktionspipelines etabliert; Spark-Tuning via Z-Ordering und Broadcast Joins – Latenz um 85%, Kosten um 470.000 €/Jahr gesenkt.],
    [CI/CD & DevOps: Unit-Testing, Linting und CI/CD-Pipelines (Azure DevOps) als Team-Standard eingeführt; Deployment-Zyklus von 2h auf 15min verkürzt; ganzheitliche End-to-End-Ownership ("You Build It, You Run It").],
    [ML & GenAI-Integration: Anomalie-Erkennungsmodell in IoT-Ingestion-Layer integriert; LLM-gestützten Coding Copilot (RAG, Python, LangChain) für 50+ Ingenieure deployed.],
  ),
  tags: ("Azure Databricks", "Delta Lake", "PySpark", "Python", "SQL", "CI/CD", "Azure DevOps"),
)

#cv-entry(
  title: [Data Modeling & Simulation Engineer],
  society: [Daimler Truck AG],
  date: [09/2019 – 01/2023],
  location: [Stuttgart, Deutschland],
  description: list(
    [Automotive AI & Modellierung: Python-Simulationsframeworks zur Validierung komplexer HV/LV-Fahrzeugsysteme entwickelt – physikalische Modelle mit Fahrzeugtestdaten kombiniert, um Produktfunktionen abzusichern.],
    [Datengetriebene Optimierung: Ladealgorithmen für Elektrofahrzeuge durch Anomalie-Erkennung in großen Testdatensätzen verbessert; Erkenntnisse direkt in Fahrzeugsoftware-Updates eingeflossen.],
  ),
)

#cv-entry(
  title: [Resident-Ingenieur bei Daimler AG],
  society: [Valeo Siemens eAutomotive GmbH],
  date: [02/2018 – 08/2019],
  location: [Stuttgart, Deutschland],
  description: list(
    [Technische Koordination zwischen Daimler-Kunden und Valeo-Entwicklungsteam bei der Systemintegration elektrischer Antriebskomponenten.],
  ),
)
