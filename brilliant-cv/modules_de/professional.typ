// Imports
#import "@preview/brilliant-cv:3.2.0": cv-entry, cv-section

#cv-section("Beruflicher Werdegang")

#cv-entry(
  title: [Data Engineer & Data Scientist],
  society: [Daimler Truck AG],
  date: [02/2023 – heute],
  location: [Stuttgart, Deutschland],
  description: list(
    [Datenplattform & Data Products: Skalierbare ELT-Pipelines auf einem Azure-Databricks-Lakehouse (PySpark, Delta Lake) in Medallion-Architektur modelliert; die kuratierten Gold-Datensätze nutzen Produkt und Finance als verlässliche Single Source of Truth.],
    [Datenqualität & Betrieb: Automatisierte Qualitätsprüfungen und Monitoring für reproduzierbare Datensätze etabliert; über Spark-Tuning (Z-Ordering, Broadcast Joins) Latenz um 85% und Cloud-Kosten um 470.000 €/Jahr gesenkt.],
    [CI/CD, DevOps & agile Lieferung: Unit-Testing, Linting und CI/CD (Azure DevOps) als Team-Standard eingeführt und den Deployment-Zyklus von 2h auf 15min verkürzt; End-to-End-Verantwortung nach „You build it, you run it".],
    [Beratung & Applied AI: Lösungen für Fach- und Technikebene gleichermaßen nachvollziehbar gemacht und im Center of Expertise geteilt; Anomalie-Erkennung im IoT-Ingestion-Layer und einen RAG-Coding-Assistenten (Python, LangChain) für über 50 Ingenieure produktiv gestellt.],
  ),
  tags: ("Databricks", "Delta Lake", "PySpark", "Python", "SQL", "CI/CD", "Data Products"),
)

#cv-entry(
  title: [Data Modeling & Simulation Engineer],
  society: [Daimler Truck AG],
  date: [09/2019 – 01/2023],
  location: [Stuttgart, Deutschland],
  description: list(
    [Datenmodellierung & Simulation: Python-Simulationsframeworks zur Validierung komplexer HV/LV-Fahrzeugsysteme entwickelt und physikalische Modelle mit realen Testdaten kombiniert, um Produktfunktionen abzusichern.],
    [Datengetriebene Optimierung: Ladealgorithmen für Elektrofahrzeuge über Anomalie-Erkennung in großen, heterogenen Testdatensätzen verbessert und Ergebnisse in belastbare Datenmodelle für interdisziplinäre Teams übersetzt.],
  ),
)

#cv-entry(
  title: [Resident-Ingenieur bei Daimler AG],
  society: [Valeo Siemens eAutomotive GmbH],
  date: [02/2018 – 08/2019],
  location: [Stuttgart, Deutschland],
  description: list(
    [Als technische Schnittstelle beim Kunden Daimler AG dessen Anforderungen und das Valeo-Entwicklungsteam zusammengebracht und Business-Anforderungen in umsetzbare technische Validierungspläne übersetzt.],
  ),
)
