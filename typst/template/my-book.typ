#import "@preview/numbly:0.1.0": numbly

// "Palatino Linotype", "Linux Libertine", "Noto Serif CJK SC"

#let en-font = "New Computer Modern"
#let cjk-font = "Noto Serif CJK SC"
#let body-font = (en-font, cjk-font)
#let mono-font = ("Maple Mono", "Noto Sans CJK SC", cjk-font)

#let url-color = rgb(128, 0, 0)

#let fakepar = context {
  let b =par(box());
  b;
  v(-measure(b + b).height)
}

#let project(title: "", author: (), date: datetime.today(), outlined: true, base-size: 10.5pt, body) = {
  // 字体
  set text(font: body-font, lang: "zh", region: "cn", size: base-size)
	show raw: set text(font: mono-font, size: base-size * 0.9)

  // 设置文档基本属性
  set document(author: author.name, title: title)
  set page(paper: "a4", margin: (x: 20mm, y: 25.4mm))


  // 段落设置
  // https://typst-doc-cn.github.io/docs/reference/model/par/
  // set par(first-line-indent: 2em, justify: true)
  set par(first-line-indent: 2em, justify: true, leading: 0.75em)
  set enum(indent: 2em)
  set list(indent: 2em)

  // 链接颜色
  show link: set text(fill: url-color)

  // 行末缩进
  // show raw: it => it + fakepar
  show figure: it => it + fakepar
  show list.item: it => it + fakepar
  show enum.item: it => it + fakepar

  // 封面标题
  align(horizon+center)[
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

  counter(page).update(0)

  pagebreak()

  // 标题
  set heading(numbering: numbly("第{1:一}章  ", default: "1.1  "))
  show heading: it => box(width: 100%)[
    #v(0.15em)
    #text([
      #if it.numbering != none {
        counter(heading).display()
      }
      #it.body
    ], 1.2em)
    #v(-0.50em)
  ]

  show heading.where(level: 1): it => [
    #pagebreak(weak: true)
    #box(width: 100%)[
      #v(5.10em)
      #text(align(center)[
        #if it.numbering != none {
          counter(heading).display()
        }
        #it.body
      ], 1.50em)
      #v(2.50em)
    ]
  ]

  // 目录标题
  
  set page(numbering: "I")

  if outlined {
    set outline.entry(fill: box(width: 1fr, repeat(" . ")))

    show outline.entry: it => {
      if it.level == 1 {
        v(1.5em)
        text(it, weight: "bold", url-color)
      } else {
        v(0.1em)
        text(it, url-color)
      }
    }

    show outline.entry.where(level: 1):  set outline.entry(fill: none)
    outline(depth: 3, indent: 1.9em)
    // outline(depth: 3, indent: 1.5em, fill: box(width: 1fr, repeat[ · ]))
  }
  
  set page(numbering: "1")
  [
    #counter(page).update(1)
    #body
  ]
}
