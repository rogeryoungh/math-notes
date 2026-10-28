#import "../../template/environments.typ": statement

= 线性代数
<xiandai-线性代数>
== 行列式
<xiandai-行列式>
=== 大纲要求
<xiandai-大纲要求>
\1. 了解行列式的概念，掌握行列式的性质。

\2. 会应用行列式的性质和行列式按行（列）展开定理计算行列式。

=== 余子式
<xiandai-余子式>
在 $n$ 阶行列式中，把 $a_(i j)$ 元列所在的行列划去后

- 余子式 $M_(i j)$：留下来的 $n - 1$ 阶行列式；

- 代数余子式 $A_(i j) = ( - 1 )^(i + j) M_(i j)$；

#statement("theorem")[
对于 $n$ 阶行列式 $det(A)$ 有 $ det(A) = sum_(j = 1)^n a_(i j) A_(i j) = sum_(i = 1)^n a_(i j) A_(i j) $ 前者称为 $n$ 阶行列式按第 $i$ 行的展开式，后者称为按第 $j$ 列的展开式。
]
若对不同行列展开，比如对于 $n$ 阶行列式 $det(A)$ 的第 $k , i$ 行展开（$k eq.not i$） $ sum_(j = 1)^n a_(i j) A_(k j) = 0 $

=== 常见行列式的计算技巧
<xiandai-常见行列式的计算技巧>
行列式的一些计算技巧：#link("https://zhuanlan.zhihu.com/p/34685081")[知乎：八大类型行列式及其解法]。

#statement("example")[
计算

+ 箭型行列式 $ D_n = mat(delim: "|", x_1, a, dots.h.c, a; b, x_2, ; dots.v, , dots.down; b, , , x_n) $

+ 双三角型行列式 $ D_n = mat(delim: "|", x_1, a, a, dots.h.c, a; b, x_2, a, dots.h.c, a; b, b, x_3, dots.h.c, a; dots.v, dots.v, dots.v, dots.down, dots.v; b, b, b, b, x_n) $

+ 双线式行列式 $ D_n = mat(delim: "|", a_1, b_1, , ; #none, a_2, dots.down; #none, , dots.down, b_(n - 1); b_n, , , a_n) $
]
#statement("proof")[
+ 将第一列减去第 $i$ 列的 $a / x_i$，从而消掉一列，故答案为 $ D_n = mat(delim: "|", ( x_1 - frac(a b, x_2) - dots.h.c - frac(a b, x_n) ), a, dots.h.c, a; 0, x_2, ; dots.v, , dots.down; 0, , , x_n) = (x_1 - a b sum_(i = 2)^n 1 / x_i) product_(i = 2)^n x_i $

+ 当 $a = b$ 时，可以化为箭型行列式 $ D_n = mat(delim: "|", x_1, a, dots.h.c, a; a - x_1, x_2 - a, ; dots.v, , dots.down; a - x_1, , , x_n - a) $ 当 $a eq.not b$ 时，采用两个方向的拆行法，比较系数得到 $ D_n = frac(1, b - a) (a product_(i = 1)^n ( x_i - b ) - b product_(i = 1)^n ( x_i - a )) $

+ 对第一列展开即可 $ D_n = product_(i = 1)^n a_i + ( - 1 )^(n + 1) product_(i = 1)^n b_i $


]
== 矩阵
<xiandai-矩阵>
=== 大纲要求
<xiandai-大纲要求-1>
\1. 理解矩阵的概念，了解单位矩阵、数量矩阵、对角矩阵、三角矩阵、对称矩阵和反对称矩阵以及它们的性质。

\2. 掌握矩阵的线性运算、乘法、转置以及它们的运算规律，了解方阵的幂与方阵乘积的行列式的性质。

\3. 理解逆矩阵的概念，掌握逆矩阵的性质以及矩阵可逆的充分必要条件，理解伴随矩阵的概念，会用伴随矩阵求逆矩阵。

\4. 理解矩阵初等变换的概念，了解初等矩阵的性质和矩阵等价的概念，理解矩阵的秩的概念，掌握用初等变换求矩阵的秩和逆矩阵的方法。

\5. 了解分块矩阵及其运算。

=== 矩阵
<xiandai-矩阵-1>
由 $s n$ 个数排成的 $s$ 行（横的）$n$ 列（纵的）表 $ mat(delim: "(", a_(11), a_(12), dots.h, a_(1 n); a_(21), a_(22), dots.h, a_(2 n); dots.v, dots.v, , dots.v; a_(s 1), a_(s 2), dots.h, a_(s n)) $ 称为一个 $s times n$ 矩阵，记作 $A_(s times n)$ 或 $A = ( a_(i j) )$，它的 $( i , j )$ 元也记作 $A ( i ; j )$。

有名字的矩阵

- 零矩阵：全 $0$ 的矩阵，记作 $O$；

- 对角矩阵：只有对角线上的元素非 $0$ 的矩阵；

- 单位矩阵：主对角线上的元素为 $1$ 的矩阵，记作 $E$ 或 $I$；

- 数量矩阵：主对角线上的元素均为 $k$ 的对角矩阵，等于 $k E$；

- 上三角矩阵：主对角线及以上的元素非零的矩阵；

