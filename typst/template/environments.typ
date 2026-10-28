// 定义、定理等共享节内编号；证明、解、笔记和习题不编号。
#let statement(kind, title: [], body) = context {
  let names = (
    definition: "定义", theorem: "定理", lemma: "引理",
    proposition: "命题", corollary: "推论", axiom: "公理",
    example: "例", problem: "习题", proof: "证明", solution: "解", note: "注",
  )
  let numbered = kind not in ("proof", "solution", "note", "problem")
  let section = counter(heading).get().slice(0, 2).map(str).join(".")
  let count = counter("statement-" + section)
  block(breakable: true, width: 100%, above: 0.8em, below: 0.8em)[
    #if numbered { count.step() }
    #strong[
      #names.at(kind)#if numbered { [ #context [#section.#count.display("1")]] }
      #if title != [] { [（#title）] }
    ]
    #parbreak()
    #body
    #if kind == "proof" { align(right)[$square.stroked$] }
  ]
}
