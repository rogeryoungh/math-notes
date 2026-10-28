#import "../../template/environments.typ": statement

= 具有度量的线性空间
<ga-10-具有度量的线性空间>
== 双线性函数
<ga-10-双线性函数>
#statement("definition", title: [双线性函数])[
#metadata(()) <ga-index-35> 设域 $F$ 上的线性空间 $V$，映射 $f : V times V arrow.r F$ 如果对任意的 $k_1 , k_2 in F$ 和任意的 $beta_1 , alpha_2 , beta_1 , beta_2 , alpha , beta in V$ 有

（1） $f ( k_1 alpha_1 + k_2 alpha_2 , beta ) = k_1 f ( alpha_1 , beta ) + k_2 f ( alpha_2 , beta )$

（2） $f ( alpha , k_1 beta_1 + k_2 beta_2 ) = k_1 f ( alpha , beta_1 ) + k_2 f ( alpha , beta_2 )$

那么称 $f$ 是 $V$ 上一个双线性函数，$f$ 也写成 $f ( alpha , beta )$。

]
即当 $beta$ 固定时，映射 $alpha mapsto f ( alpha , beta )$ 是 $V$ 上的一个线性函数，记作 $beta_R$。

即当 $alpha$ 固定时，映射 $beta mapsto f ( alpha , beta )$ 是 $V$ 上的一个线性函数，记作 $alpha_L$。

设域 $F$ 上 $n$ 维线性空间 $V$ 中取一个基 $alpha_1 , dots.h.c , alpha_n$，设 $V$ 中向量 $alpha , beta$ 在此基下的坐标为 $ X = ( x_1 , dots.h.c , x_n )^(sans(T)) , quad Y = ( y_1 , dots.h.c , y_n )^(sans(T)) $ 设 $f$ 是 $V$ 上的一个双线性函数，则 $ f ( alpha , beta ) = f (sum_(i = 1)^n x_i alpha_i , sum_(j = 1)^n y_j alpha_j) = sum_(i = 1)^n sum_(j = 1)^n x_i y_j f ( alpha_i , alpha_j ) $ 令 $ A = mat(delim: "(", f ( alpha_1 , alpha_1 ), f ( alpha_1 , alpha_2 ), dots.h.c, f ( alpha_1 , alpha_n ); f ( alpha_2 , alpha_1 ), f ( alpha_2 , alpha_2 ), dots.h.c, f ( alpha_2 , alpha_n ); dots.v, dots.v, #none, dots.v; f ( alpha_n , alpha_1 ), f ( alpha_n , alpha_2 ), dots.h.c, f ( alpha_n , alpha_n )) $

称 $A$ 是双线性函数 $f$ 在基 $alpha_1 , dots.h.c , alpha_n$ 下的度量矩阵，它是由 $f$ 及基 $alpha_1 , dots.h.c , alpha_n$ 唯一决定的。于是有 $ f ( alpha , beta ) = X^(sans(T)) A Y $ 反之，任给域 $F$ 上一个 $n$ 级矩阵 $A = ( a_(i j) )$，定义映射 $f : V times V arrow.r F$ 如下 $ f ( alpha , beta ) = X^(sans(T)) A Y = sum_(i = 1)^n sum_(j = 1)^n a_(i j) x_i y_j $ 则 $f$ 是 $V$ 上的一个双线性函数，且 $f$ 在基 $alpha_1 , dots.h.c , alpha_n$ 下的度量矩阵为 $A$。

因此若 $X^(sans(T)) A Y = X^(sans(T)) B Y$，则 $A = B$。

称表达式 $X^(sans(T)) A Y$ 为 $X$ 与 $Y$ 的双线性形。

#statement("theorem", title: [])[
设域 $F$ 上 $n$ 维线性空间 $V$ 上的一个双线性函数，取 $V$ 中两个基 $alpha_1 , dots.h.c , alpha_n$ 与 $beta_1 , dots.h.c , beta_n$，设 $ ( beta_1 , dots.h.c , beta_n ) = ( alpha_1 , dots.h.c , alpha_n ) P $ 且 $f$ 在这两个基的度量矩阵分别为 $A , B$，则 $ B = P^(sans(T)) A P $

]
即 $f$ 在 $V$ 的不同基下的度量矩阵是合同的，他们有相同的秩，于是称度量矩阵的秩为 $f$ 的矩阵秩，记作 $"rank"_m f$。

