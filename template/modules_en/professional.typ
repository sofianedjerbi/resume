// Imports
#import "../../src/lib.typ": cv-section, cv-entry


#cv-section("Experience")

#cv-entry(
  title: [Cloud Platform Architect],
  society: [EDF (Europe's largest energy company)],
  date: [Nov 2024 - Present],
  location: [Bordeaux],
  contract-type: [Contract],
  description: list(
    [*Designed and built* a cloud platform from scratch for *critical energy infrastructure*],
    [*Full audit trail*, IAM/RBAC, segregation of duties, environment isolation],
    [*14 developers* deploying autonomously across *5+ environments* via self-service],
    [Built and scaled a *platform team* in collaboration with dev, security and product teams],
  ),
  tags: ("AWS", "Terraform", "Terragrunt", "GitOps", "DevSecOps"),
)

#cv-entry(
  title: [CI/CD Platform Architect],
  society: [Ingenico (Global payment leader)],
  date: [Aug 2023 - Sep 2024],
  location: [Valence],
  contract-type: [Contract],
  description: list(
    [*Halved* release cycles by automating integration and deployment],
    [Teams now ship *10+ releases/day* without manual intervention],
    [Built a CI/CD platform with *security gates* and *least-privilege*, used by *multiple teams* for library development],
    [Defined *DevOps standards* with engineering leads, enabled adoption across the organization],
  ),
  tags: ("Kubernetes", "Azure", "GitOps", "CI/CD", "Docker"),
)

#cv-entry(
  title: [Infrastructure Engineer],
  society: [Freelance (Hosting & Infrastructure)],
  date: [Jun 2019 - Jul 2023],
  location: [Grenoble],
  description: list(
    [*500+ VMs* managed for *multiple clients* on European infrastructure with *99.9% SLA*],
    [*Tenant isolation*, network segmentation, and strict data separation],
    [Infra costs cut by up to *40%*, support requests by *60%* through automation],
    [24/7 on-call for *4 years* with SLO monitoring],
  ),
  tags: ("AWS", "Linux", "Proxmox", "Hetzner", "Kubernetes", "SRE", "Ansible"),
)

#cv-entry(
  title: [Infrastructure Engineer],
  society: [CEA (Nuclear Research) x IM²AG],
  date: [Jan 2020 - Jun 2020],
  location: [Grenoble],
  contract-type: [Fixed term],
  description: list(
    [Batch processing on *sovereign OpenStack* cut from *1 hour to 5 minutes*],
    [*Compliant data pipelines* for sensitive research, fully automated],
    [*70% storage* freed through data optimization],
    [Worked with the research team to save *4 hours* per batch on data preparation],
  ),
  tags: ("OpenStack", "Python", "GitHub Actions", "Linux", "Automation"),
)
