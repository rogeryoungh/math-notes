#let en-font = "New Computer Modern"
#let cjk-font = "Noto Serif SC"
#let body-font = (en-font, cjk-font)
#let mono-font = ("Maple Mono", cjk-font)

#let url-color = rgb(128, 0, 0)

#let project(title: "", author: "", author_url: "", date: datetime.today(), abstract: "", outlined: false, body) = {
  // 字体
  // "Palatino Linotype", "Linux Libertine", "Noto Serif CJK SC"
  set text(font: body-font, lang: "zh", region: "cn", size: 11pt)
	show raw: set text(font: mono-font)

  // 设置文档基本属性
  set document(author: author, title: title)
  set page(paper: "a4", numbering: "1")


  // 段落设置
  // https://typst-doc-cn.github.io/docs/reference/model/par/
  set par(first-line-indent: 2em, justify: true, leading: 0.75em)

  // 链接颜色
  show link: set text(fill: url-color)

  // 封面标题
  align(center)[
		#v(5em)
    #block(text(1.75em, title))
		#v(1em)
    #if author_url != "" {
      block(link(author_url, author))
    } else {
      block(author)
    }
		#v(1em)
    #block(date.display("[year] 年 [month] 月 [day] 日"))
		#v(2em)
  ]

  // 标题
  set heading(numbering: "1.1 ")
  show heading: it => box(width: 100%)[
    // #v(0.50em)
    #if it.numbering != none {
      counter(heading).display()
    }
    #it.body
    // #v(0.50em)
  ]

  show heading.where(level: 1): it => box(width: 100%)[
    // #v(0.50em)
    #if it.numbering != none {
      counter(heading).display()
    }
    #it.body
    // #v(0.50em)
  ]

  show outline.entry: it => {
    text(it, url-color)
  }

  if abstract != "" {
    // text([#h(2em) 摘要 #abstract])
    
    block([
      #align(center)[*摘要*] 
      #abstract
    ], inset: 2em)
  }

  if outlined {
    outline(depth: 3, indent: 1.5em, fill: box(width: 1fr, repeat[ · ]), title: [目录 #v(0.8em)])
  }

  set list(indent: 2em)
  set enum(indent: 2em)

  body
}
