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
    [Designed platform architecture with secrets management and security policies across *5* environments],
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
  tags: ("Kubernetes", "Go", "Linux", "CI/CD", "Docker", "Automation"),
)

#cv-entry(
  title: [Founder & SRE],
  society: [*etcd.me* (Infrastructure)],
  date: [Project],
  location: [Open Source],
  contract-type: [],
  logo: image("../assets/kubernetes.png"),
  summary: [HA Kubernetes on Linux with PKI, secrets management and GitOps],
  description: list(
    [Built *3-node* HA cluster on Talos Linux with *KVM*, automated failover and *99.9%* uptime],
    [Implemented *Vault* for PKI/secrets, Cilium for networking and service mesh],
    [Self-hosted DNS, Keycloak SSO, Prometheus/Grafana observability stack],
  ),
  tags: ("Kubernetes", "Linux", "Vault", "KVM", "Go", "Hetzner"),
)


