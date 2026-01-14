// Imports
#import "../src/lib.typ": letter
#let metadata = toml("./metadata.toml")
#let letter-language = sys.inputs.at("language", default: none)
#let metadata = if letter-language != none {
  metadata + (language: letter-language)
} else {
  metadata
}


#show: letter.with(
  metadata,
  sender-address: "Grenoble, France",
  recipient-name: "Exoscale",
  recipient-address: "Lausanne, Switzerland",
  date: datetime.today().display(),
  subject: "Site Reliability Engineer",
)

Hi,

I've been following Exoscale for a while. A European cloud provider that actually owns its infrastructure and doesn't just resell AWS is rare, and it's exactly the kind of platform I want to work on.

I've spent the last 6 years building infrastructure where uptime matters. At EDF, I designed a platform that lets 15 engineers deploy on their own, with proper SLOs and on-call processes. Before that, I ran a hosting platform with 500+ VMs on KVM and Proxmox for 4 years, with full 24/7 responsibility.

I code in Go, I hold CKA and CKAD certifications, and I sell a production Kubernetes template (Vault, Cilium, Talos) to clients through etcd.me.

I'm relocating to Lausanne and I'd love to contribute to what you're building.

Sofiane Djerbi