设域 $F$ 上线性空间 $V$ 上双线性函数 $f$，则称 $V^(*)$ 的子空间 $ chevron.l alpha_L , beta_R mid(|) alpha , beta in V chevron.r $ 称为 $f$ 的秩空间，把 $f$ 的秩空间的维数称为 $f$ 的秩，记作 $"rank" f$。

可以证明，$f$ 的矩阵秩不超过 $f$ 的秩。

#statement("definition", title: [])[
设域 $F$ 上线性空间 $V$ 上的双线性函数 $f$，则 $V$ 的子集 $ { alpha in V mid(|) f ( alpha , beta ) = 0 } $ 称为 $f$ 在 $V$ 中的做根，记作 $"rad"_L V$，$V$ 的另一个子集 $ { beta in V mid(|) f ( alpha , beta ) = 0 } $ 称为 $f$ 在 $V$ 中的右根，记作 $"rad"_R V$。

]
容易验证，$f$ 在 $V$ 中的左根和右根都是 $V$ 的子空间。

#statement("definition", title: [])[
如果 $V$ 上双线性函数 $f$ 的做根和右根都是零子空间，那么称 $f$ 是非退化的。

]
#statement("theorem", title: [])[
域 $F$ 上 $n$ 维线性空间 $V$ 上的双线性函数 $f$ 是非退化的，当且仅当 $f$ 在 $V$ 的一个基下的度量矩阵是满秩矩阵。

]
#statement("definition", title: [])[
设域 $F$ 上线性空间 $V$ 上的一个双线性函数，如果 $ f ( alpha , beta ) = f ( beta , alpha ) $ 那么称 $f$ 是对称的，如果 $ f ( alpha , beta ) = - f ( beta , alpha ) $ 那么称 $f$ 是反对称的（斜对称的）。

]
#statement("theorem", title: [])[
设特征不为 $2$ 的域 $F$ 上 $n$ 维线性空间 $V$ 上的对称双线性函数 $f$，则 $V$ 中存在一个基使得 $f$ 在此基下的度量矩阵为对角矩阵，

]
#statement("theorem", title: [])[
设特征不为 $2$ 的域 $F$ 上 $n$ 维线性空间 $V$ 上的反对称双线性函数 $f$，则存在 $V$ 的一个基，把它记成 $delta_1 , delta_(- 1) , dots.h.c , delta_r , delta_(- r) , eta_1 , dots.h.c , eta_s$（其中 $0 lt.eq 2 r lt.eq n , s = n - 2 r$），使得 $f$ 在这个基下的度量矩阵具有形式 $ "diag" {mat(delim: "(", 0, 1; - 1, 0) , dots.h.c , mat(delim: "(", 0, 1; - 1, 0) , 0 , dots.h.c , 0} $

]
#statement("definition", title: [])[
设域 $F$ 上的线性空间 $V$，映射 $q : V arrow.r F$ 称为 $V$ 上的二次函数，如果存在 $V$ 上的一个对称双线性函数 $f$，使得 $ q ( alpha ) = f ( alpha , alpha ) $

]
显然，对于一个对称双线性函数 $f$ 就有唯一的一个二次函数 $q$。

