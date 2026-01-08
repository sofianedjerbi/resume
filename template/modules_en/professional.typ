// Imports
#import "../../src/lib.typ": cv-section, cv-entry
#import "../../src/utils/styles.typ": theme


#cv-section("Experience")

#cv-entry(
  title: [Senior DevOps Engineer],
  society: [*EDF* (Energy)],
  date: [Nov 2024 - Present],
  location: [Bordeaux],
  contract-type: [Freelance],
  logo: image("../assets/edf_square.svg"),
  summary: [Multi-account AWS platform replacing legacy document system],
  description: list(
    [Defined target architecture and migration strategy across *5* isolated environments],
    [Enabled *15* engineers to deploy independently through *self-service* workflows],
    [Established platform standards for security, SLOs and cost control],
    [Built and coached a core team of *5* engineers to own platform operations],
  ),
  tags: ("AWS", "Terraform", "Terragrunt", "GitOps", "DevSecOps"),
)

#cv-entry(
  title: [DevOps Engineer],
  society: [*Ingenico* (Payments)],
  date: [Aug 2023 - Sep 2024],
  location: [Valence],
  contract-type: [Freelance],
  logo: image("../assets/ingenico.svg"),
  summary: [Shared CI/CD platform for payment terminal libraries teams],
  description: list(
    [Designed shared delivery pipelines used by *7* library teams],
    [Integrated *device-farm* testing, quality gates and automated releases],
    [Supported teams through the transition from independent pipelines to shared platform],
  ),
  tags: ("Kubernetes", "Azure", "GitOps", "CI/CD", "Docker", "DevSecOps"),
)

#cv-entry(
  title: [DevOps Engineer],
  society: [*Hosting Platform* (IT)],
  date: [Jun 2019 - Jul 2023],
  location: [Grenoble],
  contract-type: [Independent],
  logo: image("../assets/hosting_platform.png"),
  logo-zoom: 120%,
  summary: [Multi-host virtualization hosting platform],
  description: list(
    [Operated multi-host virtualization (*500+* VMs, *99.9%* SLA), *24/7* ownership],
    [Implemented tenant isolation using VLANs, firewalls and dedicated storage],
    [Built *self-service* provisioning/autoscaling and packaged reusable ops templates],
  ),
  tags: ("AWS", "Linux", "Proxmox", "Hetzner", "Kubernetes", "SRE", "Ansible"),
)

// Mini entry - "And more on LinkedIn"
#v(4pt)
#table(
  columns: (12%, 1fr),
  inset: 0pt,
  stroke: none,
  gutter: 12pt,
  align: (x, y) => left + horizon,
  // Stacked logos (round, no border)
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
  // Title and subtitle (vertically centered)
  {
    text(size: 10pt, weight: "bold")[Additional Consulting]
    linebreak()
    text(size: 9pt, fill: theme.fg.subtle, weight: "medium", style: "italic")[Selected items on #link("https://www.linkedin.com/in/sofianedjerbi")[#text(fill: theme.accent.fg)[LinkedIn]] · Details available upon request.]
  },
)

