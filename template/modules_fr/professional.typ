// Imports
#import "../../src/lib.typ": cv-section, cv-entry
#import "../../src/utils/styles.typ": theme


#cv-section("Expérience")

#cv-entry(
  title: [Senior DevSecOps Engineer],
  society: [*EDF* (Énergie)],
  date: [Nov 2024 - Présent],
  location: [Bordeaux],
  contract-type: [Freelance],
  logo: image("../assets/edf_square.svg"),
  summary: [Plateforme AWS de gestion documentaire : *14* devs, *5* environnements],
  description: list(
    [Sécurité intégrée : traçabilité, IAM/RBAC, isolation des environnements, respect des contraintes budgétaires],
    [Mise en place de déploiements autonomes et d'environnements éphémères en self-service],
    [Constitution et montée en compétences d'une équipe plateforme],
  ),
  tags: ("AWS", "Terraform", "Terragrunt", "GitOps", "DevSecOps"),
)

#cv-entry(
  title: [DevSecOps Engineer],
  society: [*Ingenico* (Paiement)],
  date: [Août 2023 - Sep 2024],
  location: [Valence],
  contract-type: [Freelance],
  logo: image("../assets/ingenico.svg"),
  summary: [Plateforme CI/CD pour les équipes de développement de terminaux de paiement (Java/Kotlin)],
  description: list(
    [*Plusieurs dizaines de releases* par jour, sans intervention manuelle des opérations],
    [Tests automatiquement distribués sur *plusieurs modèles de terminaux*],
    [Définition des standards DevOps et infrastructure avec les équipes de développement],
  ),
  tags: ("Kubernetes", "Azure", "GitOps", "CI/CD", "Docker", "DevSecOps"),
)

#cv-entry(
  title: [DevOps Engineer],
  society: [*000webhost & autres* (Hébergement)],
  date: [Juin 2019 - Juil 2023],
  location: [Grenoble],
  contract-type: [Freelance],
  logo: image("../assets/freelance.png"),
  summary: [Hébergement et infogérance pour PME et startups : *500+* VMs, SLA *99.9%*],
  description: list(
    [Isolation des clients via VLANs, firewalls et stockage dédié],
    [Redimensionnement automatique des ressources pour les applications SaaS],
    [Astreinte 24/7 pendant *4 ans* : incidents, backups, support technique],
  ),
  tags: ("AWS", "Linux", "Proxmox", "Hetzner", "Kubernetes", "SRE", "Ansible"),
)

// Mini entry - "Et plus sur LinkedIn"
#v(4pt)
#table(
  columns: (12%, 1fr),
  inset: 0pt,
  stroke: none,
  gutter: 12pt,
  align: (x, y) => left + horizon,
  // Logos empilés (ronds, sans bordure)
  {
    let s = 22pt
    let gap = 12pt
    box(width: s + 2 * gap, height: s, {
      place(dx: 2 * gap, box(width: s, height: s, radius: 50%, clip: true,
        image("../assets/logo2.png", width: 100%, height: 100%, fit: "cover")))
      place(dx: gap, box(width: s, height: s, radius: 50%, clip: true,
        image("../assets/logo1.png", width: 100%, height: 100%, fit: "cover")))
      place(dx: 0pt, box(width: s, height: s, radius: 50%, clip: true,
        image("../assets/cea.png", width: 100%, height: 100%, fit: "cover")))
    })
  },
  // Titre et sous-titre (centré verticalement)
  {
    text(size: 10pt, weight: "bold")[Contrats & projets au forfait]
    linebreak()
    text(size: 9pt, fill: theme.fg.subtle, weight: "medium", style: "italic")[Missions parallèles · #link("https://www.linkedin.com/in/sofianedjerbi")[#text(fill: theme.accent.fg)[Voir sur LinkedIn #sym.arrow.r]]]
  },
)
