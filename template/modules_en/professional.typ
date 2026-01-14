// Imports
#import "../../src/lib.typ": cv-section, cv-entry
#import "../../src/utils/styles.typ": theme


#cv-section("Experience")

#cv-entry(
  title: [Site Reliability Engineer],
  society: [*EDF* (Energy)],
  date: [Nov 2024 - Present],
  location: [Bordeaux],
  contract-type: [Freelance],
  logo: image("../assets/edf_square.svg"),
  summary: [Linux-based cloud platform with secrets management and self-service DX],
  description: list(
    [Designed platform architecture with secrets management across *5* isolated environments],
    [Built *self-service* pipelines enabling *15* engineers to deploy autonomously],
    [Established SLOs, monitoring and *on-call* processes for platform reliability],
    [Coached a core team of *5* engineers on platform operations and incident response],
  ),
  tags: ("Linux", "AWS", "Terraform", "GitLab CI", "Go", "Automation"),
)

#cv-entry(
  title: [Site Reliability Engineer],
  society: [*Ingenico* (Payments)],
  date: [Aug 2023 - Sep 2024],
  location: [Valence],
  contract-type: [Freelance],
  logo: image("../assets/ingenico.svg"),
  summary: [Shared platform tooling and automation for payment terminal teams],
  description: list(
    [Designed shared delivery pipelines and orchestration for *7* library teams],
    [Built internal tooling in *Go* for automation and developer experience],
    [Implemented *Kubernetes* workloads with security gates and automated releases],
  ),
  tags: ("Kubernetes", "Go", "Linux", "Vault", "CI/CD", "Automation"),
)

#cv-entry(
  title: [Site Reliability Engineer],
  society: [*Hosting Platform* (Cloud)],
  date: [Jun 2019 - Jul 2023],
  location: [Grenoble],
  contract-type: [Freelance while student],
  logo: image("../assets/hosting_platform.png"),
  logo-zoom: 120%,
  summary: [Large-scale Linux hosting with KVM virtualization and 24/7 on-call],
  description: list(
    [Operated *500+ VMs* on *KVM/Proxmox* across multiple hosts with *99.9%* SLA],
    [Built automation for provisioning, DNS management and *self-service* customer workflows],
    [*4 years of 24/7 on-call* ownership with incident response and post-mortems],
  ),
  tags: ("Linux", "KVM", "Proxmox", "DNS", "Automation", "On-call"),
)

// Mini entry - etcd.me project
#v(4pt)
#table(
  columns: (auto, 1fr),
  inset: 0pt,
  stroke: none,
  gutter: 8pt,
  align: (x, y) => left + horizon,
  {
    let s = 22pt
    box(width: s, height: s, radius: 50%, clip: true,
      image("../assets/kubernetes.png", width: 100%, height: 100%, fit: "cover"))
  },
  {
    text(size: 10pt, weight: "bold")[etcd.me]
    linebreak()
    text(size: 9pt, fill: theme.fg.subtle, weight: "medium", style: "italic")[HA Kubernetes on Talos Linux · Vault PKI · Cilium · #link("https://etcd.me")[#text(fill: theme.accent.fg)[etcd.me]]]
  },
)
