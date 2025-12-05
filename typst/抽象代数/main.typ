#import "../template/my-book.typ": project
#show: project.with(
  title: "抽象代数笔记",
  author: ( name: "rogeryoungh", url: "https://rogery.dev/")
)

// 没什么办法的事情
#let first-line-indent = h(2em)

#show heading: it =>  {
    it
    par()[#text(size:0.5em)[#h(0.0em)]]
}

#let circ = math.class(
  "binary",
  sym.circle.stroked.tiny,
)

= 整数的整除性

= 群
