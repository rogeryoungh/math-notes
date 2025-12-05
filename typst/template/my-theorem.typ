#import "@preview/ctheorems:1.1.3": *

#let theorem = thmbox("theorem", "定理", fill: rgb("#f0f8ff"))
#let definition = thmbox("definition", "定义", fill: rgb("#f0fff8"))

#let example = thmplain("example", "例子").with(numbering: none)
#let proof = thmproof("proof", "证明")