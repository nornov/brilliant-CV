// Imports
#import "@preview/brilliant-cv:3.2.0": letter
#let metadata = toml("./metadata.toml")
#let letter-language = sys.inputs.at("language", default: none)
#let metadata = if letter-language != none {
  metadata + (language: letter-language)
} else {
  metadata
}


#show: letter.with(
  metadata,
  sender-address: "Stuttgart, Deutschland",
  recipient-name: "Zühlke Engineering AG",
  recipient-address: "Schlieren, Schweiz",
  date: "Stuttgart, 15. Juli 2026",
  subject: "Bewerbung: Advanced Data Engineer (JR100885)",
  signature: image("assets/signature.png"),
)

Sehr geehrtes Recruiting-Team von Zühlke,

auf die Position als Advanced Data Engineer bewerbe ich mich, weil sie zwei Dinge verbindet, die meinen Arbeitsalltag prägen: anspruchsvolle Datenplattformen bauen und die Menschen verstehen, die damit arbeiten. Dass Zühlke Daten als Hebel für gesellschaftlich relevante Fragen begreift und in regulierten Feldern wie Health und Finance zu Hause ist, passt zu der Sorgfalt, die ich aus der Automobilindustrie gewohnt bin.

Bei Daimler Truck verantworte ich die produktive Datenplattform, auf die eine wachsende Gruppe von Ingenieuren und Analysten angewiesen ist: fehlertolerante PySpark-Pipelines auf einem Databricks-Lakehouse, in einer Medallion-Architektur modelliert, deren kuratierte Datensätze Produkt und Finance als verlässliche Grundlage nutzen. Über automatisierte Qualitätsprüfungen, Spark-Tuning und CI/CD in Azure DevOps habe ich Latenz und Betriebskosten spürbar gesenkt und den Deployment-Zyklus von zwei Stunden auf 15 Minuten gebracht. Ich bin Databricks- und Azure-zertifiziert und arbeite täglich mit Python, SQL und Delta Lake.

Für eine beratende Rolle spricht etwas, das vor meiner Data-Engineering-Zeit liegt: Meine erste Station war die eines Resident-Ingenieurs direkt beim Kunden, als Bindeglied zwischen dessen Anforderungen und dem Entwicklungsteam. Dieses Übersetzen zwischen Fach- und Technikebene mache ich heute im unternehmensweiten Center of Expertise weiter, wenn ich Lösungen für Fachbereiche wie für die Technik gleichermaßen nachvollziehbar mache. Iterativ und agil zu liefern, damit früh sichtbarer Nutzen entsteht, ist dabei mein Anspruch.

Einige Technologien Ihres Stacks, etwa Kafka, Airflow und Kubernetes, kenne ich bislang eher am Rand als aus dem täglichen Einsatz; auf Spark, Delta Lake, Terraform und FastAPI baue ich dagegen bereits auf, und neue Werkzeuge zügig zu erlernen gehört für mich zum Handwerk. Deutsch (C2) und Englisch (C1) bringe ich für die zweisprachige Arbeit mit. Über ein Gespräch, wie ich Ihre Kundenprojekte voranbringen kann, würde ich mich sehr freuen. Vielen Dank für die Berücksichtigung meiner Bewerbung.

Mit freundlichen Grüßen,