#statement("theorem", title: [])[
设特征不为 $2$ 的域 $F$ 上的线性空间 $V$，$q$ 是 $V$ 上的一个二次函数，则存在 $V$ 上唯一的对称双线性函数 $f$ 使得 $ f ( alpha , alpha ) = q ( alpha ) $

]
于是设域 $F$ 上 $n$ 维线性空间 $V$ 上的对称双线性函数 $f$ 和其对应的二次函数 $q$。设 $f$ 在 $V$ 的一个基 $alpha_1 , dots.h.c , alpha_n$ 下的度量矩阵 $A = ( a_(i j) )$，则对于 $alpha = ( alpha_1 , dots.h.c , alpha_n ) X , beta = ( alpha_1 , dots.h.c , alpha_n ) Y$，有 $ f ( alpha , beta ) = X^(sans(T)) A Y $ 从而有 $ q ( alpha ) = f ( alpha , alpha ) = X^(sans(T)) A X $ 即 $q$ 在基 $alpha_1 , dots.h.c , alpha_n$ 下的表达式是 $n$ 元二次型 $X^(sans(T)) A X$，称其中的对称矩阵 $A$ 为二次函数 $q$ 在基 $alpha_1 , dots.h.c , alpha_n$ 下的矩阵。于是可以用二次型的理论研究双线性函数，也可以用对称双线性函数来研究二次型。

#statement("theorem", title: [惯性定理])[
实数域上任意一个 $n$ 元二次型都可以经过非退化线性替换化成规范形，并且规范形是唯一的 。

]
#statement("theorem", title: [Witt 消去律的推广])[
设特征不为 $2$ 的域 $F$ 上的 $n$ 级对称矩阵 $A_1 , A_2$，$m$ 级对称矩阵 $B_1 , B_2$。如果 $ mat(delim: "(", A_1, 0; 0, B_1) tilde.eq mat(delim: "(", A_2, 0; 0, B_2) $ 且 $A_1 tilde.eq A_2$，那么 $B_1 tilde.eq B_2$。

]
===== 双线性函数空间
<ga-10-双线性函数空间>
#statement("definition", title: [])[
设域 $F$ 上的线性空间 $V$，我们把 $V$ 上所有双线性函数组成的集合记作 $T_2 ( V )$，容易验证 $T_2 ( V )$ 对域函数的加法和纯量乘法成为域 $F$ 上的一个线性空间，称为 $V$ 上的双线性函数空间。

]
#statement("theorem", title: [])[
设特征不为 $2$ 的域 $F$ 上的线性空间，则 $ T_2 ( V ) = S_2 ( V ) xor A_2 ( V ) $

]
== 欧几里得空间
<ga-10-欧几里得空间>
#statement("definition", title: [正定的])[
#metadata(()) <ga-index-36> 设实线性空间 $V$ 上的对称双线性函数，如果对任意 $alpha in V$ 有 $f ( alpha , alpha ) gt.eq 0$，等号成立当且仅当 $alpha = 0$，那么称 $f$ 是正定的。

]
#statement("definition", title: [内积])[
#metadata(()) <ga-index-37> 设实数域 $bb(R)$ 上的一个线性空间 $V$，$V$ 上的一个正定的对称双线性函数称为 $V$ 上的一个内积。

]
习惯上把内积 $f ( alpha , beta )$ 记作 $( alpha , beta )$。

#statement("definition", title: [])[
设实数域 $bb(R)$ 上的一个线性空间 $V$，若给定了 $V$ 上的一个内积，那么称 $V$ 是一个实内积空间。有限维的实内积空间称为欧几里得 Euclid 空间，并且把线性空间 $V$ 的维数称为 Euclid 空间 $V$ 的维数。

]
===== 实内积空间中的度量概念
<ga-10-实内积空间中的度量概念>
#statement("definition", title: [])[
非负实数 $sqrt(( alpha , alpha ))$ 称为向量 $alpha$ 的长度，记作 $norm(alpha)$。

]
长度为 $1$ 的向量称为单位向量。如果 $alpha eq.not 0$，那么 $frac(alpha, norm(alpha))$ 是一个单位向量。把 $alpha$ 变成 $frac(alpha, norm(alpha))$ 称为把 $alpha$ 单位化。

