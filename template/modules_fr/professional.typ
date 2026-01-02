// Imports
#import "../../src/lib.typ": cv-section, cv-entry


#cv-section("Expérience")

#cv-entry(
  title: [Cloud Platform Architect],
  society: [EDF (Leader européen de l'énergie)],
  date: [Nov 2024 - Présent],
  location: [Bordeaux],
  contract-type: [Freelance],
  description: list(
    [Conception d'une plateforme cloud from scratch pour *infrastructure énergétique critique*],
    [*Traçabilité complète*, IAM/RBAC, séparation des responsabilités, isolation des environnements],
    [*14 développeurs* déployant en autonomie sur *5+ environnements* via self-service],
    [Constitution d'une *équipe plateforme* en collaboration avec dev, sécurité et métier],
  ),
  tags: ("AWS", "Terraform", "Terragrunt", "GitOps", "DevSecOps"),
)

#cv-entry(
  title: [CI/CD Platform Architect],
  society: [Ingenico (Leader mondial du paiement)],
  date: [Août 2023 - Sep 2024],
  location: [Valence],
  contract-type: [Freelance],
  description: list(
    [Cycle de release *divisé par 2* grâce à l'automatisation de l'intégration et du déploiement],
    [*10+ releases/jour* livrées par les équipes, sans intervention manuelle],
    [Construction d'une plateforme CI/CD avec *security gates*, utilisée par les *équipes librairies*],
    [Définition des *standards DevOps* avec les leads engineering, accompagnement à l'adoption],
  ),
  tags: ("Kubernetes", "Azure", "GitOps", "CI/CD", "Docker"),
)

#cv-entry(
  title: [Infrastructure Engineer],
  society: [CEA (Recherche nucléaire) x IM²AG],
  date: [Jan 2020 - Juin 2020],
  location: [Grenoble],
  contract-type: [CDD],
  description: list(
    [Traitement batch sur *OpenStack souverain* réduit de *1 heure à 5 minutes*],
    [*Pipelines de données conformes* pour recherche sensible, entièrement automatisés],
    [Libération de *70%* de stockage via l'optimisation des données],
    [*4 heures gagnées* par traitement en collaboration avec l'équipe de recherche],
  ),
  tags: ("OpenStack", "Python", "GitHub Actions", "Linux", "Automation"),
)

#cv-entry(
  title: [Infrastructure Engineer],
  society: [Freelance (Hébergement & Infrastructure)],
  date: [Juin 2019 - Juil 2023],
  location: [Grenoble],
  description: list(
    [*500+ VMs* gérées pour *plusieurs clients* sur infrastructure européenne avec *SLA 99.9%*],
    [*Isolation des tenants*, segmentation réseau et séparation stricte des données],
    [Des coûts infra réduits de *40%*, demandes support de *60%* via automatisation],
    [Astreinte 24/7 pendant *4 ans*, gestion des incidents avec suivi des SLO],
  ),
  tags: ("AWS", "Linux", "Proxmox", "Hetzner", "Kubernetes", "SRE", "Ansible"),
)
