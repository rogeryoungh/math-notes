#import "../../template/environments.typ": statement

= 矩阵的相抵与相似
<ga-5-矩阵的相抵与相似>
== 等价关系与集合的划分
<ga-5-等价关系与集合的划分>
等价关系还是记录一下。

#statement("definition", title: [])[
设 $S$ 是一个非空集合，我们把 $S times S$ 的一个子集 $W$ 叫做 $S$ 上的一个二元关系。如果 $( a , b ) in W$，那么称 $a$ 与 $b$ 有 $W$ 关系；如果 $( a , b ) in.not W$，那么称 $a$ 与 $b$ 没有 $W$ 关系。

]
当 $a$ 与 $b$ 有 $W$ 关系时，记作 $a W b$，或 $a tilde.op b$。

#statement("definition", title: [])[
集合 $S$ 上的一个二元关系 $tilde.op$ 如果具有下述性质：$forall a , b , c in S$，有

（1） 反身性 $a tilde.op a$

（2） 对称性 $a tilde.op b arrow.r.double b tilde.op a$

（3） 传递性 $a tilde.op b$ 且 $b tilde.op c arrow.r.double a tilde.op c$

那么称 $tilde.op$ 是 $S$ 上的一个等价关系。

]
#statement("definition", title: [])[
设 $tilde.op$ 是集合 $S$ 上的一个等价关系，$a in S$ ，令 $ overline(a) colon.eq { x in S mid(|) x in a } $ 称 $overline(a)$ 是由 $a$ 确定的等价类，$a$ 称为等价类 $overline(a)$ 的一个代表。

]
#statement("definition", title: [])[
如果集合 $S$ 是一些非空子集 $S_i$ （$i in I$，这里 $I$ 表示指标集）的并集，并且其中不相等的子集一定不相交，那么称集合 ${ S_i mid(|) i in I }$ 是 $S$ 的一个划分，记作 $pi ( S )$。

]
#statement("theorem", title: [])[
设 $tilde.op$ 是集合 $S$ 上的一个等价关系，则所有等价类组成的集合是 $S$ 的一个划分，记作 $pi_tilde.op ( S )$。

]
#statement("definition", title: [])[
设 $tilde.op$ 是集合 $S$ 上的一个等价关系。由所有等价类组成的集合称为 $S$ 对于关系 $tilde.op$ 的商集，记作 $S \/ tilde.op$。

]
注意，$S$ 的商集 $S \/ tilde.op$ 里的元素是 $S$ 的子集，不是 $S$ 的元素。

设 $tilde.op$ 是集合 $S$ 上的一个等价关系，一种量或一种表达式如果对于同一个等价类里的元素是相等的，那么称这种量或表达式是一个不变量。恰好能完全决定等价类的一组不变量称为完全不变量。

== 矩阵的相抵
<ga-5-矩阵的相抵>
数域 $K$ 上所有 $s times n$ 矩阵组成的集合记作 $M_(s times n) ( K )$，当 $s = n$ 时简记为 $M_n ( K )$。

#statement("definition", title: [])[
对于数域 $K$ 上的 $s times n$ 矩阵 $A$ 和 $B$，如果从 $A$ 经过一系列初等行变换和初等列变换能变成矩阵 $B$，那么称 $A$ 与 $B$ 是相抵的，记作 $A tilde.op^(upright("相抵")) B$。

]
相抵是集合 $M_(s times n) ( K )$ 上的一个二元关系，不难验证相抵是一个等价关系，其下矩阵 $A$ 的等价类称为 $A$ 的相抵类。

#statement("theorem", title: [])[
设数域 $K$ 上 $s times n$ 矩阵 $A$ 的秩为 $r$，如果 $r > 0$，那么 $A$ 相抵于下述形式的矩阵 $ mat(delim: "(", E_r, 0; 0, 0) $ 称其为 $A$ 的相抵标准形；如果 $r = 0$，那么相抵标准形是零矩阵。

]
#statement("theorem", title: [])[
数域 $K$ 上 $s times n$ 矩阵 $A$ 与 $B$ 相抵当且仅当它们的秩相等，即矩阵的秩是相抵关系下的完全不变量。

]
== 广义逆矩阵
<ga-5-广义逆矩阵>
对于线性方程组 $A bold(X) = bold(beta)$，当 $A$ 可逆时答案可以被直接表示为 $bold(X) = A^(- 1) bold(beta)$。当 $A$ 不可逆但方程有解时，引入广义逆的概念来辅助分析。

