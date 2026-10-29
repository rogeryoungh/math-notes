// HTML keeps semantic text; Typst lays out equations and diagrams as SVG.
#let html-project(title: "", author: (), date: datetime.today(), outlined: true, base-size: 10.5pt, body) = {
  set document(author: author.name, title: title)
  set text(font: ("New Computer Modern", "Noto Serif CJK SC"), lang: "zh", region: "cn", size: base-size)
  set heading(numbering: (..nums) => {
    let values = nums.pos()
    if values.len() == 1 {
      "第" + numbering("一", values.first()) + "章"
    } else {
      numbering("1.1", ..values)
    }
  })
  // Frames switch to paged layout; leave their nested equations untouched.
  show math.equation: it => context if target() == "html" {
    html.elem(
      if it.block { "div" } else { "span" },
      attrs: (class: if it.block { "block-equation" } else { "inline-equation" }, role: "math"),
      html.frame(it),
    )
  } else { it }
  // Positioned diagrams need Typst's layout engine rather than CSS.
  show figure: it => context if target() == "html" { html.elem("figure", html.frame(it)) } else { it }
  show heading: it => html.elem("h" + str(calc.min(it.level, 6)))[
    #if it.numbering != none {
      html.elem("span", attrs: (class: "heading-number"), context counter(heading).display())
    }
    #it.body
  ]
  show heading.where(level: 5): set heading(numbering: none)

  // Leave html/body to Typst so its native footnote section is retained.
  html.elem("head")[
    #html.elem("meta", attrs: (charset: "utf-8"))
    #html.elem("meta", attrs: (name: "viewport", content: "width=device-width, initial-scale=1"))
    #html.elem("meta", attrs: (name: "author", content: author.name))
    #html.elem("title", title)
    #html.elem("style", read("../../style/book.css"))
  ]
  html.elem("main", attrs: (class: "book"))[
    #html.elem("header", attrs: (class: "cover"))[
      #html.elem("h1", title)
      #html.elem("p")[
        #if "url" in author { link(author.url, author.name) } else { author.name }
      ]
      #html.elem("p", date.display("[year] 年 [month] 月 [day] 日"))
    ]
    #if outlined { outline(depth: 3) }
    #body
  ]
}