#statement("theorem", title: [Cauchy - Schwarz 不等式])[
#metadata(()) <ga-index-38> 在实内积空间 $V$ 对任意向量 $alpha , beta$ 有 $ abs(( alpha , beta )) lt.eq norm(alpha) norm(beta) $ 等号成立当且仅当 $alpha , beta$ 线性相关。

]
#statement("proposition", title: [Cauchy 不等式])[
对于任意的两组实数 $alpha_1 , dots.h.c , alpha_n$ 与 $beta_1 , dots.h.c , beta_n$ 有 $ abs(a_1 b_1 + dots.h.c + a_n b_n) lt.eq sqrt(a_1^2 + dots.h.c + a_n^2) sqrt(b_1^2 + dots.h.c + b_n^2) $ 等号成立当且仅当 $( alpha_1 , dots.h.c , alpha_n )$ 与 $( beta_1 , dots.h.c , beta_n )$ 线性相关。

]
#statement("proposition", title: [Schwarz 不等式])[
对于任意的 $f , g in C [ a , b ]$ 有 $ abs(integral_a^b f ( x ) g ( x ) upright(d) x)^2 lt.eq abs(integral_a^b f^2 ( x ) upright(d) x) abs(integral_a^b g^2 ( x ) upright(d) x) $ 等号成立当且仅当 $( alpha_1 , dots.h.c , alpha_n )$ 与 $( beta_1 , dots.h.c , beta_n )$ 线性相关。

]
#statement("definition", title: [])[
实内积空间 $V$ 中，两个非零向量 $alpha$ 与 $beta$ 的夹角 $chevron.l alpha , beta chevron.r$ 规定为 $ chevron.l alpha , beta chevron.r colon.eq arccos frac(( alpha , beta ), norm(alpha) norm(beta)) $

]
#statement("definition", title: [])[
在实内积空间 $V$ 中，若 $( alpha , beta ) = 0$，那么称 $alpha$ 与 $beta$ 正交，记作 $alpha tack.t beta$。

]
#statement("proposition", title: [])[
在实内积空间 $V$ 中，三角形不等式成立，即对于任意的 $alpha , beta in V$ 有 $ norm(alpha + beta) lt.eq norm(alpha) + norm(beta) $

]
#statement("proposition", title: [])[
在实内积空间 $V$ 中，勾股定理成立，即如果 $alpha$ 与 $beta$ 正交，则 $ norm(alpha + beta)^2 = norm(alpha)^2 + norm(beta)^2 $

]
#statement("proposition", title: [])[
在实内积空间 $V$ 中，余弦定理成立，即对于三个非零向量 $alpha , beta , gamma$ 满足 $gamma = beta - alpha$，则 $ norm(gamma)^2 = norm(alpha)^2 + norm(beta)^2 - 2 norm(alpha) norm(beta) cos chevron.l alpha , beta chevron.r $

]
#statement("definition", title: [])[
设 $E$ 是一个非空集合，若其上存在映射 $d : E times E arrow.r bb(R)$，如果对任意 $x , y , z in E$ 都有 （1） 对称性：$d ( x , y ) = d ( y , x )$。 （2） 正定性：$d ( x , y ) gt.eq$0，等号成立当且仅当 $x = y$。 （3） 三角形不等式：$d ( x , z ) lt.eq d ( x , y ) + d ( y , z )$。 那么称 $d$ 是一个距离，称集合 $E$ 是一个度量空间，把 $d ( x , y )$ 称为 $x$ 与 $y$ 之间的距离。

]
#statement("definition", title: [])[
在 $n$ 维 Euclid 空间 $V$ 中，由 $n$ 个两两正交的非零向量组成的基称为 $V$ 的一个正交基，若该基皆为单位向量，称为 $V$ 的一个标准正交基。

]
由于内积是正定的对称双线性函数，因此 $V$ 中存在一个基 $eta_1 , dots.h.c , eta_n$ 使得内积在此基下的度量矩阵为单位矩阵 $I$。从而 $ ( eta_i , eta_j ) = delta_(i j) $ 因此 $eta_1 , dots.h.c , eta_n$ 是 $V$ 的一个标准正交基。

更具体的，取 $V$ 的一个基 $alpha_1 , dots.h.c , alpha_n$ 令 $beta_1 = alpha$，且 $ beta_n = alpha_n - sum_(j = 1)^(n - 1) frac(( alpha_n , beta_j ), ( beta_j , beta_j )) beta_j $ 则 $beta_1 , dots.h.c , beta_n$ 是 $V$ 的一个正交基。令 $ eta_i = frac(beta_i, norm(beta_i)) $ 则 $eta_1 , dots.h.c , eta_n$ 是 $V$ 的一个标准正交基。