- 下三角矩阵：主对角线及以下的元素非零的矩阵；

- 对称矩阵：满足 $A^(sans(T)) = A$ 的矩阵；

- 反对称矩阵：满足 $A^(sans(T)) = - A$ 的矩阵；

- 正交矩阵：满足 $A^(sans(T)) A = E$ 的矩阵。

=== 矩阵的初等变换
<xiandai-矩阵的初等变换>
下面三种变换记作矩阵的初等行变换：

- $r_i arrow.l.r r_j$：对换 $i , j$ 两行；

- $r_i times k$：第 $i$ 行乘数 $k$；

- $r_i + k r_j$：把第 $j$ 行的 $k$ 倍加到 $r_i$ 上；

把行换成列（把记号 $r$ 换成 $c$）即是初等列变换。统称初等变换。

可以用初等变换把矩阵变为行阶梯型矩阵：

- 非零行在零行之上；

- 每行首个非零元的列坐标递增；

进一步的，再满足条件

- 首个非零元为 $1$；

- 非零元所在列其他元为 $0$；

则称为行最简形矩阵。

矩阵等价：

- 矩阵等价：

  - 矩阵 $A$ 能经过有限次初等变换变为 $B$，则称 $A$ 与 $B$ 等价。

  - 也可以表述为存在可逆矩阵 $P , Q$ 使得 $P A Q = B$。

- 矩阵行等价：

  - 矩阵 $A$ 能经过有限次初等#strong[行]变换变为 $B$。

  - 存在可逆矩阵 $P$ 使得 $P A = B$。

  - 等价于 $A x = 0$ 与 $B x = 0$ 同解。

  - 矩阵行向量等价。

- 矩阵列等价：

  - 矩阵 $A$ 能经过有限次初等#strong[列]变换变为 $B$。

  - 存在可逆矩阵 $Q$ 使得 $A Q = B$。

  - 矩阵列向量等价。

