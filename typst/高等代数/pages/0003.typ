#import "../../template/environments.typ": statement

= 线性方程组的解系
<ga-3-线性方程组的解系>
== $n$ 维向量空间 $K^n$
<ga-3-n-维向量空间-kn>
取定一个数域 $K$，设 $n$ 是任意给定的一个正整数。令 $ K^n = { ( a_1 , dots.h.c , a_n ) mid(|) a_i in K , i = 1 , dots.h.c , n } $ 如果 $a_1 = b_1 , dots.h.c , a_n = b_n$，则称 $K^n$ 中的两个元素：$( a_1 , dots.h.c , a_n ) , ( b_1 , dots.h.c , b_n )$ 相等。

在 $K^n$ 中规定加法运算： $ ( a_1 , dots.h.c , a_n ) + ( b_1 , dots.h.c , b_n ) colon.eq ( a_1 + b_1 , dots.h.c , a_n + b_n ) $ 在 $K$ 的元素与 $K^n$ 的元素之间规定数量乘法运算： $ k ( a_1 , dots.h.c , a_n ) colon.eq ( k a_1 , dots.h.c , k a_n ) $ 不难验证加法和数量乘法运算满足下述八条运算法则：对于 $bold(alpha) , bold(beta) , bold(gamma) in K^n , k , l in K$ 有

+ $bold(alpha) + bold(beta) = bold(beta) + bold(alpha)$

+ $( bold(alpha) + bold(beta) ) + bold(gamma) = bold(alpha) + ( bold(beta) + bold(gamma) )$

+ 把元素 $( 0 , dots.h.c , 0 )$ 记作零元素 $bold(0)$，使得 $ bold(0) + bold(alpha) = bold(alpha) + bold(0) = bold(alpha) $

+ 对于 $bold(alpha) = ( a_1 , dots.h.c , a_n ) in K^n$，定义其负元素 $ - bold(alpha) colon.eq ( - a_1 , dots.h.c , - a_n ) $ 于是有 $ bold(alpha) + ( - bold(alpha) ) = ( - bold(alpha) ) + bold(alpha) = 0 $

+ $1 bold(alpha) = bold(alpha)$

+ $( k l ) bold(alpha) = k ( l bold(alpha) )$

+ $k ( bold(alpha) + bold(beta) ) = k bold(alpha) + k bold(beta)$

#statement("definition", title: [$n$ 维向量空间])[
数域 $K$ 上所有 $n$ 元有序数组组成的集合 $K^n$，连同定义在它上面的加法运算和数量乘法运算，及其满足的 8 条运算法则一起，称为数域 $K$ 上的一个 $n$ 维向量空间。$K^n$ 的元素称为 $n$ 维向量；设向量 $bold(alpha) = ( a_1 , dots.h.c , a_n )$，称 $a_i$ 是 $bold(alpha)$ 的第 $i$ 个分量。

]
在 $n$ 维向量空间 $K^n$ 中，可以定义减法运算 $ bold(alpha) - bold(beta) colon.eq bold(alpha) + ( - bold(beta) ) $

$n$ 元有序数组写成一行，称为行向量；写成一列，称为列向量，也可以看作行向量的转置。

$K^n$ 可以看成是 $n$ 维行向量组成的向量空间，也可以看作是列向量组成的向量空间。