第一步称为 Schmidt 正交化，第二步称为单位化。#metadata(()) <ga-index-39>

#statement("theorem", title: [])[
设 $eta_1 , dots.h.c , eta_n$ 是 $n$ 维 Euclid 空间 $V$ 的一个标准正交基，则对于任意的 $alpha in V$ 有 $ alpha = sum_(i = 1)^n ( alpha , eta_i ) eta_i $

]
即 $alpha$ 在标准正交基 $eta_1 , dots.h.c , eta_n$ 下的坐标的第 $i$ 个分量等于 $( alpha , eta_i )$。此式称为 $alpha$ 的 Fourier 展开，其中每个系数 $( alpha , eta_i )$ 都称为 $alpha$ 的 Fourier 系数。

#statement("definition", title: [])[
设实内积空间 $V , V'$，若存在双射 $sigma : V arrow.r V'$ 使得对于任意的 $alpha , beta in V$ 和 $k in bb(R)$ 有 $ sigma ( alpha + beta ) & = sigma ( alpha ) + sigma ( beta )\
sigma ( k alpha ) & = k sigma ( alpha )\
( alpha , beta ) & = ( sigma ( alpha ) , sigma ( beta ) ) $ 那么称 $sigma$ 是 $V arrow.r V'$ 的一个同构映射，此时称 $V$ 与 $V'$ 同构，记作 $V tilde.equiv V'$。

]
若 $sigma$ 保持加法和数量乘法，那么称为线性同构；若线性同构还保持内积，则称它为一个保距同构。

#statement("theorem", title: [])[
两个 Euclid 空间同构的充要条件是它们的维数相同。

]
== 正交补，正交投影
<ga-10-正交补正交投影>
#statement("definition", title: [])[
设实内积空间 $V$ 的一个非空子集 $S$。把 $V$ 中与 $S$ 中每一个向量都正交的所有向量的全体称作 $S$ 的正交补，记作 $S^tack.t$。即 $ S^tack.t colon.eq { alpha in V mid(|) ( alpha , beta ) = 0 } $

]
#statement("theorem", title: [])[
设实内积空间 $V$ 的一个有限维子空间 $U$，则 $ V = U xor U^tack.t $

]
设实内积空间 $V$ 的一个子空间，若 $V = U xor U^tack.t$，那么有平行于 $U^tack.t$ 在 $U$ 上的投影 $bold(P)_U$。我们把这个投影 $bold(P)_U$ 称作 $V$ 在 $U$ 上的正交投影；把 $alpha$ 在 $bold(P)_U$ 下的像 $alpha_1$ 称为 $alpha$ 在 $U$ 上的正交投影。此时 $alpha = alpha_1 + alpha_2$。

即 $ bold(P)_U ( alpha ) = alpha_1 arrow.l.r.double alpha - alpha_1 in U^tack.t $

#statement("theorem", title: [])[
设实内积空间 $V$ 的一个子空间 $U$，且 $V = U xor U^tack.t$，则对于 $alpha in V$，则 $alpha_1 = bold(P)_U ( alpha ) in U$ 的充要条件是 $ d ( alpha , alpha_1 ) lt.eq d ( alpha , gamma ) $

]
#statement("definition", title: [])[
#metadata(()) <ga-index-40> 设实内积空间 $V$ 的子空间 $U$，若对于 $alpha in V$ 存在 $delta in U$ 有 $ d ( alpha , delta ) lt.eq d ( alpha , gamma ) $ 那么称 $delta$ 是 $alpha$ 在 $U$ 上的最佳逼近元。

]
设实内积空间 $V$ 的一个无限维子空间 $U$，如果 $alpha in V$ 在 $U$ 上的最佳逼近元存在（此时必唯一），那么称 $delta$ 为 $alpha$ 在 $U$ 上的正交投影。如果 $V$ 中每个向量 $alpha$ 都有在 $U$ 上的正交投影 $delta$，那么把 $alpha$ 对应到 $delta$ 的映射称为 $V$ 在 $U$ 上的正交投影。