求矩阵的逆：对矩阵 $mat(delim: "(", augment: #1, A, E)$ 做初等行变换，当 $A$ 变为 $E$，$E$ 则变为 $A^(- 1)$。

初等矩阵

- 符号 $E ( i , j ) = mat(delim: "(", #none, 1, ; 1, , ; #none, , 1)$，表示对调两行（列）。

- 符号 $E ( i ( k ) ) = mat(delim: "(", 1, , ; #none, 1 / k, ; #none, , 1)$，表示倍乘某行（列）。

- 符号 $E ( i + j ( k ) ) = mat(delim: "(", 1, , ; #none, 1, k; #none, , 1)$，表示将地 $j$ 行（列）的 $k$ 倍加到地 $i$ 行上。

- 矩阵左乘初等矩阵则对应行变换，右乘列变换。

=== 矩阵乘法的不同视角
<xiandai-矩阵乘法的不同视角>
矩阵乘列向量 $ mat(delim: "(", 1, 2; 3, 4; 5, 6) vec(x_1, x_2) = vec(( 1 x_1 + 2 x_2 ), ( 3 x_1 + 4 x_2 ), ( 5 x_1 + 6 x_2 )) = x_1 vec(1, 3, 5) + x_2 vec(2, 4, 6) $ 行向量乘矩阵 $ mat(delim: "(", y_1, y_2, y_3) mat(delim: "(", 1, 2; 3, 4; 5, 6) = y_1 mat(delim: "(", 1, 2) + y_2 mat(delim: "(", 3, 4) + y_3 mat(delim: "(", 5, 6) $ 矩阵乘矩阵 $ mat(delim: "(", 1, 2; 3, 4; 5, 6) mat(delim: "(", x_1, y_1; x_2, y_2) & = A mat(delim: "(", bold(x), bold(y)) = mat(delim: "(", A bold(x), A bold(y))\
 & = mat(delim: "(", ( 1 x_1 + 2 x_2 ), ( 1 y_1 + 2 y_2 ); ( 3 x_1 + 4 x_2 ), ( 3 y_1 + 4 y_2 ); ( 5 x_1 + 6 x_2 ), ( 5 y_1 + 6 y_2 ))\
 & = vec(1, 3, 5) mat(delim: "(", x_1, y_1) + vec(2, 4, 6) mat(delim: "(", x_2, y_2) $

如果 $A B = C$，则

- $C$ 的列向量组可由 $A$ 的列向量组线性表示。

- 若 $B$ 可逆，则 $C$ 的列向量组和 $A$ 的列向量组等价。

- $C$ 的行向量组可由 $B$ 的行向量组线性表示。

- 若 $A$ 可逆，则 $C$ 的行向量组和 $B$ 的行向量组等价。

=== 矩阵的性质
<xiandai-矩阵的性质>
伴随矩阵：设矩阵 $A = ( a_(i j) )$，那么 $A$ 的伴随矩阵为 $ A^(*) = ( A_(i j) )_(n times n)^(sans(T)) $ 即每行每列全为代数余子式。

矩阵的逆、伴随、转置运算可交换 $ (A^(- 1))^(sans(T)) = (A^(sans(T)))^(- 1) , quad (A^(*))^(sans(T)) = (A^(sans(T)))^(*) , quad (A^(*))^(- 1) = (A^(- 1))^(*) $ 反向性质 $ (A B)^(- 1) = B^(- 1) A^(- 1) , quad (A B)^(sans(T)) = B^(sans(T)) A^(sans(T)) , quad (A B)^(*) = B^(*) A^(*) $ 行列式 $ det(A^(- 1)) = det(A)^(- 1) , quad det(A^(sans(T))) = det(A) , quad det(A^(*)) = det(A)^(n - 2) quad ( n gt.eq 2 ) $ 数乘 $ ( k A )^(- 1) = k^(- 1) A^(- 1) , quad k A^(sans(T)) = k A^(sans(T)) , quad ( k A )^(*) = k^(n - 1) A^(*) quad ( n gt.eq 2 ) $

方阵 $A$ 可逆的等价命题

- $arrow.l.r.double det(A) eq.not 0 arrow.l.r.double r ( A ) = n arrow.l.r.double$ $A$ 无零特征值。

- $arrow.l.r.double A x = 0$ 只有零解 $arrow.l.r.double$ 对于非零向量 $b$ 有 $A x = b$ 解唯一。

- $arrow.l.r.double$ $A$ 的行列向量组是 $bb(R)^n$ 的一个基 $arrow.l.r.double$ $A$ 的行列向量组线性无关。

- $arrow.l.r.double$ $A$ 可以分解为初等矩阵的乘积 $arrow.l.r.double$ $A$ 与单位阵 $E$ 等价。

- $arrow.l.r.double$ $A^(sans(T)) A$ 为正定矩阵。

矩阵 $A_(m times n)$ 列满秩等价于

- $arrow.l.r.double r ( A ) = n arrow.l.r.double A$ 列向量组线性无关 $arrow.l.r.double$ $A x = 0$ 只有零解。

=== 矩阵秩的性质
<xiandai-矩阵秩的性质>
#statement("theorem", title: [Sylvester 秩不等式])[
设 $A , B$ 分别是 $s times n , n times m$ 的矩阵，则 $ r ( A ) + r ( B ) - n lt.eq r ( A B ) lt.eq min { r ( A ) , r ( B ) } $
]
#statement("proof")[
右侧显然。对于左侧，由于矩阵的初等行（列）变换不改变矩阵的秩，构造分块矩阵 $ n + r ( A B ) = r mat(delim: "(", E_n, 0; 0, A B) = r mat(delim: "(", B, E_n; 0, A) gt.eq r ( B ) + r ( A ) $
]
#statement("theorem")[
设 $A$ 是一个 $s times n$ 矩阵，且 $A eq.not 0$，证明：$A$ 可以被分解为行列向量的乘积当且仅当 $r ( A ) = 1$
]
#statement("proof")[
由于秩为 $1$，因此选取 $A$ 的一个列向量 $bold(alpha)_1$，其他的列向量都可以由其表示，故 $A = bold(alpha) bold(beta)^(sans(T))$。
]
#statement("theorem")[
$ r ( A^(sans(T)) A ) = r ( A A^(sans(T)) ) = r ( A ) $
]
#statement("proof")[
试证 $A bold(x) = bold(0)$ 与 $( A^(sans(T)) A ) bold(x) = bold(0)$ 同解。假设 $bold(eta)$ 是 $A bold(x) = bold(0)$ 的一个解，显然 $ ( A^(sans(T)) A ) bold(x) = A^(sans(T)) ( A bold(eta) ) = A^(sans(T)) bold(0) = bold(0) $ 反之，设 $bold(eta)$ 是 $( A^(sans(T)) A ) bold(x) = bold(0)$ 的一个解，注意到 $ ( A bold(eta) )^(sans(T)) ( A bold(eta) ) = bold(eta)^(sans(T)) ( ( A^(sans(T)) A ) bold(eta) ) = 0 $ 即向量 $A bold(eta)$ 的长度为 $0$，故 $A bold(eta) = bold(0)$。
]
#statement("theorem")[
若 $n$ 级矩阵 $A , B$ 满足 $( A - a E ) ( A - b E ) = O$ 且 $a eq.not b$，证明：$r ( A - a E ) + r ( A - b E ) = n$。
]
#statement("proof")[
一方面 $ r ( A - a E ) + r ( A - b E ) lt.eq r ( O ) + n = n $ 另一方面 $ r ( A - a E ) + r ( A - b E ) gt.eq r ( ( A - a E ) - ( A - b E ) ) = n $ 因此 $r ( A - a E ) + r ( A - b E ) = n$。
]
== 向量
<xiandai-向量>
=== 大纲要求
<xiandai-大纲要求-2>
\1. 理解 $n$ 维向量、向量的线性组合与线性表示的概念。

\2. 理解向量组线性相关、线性无关的概念，掌握向量组线性相关、线性无关的有关性质及判别法。

\3. 理解向量组的极大线性无关组和向量组的秩的概念，会求向量组的极大线性无关组及秩。

\4. 理解向量组等价的概念，理解矩阵的秩与其行（列）向量组的秩之间的关系。

\5. 了解 $n$ 维向量空间、子空间、基底、维数、坐标等概念。