#statement("theorem", title: [])[
设 $A$ 是数域 $K$ 上 $s times n$ 非零矩阵，则矩阵方程 $ A bold(X) A = A $ 一定有解。如果 $"rank" ( A ) = r$，并且 $ A = P mat(delim: "(", E_r, 0; 0, 0) Q $ 其中 $P , Q$ 分别是 $K$ 上 $s$ 级、$n$ 级可逆矩阵，那么矩阵方程的通解为 $ bold(X) = Q^(- 1) mat(delim: "(", E_r, B; C, D) P^(- 1) $ 其中 $B , C , D$ 分别是数域 $K$ 上任意的 $r times ( s - r ) , ( n - r ) times r , ( n - r ) times ( s - r )$ 矩阵。

]
#statement("definition", title: [广义逆])[
#metadata(()) <ga-index-4> 设 $A$ 是数域 $K$ 上 $s times n$ 非零矩阵，则矩阵方程 $A bold(X) A = A$ 的每一个解都称为 $A$ 的一个广义逆矩阵，简称广义逆。用 $A^(-)$ 表示。

]
#statement("theorem", title: [])[
非齐次线性方程组 $A bold(X) = bold(beta)$ 有解的充分必要条件是 $ bold(beta) = A A^(-) bold(beta) $

]
#statement("proof", title: [])[
必要性：设 $A bold(X) = bold(beta)$ 有解 $alpha$，则 $ bold(beta) = A bold(alpha) = A A^(-) A bold(alpha) = A A^(-) bold(beta) $ 充分性：若 $bold(beta) = A A^(-) bold(beta)$，显然 $A^(-) bold(beta)$ 是 $A bold(X) = bold(beta)$ 的解。

]
#statement("theorem", title: [])[
非齐次线性方程组 $A bold(X) = bold(beta)$ 有解时，它的通解为 $ bold(X) = A^(-) bold(beta) $

]
#statement("theorem", title: [])[
数域 $K$ 上 $n$ 元齐次线性方程组 $A bold(X) = 0$ 的通解为 $ bold(X) = ( E_n - A^(-) A ) bold(Z) $ 其中 $A^(-)$ 是 $A$ 的任意一个广义逆，$bold(Z)$ 取遍 $K^n$ 中任意列向量。

]
#statement("theorem", title: [])[
数域 $K$ 上 $n$ 元非齐次线性方程组 $A bold(X) = bold(beta)$ 的通解为 $ bold(X) = A^(-) bold(beta) + ( E_n - A^(-) A ) bold(Z) $ 其中 $A^(-)$ 是 $A$ 的任意一个广义逆，$bold(Z)$ 取遍 $K^n$ 中任意列向量。

]
== 矩阵的相似
<ga-5-矩阵的相似>
#statement("definition", title: [矩阵相似])[
#metadata(()) <ga-index-5> 设 $A$ 与 $B$ 都是数域 $K$ 上 $n$ 级矩阵，如果存在数域 $K$ 上一个 $n$ 级可逆矩阵 $P$，使得 $ P^(- 1) A P = B $ 那么称 $A$ 与 $B$ 是相似的，记作 $A tilde.op B$。

]
同样相似是集合 $M_(s times n) ( K )$ 上的一个二元关系，不难验证相似是一个等价关系，其下矩阵 $A$ 的等价类称为 $A$ 的相似类。相似的矩阵具有相等的行列式和秩。

#statement("definition", title: [])[
$n$ 级矩阵 $A = ( a_(i j) )$ 的主对角线上元素的称为 $A$ 的迹，记作 $"tr" ( A )$。

]
不难验证矩阵的迹都有如下性质 $ "tr" ( A + B ) & = "tr" ( A ) + "tr" ( B )\
"tr" ( k A ) & = k "tr" ( A )\
"tr" ( A B ) & = "tr" ( B A ) $

#statement("theorem", title: [])[
相似的矩阵都有相同的迹。

]
#statement("proof", title: [])[
不妨设 $A = P^(- 1) B P$，于是 $ "tr" ( B ) = "tr" ( P^(- 1) A P ) = "tr" ( ( P^(- 1) P ) A ) = "tr" ( A ) $

]
这表明，矩阵的行列式、秩、迹都是相似关系下的不变量，简称为相似不变量。如果 $n$ 级矩阵相似于一个对角矩阵，那么称 $A$ #strong[可对角化] #metadata(()) <ga-index-6>。

