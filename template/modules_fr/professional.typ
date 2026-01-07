// Imports
#import "../../src/lib.typ": cv-section, cv-entry


#cv-section("Expérience")

#cv-entry(
  title: [Senior DevSecOps Engineer],
  society: [EDF (Énergie)],
  date: [Nov 2024 - Présent],
  location: [Bordeaux],
  contract-type: [Freelance],
  description: list(
    [Conception d'une *plateforme cloud from scratch* pour la nouvelle GED basée sur Nuxeo],
    [Mise en place de *traçabilité complète*, IAM/RBAC, isolation des environnements et SLOs selon contraintes budgétaires],
    [Déploiement autonome pour *14* développeurs sur *5* environnements + environnements éphémères en self-service],
    [Constitution et formation d'une *équipe plateforme* avec les équipes dev, sécurité et métier],
  ),
  tags: ("AWS", "Terraform", "Terragrunt", "GitOps", "DevSecOps"),
)

#cv-entry(
  title: [DevSecOps Engineer],
  society: [Ingenico (Paiement)],
  date: [Août 2023 - Sep 2024],
  location: [Valence],
  contract-type: [Freelance],
  description: list(
    [Conception d'une *plateforme CI/CD Java/Kotlin* standardisée, du build au deploy, avec sécurité intégrée],
    [*Plusieurs dizaines de releases* par jour livrées par les équipes, sans intervention manuelle des opérations],
    [Tests distribués automatiquement sur *plusieurs modèles de terminaux* pour garantir la compatibilité],
    [Définition des *standards DevOps*, CI/CD et besoins infra en collaboration avec les équipes de développement],
  ),
  tags: ("Kubernetes", "Azure", "GitOps", "CI/CD", "Docker", "DevSecOps"),
)

#cv-entry(
  title: [DevOps Engineer],
  society: [CEA (Recherche nucléaire) x IM²AG],
  date: [Jan 2020 - Juin 2020],
  location: [Grenoble],
  contract-type: [CDD],
  description: list(
    [Conception d'une *infrastructure de traitement batch* pour le projet d'attaques par rayons X sur microcontrôleurs],
    [Déploiement de l'application Python de traitement batch sur *infrastructure OpenStack*],
    [Compression sur mesure des données d'analyse, libérant *70%* du stockage permanent],
  ),
  tags: ("OpenStack", "Python", "GitHub Actions", "Linux", "Automation"),
)

#cv-entry(
  title: [DevOps Engineer],
  society: [Freelance (Hébergement & Infrastructure)],
  date: [Juin 2019 - Juil 2023],
  location: [Grenoble],
  contract-type: [Freelance],
  description: list(
    [Infogérance de plus de *500* VMs pour plusieurs clients sur une *infrastructure européenne* avec un SLA de *99.9%*],
    [*Isolation des tenants* via VLANs, firewalls, namespaces et stockage séparé par client],
    [*Redimensionnement automatique* des workloads à chaud pour les clients SaaS (WordPress, GitLab, Drupal et plus)],
    [Astreinte 24/7 pendant *4 ans* : incidents critiques, backups, contraintes sur-mesure et assistance technique],
  ),
  tags: ("AWS", "Linux", "Proxmox", "Hetzner", "Kubernetes", "SRE", "Ansible"),
)