#statement("definition", title: [线性组合])[
给定向量组 $bold(alpha)_1 , dots.h.c , bold(alpha)_s$，再任给 $K$ 中的一组数 $k_1 , dots.h.c , k_s$，那么向量 $ k_1 bold(alpha)_1 + dots.h.c + k_s bold(alpha)_s $ 称为向量组 $k_1 , dots.h.c , k_s$ 的一个线性组合，其中 $k_1 , dots.h.c , k_s$ 称为系数。

]
#statement("definition", title: [线性表出])[
给定向量组 $bold(alpha)_1 , dots.h.c , bold(alpha)_s$，对于 $bold(beta) in K^n$，若存在 $K$ 中的一组数 $k_1 , dots.h.c , k_s$ 满足 $ bold(beta) = k_1 bold(alpha)_1 + dots.h.c + k_s bold(alpha)_s $ 那么称 $bold(beta)$ 可以由向量组 $bold(alpha)_1 , dots.h.c , bold(alpha)_s$ 线性表出。

]
于是可以把数域 $K$ 上的 $n$ 元线性方程组 $ cases(delim: "{", a_(1 1) x_1 + a_(1 2) x_2 + dots.h.c + a_(1 n) x_n = b_1, a_(2 1) x_1 + a_(2 2) x_2 + dots.h.c + a_(2 n) x_n = b_2, dots.h.c #h(2em) dots.h.c #h(2em) dots.h.c, a_(n 1) x_1 + a_(n 2) x_2 + dots.h.c + a_(n n) x_n = b_n) $ 写成 $ x_1 vec(a_(1 1), a_(2 1), dots.h.c, a_(n 1)) + x_2 vec(a_(1 2), a_(2 2), dots.h.c, a_(n 2)) + dots.h.c + x_n vec(a_(1 n), a_(2 n), dots.h.c, a_(n n)) = vec(b_1, b_2, dots.h.c, b_n) $ 或者 $ x_1 bold(alpha)_1 + dots.h.c + x_n bold(alpha)_n = bold(beta) $ 其中 $bold(alpha)_1 , dots.h.c , bold(alpha)_n$ 是线性方程组的列向量组，$bold(beta)$ 是由常数项组成的列向量。因此方程组有解等价于 $bold(beta)$ 可以被 $bold(alpha)_1 , dots.h.c , bold(alpha)_n$ 线性表出。

#statement("definition", title: [线性子空间])[
$K^n$ 的一个非空子集 $U$ 是 $K^n$ 的一个线性子空间，那么满足

（1） $U$ 对于 $K^n$ 的加法封闭：$bold(alpha) , bold(gamma) in U arrow.r.double bold(alpha) + bold(gamma) in U$

（2） $U$ 对于 $K^n$ 的乘法封闭：$bold(alpha) in U , k in K arrow.r.double k bold(alpha) in U$

]
特殊的，${ 0 }$ 也是 $K^n$ 的一个子空间，称为零子空间。$K^n$ 本身也是 $K^n$ 的一个子空间。

$bold(alpha)_1 , dots.h.c , bold(alpha)_n$ 的所有线性组合也是 $K^n$ 的一个子空间，称为 $bold(alpha)_1 , dots.h.c , bold(alpha)_n$ 生成（张成）的子空间，记作 $ chevron.l bold(alpha)_1 , dots.h.c , bold(alpha)_n chevron.r colon.eq { k_1 bold(alpha)_1 + dots.h.c + k_s bold(alpha)_s mid(|) k_i in K , i = 1 , dots.h.c , s } $

于是线性方程组有解，等价与 $bold(beta)$ 可以由 $bold(alpha)_1 , dots.h.c , bold(alpha)_n$ 线性表出，即 $bold(beta) in chevron.l bold(alpha)_1 , dots.h.c , bold(alpha)_n chevron.r$。

== 线性相关与无关
<ga-3-线性相关与无关>
#statement("definition", title: [])[
$K^n$ 中向量组 $bold(alpha)_1 , dots.h.c , bold(alpha)_s$ 称为是线性相关的，如果有 $K$ 中不全为 $0$ 的数 $k_1 , dots.h.c , k_s$，使得 $ k_1 bold(alpha)_1 + dots.h.c + k_s bold(alpha)_s = bold(0) $ 否则称为线性无关。

]
即线性无关意味着所有的系数只能都为 $0$。注意线性相关不意味着每个向量都可以由其他向量线性表出，该向量前的系数 $k$ 可以为 $0$。

== 向量组的秩
<ga-3-向量组的秩>
#statement("definition", title: [极大线性无关组])[
#metadata(()) <ga-index-3> 向量组的一个部分组称为一个极大线性无关组，如果这个部分组本身是线性无关的，但是从这个向量组的其余向量（如果还有的话）中任取一个添进去，得到的新的部分组都线性相关。

]
如果向量组 $bold(alpha)_1 , dots.h.c , bold(alpha)_s$ 的每一个向量都可以由向量组 $bold(beta)_1 , dots.h.c , bold(beta)_r$ 线性表出，那么称向量组 $bold(alpha)_1 , dots.h.c , bold(alpha)_s$ 可以由向量组线性表出。

#statement("definition", title: [])[
如果向量组 $bold(alpha)_1 , dots.h.c , bold(alpha)_s$ 与向量组 $bold(beta)_1 , dots.h.c , bold(beta)_r$ 可以互相线性表出，那么称两个向量组等价，记作 $ { bold(alpha)_1 , dots.h.c , bold(alpha)_s } tilde.equiv { bold(beta)_1 , dots.h.c , bold(beta)_r } $

]
可以证明，这种关系具有三条性质（反身性，对称性，传递性），即是等价关系。

