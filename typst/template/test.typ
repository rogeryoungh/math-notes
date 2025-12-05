#import "./my-article.typ": project
#import "./my-theorem.typ": theorem, thmrules
#show: thmrules.with(qed-symbol: $square$)

#show: project.with(
  title: "ACM 数论专版",
  author: ( name: "rogeryoungh", url: "https://rogery.dev/")
)

= 数论函数

数论函数是 $NN^+ -> CC$ 的函数。

若数论函数 $f$ 满足 $gcd(a,b)$ 有  $f(a b) = f(a) f(b)$，则称其为积性函数；如有 $f(a b) = f(a) + f(b)$ 则称为加性函数。若 $f,g$ 为积性函数，则 $f(x^p)$ 都是加性函数。

若数论函数 $f$ 满足 $gcd(a,b)$ 有  $f(a b) = f(a) f(b)$

#theorem("Stolz 1")[
  设数列 ${x_n},{y_n}$，且 ${y_n}$ 严格单调地趋于 $+ infinity$，如果
  $ lim_(n -> infinity) (x_n-x_(n-1))/(y_n - y_(n-1)) = A $
  则
  $ lim_(n -> infinity) x_n/y_n = A $
]

= 生成函数
= 容斥原理
= Mobius 反演
= 组合排列
== 数学常数
== 常见公式

