#import "../template/my-book.typ": project
#show: project.with(
  title: "数学分析笔记",
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

= 实数集与函数
<实数集与函数>

#include "ch01.typ"


= 数列极限

= 函数极限

= 导数理论

= 积分理论

= 技术理论

= 常微分方程


