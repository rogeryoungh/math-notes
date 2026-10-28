#let en-font = "New Computer Modern"
#let cjk-font = "Noto Serif CJK SC"
#let body-font = (en-font, cjk-font)
#let mono-font = ("DejaVu Sans Mono", "Noto Sans Mono CJK SC", cjk-font)
#let url-color = rgb(128, 0, 0)

#let project(title: "", author: (), date: datetime.today(), outlined: true, base-size: 10.5pt, body) = {
  set text(font: body-font, lang: "zh", region: "cn", size: base-size)
  show raw: set text(font: mono-font, size: base-size * 0.9)
  show math.text: set text(font: body-font)
  set document(author: author.name, title: title)
  set page(paper: "a4", margin: (x: 20mm, y: 25.4mm))

  // leading 是字形框之间的留白，不是整行高度；正文行距约为 16.4pt。
  // 段距沿用行距，换段只缩进两字，不另加空白行。
  set par(first-line-indent: (amount: 2em, all: true), justify: true,
    leading: 0.83em, spacing: 0.83em)
  set block(spacing: auto)
  set enum(indent: 2em, spacing: auto)
  set list(indent: 2em, spacing: auto)
  show enum: set par(first-line-indent: 0pt)
  show list: set par(first-line-indent: 0pt)
  show figure: set par(first-line-indent: 0pt)
  show link: set text(fill: url-color)

  // 封面不显示页码。
  align(horizon + center)[
    #set par(first-line-indent: 0pt)
    #v(-7em)
    #block(text(1.6em, title))
    #v(3em)
    #if "url" in author {
      block(link(author.url, author.name))
    } else {
      block(author.name)
    }
    #v(1em)
    #block(date.display("[year] 年 [month] 月 [day] 日"))
  ]
  pagebreak()

  set heading(numbering: (..nums) => {
    let values = nums.pos()
    if values.len() == 1 {
      "第" + numbering("一", values.first()) + "章"
    } else {
      numbering("1.1", ..values)
    }
  })
  show heading: it => {
    set par(first-line-indent: 0pt, justify: false)
    let chapter = it.level == 1
    if chapter { pagebreak(weak: true) }
    block(width: 100%, sticky: true,
      above: if chapter { 0pt } else { 1.2em },
      below: if chapter { 2.5em } else { auto },
    )[
      #if chapter { v(5 * base-size) }
      #set text(size: if chapter { 1.5em } else if it.level == 2 { 1.3em } else { 1.1em }, weight: "bold")
      #set align(if chapter { center } else { left })
      #if it.numbering != none {
        counter(heading).display()
        h(1em)
      }
      #it.body
    ]
  }

  // LaTeX 的 paragraph 是不编号的行内小标题，不另起一个标题块。
  show heading.where(level: 5): set heading(numbering: none)
  show heading.where(level: 5): it => {
    text(size: base-size, weight: "bold", it.body)
    h(1em)
  }

  // 前言目录用小写罗马页码，正文重新从 1 开始。
  set page(numbering: "i")
  counter(page).update(1)
  if outlined {
    set outline.entry(fill: box(width: 1fr, repeat(" . ")))
    show outline.entry: it => {
      set par(first-line-indent: 0pt)
      if it.level == 1 {
        v(0.8em)
        text(it, weight: "bold", fill: url-color)
      } else {
        text(it, fill: url-color)
      }
    }
    show outline.entry.where(level: 1): set outline.entry(fill: none)
    outline(depth: 3, indent: 1.9em)
  }
  pagebreak(weak: true)
  set page(numbering: "1")
  counter(page).update(1)
  body
}
