// Imports
#import "@preview/brilliant-cv:3.1.1": cv-section, cv-entry


#cv-section("Experience")

#cv-entry(
  title: [Cloud Platform Architect],
  society: [EDF (Europe's largest energy company)],
  date: [Nov 2024 - Present],
  location: [Bordeaux],
  description: list(
    [*Designed and built* a cloud platform from scratch for *critical energy infrastructure*],
    [Full *audit trail*, *IAM/RBAC*, *segregation of duties*, and environment isolation from day one],
    [*14 developers* deploying autonomously across *5+ environments* via self-service],
    [Built and scaled a *platform team* with full operational ownership],
  ),
  tags: ("AWS", "Terraform", "Terragrunt", "GitOps", "DevSecOps"),
)

#cv-entry(
  title: [CI/CD Platform Architect],
  society: [Ingenico (Global payment leader)],
  date: [Aug 2023 - Sep 2024],
  location: [Valence],
  description: list(
    [*Halved* time-to-production by automating integration and deployment],
    [Teams now ship *10+ releases/day* without manual intervention],
    [Built a CI/CD platform with *security gates* and *least-privilege*, used by *multiple teams*],
    [Defined *DevOps standards* and enabled team adoption across the organization],
  ),
  tags: ("Kubernetes", "Azure", "GitOps", "CI/CD", "Docker"),
)

#cv-entry(
  title: [Infrastructure Engineer],
  society: [Freelance (Hosting & Infrastructure)],
  date: [Jun 2019 - Jul 2023],
  location: [Grenoble],
  description: list(
    [*500+ VMs* on *European multi-tenant* infrastructure with *99.9% SLA*],
    [*Tenant isolation*, network segmentation, and strict data separation],
    [Infra costs cut by *40%*, support requests by *60%* through automation],
    [24/7 on-call for *4 years* with *100% SLO* compliance],
  ),
  tags: ("AWS", "Linux", "Proxmox", "Hetzner", "Kubernetes", "SRE", "Ansible"),
)

#cv-entry(
  title: [Infrastructure Engineer],
  society: [CEA (French Nuclear Research Agency)],
  date: [Jan 2020 - Jun 2020],
  location: [Grenoble],
  description: list(
    [Batch processing on *sovereign OpenStack* cut from *1 hour to 5 minutes*],
    [*Compliant data pipelines* for sensitive research, fully automated],
    [*70% storage* freed through data optimization],
    [*4 hours saved* per day per researcher on data preparation],
  ),
  tags: ("OpenStack", "Python", "GitHub Actions", "Linux", "Automation"),
)