对矩阵作初等行变换，变换前后的行向量组等价，不保证列向量组等价。

那么向量组与它的极大线性无关组等价。

#statement("definition", title: [])[
向量组 $bold(alpha)_1 , dots.h.c , bold(alpha)_r$ 的极大线性无关组所含向量的个数称为这个向量组的秩，记作 $ "rank" { bold(alpha)_1 , dots.h.c , bold(alpha)_r } $

]
== 子空间的基与维数
<ga-3-子空间的基与维数>
#statement("definition", title: [子空间])[
设 $U$ 是 $K^n$ 的一个子空间，如果 $bold(alpha)_1 , dots.h.c , bold(alpha)_r in U$ 是 $U$ 的一个基，那么

（1） $bold(alpha)_1 , dots.h.c , bold(alpha)_r$ 线性无关。

（2） $U$ 中每一个向量都可以由 $bold(alpha)_1 , dots.h.c , bold(alpha)_r$ 线性表出。

]
显然，单位向量组 $epsilon_1 , dots.h.c , epsilon_n$ 是 $K^n$ 的一个基，称作标准基。

#statement("theorem", title: [])[
$K^n$ 的任一非零子空间 $U$ 都有一个基。

]
#statement("theorem", title: [])[
$K^n$ 的任一非零子空间 $U$ 的任一两个基所含向量的个数相等，称为 $U$ 的维数，记作 $dim_K U$ 或 $dim U$。

]
#statement("theorem", title: [])[
向量组 $bold(alpha)_1 , dots.h.c , bold(alpha)_s$ 的一个极大线性无关组是这个向量组生成的子空间的 $chevron.l bold(alpha)_1 , dots.h.c , bold(alpha)_s chevron.r$，从而 $ dim chevron.l bold(alpha)_1 , dots.h.c , bold(alpha)_s chevron.r = "rank" { bold(alpha)_1 , dots.h.c , bold(alpha)_s } $

]
== 矩阵的秩
<ga-3-矩阵的秩>
#statement("theorem", title: [])[
阶梯形矩阵 $J$ 的行秩与列秩相等，它们都等于 $J$ 的非零行的个数；并且 $J$ 的主元所在的列构成列向量的一个极大线性无关组。

]
#statement("theorem", title: [])[
矩阵的初等行变换不改变矩阵的行秩和列秩。

]
#statement("theorem", title: [])[
矩阵的行秩和列秩相等，统称为矩阵的秩。矩阵 $A$ 的秩记作 $"rank" ( A )$。

]
#statement("theorem", title: [])[
非零矩阵的秩等于它的不为零的子式的阶数。

]
若一个 $n$ 级矩阵的秩如果等于它的级数，那么称为满秩矩阵。

#statement("theorem", title: [])[
设 $A$ 是 $s times n$ 矩阵，$B$ 是 $l times m$ 矩阵，则 $ "rank" mat(delim: "(", A, 0; 0, B) = "rank" ( A ) + "rank" ( B ) $

]
#statement("theorem", title: [])[
设 $A$ 是 $s times n$ 矩阵，$B$ 是 $l times m$ 矩阵，$C$ 是 $s times m$ 矩阵，则 $ "rank" mat(delim: "(", A, C; 0, B) gt.eq "rank" ( A ) + "rank" ( B ) $

]
== 线性方程组有解的充分必要条件
<ga-3-线性方程组有解的充分必要条件>
#statement("theorem", title: [])[
数域 $K$ 上有线性方程组 $ x_1 bold(alpha)_1 + dots.h.c + x_n bold(alpha)_n = bold(beta) $ 有解的充分必要条件是：它的系数矩阵与增广矩阵的秩相等。

]
#statement("theorem", title: [])[
数域 $K$ 上 $n$ 元线性方程组有解时，如果它的系数矩阵满秩，那么方程组有唯一解；否则方程组有无穷多个解。

]
== 齐次线性方程组解集的结构
<ga-3-齐次线性方程组解集的结构>
数域 $K$ 上 $n$ 元齐次线性方程组 $ x_1 bold(alpha)_1 + dots.h.c + x_n bold(alpha)_n = 0 $ 的一个解是 $K^n$ 中的一个向量，称它为齐次线性方程组的一个解向量。

可知齐次线性方程组的解集 $W$ 是 $K^n$ 的一个子空间，称为方程组的一个解空间。

#statement("definition", title: [])[
齐次线性方程组有非零解时，如果它的有限多个解 $eta_1 , dots.h.c , eta_t$ 是其基础解系