\6. 了解基变换和坐标变换公式，会求过渡矩阵。

\7. 了解内积的概念，掌握线性无关向量组正交规范化的施密特（Schmidt）方法。

\8. 了解规范正交基、正交矩阵的概念以及它们的性质。

=== 线性相关
<xiandai-线性相关>
向量组 $A : bold(a)_1 , dots.h.c , bold(a)_n$ 线性表示：对于向量组 $A$ 和向量 $bold(beta)$，若存在系数使得 $ x_1 bold(a)_1 + dots.h.c + x_n bold(a)_n = bold(beta) $ 则称 $bold(beta)$ 可以由向量组 $A$ 线性表示。

向量组 $A : bold(a)_1 , dots.h.c , bold(a)_n$ 线性相关：至少有一个向量可以用其余向量表示，即存在一组不全为 $0$ 的数使得 $ x_1 bold(a)_1 + dots.h.c + x_n bold(a)_n = bold(0) $ 则称向量组 $A$ 线性相关；若不存在，则称向量组 $A$ 线性无关。

向量组等价：向量组 $A$ 若可以和 $B$ 相互表出，则称他们等价。

=== 向量空间
<xiandai-向量空间>
设 $bold(a)_1 , dots.h.c , bold(a)_n$ 为 $bb(R)$ 中的一个基，取新基 $bold(b)_1 , dots.h.c , bold(b)_n$，则基变换公式为 $ B = A P , quad ( bold(b)_1 , dots.h.c , bold(b)_n ) = ( bold(a)_1 , dots.h.c , bold(a)_n ) P $ 其中 $P = A^(- 1) B$ 称为旧基到新基的过渡矩阵，旧坐标 $bold(y)$ 到新坐标 $bold(z)$ 的变换公式是 $bold(z) = P^(- 1) bold(y)$。

#statement("theorem", title: [Schmidt 正交化])[
设 $bold(alpha)_1 , dots.h.c , bold(alpha)_s$ 是欧几里得空间 $bb(R)^n$ 中一个线性无关的向量组，令 $ bold(beta)_1 & = bold(alpha)_1\
bold(beta)_2 & = bold(alpha)_2 - frac([ bold(alpha)_2 , bold(beta)_1 ], [ bold(beta)_1 , bold(beta)_1 ]) bold(beta)_1\
 & dots.h.c\
bold(beta)_s & = bold(alpha)_s - sum_(j = 1)^(s - 1) frac([ bold(alpha)_s , bold(beta)_j ], [ bold(beta)_j , bold(beta)_j ]) bold(beta)_j $ 则 $bold(beta)_1 , dots.h.c , bold(beta)_s$ 是正交向量组，并且与 $bold(alpha)_1 , dots.h.c , bold(alpha)_s$ 等价。
]
如果基中的向量两两正交，则称为正交基；若正交基中每个向量都是单位向量，则称为规范正交基。

=== 最小二乘法
<xiandai-最小二乘法>
不清楚会不会以最小二乘法为背景命题，记一下。

#statement("theorem")[
设 $A$ 是 $m times n$ 的矩阵，如果存在向量 $bold(x)_0$ 使得 $ norm(beta - A x_0)^2 lt.eq norm(beta - A x)^2 $ 那么称 $x_0$ 是方程 $A x - beta$ 的最小二乘解。证明：$x_0$ 是最小二乘解当且仅当 $x_0$ 是方程 $ A^(sans(T)) A x = A^(sans(T)) beta $ 的解。
]
#statement("proof")[
令 $U$ 为矩阵的列空间，那么原式即 $ norm(beta - A x_0) lt.eq norm(beta - A x) $ 由遍历 $x$ 则 $A x$ 遍历 $U$，故 $beta - A x_0$ 应当垂直于 $U$，那么 $ alpha_i^(sans(T)) ( beta - A x_0 ) = 0 , quad arrow.r.double A^(sans(T)) ( beta - A x_0 ) = 0 $
]
== 线性方程组
<xiandai-线性方程组>
=== 大纲要求
<xiandai-大纲要求-3>
\1. 会用克拉默法则。

\2. 理解齐次线性方程组有非零解的充分必要条件及非齐次线性方程组有解的充分必要条件。

\3. 理解齐次线性方程组的基础解系、通解及解空间的概念，掌握齐次线性方程组的基础解系和通解的求法。

\4. 理解非齐次线性方程组解的结构及通解的概念。

\5. 掌握用初等行变换求解线性方程组的方法。

=== 线性方程组的解
<xiandai-线性方程组的解>
初等行变换不改变矩阵的解！！！

线性方程组 $ bold(alpha)_1 x_1 + dots.h.c + bold(alpha)_n x_n = A bold(x) = bold(beta) $ 解的情况：

- 无解：$r ( A ) < r ( tilde(A) )$；

- 有唯一解：$r ( A ) = r ( tilde(A) )$；

- 有无穷多组解：$r ( A ) = r ( tilde(A) ) < n$；

#statement("theorem", title: [Cramer 法则])[
方程组 $A x = b$ 有唯一解的充要条件是 $det(A) eq.not 0$。定义 $A_j$ 为矩阵 $A$ 第 $j$ 列换为常数项后的矩阵，此时解为 $ bold(x) = (frac(det(A_1), det(A)) , dots.h.c , frac(det(A_n), det(A))) $
]
求解线性方程组：$A x = b$；

