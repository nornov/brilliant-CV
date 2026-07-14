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
  sender-address: "Stuttgart, Germany",
  recipient-name: "Novartis Pharma AG",
  recipient-address: "Biomedical Research, Basel, Switzerland",
  date: "Stuttgart, 14 July 2026",
  subject: "Application: Forward Deployed Engineer (FDE) Data42 (REQ-10079038)",
  signature: image("assets/signature.png"),
)

Dear Hiring Team,

I'm applying for the Forward Deployed Engineer role on data42. The platform runs on Palantir Foundry, and two things about the role match how I already work: I've built on Foundry, and most of my career has been spent embedded with the teams I build for.

When my company adopted Foundry, I migrated a production pipeline off Azure (Data Factory and DevOps) onto the platform, rebuilding the transforms and datasets in Foundry and checking the output against the old pipeline until the two matched. I was also part of the evaluation that fed the decision to adopt it. My first role, years earlier, was a resident engineer sitting on the customer's site as the link between their engineers and my company's development. That is the same embedded, translate-a-need-into-something-shipped work an FDE does.

Day to day at Daimler Truck I build the production data platform a growing group of engineers and analysts depend on: fault-tolerant PySpark pipelines on a Databricks lakehouse, the canonical datasets that Product and Finance treat as their single source of truth, anomaly detection guarding quality in the ingestion layer, and a RAG assistant that 50+ colleagues now use daily. So pipelines, data modeling, quality, and shipping something people actually open are familiar ground.

I'd be new to the biomedical domain. My background is electrical engineering and automotive data, not the life sciences. What I bring instead is someone who learns a domain by embedding in it and asking the people who live it, plus the Foundry and data-engineering foundation to be useful early. I'd welcome the chance to talk about how I could help domain teams ship on data42. Thank you for considering my application.

Sincerely,
