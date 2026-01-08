
#let h-bar() = [#h(5pt) | #h(5pt)]

#let _latin-font-list = (
  "Source Sans 3",
  "Linux Libertine",
  "Font Awesome 6 Brands",
  "Font Awesome 6 Free",
)

#let _latin-header-font = ("Roboto")

// =============================================================================
// GitHub Primer Light Theme
// https://primer.style/foundations/color/overview/
// =============================================================================
#let theme = (
  // Canvas (backgrounds)
  canvas: (
    default: rgb("#ffffff"),
    subtle: rgb("#f6f8fa"),
    inset: rgb("#f6f8fa"),
  ),
  // Foreground (text)
  fg: (
    default: rgb("#1F2328"),
    muted: rgb("#656d76"),
    subtle: rgb("#6e7781"),
    on-emphasis: rgb("#ffffff"),
  ),
  // Border
  border: (
    default: rgb("#d0d7de"),
    muted: rgb("#d8dee4"),
    subtle: rgb("#eaeef2"),
  ),
  // Accent (primary actions, links)
  accent: (
    fg: rgb("#0969da"),
    emphasis: rgb("#0969da"),
    muted: rgb("#54aeff"),
    subtle: rgb("#ddf4ff"),
  ),
  // Success
  success: (
    fg: rgb("#1a7f37"),
    emphasis: rgb("#1f883d"),
  ),
  // Danger
  danger: (
    fg: rgb("#d1242f"),
    emphasis: rgb("#cf222e"),
  ),
)

// Legacy aliases for backward compatibility
#let _awesome-colors = (
  skyblue: theme.accent.fg,
  red: theme.danger.fg,
  nephritis: theme.success.fg,
  concrete: theme.fg.muted,
  darknight: theme.fg.default,
)

#let _regular-colors = (
  subtlegray: theme.canvas.subtle,
  lightgray: theme.fg.muted,
  darkgray: theme.fg.default,
  border: theme.border.default,
)

/// Get accent color from metadata or use theme default
/// -> color
#let _set-accent-color(awesome-colors, metadata) = {
  let param = metadata.layout.at("accent_color", default: none)
  if param == none {
    param = metadata.layout.at("awesome_color", default: none)
  }
  if param == none {
    return theme.accent.fg
  }
  return rgb(param)
}

/// Overwrite the default fonts if the metadata has custom font values
/// 
/// - metadata (array): the metadata object
/// - latin-fonts (array): the default list of latin fonts
/// - latin-header-font (string): the default header font
/// -> array
#let overwrite-fonts(metadata, latin-fonts, latin-header-font) = {
  let user-defined-fonts = metadata.layout.at("fonts", default: [])
  let regular-fonts = latin-fonts
  let header-font = latin-header-font
  if user-defined-fonts.len() > 0 {
    regular-fonts = user-defined-fonts.at("regular_fonts")
    header-font = user-defined-fonts.at("header_font")
  }
  return (regular-fonts: regular-fonts, header-font: header-font)
}

// Backward compatibility aliases
#let hBar = h-bar

// Export theme for use in other modules
#let get-theme() = theme