#statement("theorem", title: [])[
数域 $K$ 上 $n$ 级矩阵 $A$ 可对角化的充分必要条件是，$K^n$ 中有 $n$ 个线性无关的列向量 $bold(alpha)_1 , dots.h.c , bold(alpha)_n$，以及 $K$ 中有 $n$ 个数 $lambda_1 , dots.h.c , lambda_n$（它们之中有些可能相等），使得 $ A bold(alpha)_i = lambda_i bold(alpha)_i , quad 1 lt.eq i lt.eq n $ 这时，令 $P = ( bold(alpha)_1 , dots.h.c , bold(alpha)_n )$，则 $ P^(- 1) A P = "diag" { lambda_1 , dots.h.c , lambda_n } $

]
#statement("proof", title: [])[
带入 $A P = P D$，注意到 $ A P = ( A bold(alpha)_1 , dots.h.c , A bold(alpha)_n ) = ( lambda_1 bold(alpha)_1 , dots.h.c , lambda_n bold(alpha)_n ) D = P D $ 因此存在 $A bold(alpha)_i = lambda_i bold(alpha)_i$。

]
#statement("example", title: [])[
如果 $n$ 级矩阵 $A$ 可对角化，求证：$A$ 相似于 $A^(sans(T))$。

]
#statement("proof", title: [])[
即存在 $P$ 使得 $P^(- 1) A P = D$，其中 $D$ 是对角阵，从而存在 $ D^(sans(T)) = ( P^(- 1) A P )^(sans(T)) = P^(sans(T)) A^(sans(T)) ( P^(sans(T)) )^(- 1) $ 因此 $A tilde.op D = D^(sans(T)) med A^(sans(T))$。

]
#statement("example", title: [])[
如果 $n$ 级矩阵 $A , B$ 满足 $A B - B A = A$，求证：$A$ 不可逆。

]
#statement("proof", title: [])[
假设 $A$ 可逆，两边乘 $A^(- 1)$ 得到 $ B - A^(- 1) B A = E $ 从左边来看，有 $ "tr" ( B - A^(- 1) B A ) = "tr" ( B ) - "tr" ( A^(- 1) B A ) = "tr" ( B ) - "tr" ( B ) = 0 $ 因此 $0 eq.not "tr" ( E ) = n$ 矛盾，故不可逆。

]
== 矩阵的特征值和特征向量
<ga-5-矩阵的特征值和特征向量>
#statement("definition", title: [])[
#metadata(()) <ga-index-7> #metadata(()) <ga-index-8> 设 $A$ 是数域 $K$ 上的一个 $n$ 级矩阵，如果 $K^n$ 中有非零列向量 $bold(alpha)$ 使得 $ A bold(alpha) = lambda_0 bold(alpha) , upright("且") med lambda_0 in K $ 那么称 $lambda_0$ 是 $A$ 的一个特征值，称 $bold(alpha)$ 是 $A$ 的属于特征值 $lambda_0$ 的一个特征向量。

]
注意零向量不是特征向量。

#statement("theorem", title: [])[
设 $A$ 是数域 $K$ 上的 $n$ 级矩阵，则

（1） $lambda_0$ 是 $A$ 的一个特征值当且仅当 $lambda_0$ 是 $A$ 的特征多项式 $det(lambda E - A)$ 在 $K$ 中的一个根。#metadata(()) <ga-index-9>

（2） $bold(alpha)$ 是 $A$ 的属于特征值 $lambda_0$ 的一个特征向量当且仅当 $bold(alpha)$ 是齐次线性方程组 $( lambda_0 E - A ) bold(X) = bold(0)$ 的一个解。

]
设 $lambda_j$ 是 $A$ 的一个特征值，把齐次线性方程组 $( lambda_j E - A ) bold(X) = bold(0)$ 的解空间称为 $A$ 的属于 $lambda_j$ 的特征子空间，其中的全部非零向量都是 $A$ 的属于 $lambda_j$ 的全部特征向量。

#statement("theorem", title: [])[
相似的矩阵有相等的特征多项式。

]
因此矩阵的特征多项式和特征值都是相似不变量。

