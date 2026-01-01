// Imports
#import "@preview/brilliant-cv:3.1.1": cv-section, cv-entry


#cv-section("Experience")

#cv-entry(
  title: [Cloud Platform Architect],
  society: [EDF (Europe's largest energy company)],
  date: [Nov 2024 - Present],
  location: [Bordeaux],
  description: list(
    [*Built* cloud platform from scratch to production],
    [Shipped across *5+ environments* with *zero unplanned downtime*],
    [Enabled *14 developers* to deploy autonomously via self-service pipelines],
    [*Recruited and trained* engineers to own and operate the platform],
  ),
  tags: ("AWS", "Terraform", "Terragrunt", "GitOps", "DevSecOps"),
)

#cv-entry(
  title: [CI/CD Platform Architect],
  society: [Ingenico (Global payment leader)],
  date: [Aug 2023 - Sep 2024],
  location: [Valence],
  description: list(
    [*Halved* time-to-production by automating the entire build-to-deploy path],
    [Teams now ship *10+ releases/day* without manual intervention],
    [Built the CI/CD platform used across *multiple product teams*],
    [*Trained* dev teams on CI/CD best practices],
  ),
  tags: ("Kubernetes", "Azure", "GitOps", "CI/CD", "Docker"),
)

#cv-entry(
  title: [Infrastructure Engineer],
  society: [Freelance (Hosting & Infrastructure)],
  date: [Jun 2019 - Jul 2023],
  location: [Grenoble],
  description: list(
    [*500+ VMs* managed across multi-cloud with *99.9% uptime*],
    [Critical incidents resolved in *under 30 minutes* on average],
    [Optimizations that cut infra costs by *40%* and support tickets by *60%*],
    [*4 years* of 24/7 on-call with *zero* unresolved major incidents],
  ),
  tags: ("AWS", "Linux", "Proxmox", "Hetzner", "Kubernetes", "SRE", "Ansible"),
)

#cv-entry(
  title: [Infrastructure Engineer],
  society: [CEA (French Nuclear Research Agency)],
  date: [Jan 2020 - Jun 2020],
  location: [Grenoble],
  description: list(
    [Batch processing time cut from *1 hour to 5 minutes*],
    [Data pipelines *fully automated*, zero manual intervention],
    [*70% storage* freed through data optimization],
    [*4 hours saved* per day per researcher on data preparation],
  ),
  tags: ("OpenStack", "Python", "GitHub Actions", "Linux", "Automation"),
)
