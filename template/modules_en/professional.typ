// Imports
#import "../../src/lib.typ": cv-section, cv-entry


#cv-section("Experience")

#cv-entry(
  title: [Lead Platform Engineer],
  society: [EDF (Energy)],
  date: [Nov 2024 - Present],
  location: [Bordeaux],
  contract-type: [Contract],
  description: list(
    [Designed and built a *cloud platform from scratch* for document management based on Nuxeo],
    [*Full audit trail*, IAM/RBAC, environment isolation and SLOs],
    [*14* developers deploying autonomously across *5* environments + self-service ephemeral environments],
    [Built and trained a *platform team* in collaboration with dev, security and product teams],
  ),
  tags: ("AWS", "Terraform", "Terragrunt", "GitOps", "DevSecOps"),
)

#cv-entry(
  title: [Platform Engineer],
  society: [Ingenico (Payments)],
  date: [Aug 2023 - Sep 2024],
  location: [Valence],
  contract-type: [Contract],
  description: list(
    [Designed a standardized *Java/Kotlin CI/CD platform*, from build to deploy, with integrated security],
    [*Dozens of releases* per day shipped by teams without manual ops intervention],
    [Tests automatically distributed across *multiple terminal models* to ensure compatibility],
    [Defined *DevOps standards*, CI/CD and infrastructure requirements with development teams],
  ),
  tags: ("Kubernetes", "Azure", "GitOps", "CI/CD", "Docker", "DevSecOps"),
)

#cv-entry(
  title: [Infrastructure Engineer],
  society: [Freelance (Hosting & Infrastructure)],
  date: [Jun 2019 - Jul 2023],
  location: [Grenoble],
  contract-type: [Freelance],
  description: list(
    [*500+* VMs managed for multiple clients on *European infrastructure*, *99.9%* SLA],
    [*Tenant isolation* via VLANs, firewalls, namespaces and per-client storage],
    [*Automatic hot-resizing* of workloads for SaaS clients (WordPress, GitLab, Drupal and more)],
    [24/7 on-call for *4 years*: critical incidents, backups, custom constraints and technical support],
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
    [Designed *batch processing infrastructure* for X-ray attacks on microcontrollers research project],
    [Deployed Python batch processing application on *OpenStack infrastructure*],
    [Custom compression of analysis data, freeing *70%* of permanent storage],
  ),
  tags: ("OpenStack", "Python", "GitHub Actions", "Linux", "Automation"),
)
