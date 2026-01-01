// Imports
#import "@preview/brilliant-cv:3.1.1": cv-section, cv-entry


#cv-section("Expérience")

#cv-entry(
  title: [Cloud Platform Architect],
  society: [EDF (Leader européen de l'énergie)],
  date: [Nov 2024 - Présent],
  location: [Bordeaux],
  description: list(
    [*Conçu* une plateforme cloud de zéro jusqu'en production],
    [Déployée sur *5+ environnements* avec *zéro interruption non planifiée*],
    [Permis à *14 développeurs* de déployer en autonomie via des pipelines self-service],
    [*Recruté et formé* des ingénieurs pour opérer la plateforme],
  ),
  tags: ("AWS", "Terraform", "Terragrunt", "GitOps", "DevSecOps"),
)

#cv-entry(
  title: [CI/CD Platform Architect],
  society: [Ingenico (Leader mondial du paiement)],
  date: [Août 2023 - Sep 2024],
  location: [Valence],
  description: list(
    [*Divisé par 2* le time-to-production en automatisant tout le cycle build-to-deploy],
    [Les équipes livrent maintenant *10+ releases/jour* sans intervention manuelle],
    [Construit la plateforme CI/CD utilisée par *plusieurs équipes produit*],
    [*Formé* les équipes dev aux bonnes pratiques DevOps],
  ),
  tags: ("Kubernetes", "Azure", "GitOps", "CI/CD", "Docker"),
)

#cv-entry(
  title: [Infrastructure Engineer],
  society: [Freelance (Hébergement & Infrastructure)],
  date: [Juin 2019 - Juil 2023],
  location: [Grenoble],
  description: list(
    [*500+ VMs* gérées en multi-cloud avec *99.9% de disponibilité*],
    [Incidents critiques résolus en *moins de 30 minutes* en moyenne],
    [Optimisations réduisant les coûts infra de *40%* et les tickets de *60%*],
    [*4 ans* d'astreinte 24/7 avec *zéro* incident majeur non résolu],
  ),
  tags: ("AWS", "Linux", "Proxmox", "Hetzner", "Kubernetes", "SRE", "Ansible"),
)

#cv-entry(
  title: [Infrastructure Engineer],
  society: [CEA (Commissariat à l'énergie atomique)],
  date: [Jan 2020 - Juin 2020],
  location: [Grenoble],
  description: list(
    [Temps de traitement batch réduit de *1 heure à 5 minutes*],
    [Pipelines de données *entièrement automatisés*, zéro intervention manuelle],
    [*70% de stockage* libéré grâce à l'optimisation des données],
    [*4 heures gagnées* par jour par chercheur sur la préparation des données],
  ),
  tags: ("OpenStack", "Python", "GitHub Actions", "Linux", "Automation"),
)
