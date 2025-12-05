#import "../template/my-book.typ": project
#show: project.with(
  title: "高等代数笔记",
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

= 线性方程组的解法

= 行列式

= 线性方程组的解系

= 矩阵的运算

= 矩阵的相抵与相似

= 二次型 · 矩阵的合同

= 多项式环

= 线性空间

= 线性映射

= 具有度量的线性空间