#statement("theorem", title: [])[
设 $A$ 是 $n$ 级矩阵，则 $A$ 的特征多项式 $f ( lambda ) = det(lambda E - A)$ 是一个 $n$ 次多项式，且 $[ lambda^n ] f = 1 , [ lambda^(n - 1) ] f = - "tr" ( A ) , [ lambda^0 ] f = ( - 1 )^n det(A)$。

]
#statement("definition", title: [])[
设 $A$ 是数域 $K$ 上的 $n$ 级矩阵，$lambda_1$ 是 $A$ 的一个特征值。把 $A$ 的属于 $lambda_1$ 的特征子空间的维数叫做特征值 $lambda_1$ 的几何重数，而把 $lambda_1$ 作为 $A$ 的特征多项式根的重数叫做 $lambda_1$ 的代数重数。代数重数简称为重数。#metadata(()) <ga-index-10> #metadata(()) <ga-index-11>

]
#statement("theorem", title: [])[
设 $lambda_1$ 是数域 $K$ 上的 $n$ 级矩阵 $A$ 的一个特征值，则 $lambda_1$ 的几何重数不超过它的代数重数。

]
#statement("example", title: [])[
设 $A$ 是一个 $n$ 级正交矩阵，证明：

+ 如果 $A$ 有特征值，那么它的特征值是 $1$ 或 $- 1$；

+ 如果 $det(A) = - 1$，那么 $- 1$ 是 $A$ 的一个特征值；

+ 如果 $det(A) = 1$，且 $n$ 是奇数，那么 $1$ 是 $A$ 的一个特征值。

]
#statement("proof", title: [])[
（1）存在特征值即存在 $lambda$ 使得 $A bold(alpha) = lambda bold(alpha)$，得到 $ bold(alpha)^(sans(T)) bold(alpha) = ( A bold(alpha) )^(sans(T)) ( A bold(alpha) ) = ( lambda bold(alpha) )^(sans(T)) ( lambda bold(alpha) ) = lambda^2 bold(alpha)^(sans(T)) bold(alpha) $ 因此 $lambda = plus.minus 1$。

（2）第四章证明过。

（3）如果 $det(A) = 1$，那么 $ det(E - A) = det(A A^(sans(T)) - A) = ( - 1 )^n det(E - A) = - det(E - A) $ 因此 $1$ 是其特征值。

]
#statement("example", title: [])[
求矩阵的全部特征值和特征向量 $ A = mat(delim: "(", 2, 2, - 2; 2, 5, - 4; - 2, - 4, 5) $

]
#statement("solution", title: [])[
首先求出特征多项式 $ det(lambda E - A) = lambda^3 - 12 lambda^2 + 21 - 10 = ( lambda - 1 )^2 ( lambda - 10 ) $ 解得 $lambda_1 = 1 , lambda_2 = 10$。首先解方程 $( lambda_1 E - A ) bold(X) = bold(0)$，得到基本解系 $ alpha_1 = ( - 2 , 1 , 0 )^(sans(T)) , alpha_2 = ( 2 , 0 , 1 )^(sans(T)) , alpha_3 = ( - 1 , - 2 , 2 )^(sans(T)) $

]
== 矩阵可对角化的条件
<ga-5-矩阵可对角化的条件>
#statement("theorem", title: [])[
数域 $K$ 上 $n$ 级矩阵 $A$ 可对角化的充分必要条件是 $A$ 有 $n$ 个线性无关的特征向量 $bold(alpha)_1 , dots.h.c , bold(alpha)_n$，此时令 $ P = ( bold(alpha)_1 , dots.h.c , bold(alpha)_n ) $ 则 $ P^(- 1) A P = "diag" { lambda_1 , dots.h.c , lambda_n } $ 其中 $lambda_i$ 是 $bold(alpha)_i$ 所属的特征值。上述对角矩阵称为 $A$ 的相似标准形。

]
#statement("theorem", title: [])[
设 $lambda_1 , lambda_2$ 是数域 $K$ 上 $n$ 级矩阵 $A$ 的不同特征值，$bold(alpha)_1 , dots.h.c , bold(alpha)_s$ 与 $bold(beta)_1 , dots.h.c , bold(beta)_r$ 分别是 $A$ 的属于 $lambda_1 , lambda_2$ 的线性无关的特征向量，则 $bold(alpha)_1 , dots.h.c , bold(alpha)_s , bold(beta)_1 , dots.h.c , bold(beta)_r$ 线性无关。

]
#statement("theorem", title: [])[
设 $lambda_1 , dots.h.c , lambda_m$ 是数域 $K$ 上 $n$ 级矩阵 $A$ 的不同特征值，$bold(alpha)_(j 1) , dots.h.c , bold(alpha)_(j r_j)$ 是 $A$ 的属于 $lambda_j$ 的线性无关的特征向量，$j = 1 , dots.h.c , m$，则向量组 $ bold(alpha)_(1 1) , dots.h.c , bold(alpha)_(1 r_1) , dots.h.c , bold(alpha)_(m 1) , dots.h.c , bold(alpha)_(1 r_m) $ 线性无关。

]
#statement("theorem", title: [])[
数域 $K$ 上 $n$ 级矩阵 $A$ 可对角化的充分必要条件是：$A$ 的特征多项式的全部复根都属于 $K$，并且 $A$ 的每个特征值的几何重数等于它的代数重数。

]
== 实对称矩阵的对角化
<ga-5-实对称矩阵的对角化>
若对于 $n$ 级矩阵 $A , B$，存在一个 $n$ 级正交矩阵 $T$，使得 $T^(- 1) A T = B$，那么称 $A$ 正交相似于 $B$。

