// Imports
#import "@preview/brilliant-cv:3.1.1": cv-section, cv-entry


#cv-section("Expérience")

#cv-entry(
  title: [Cloud Platform Architect],
  society: [EDF (Leader européen de l'énergie)],
  date: [Nov 2024 - Présent],
  location: [Bordeaux],
  description: list(
    [Conception d'une plateforme cloud from scratch pour *infrastructure énergétique critique*],
    [*Traçabilité complète*, *IAM/RBAC*, *séparation des responsabilités* et isolation des environnements dès le départ],
    [*14 développeurs* déployant en autonomie sur *5+ environnements* via self-service],
    [Constitution d'une *équipe plateforme* avec ownership opérationnel complet],
  ),
  tags: ("AWS", "Terraform", "Terragrunt", "GitOps", "DevSecOps"),
)

#cv-entry(
  title: [CI/CD Platform Architect],
  society: [Ingenico (Leader mondial du paiement)],
  date: [Août 2023 - Sep 2024],
  location: [Valence],
  description: list(
    [Délai de mise en production *divisé par 2* grâce à l'automatisation de l'intégration et du déploiement],
    [*10+ releases/jour* livrées par les équipes, sans intervention manuelle],
    [Construction d'une plateforme CI/CD avec *security gates* et *least-privilege*, utilisée par *plusieurs équipes*],
    [Définition des *standards DevOps* et accompagnement des équipes à l'adoption],
  ),
  tags: ("Kubernetes", "Azure", "GitOps", "CI/CD", "Docker"),
)

#cv-entry(
  title: [Infrastructure Engineer],
  society: [CEA (Commissariat à l'énergie atomique)],
  date: [Jan 2020 - Juin 2020],
  location: [Grenoble],
  description: list(
    [Traitement batch sur *OpenStack souverain* réduit de *1 heure à 5 minutes*],
    [*Pipelines de données conformes* pour recherche sensible, entièrement automatisés],
    [Libération de *70%* de stockage via l'optimisation des données],
    [*4 heures gagnées* par jour par chercheur],
  ),
  tags: ("OpenStack", "Python", "GitHub Actions", "Linux", "Automation"),
)

#cv-entry(
  title: [Infrastructure Engineer],
  society: [Freelance (Hébergement & Infrastructure)],
  date: [Juin 2019 - Juil 2023],
  location: [Grenoble],
  description: list(
    [*500+ VMs* sur infrastructure *européenne multi-tenant* avec *SLA 99.9%*],
    [*Isolation des tenants*, segmentation réseau et séparation stricte des données],
    [Coûts infra réduits de *40%*, demandes support de *60%* via automatisation],
    [Astreinte 24/7 pendant *4 ans* avec *100% de conformité SLO*],
  ),
  tags: ("AWS", "Linux", "Proxmox", "Hetzner", "Kubernetes", "SRE", "Ansible"),
)