（1） $eta_1 , dots.h.c , eta_t$ 线性无关。

（2） 齐次线性方程组的每一个解都可以由 $eta_1 , dots.h.c , eta_t$ 线性表出。

]
于是解空间为 $ W = chevron.l eta_1 , dots.h.c , eta_t chevron.r $

#statement("theorem", title: [])[
数域 $K$ 上 $n$ 元齐次线性方程组的解空间 $W$ 的维数为 $ dim W = n - "rank" ( A ) $

]
#statement("proof", title: [])[
倘若 $"rank" ( A ) = n$，即只有零解，那么 $W = { bold(0) }$，此时显然成立。

下面设 $"rank" ( A ) = r < n$。第一步，将 $A$ 变化为简化行阶梯形矩阵，不妨设主元在前 $r$ 列，即得 $x_1 , dots.h.c , x_r$ 关于自由变量 $x_(r + 1) , dots.h.c , x_n$ 的线性关系。

第二步，取 $n - r$ 个线性无关向量（最简单就是逐个取 $1$），带入 $x_(r + 1) , dots.h.c , x_n$，得到方程组的 $n - r$ 个解 $bold(eta)_1 , dots.h.c , bold(eta)_(n - r)$，显然这些解线性无关。

下证这些解是解空间的基。对于任何一个解 $bold(eta)$，显然可以关于 $x_(r + 1) , dots.h.c , x_n$ 的 $n - r$ 个线性无关向量分解，从而总是可以由 $bold(eta)_1 , dots.h.c , bold(eta)_r$ 线性表示。故 $ dim W = n - "rank" ( A ) $

]
#statement("example", title: [])[
求解 $ cases(delim: "{", x_1 + 3 x_2 - 5 x_3 - 2 x_4 = 0, - 3 x_1 - 2 x_2 + x_3 + x_4 = 0, - 11 x_1 - 5 x_2 - x_3 + 2 x_4 = 0, 5 x_1 + x_2 + x_3 = 0) $

]
第一步，化成简化阶梯型行列式，求出一般解 $ cases(delim: "{", x_1 = - x_3 - 1 / 7 x_4, x_2 = 2 x_3 + 5 / 7 x_4) $ 第二步，其中 $x_3 , x_4$ 是自由变量，得到基础解系 $ bold(eta)_1 = vec(- 1, 2, 1, 0) , quad bold(eta)_2 = vec(- 1, 5, 0, 7) $ 因此方程组的解集为 $ W = { k_1 bold(eta)_1 + k_2 bold(eta)_2 } $

== 非齐次线性方程组的结构
<ga-3-非齐次线性方程组的结构>
称数域 $K$ 上 $n$ 元齐次线性方程组 $ x_1 bold(alpha)_1 + dots.h.c + x_n bold(alpha)_n = bold(beta) $ 的导出组为 $ x_1 bold(alpha)_1 + dots.h.c + x_n bold(alpha)_n = 0 $ 其的解空间用 $W$ 表示。

#statement("theorem", title: [])[
如果数域 $K$ 上 $n$ 元齐次线性方程组有解，那么它的解集 $U$ 为 $ U = { bold(gamma)_0 + bold(eta) mid(|) bold(eta) in W } $ 其中 $bold(gamma)_0$ 是非其次线性方程组的一个特解，$W$ 是导出组的解空间用。

]
#statement("example", title: [])[
求解 $ cases(delim: "{", x_1 + 2 x_2 - 3 x_3 - 4 x_4 = - 5, 3 x_1 - x_2 + 5 x_3 + 6 x_4 = - 1, - 5 x_1 - 3 x_2 + x_3 + 2 x_4 = 11, - 9 x_1 - 4 x_2 - x_3 = 17) $

]
第一步，化成简化阶梯型行列式，求出一般解 $ cases(delim: "{", x_1 = - x_3 - 8 / 7 x_4 - 1, x_2 = 2 x_3 + 18 / 7 x_4 - 2) $ 第二步，其中 $x_3 , x_4$ 是自由变量，得到特解和基础解系 $ bold(gamma)_0 = vec(- 1, - 2, 0, 0) , quad bold(eta)_1 = vec(- 1, 2, 1, 0) , quad bold(eta)_2 = vec(- 1, 5, 0, 7) $ 因此方程组的解集为 $ W = { bold(gamma)_0 + k_1 bold(eta)_1 + k_2 bold(eta)_2 } $