#statement("theorem", title: [])[
实对称矩阵的特征多项式的每一个复根都是实数，从而它们都是特征值。

]
#statement("theorem", title: [])[
实对称矩阵 $A$ 的属于不同特征值的特征向量是正交的。

]
#statement("theorem", title: [])[
实对称矩阵一定正交相似于对角矩阵。

]
对于 $n$ 级实对称矩阵 $A$，找一个正交矩阵 $T$，使得 $T^(- 1) A T$ 为对角矩阵的步骤如下。

\1. 计算 $det(lambda E - A)$，求出它的全部不同的根：$lambda_1 , dots.h.c , lambda_m$，它们是 $A$ 的特征值。

\2. 对于每一个特征值 $lambda_j$，求 $( lambda_j E - A ) bold(X) = bold(0)$ 的一个基础解系 $bold(alpha)_(j 1) , dots.h.c , bold(alpha)_(j r_j)$；然后把它们 Schmidt 正交化和单位化，得到 $bold(eta)_(j 1) , dots.h.c , bold(eta)_(j r_j)$。它们也是 $A$ 的属于 $lambda_j$ 的一个特征向量。

\3. 令 $ T = ( bold(eta)_(1 1) , dots.h.c , bold(eta)_(1 r_1) , dots.h.c , bold(eta)_(m 1) , dots.h.c , bold(eta)_(m r_m) ) $ 则 $T$ 是 $n$ 级正交矩阵，且 $ T^(- 1) A T = "diag" { lambda_1 , dots.h.c , lambda_1 , dots.h.c , lambda_m , dots.h.c , lambda_m } $

#statement("example", title: [])[
给定实矩阵 $A$，求正交矩阵 $T$ 使得 $T^(- 1) A T$ 为对角矩阵 $ A = mat(delim: "(", 0, - 2, 2; - 2, - 3, 4; 2, 4, - 3) $

]
#statement("solution", title: [])[
首先求得特征多项式 $ det(lambda E - A) = ( lambda - 1 )^2 ( lambda + 8 ) $ 得到特征值为 $1 , - 8$，分别求得 $( lambda E - A ) bold(X) = bold(0)$ 的基础解系 $ bold(alpha)_1 = ( - 2 , 0 , 1 )^(sans(T)) , bold(alpha)_2 = ( 2 , 1 , 0 )^(sans(T)) , bold(alpha)_3 = ( - 1 , 2 , - 2 )^(sans(T)) $ 正交归一化后得到 $ bold(eta)_1 = (- 2 / sqrt(5) , 0 , 1 / sqrt(5))^(sans(T)) , bold(alpha)_2 = (frac(2, 3 sqrt(5)) , sqrt(5) / 3 , frac(4, 3 sqrt(5)))^(sans(T)) , bold(eta)_3 = (- 1 / 3 , 2 / 3 , - 2 / 3)^(sans(T)) $ 因此 $ T = mat(delim: "(", - 2 / sqrt(5), frac(2, 3 sqrt(5)), - 1 / 3; 0, sqrt(5) / 3, 2 / 3; 1 / sqrt(5), frac(4, 3 sqrt(5)), - 2 / 3) $

]
