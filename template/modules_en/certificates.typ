// Imports
#import "../../src/lib.typ": cv-section
#import "../../src/utils/styles.typ": theme
#import "@preview/fontawesome:0.6.0": fa-user


#cv-section("Certifications")

#let cert-entry(icon, title, certs) = {
  table(
    columns: (24pt, 1fr),
    inset: 0pt,
    column-gutter: 8pt,
    stroke: none,
    align: (x, y) => if x == 0 { center + horizon } else { left + top },
    box(width: 20pt, height: 20pt, {
      set image(width: 100%, height: 100%, fit: "contain")
      icon
    }),
    {
      text(size: 11pt, weight: "semibold", fill: theme.fg.default)[#title]
      linebreak()
      text(size: 9pt, fill: theme.fg.muted)[#certs]
    },
  )
}

#cert-entry(
  image("../assets/aws.png"),
  [AWS],
  [*Solutions Architect Associate*, Developer Associate, Cloud Practitioner],
)
#v(4pt)
#cert-entry(
  image("../assets/kubernetes.png"),
  [Kubernetes],
  [*CKA (Administrator)*, *CKAD (Application Developer)*, KCNA (Cloud Native)],
)
#v(4pt)
#cert-entry(
  image("../assets/terraform.png"),
  [IaC],
  [*Terraform Associate*, *Terragrunt Ambassador*],
)

#cv-section("References")

#let ref-entry(name, role, company) = {
  table(
    columns: (24pt, 1fr),
    inset: 0pt,
    column-gutter: 8pt,
    stroke: none,
    align: (x, y) => if x == 0 { center + horizon } else { left + horizon },
    box(width: 20pt, height: 20pt, radius: 50%, fill: theme.canvas.subtle,
      align(center + horizon, text(size: 10pt, fill: theme.fg.subtle)[#fa-user()])
    ),
    {
      text(size: 11pt, weight: "semibold", fill: theme.fg.default)[#name]
      linebreak()
      text(size: 9pt, fill: theme.fg.muted)[#role, #company]
    },
  )
}

#ref-entry([Damien HOLT], [Engineering Manager], [EDF])
#v(-4pt)
#ref-entry([Vincent GRANOUILLIT], [Scrum Master], [EDF])
#v(4pt)
#text(size: 8pt, style: "italic", fill: theme.fg.subtle)[Additional references and contact details available upon request.]