+ 利用初等行变换将增广矩阵 $tilde(A)$ 化为行阶梯型矩阵 $B$；

+ 如果 $r ( A ) < r ( tilde(A) )$ 则方程矛盾，无解；

+ 如果 $r ( A ) = r ( tilde(A) )$，进一步把 $tilde(A)$ 化为行最简型矩阵。

  + 如果 $r ( A ) = r ( tilde(A) ) = n$，说明方程组有唯一解。

  + 如果 $r ( A ) = r ( tilde(A) ) = r < n$，说明方程组有无穷组解，令 $r$ 个首个非零元对应的 $x$ 取做非自由未知数，其余 $n - r$ 个未知数去做自由元，令自由未知数分别等于 $c_1 , dots.h.c , c_(n - r)$，即可写出 $n - r$ 个参数的通解。

=== 同解
<xiandai-同解>
如果线性方程 $A x = 0$ 的解都是 $B x = 0$ 的解，且 $B x = 0$ 的解也是 $A x = 0$ 的解，则称他们同解。

如果线性方程 $A x = 0$ 与 $B x = 0$ 同解，则

- 矩阵 $A$ 与 $B$ 行等价。

- 存在可逆矩阵 $P$ 使得 $P A = B$。

- $A x = 0$ 与 $A^(sans(T)) A x = 0$ 与 $vec(A, B)$ 同解。

- $r ( A ) = r ( B ) = r vec(A, B)$。

如果线性方程 $A x = bold(alpha)$ 与 $B x = bold(beta)$ 同解，则

- 矩阵 $( A , bold(alpha) )$ 与 $( B , bold(beta) )$ 行等价。

- 存在可逆矩阵 $P$ 使得 $P A = B$。

- $r ( A , bold(alpha) ) = r ( B , bold(beta) ) = r vec(A comma bold(alpha), B comma bold(beta))$。

== 矩阵的特征值和特征向量
<xiandai-矩阵的特征值和特征向量>
=== 大纲要求
<xiandai-大纲要求-4>
\1. 理解矩阵的特征值和特征向量的概念及性质，会求矩阵的特征值和特征向量。

\2. 理解相似矩阵的概念、性质及矩阵可相似对角化的充分必要条件，掌握将矩阵化为相似对角矩阵的方法。

\3. 掌握实对称矩阵的特征值和特征向量的性质。

=== 特征值
<xiandai-特征值>
#statement("definition", title: [特征值，特征向量])[
设 $A$ 是 $n$ 级矩阵，如果存在数 $lambda$ 和非零列向量 $bold(alpha)$ 使得 $A bold(alpha) = lambda bold(alpha)$ 那么称 $lambda$ 是 $A$ 的一个特征值，称 $bold(alpha)$ 是 $A$ 的属于特征值 $lambda$ 的一个特征向量，称 $f ( lambda ) = det(lambda E - A)$ 是 $A$ 的特征多项式。
]
#statement("note")[
注意零向量不是特征向量！
]
如果 $lambda_0$ 是 $A$ 的特征值，对应的 $alpha_0$ 是 $A$ 的特征向量，则

- $lambda_0$ 是特征多项式 $f ( lambda_0 ) = 0$ 的一个根；

- $alpha_0$ 是齐次线性方程组 $( lambda_0 E - A ) bold(x) = bold(0)$ 的一个解，该解空间的全部非零向量都是 $lambda_0$ 的特征向量，称为特征子空间。

- 对于多项式 $phi ( x )$，则 $phi ( lambda_0 )$ 是 $phi ( A )$ 的特征值，$alpha_0$ 仍是其对应的特征向量。

- 不同特征值对应的特征向量线性无关。

- 若 $lambda_0$ 是 $f ( lambda )$ 的 $k$ 重根，则称 $lambda_0$ 的代数重数为 $k$，简称为重数。

- 若特征子空间的维度是 $k$，则称 $lambda_0$ 的几何重数为 $k$。几何重数一定不超过代数重数。

- 对于矩阵多项式 $phi ( A ) = O$，若 $lambda$ 是 $A$ 的特征值则 $phi ( lambda ) = 0$。

#statement("theorem")[
分属不同特征值的特征向量线性无关。
]
#statement("proof")[
设 $lambda_1 , lambda_2$ 是矩阵 $A$ 上的不同特征值，$bold(alpha)_1 , dots.h.c , bold(alpha)_s$ 和 $bold(beta)_1 , dots.h.c , bold(beta)_r$ 是分属于 $lambda_1 , lambda_2$ 的线性无关特征向量，假设存在系数使得 $ bold(gamma) = k_1 bold(alpha)_1 + dots.h.c k_s bold(alpha)_s + l_1 bold(beta)_1 dots.h.c + l_r bold(beta)_r = 0 $ 注意到左乘 $A$，得到 $ A bold(gamma) = lambda_1 ( k_1 bold(alpha)_1 + dots.h.c k_s bold(alpha)_s ) + lambda_2 ( l_1 bold(beta)_1 dots.h.c + l_r bold(beta)_r ) = 0 $ 再试着乘以 $lambda_2$ 得到 $ lambda_2 bold(gamma) = lambda_2 ( k_1 bold(alpha)_1 + dots.h.c k_s bold(alpha)_s ) + lambda_2 ( l_1 bold(beta)_1 dots.h.c + l_r bold(beta)_r ) = 0 $ 再由 $lambda_1 eq.not lambda_2$，相减分析得到只存在零解 $k_i = l_i = 0$，即它们线性无关。
]
如果 $n$ 级矩阵有 $n$ 个特征值，则有如下结论：