== 正交变换与对称变换
<ga-10-正交变换与对称变换>
#statement("definition", title: [])[
设实内积空间 $V$ 到自身的满射 $bold(A)$，如果保持向量的内积不变，即 $ ( bold(A) alpha , bold(A) beta ) = ( alpha , beta ) $ 那么称 $bold(A)$ 是 $V$ 上的一个正交变换。

]
#statement("proposition", title: [])[
正交变换 $bold(A)$ 具有特性：

（1） 保持向量长度。

（2） 保持两个非零向量的夹角不变。

（3） 保持正交性。

（4） 一定是线性变换。

（5） 保持向量间的距离不变。

（6） 一定是单射，一定可逆。

]
#statement("theorem", title: [])[
设 $n$ 为 Euclid 空间 $V$ 上的线性变换 $bold(A)$，$bold(A)$ 在 $V$ 的标准正交基下的矩阵为 $A$，则下列描述等价：

（1） $bold(A)$ 是正交变换。

（2） $bold(A)$ 把 $V$ 的标准正交基映成标准正交基。

（3） $A$ 是正交矩阵。

]
由于正交矩阵 $A$ 的行列式为 $plus.minus 1$，则把行列式为 $1$ 的矩阵称为第一类（或旋转），行列式等于 $- 1$ 的称为第二类的。

$n$ 维线性空间的任意一个 $n - 1$ 维子空间称为一个超平面。

#statement("definition", title: [])[
设 $n$ 维 Euclid 空间 $V$ 中的一个单位向量，$bold(P)$ 是 $V$ 在 $chevron.l eta chevron.r$ 上的正交投影，令 $ bold(A) = bold(I) - 2 bold(P) $ 则 $bold(A)$ 称为关于超平面 $chevron.l eta chevron.r^tack.t$ 的镜面反射。

]
#statement("definition", title: [])[
实内积空间 $V$ 上的变换 $bold(A)$ 如果满足 $ ( bold(A) alpha , beta ) = ( alpha , bold(A) beta ) $ 那么称 $bold(A)$ 是 $V$ 上的对称变换。

]
== \*酉空间
<ga-10-酉空间>
在复数域中引入度量概念。若复线性空间 $V$ 上的双线性函数 $f$ 具有性质 $ f ( alpha , beta ) = overline(f ( beta , alpha )) $ 这个性质称为 Hermite 性。

== \*正交空间与辛空间
<ga-10-正交空间与辛空间>
#statement("definition", title: [])[
设域 $F$ 上的线性空间 $V$ 上的一个对称双线性函数 $f$，那么称 $f$ 是 $V$ 上的一个内积（或度量），称 $V$ 是一个正交空间。用 $( V , f )$ 表示。

]
如果 $f$ 是非退化的，则称 $( V , f )$ 是正则的，否则称为非正则的。

#statement("definition", title: [])[
在正交空间 $( V , f )$ 中，如果 $f ( alpha , beta ) = 0$，那么称 $alpha$ 与 $beta$ 正交，记作 $alpha tack.t beta$。

]
在正交空间 $( V , f )$ 中，一个非零向量 $alpha$ 称为迷向的，如果 $f ( alpha , alpha ) = 0$，否则称为非迷向的。

正交空间 $( V , f )$ 包含一个迷向向量，则 $( V , f )$ 称为迷向的，否则为非迷向的。若 $V$ 中所有非零向量都是迷向的，则称为全迷向的。

== \*正交群，酉群，辛群
<ga-10-正交群酉群辛群>
#statement("definition", title: [])[
设 $G$ 是一个非空集合，若 $G$ 上的乘法运算满足

（1） 结合律：$a ( b c ) = ( a b ) c$。

（2） 单位元：存在 $e in G$ 使得 $e a = a e = a$。

（3） 逆元：任取 $a in G$ 总存在 $b in G$ 使得 $a b = b a = 1$。

那么称 $G$ 是一个群。

]
如果群 $G$ 的运算还满足交换律，那么称 $G$ 为交换群，或 Abel 群。
