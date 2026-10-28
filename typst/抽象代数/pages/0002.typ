#import "../../template/environments.typ": statement

= 群

== 置换

为方便起见，本节简记集合 $\{1,dots.c,n\}$ 为 $NN_n^+$。

#statement("definition")[
  设 $X$ 是一个集合，则 $X$ 中的一个表是指函数 $f:NN_n^+ -> X$。若 $X$ 中的表 $f$ 是双射，则称 $f$ 为 $X$ 的一个排列。
]

因此，$X$ 的排列是 $X$ 的所有元素组成的一个无重复的 $n$ 元组。显然 $n$ 元集恰有 $n^n$ 个表和 $n!$ 个排列。

#statement("definition", title: [置换])[
  设 $X$ 是一个集合（可能是无限集），$X$ 的一个置换是指双射 $alpha : X -> X$。
]

给定一个有限集 $X$，$abs(X)=n$， 设 $phi : NN_n^+ -> X$ 是一个排列，若 $f : NN_n^+ -> X$ 是 $X$ 的一个排列，则 $f ∘ phi^(-1) : X -> X$ 是 $X$ 的一个置换。反之，若 $alpha : X -> X$ 是 $X$ 的一个置换，则 $alpha ∘ phi : NN_n^+ -> X$ 是 $X$ 的一个排列。

即排列和置换只是描述同一事物的两种不同方法，使用置换而不是排列，其好处是置换可做合成运算。

若 $X = NN_n^+$，则我们可以使用一个二行记号来表示置换 $alpha$：
$ alpha = mat(delim: "(",
  1, 2, dots.c, j, dots.c, n;
  alpha(1), alpha(2), dots.c, alpha(j), dots.c, alpha(n)
) $
其底行是排列 $alpha(1) , alpha(2) , dots.c , alpha(n)$。

#statement("definition", title: [对称群])[
  集合 $X$ 的所有置换构成的族，记为 $S_X$，称为 $X$ 上的对称群。当 $X = NN_n^+$ 时， $S_X$ 通常记为 $S_n$，并称为 $n$ 次对称群。
]

注意到，有些置换是交换的，有些置换又不是交换的。
