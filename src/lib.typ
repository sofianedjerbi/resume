/*
* Entry point for the package
*/

/* Packages */
#import "./cv.typ": *
#import "./letter.typ": *
#import "./utils/lang.typ": *
#import "./utils/styles.typ": *
#import "./utils/styles.typ": theme
#import "./utils/injection.typ": _inject

/* Layout */
#let cv(
  metadata,
  doc,
  // New parameter names (recommended)
  profile-photo: image("../template/assets/avatar.png"),
  // Old parameter names (deprecated, for backward compatibility)
  profilePhoto: image("../template/assets/avatar.png"),
) = {
  // Backward compatibility logic (remove this block when deprecating)
  let profile-photo = if profile-photo != image("../template/assets/avatar.png") {
    profile-photo
  } else {
    // TODO: Add deprecation warning in future version
    profilePhoto
  }

  // Update metadata state
  cv-metadata.update(metadata)

  // Non Latin Logic
  let lang = metadata.language
  let fonts = _latin-font-list
  let header-font = _latin-header-font

  let font-config = overwrite-fonts(metadata, _latin-font-list, _latin-header-font)
  fonts = font-config.regular-fonts
  header-font = font-config.header-font

  if _is-non-latin(lang) {
    let nonLatinFont = metadata.lang.non_latin.font
    fonts.insert(2, nonLatinFont)
    header-font = nonLatinFont
  }

  let accent-color = _set-accent-color(_awesome-colors, metadata)
  let sidebar-color = theme.canvas.subtle
  let sidebar-width = 26%

  // Page layout
  set text(font: fonts, weight: "regular", size: 9pt, fill: theme.fg.muted)
  set align(left)
  let paper_size = metadata.layout.at("paper_size", default: "a4")
  set page(
    paper: {paper_size},
    margin: (left: 0pt, right: 0pt, top: 0pt, bottom: 0pt),
    footer: none,
  )

  // Keyword injection
  _inject(
    inject-ai-prompt: metadata.inject.inject_ai_prompt,
    inject-keywords: metadata.inject.inject_keywords,
    keywords: metadata.inject.injected_keywords_list,
  )

  // Two-column layout
  grid(
    columns: (sidebar-width, 1fr),
    // Left sidebar
    block(
      width: 100%,
      height: 100%,
      fill: sidebar-color,
      inset: (x: 16pt, y: 20pt),
      {
        // Spacing constants
        let section-gap = 18pt      // Between sections
        let title-gap = 10pt        // After section title
        let item-gap = 4pt          // Between items
        let group-gap = 8pt         // Between skill groups

        // Profile photo
        align(center, {
          box(
            width: 125pt,
            height: 125pt,
            radius: 50%,
            clip: true,
            stroke: 3pt + theme.canvas.default,
            {
              set image(width: 100%, height: 100%, fit: "cover")
              profile-photo
            }
          )
        })

        // Name under photo
        align(center, {
          text(font: header-font, size: 14pt, weight: "bold", fill: theme.fg.default)[#metadata.personal.first_name #metadata.personal.last_name]
        })
        v(section-gap)

        // Contact items
        {
          set text(size: 7.5pt, fill: theme.fg.muted)
          for (key, val) in metadata.personal.info {
            if key == "linebreak" { continue }
            if val != "" and not key.contains("custom") {
              let icon = if key == "phone" { fa-phone() }
                else if key == "email" { fa-envelope() }
                else if key == "linkedin" { fa-linkedin() }
                else if key == "github" { fa-square-github() }
                else if key == "location" { fa-location-dot() }
                else if key == "homepage" { fa-pager() }
                else { "" }

              block(spacing: 0pt, {
                text(fill: accent-color)[#icon]
                h(5pt)
                if key == "email" { link("mailto:" + val)[#val] }
                else if key == "linkedin" { link("https://linkedin.com/in/" + val)[LinkedIn] }
                else if key == "github" { link("https://github.com/" + val)[GitHub] }
                else if key == "homepage" { link("https://" + val)[Website] }
                else if key == "phone" { link("tel:" + val.replace(" ", ""))[#val] }
                else { val }
              })
              v(item-gap)
            }
          }
        }

        // Languages section
        let languages = metadata.at("languages", default: none)
        if languages != none {
          v(section-gap)
          block(spacing: 0pt, {
            text(size: 9pt, weight: "bold", fill: theme.fg.muted)[Languages]
            h(6pt)
            box(width: 1fr, baseline: 40%, line(stroke: 0.5pt + theme.border.default, length: 100%))
          })
          v(title-gap)

          // French flag (vertical stripes: blue, white, red)
          let flag-fr = box(width: 12pt, height: 9pt, radius: 2pt, clip: true, baseline: 25%, {
            box(width: 4pt, height: 9pt, fill: rgb("#002395"))
            box(width: 4pt, height: 9pt, fill: theme.canvas.default)
            box(width: 4pt, height: 9pt, fill: rgb("#ED2939"))
          })

          // UK flag (simplified: blue with red cross)
          let flag-uk = box(width: 12pt, height: 9pt, radius: 2pt, clip: true, baseline: 25%, fill: rgb("#012169"), {
            // White diagonal
            place(center + horizon, line(stroke: 2pt + theme.canvas.default, start: (0pt, 0pt), end: (12pt, 9pt)))
            place(center + horizon, line(stroke: 2pt + theme.canvas.default, start: (12pt, 0pt), end: (0pt, 9pt)))
            // Red diagonal (thinner)
            place(center + horizon, line(stroke: 1pt + rgb("#C8102E"), start: (0pt, 0pt), end: (12pt, 9pt)))
            place(center + horizon, line(stroke: 1pt + rgb("#C8102E"), start: (12pt, 0pt), end: (0pt, 9pt)))
            // White cross
            place(center + horizon, rect(width: 12pt, height: 3pt, fill: theme.canvas.default))
            place(center + horizon, rect(width: 3pt, height: 9pt, fill: theme.canvas.default))
            // Red cross
            place(center + horizon, rect(width: 12pt, height: 1.5pt, fill: rgb("#C8102E")))
            place(center + horizon, rect(width: 1.5pt, height: 9pt, fill: rgb("#C8102E")))
          })

          if languages.at("french", default: none) != none {
            block(spacing: 0pt, {
              flag-fr
              h(4pt)
              text[French (#languages.french)]
            })
            v(item-gap)
          }
          if languages.at("english", default: none) != none {
            block(spacing: 0pt, {
              flag-uk
              h(4pt)
              text[English (#languages.english)]
            })
          }
        }

        // Highlights section
        let highlights-data = metadata.at("highlights", default: none)
        if highlights-data != none {
          v(section-gap)
          block(spacing: 0pt, {
            text(size: 9pt, weight: "bold", fill: theme.fg.muted)[Highlights]
            h(6pt)
            box(width: 1fr, baseline: 40%, line(stroke: 0.5pt + theme.border.default, length: 100%))
          })
          v(title-gap)

          for highlight in highlights-data.items {
            block(spacing: 0pt, {
              text(fill: accent-color)[•]
              h(4pt)
              text[#highlight]
            })
            v(3pt)
          }
        }

        // Skills section
        let sidebar-skills = metadata.at("sidebar_skills", default: none)
        if sidebar-skills != none {
          v(section-gap)
          block(spacing: 0pt, {
            text(size: 9pt, weight: "bold", fill: theme.fg.muted)[Skills]
            h(6pt)
            box(width: 1fr, baseline: 40%, line(stroke: 0.5pt + theme.border.default, length: 100%))
          })
          v(title-gap)

          stack(
            dir: ttb,
            spacing: 3pt,
            ..sidebar-skills.map(skill-group => {
              box(
                width: 100%,
                fill: theme.canvas.default,
                radius: 4pt,
                inset: (x: 6pt, y: 5pt),
                {
                  // Category name as small label
                  box(
                    fill: accent-color.lighten(85%),
                    radius: 2pt,
                    inset: (x: 4pt, y: 1pt),
                    text(size: 7.5pt, weight: "bold", fill: accent-color)[#skill-group.category]
                  )
                  h(4pt)
                  // Skills inline
                  for (i, skill) in skill-group.items.enumerate() {
                    text(size: 8pt, fill: theme.fg.muted)[#skill]
                    if i < skill-group.items.len() - 1 {
                      h(2pt)
                      text(size: 7pt, fill: theme.border.default)[·]
                      h(2pt)
                    }
                  }
                }
              )
            })
          )
        }

        // Education section
        let education = metadata.at("education", default: none)
        if education != none {
          v(section-gap)
          block(spacing: 0pt, {
            text(size: 9pt, weight: "bold", fill: theme.fg.muted)[Education]
            h(6pt)
            box(width: 1fr, baseline: 40%, line(stroke: 0.5pt + theme.border.default, length: 100%))
          })
          v(title-gap)

          stack(
            dir: ttb,
            spacing: 4pt,
            ..education.map(edu => {
              box(
                width: 100%,
                fill: theme.canvas.default,
                radius: 4pt,
                inset: 6pt,
                grid(
                  columns: (20pt, 1fr),
                  column-gutter: 6pt,
                  align: horizon,
                  // Logo
                  box(
                    width: 20pt,
                    height: 20pt,
                    radius: 3pt,
                    clip: true,
                    image("../template/assets/" + edu.logo, width: 100%, height: 100%, fit: "cover")
                  ),
                  // Text
                  {
                    text(size: 7.5pt, weight: "bold", fill: theme.fg.default)[#edu.title]
                    linebreak()
                    text(size: 6.5pt, fill: theme.fg.muted)[#edu.school, #edu.location]
                  }
                )
              )
            })
          )
        }
      }
    ),
    // Right main content
    block(
      width: 100%,
      height: 100%,
      inset: (x: 20pt, y: 20pt),
      {
        // Title header
        let header-title = metadata.lang.at(metadata.language).at("header_title", default: "Senior DevOps Engineer")
        stack(
          dir: ttb,
          spacing: 12pt,
          align(center, text(font: header-font, size: 24pt, weight: "bold", fill: theme.fg.default)[#header-title]),
          align(center, text(size: 13pt, fill: theme.fg.subtle)[AWS · Azure · Kubernetes · Terraform]),
        )

        // Personal description
        let header-quote = metadata.lang.at(metadata.language).at("header_quote", default: none)
        if header-quote != none {
          v(6pt)
          line(stroke: 0.5pt + theme.border.default, length: 100%)
          v(6pt)
          set text(size: 9pt, fill: theme.fg.muted)
          set par(leading: 0.5em)
          eval(header-quote.replace("\n", " \\ "), mode: "markup")
          v(6pt)
        }

        doc
        v(1fr)
        context _cv-footer(metadata)
      }
    ),
  )
}

#let letter(
  metadata,
  doc,
  // New parameter names (recommended)
  sender-address: "Your Address Here",
  recipient-name: "Company Name Here", 
  recipient-address: "Company Address Here",
  // Old parameter names (deprecated, for backward compatibility)
  myAddress: "Your Address Here",
  recipientName: "Company Name Here",
  recipientAddress: "Company Address Here",
  date: datetime.today().display(),
  subject: "Subject: Hey!",
  signature: "",
) = {
  // Backward compatibility logic (remove this block when deprecating)
  let sender-address = if sender-address != "Your Address Here" { sender-address } else { myAddress }
  let recipient-name = if recipient-name != "Company Name Here" { recipient-name } else { recipientName }
  let recipient-address = if recipient-address != "Company Address Here" { recipient-address } else { recipientAddress }
  // Non Latin Logic
  let lang = metadata.language
  let fonts = _latin-font-list
  let font-config = overwrite-fonts(metadata, _latin-font-list, _latin-header-font)
  fonts = font-config.regular-fonts
  if _is-non-latin(lang) {
    let non-latin-font = metadata.lang.non_latin.font
    fonts.insert(2, non-latin-font)
  }

  // Page layout
  set text(font: fonts, weight: "regular", size: 9pt, fill: _regular-colors.lightgray)
  set align(left)
  let paper-size = metadata.layout.at("paper_size", default: "a4")
  set page(
    paper: {paper-size},
    margin: {
      if paper-size == "us-letter" {
        (left: 2cm, right: 2cm, top: 1.2cm, bottom: 1.2cm)
        } else {
        (left: 1.4cm, right: 1.4cm, top: 1cm, bottom: 1cm)
      }
    },
    footer: _letter-footer(metadata),
  )
  set text(size: 12pt)

  _letter-header(
      sender-address: sender-address,
      recipient-name: recipient-name,
      recipient-address: recipient-address,
      date: date,
      subject: subject,
      metadata: metadata,
      awesome-colors: _awesome-colors,
    )
  doc

  if signature != "" {
    _letter-signature(signature)
  }
}