- $lambda_1 + dots.h.c lambda_n = "tr" ( A )$；

- $lambda_1 dots.h.c lambda_n = det(A)$；

设 $lambda$ 是矩阵 $A$ 的一个特征值

#figure(
  table(
    columns: 7,
    align: center,
    stroke: none,
    table.hline(stroke: 0.8pt),
    table.header([矩阵], [$A$], [$f(A)$], [$A^(-1)$], [$A^*$（可逆）], [$P^(-1) A P$], [$A^(sans(T))$]),
    table.hline(stroke: 0.5pt),
    [特征值], [$lambda$], [$f(lambda)$], [$lambda^(-1)$], [$frac(det(A), lambda)$], [$lambda$], [$lambda$],
    [特征向量], [$alpha$], [$alpha$], [$alpha$], [$alpha$], [$P^(-1) alpha$], [],
    table.hline(stroke: 0.8pt),
  ),
  kind: table,
)

=== 相似矩阵
<xiandai-相似矩阵>
相似矩阵：如果存在 $P$ 使得 $P^(- 1) A P = B$，则称 $A$ 与 $B$ 相似，$P$ 称为相似变换阵。

相似矩阵的性质：

- 相似不变量：特征多项式、特征值、迹、行列式、秩；

- 相似矩阵与对角矩阵 $"diag" { lambda_1 , dots.h.c , lambda_n }$ 相似，记作相似标准型；

- 幂等矩阵的相似矩阵仍是幂等矩阵，与幂零矩阵相似的矩阵仍是幂零矩阵。

- 若矩阵 $A tilde.op B$，则在多项式下仍有 $f ( A ) tilde.op f ( B )$，$A^(sans(T)) tilde.op B^(sans(T))$。

- 相似必合同。

#statement("theorem", title: [可对角化的充要条件])[
$n$ 级矩阵 $A$ 可对角化的充要条件是，存在 $n$ 个线性无关的特征向量 $bold(alpha)_1 , dots.h.c , bold(alpha)_n$ 及其对应的特征值 $lambda_1 , dots.h.c , lambda_n$。此时令 $P = ( bold(alpha)_1 , dots.h.c , bold(alpha)_n )$，则 $ P^(- 1) A P = "diag" { lambda_1 , dots.h.c , lambda_n } = 𝛬 $
]
#statement("proof")[
如果 $A$ 相似于对角矩阵 $𝛬$，即存在可逆矩阵 $P = ( bold(alpha)_1 , dots.h.c , bold(alpha)_n )$ 使得 $A P = P 𝛬$，注意到带入有 $ A P = ( A bold(alpha)_1 , dots.h.c , A bold(alpha)_n ) = ( lambda_1 bold(alpha)_1 , dots.h.c , lambda_n bold(alpha)_n ) = P 𝛬 $ 因此需要满足 $A bold(alpha)_i = lambda_i bold(alpha)_i$，从而需要有 $n$ 个线性无关的特征向量。此时每个特征值的几何重数都和代数重数相等。
]
可对角化的矩阵的性质：

- 包括相似矩阵的性质。

- 相似于自身的转置。

=== 实对称矩阵
<xiandai-实对称矩阵>
实对称矩阵的性质：

- 不同特征值对应的特征向量相互正交；

- 必能相似对角化，且可使用正交矩阵对角化；

- 若 $n$ 阶，则 $0$ 必为 $A$ 的 $n - r ( A )$ 重特征值；

#statement("theorem")[
不同特征值对应的特征向量相互正交。
]
#statement("proof")[
设 $lambda_1 , lambda_2$ 是属于 $A$ 的不同特征值，$alpha_1 , alpha_2$ 是分属于 $lambda_1 , lambda_2$ 的特征向量。注意到内积 $ lambda_1 [ alpha_1 , alpha_2 ] = lambda_1 alpha_1^(sans(T)) alpha_2 = ( A alpha_1 )^(sans(T)) alpha_2 = alpha_1^(sans(T)) A alpha_2 = alpha_1^(sans(T)) ( lambda_2 alpha_2 ) = lambda_2 [ alpha_1 , alpha_2 ] $ 从而 $( lambda_1 - lambda_2 ) [ alpha_1 , alpha_2 ] = 0$，又 $lambda_1 eq.not lambda_2$，故 $[ alpha_1 , lambda_2 ] = 0$。
]
#statement("theorem")[
若 $n$ 级矩阵 $A$ 正交相似于一个对角矩阵，那么 $A$ 一定是对称阵。
]
#statement("proof")[
设存在正交阵 $T$ 使得 $T^(- 1) A T = 𝛬$，那么注意到 $ A^(sans(T)) = ( T 𝛬 T^(- 1) )^(sans(T)) = ( T^(- 1) )^(sans(T)) 𝛬^(sans(T)) T^(sans(T)) = T 𝛬 T^(- 1) = A $ 从而 $A$ 是对称矩阵。
]
对于 $n$ 级实对称矩阵 $A$，找一个正交矩阵 $T$，使得 $T^(- 1) A T$ 为对角矩阵的步骤如下。

