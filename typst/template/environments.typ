// 定义、定理等共享节内编号；证明、解、笔记和习题不编号。
#let statement(kind, title: [], body) = context {
  // 章节文件中环境首尾的空行不应把“证明”与正文拆成两段。
  let parts = body.fields().at("children", default: (body,))
  while parts.len() > 0 and (parts.first() == [ ] or parts.first() == [] or parts.first().func() == parbreak) {
    let removed = parts.remove(0)
  }
  while parts.len() > 0 and (parts.last() == [ ] or parts.last() == [] or parts.last().func() == parbreak) {
    let removed = parts.pop()
  }
  let body = parts.join()
  let names = (
    definition: "定义", theorem: "定理", lemma: "引理",
    proposition: "命题", corollary: "推论", axiom: "公理",
    example: "例", problem: "习题", proof: "证明", solution: "解", note: "笔记",
  )
  let numbered = kind not in ("proof", "solution", "note", "problem")
  let section = counter(heading).get().slice(0, 2).map(str).join(".")
  let count = counter("statement-" + section)
  if numbered { count.step() }
  let caption = strong[
    #names.at(kind)#if numbered { [ #context [#section.#count.display("1")]] }
    #if title != [] { [ #sym.diamond.stroked #title] }
  ]

  // 外部间距跟随正文段距；仅标题签与正文框内部保持零间距。
  if target() == "html" {
    html.elem("section", attrs: (class: "statement statement-" + kind))[
      #html.elem("div", attrs: (class: "statement-caption"), caption)
      #html.elem("div", attrs: (class: "statement-body"), body)
      #if kind == "proof" { html.elem("span", attrs: (class: "qed"))[□] }
    ]
  } else if kind in ("proof", "solution") {
    block(breakable: true, width: 100%, spacing: auto)[
      #set par(first-line-indent: (amount: 2em, all: false))
      #caption #h(0.5em) #body
      #if kind == "proof" { h(1fr); box[$square.stroked$] }
    ]
  } else if kind == "note" {
    block(breakable: true, width: 100%, spacing: auto,
      fill: luma(90%), stroke: (left: 2pt + luma(50%)),
      inset: (x: 1mm, y: 0.5em),
    )[
      #set par(first-line-indent: (amount: 2em, all: false))
      #caption #h(0.5em) #body
    ]
  } else {
    // 标题签与正文边框相接；正文可跨页，标题不单独留在页底。
    block(breakable: true, width: 100%, spacing: auto)[
      #block(sticky: true, fill: luma(85%), inset: (x: 8pt, y: 4pt),
        above: 0pt, below: 0pt,
      )[
        #set par(first-line-indent: 0pt)
        #caption
      ]
      #block(breakable: true, width: 100%, stroke: 0.6pt + luma(85%),
        inset: (x: 8pt, y: 6pt), above: 0pt, below: 0pt,
      )[
        #set par(first-line-indent: (amount: 2em, all: false))
        #body
      ]
    ]
  }
}