\1. 计算 $det(lambda E - A)$，求出它的全部不同的根：$lambda_1 , dots.h.c , lambda_m$，它们是 $A$ 的特征值。

\2. 对于每一个特征值 $lambda_j$，求 $( lambda_j E - A ) bold(x) = bold(0)$ 的一个基础解系 $bold(alpha)_(j 1) , dots.h.c , bold(alpha)_(j r_j)$；然后把它们 Schmidt 正交化和单位化，得到 $bold(eta)_(j 1) , dots.h.c , bold(eta)_(j r_j)$。它们也是 $A$ 的属于 $lambda_j$ 的一个特征向量。

\3. 令 $ T = ( bold(eta)_(11) , dots.h.c , bold(eta)_(1 r_1) , dots.h.c , bold(eta)_(m 1) , dots.h.c , bold(eta)_(m r_m) ) $ 则 $T$ 是 $n$ 级正交矩阵，且 $ T^(- 1) A T = "diag" { lambda_1 , dots.h.c , lambda_1 , dots.h.c , lambda_m , dots.h.c , lambda_m } $

#statement("example")[
给定实矩阵 $A$，求正交矩阵 $T$ 使得 $T^(- 1) A T$ 为对角矩阵 $ A = mat(delim: "(", 0, - 2, 2; - 2, - 3, 4; 2, 4, - 3) $
]
#statement("solution")[
首先求得特征多项式 $ det(lambda E - A) = ( lambda - 1 )^2 ( lambda + 8 ) $ 得到特征值为 $1 , - 8$，分别求得 $( lambda E - A ) bold(x) = bold(0)$ 的基础解系 $ bold(alpha)_1 = ( - 2 , 0 , 1 )^(sans(T)) , bold(alpha)_2 = ( 2 , 1 , 0 )^(sans(T)) , bold(alpha)_3 = ( - 1 , 2 , - 2 )^(sans(T)) $ 正交归一化后得到 $ bold(eta)_1 = (- 2 / sqrt(5) , 0 , 1 / sqrt(5))^(sans(T)) , bold(alpha)_2 = (frac(2, 3 sqrt(5)) , sqrt(5) / 3 , frac(4, 3 sqrt(5)))^(sans(T)) , bold(eta)_3 = (- 1 / 3 , 2 / 3 , - 2 / 3)^(sans(T)) $ 因此 $ T = mat(delim: "(", - 2 / sqrt(5), frac(2, 3 sqrt(5)), - 1 / 3; 0, sqrt(5) / 3, 2 / 3; 1 / sqrt(5), frac(4, 3 sqrt(5)), - 2 / 3) $
]
== 二次型
<xiandai-二次型>
=== 大纲要求
<xiandai-大纲要求-5>
\1. 掌握二次型及其矩阵表示，了解二次型秩的概念，了解合同变换与合同矩阵的概念，了解二次型的标准形、规范形的概念以及惯性定理。

\2. 掌握用正交变换化二次型为标准形的方法，会用配方法化二次型为标准形。

\3. 理解正定二次型、正定矩阵的概念，并掌握其判别法

=== 二次型
<xiandai-二次型-1>
#statement("definition", title: [二次型])[
$n$ 元二次型是 $n$ 个变量的二次齐次多项式，它的一般形式是 $ f ( x_1 , dots.h.c , x_n ) = sum_(i = 1)^n sum_(j = 1)^n a_(i j) x_i x_j $ 把二次型的系数排成一个 $n$ 级矩阵 $A$，则二次型可以写作矩阵形式 $ f ( x_1 , dots.h.c , x_n ) = bold(x)^(sans(T)) A bold(x) $
]
矩阵的合同：如果 $n$ 级矩阵 $A$ 与 $B$，如果存在可逆矩阵 $C$ 使得 $ C^(sans(T)) A C = B $ 那么称 $A$ 与 $B$ 合同，记作 $A tilde.eq B$。

对于 $bb(R)^n$ 上的向量 $bold(x) , bold(y)$，称 $x = C y$ 是 $bold(x)$ 到 $bold(y)$ 的线性替换，若 $C$ 是正交矩阵，则称为正交替换。替换下的二次型为 $ bold(x)^(sans(T)) A bold(x) = ( C bold(y) )^(sans(T)) A ( C bold(y) ) = bold(y) (C^(sans(T)) A C) bold(y) $ 替换前后的二次型等价。

二次型的等价形式

- 标准型：存在可逆线性替换，使得二次型只含平方项。

- 规范型：系数只取 $1 , - 1 , 0$。

#statement("theorem")[
设 $n$ 级实对称矩阵 $A$ 的全部特征值为 $lambda_1 lt.eq dots.h.c lt.eq lambda_n$，则对 $bb(R)^n$ 中任意向量 $bold(x)$ 有 $ lambda_1 lt.eq frac(bold(x)^(sans(T)) A bold(x), norm(bold(x))^2) lt.eq lambda_n $
]
#statement("proof")[
考虑其正交对角化 $T^(sans(T)) A T = 𝛬$，令 $bold(x) = T bold(y)$，则 $ bold(x)^(sans(T)) A bold(x) = bold(y)^(sans(T)) ( T^(sans(T)) A T ) bold(y) = bold(y)^(sans(T)) 𝛬 bold(y) = lambda_1 y_1^2 + dots.h.c lambda_n y_n^2 $ 故 $ lambda_1 norm(bold(y))^2 = lambda_1 ( y_1^2 + dots.h.c + y_n^2 ) lt.eq bold(x)^(sans(T)) A bold(x) lt.eq lambda_n ( y_1^2 + dots.h.c y_n^2 ) = lambda_n norm(bold(y))^2 $ 再者 $ norm(bold(x))^2 = bold(x)^(sans(T)) bold(x) = bold(y)^(sans(T)) ( T^(sans(T)) T ) bold(y) = bold(y)^(sans(T)) bold(y) = norm(bold(y))^2 $ 故原式成立。
]
#statement("theorem")[
设 $n$ 级实对称矩阵 $A , B$，若满足 $A B = B A$，那么存在一个 $n$ 级正交矩阵 $T$ 使得 $T^(- 1) A T$ 与 $T^(- 1) B T$ 都是对角矩阵，即 $A , B$ 的特征向量都是对方的特征向量。
]
#statement("proof")[
对于特征根不同时，说明是容易的，考虑 $A$ 的每个特征向量 $alpha$ 那么 $B alpha$ 仍是 $A$ 的特征向量；又特征子空间的维度为 $1$，那么 $alpha = k B alpha$，即证。

对于特征根重合时，复杂很多。
]
#statement("example")[
用正交替换把下述实二次型化为标准型 $ f ( x , y , z ) = x^2 + 2 y^2 + 3 z^3 - 4 x y - 4 y z $
]
#statement("solution")[
首先得到矩阵 $ A = mat(delim: "(", 1, - 2, 0; - 2, 2, - 2; 0, - 2, 3) $ 计算其特征值 $ det(lambda E - A) = ( lambda - 2 ) ( lambda - 5 ) ( lambda + 1 ) $ 即 $A$ 的全部特征值为 $lambda = 2 , 5 , - 1$，对应的基础解系单位化得到 $ bold(eta)_1 = (- 2 / 3 , 1 / 3 , 2 / 3)^(sans(T)) , bold(eta)_2 = (1 / 3 , - 2 / 3 , 2 / 3)^(sans(T)) , bold(eta)_3 = (2 / 3 , 2 / 3 , 1 / 3)^(sans(T)) $ 令 $ T = mat(delim: "(", - 2 / 3, 1 / 3, 2 / 3; 1 / 3, - 2 / 3, 2 / 3; 2 / 3, 2 / 3, 1 / 3) $ 此处 $T$ 即是正交矩阵，且 $T^(- 1) A T = "diag" { 2 , 5 , - 1 }$。令 $ (x , y , z)^(sans(T)) = T (a , b , c)^(sans(T)) $ 则 $ f ( x , y , z ) = 2 a^2 + 5 y^2 - z^2 $
]
=== 正定二次型
<xiandai-正定二次型>
实数域上的二次型简称为实二次型，$n$ 元实二次型 $bold(x)^(sans(T)) A bold(x)$ 经过一个适当的非退化线性替换 $bold(x) = C bold(y)$ 可以化成下述形式的标准形 $ d_1 y_1^2 + dots.h.c + d_p y_p^2 - d_(p + 1) y_(p + 1)^2 - dots.h.c - d_r y_r^2 $ 其中 $d_i > 0 , i = 1 , dots.h.c , r$。再做一次非退化线性替换可以变成 $ z_1^2 + dots.h.c + z_p^2 - z_(p + 1)^2 - dots.h.c - z_r^2 $

定义二次型的惯性系数

- 正惯性系数：规范型中系数为 $+ 1$ 的平方项个数；

- 负惯性系数：规范型中系数为 $- 1$ 的平方项个数；

- 符号差：正惯性系数减去负惯性系数。

矩阵合同的性质：

- 合同的充要条件：惯性系数相同；

- 合同不变量：规范型、秩；

$n$ 阶矩阵 $A$ 正定的充要条件：

- 当 $x eq.not 0$ 时，$f ( x ) = x^(sans(T)) A x > 0$；

- $A$ 所有子矩阵的行列式均大于零；

- $A$ 的所有特征值大于零；

- $A$ 的正惯性系数为 $n$；

- 存在可逆阵 $P$ 使得 $A = P^(sans(T)) P$；

- $A$ 的所有主元（无行交换）都是正的。

$A$ 正定的结论：

- $k A , A^(sans(T)) , A^(- 1) , A^(*)$ 正定

- $det(A) > 0$，$A$ 可逆；

- $a_(i i) > 0$ 且 $det(A_(i i)) > 0$；
