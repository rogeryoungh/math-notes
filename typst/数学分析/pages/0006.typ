#import "../../template/environments.typ": statement

= 级数理论
<0006-级数理论>
== 数项级数的敛散性
<0006-数项级数的敛散性>
给定一个无穷数列 ${ a_n }$，称形式和 $ sum_(i = 1)^oo a_i = a_1 + a_2 + a_3 + dots.h.c $ 为无穷级数，其中 $a_i$ 记作通项或一般项。对于前 $n$ 项和，我们称 $S_n$ 为第 $n$ 个部分和。

若 $lim_(n arrow.r oo) S_n = S$ 存在且有限，则称级数级数 $sum a_i$ 收敛，否则就称级数发散。显然若级数 $sum a_i$ 收敛，则通项 $ a_n = S_n - S_(n - 1) arrow.r S - S = 0 quad ( n arrow.r oo ) $

#statement("theorem", title: [Cauchy 准则])[

给定级数 $sum a_i$，存在 $N = N ( epsilon )$ 使得当 $n > N$ 时有 $ abs(S_(n + p) - S_n) = abs(a_(n + p) + dots.h.c + a_(n + 1)) < epsilon $

]
显然级数的有限项不影响级数的敛散性，以下讨论均舍弃。

== 正项级数的敛散性
<0006-正项级数的敛散性>
若级数各项的符号都相同，则称为同号级数；进一步的，若皆为正号，则称为正项级数。由于 $0$ 并不影响收敛性，故以下讨论的正项级数可含 $0$。

#statement("theorem", title: [基本判别法])[

正项级数 $sum a_i$ 收敛的充要条件是：部分和数列 ${ S_n }$ 有界。

]
#statement("theorem", title: [比较原则])[

设正项级数 $sum a_i , sum b_i$，若存在正数 $N$，使得 $ a_i lt.eq b_i , quad forall n gt.eq N $ 那么

（1） 若级数 $sum b_i$ 收敛，则级数 $sum a_i$ 收敛。

（2） 若级数 $sum a_i$ 发散，则级数 $sum b_i$ 发散。

]
#statement("proof")[

设其部分和分别为 $A_i , B_i$。不妨假设 $N = 1$，即对数列的每项都成立。

（1） 显然有 $ A_i lt.eq B_i lt.eq B $ 即 $A_i$ 为单调有界数列，故必有极限 $A$，因此级数 $sum a_i$ 收敛。

（2） 其为（1）的逆否命题，也成立。

]
因此我们可以通过比较、放缩等手段，将待判级数和已知敛散性的级数进行比较。

一个重要的已知级数是等比级数，我们有三种判断手段。

#statement("theorem", title: [比式判别法])[

设 $sum a_i$ 是正项级数，却存在某正数 $N$ 和 $q ( 0 < q < 1 )$ 使得 $ a_(n + 1) \/ a_n lt.eq q , quad forall n gt.eq N $ 则级数 $sum a_i$ 收敛；若 $ a_(n + 1) \/ a_n gt.eq 1 , quad forall n gt.eq N $ 则级数 $sum a_i$ 发散。

（极限形式）且 $ lim_(n arrow.r oo) a_(n + 1) / a_n = q $ 则当 $q < 1$ 时，级数收敛；$q > 1$ 时，级数发散。

]
#statement("proof")[

（1） 不妨设 $N = 1$，则有 $a_n lt.eq q^(n - 1) a_1$。而等比级数显然是收敛的，故收敛。

（2） 显然当 $n > N_0$ 时 $a_n gt.eq n_0 > 0$，其每项的极限不趋于 $0$，故发散。

（极限形式）由极限知，我们取 $epsilon = frac(abs(1 - q), 2)$，存在正数 $N$ 使得当 $n > N$ 时有 $ q - epsilon < a_(n + 1) / a_n < q + epsilon $

当 $q < 1$ 时，显然 $q + epsilon = frac(1 + q, 2) < 1$，由比式判别法知收敛。

当 $q > 1$ 时，$q - epsilon = frac(1 + q, 2) > 1$，由比式判别法知发散。

]
#statement("theorem", title: [Cauchy 判别法（根式判别法）])[

设 $sum a_i$ 是正项级数，且存在正数 $N$ 和正常数 $q$ 使得 $ root(n, a_n) lt.eq q < 1 , forall n > N $ 则级数收敛；若 $ root(n, a_n) gt.eq 1 , forall n > N $ 则级数发散。

]
#statement("proof")[

（1） 不妨设 $N = 1$，显然 $a_n lt.eq q^n$，由等比级数收敛知原级数也收敛。

（2） 显然 $a_n gt.eq 1^n = 1$，故发散。

]
#statement("theorem", title: [积分判别法])[

设 $f$ 是 $[ 1 , oo )$ 上的减函数，则级数 $sum f ( i )$ 收敛的充分必要条件是反常积分 $integral_1^(+ oo) f ( x ) upright(d) x$ 收敛。

]
#statement("proof")[

假设级数收敛于 $S$，由收敛的性质知，$lim_(n arrow.r oo) f ( n ) = 0$，故 $f$ 非负。进而对任意正整数 $N$ 有 $ integral_1^N f ( x ) upright(d) x = sum_(n = 2)^N integral_(n - 1)^n f ( x ) upright(d) x lt.eq sum_(n = 1)^(N - 1) f ( n ) lt.eq sum_(n = 1)^oo f ( n ) = S $ 考虑对 $M in ( N , N + 1 ]$，都有 $ 0 lt.eq integral_1^M f ( x ) upright(d) x lt.eq integral_1^(N + 1) f ( x ) upright(d) x lt.eq S $ 因此该反常积分收敛。

反之，设反常积分。。。不想证了 TODO

]
#statement("theorem", title: [Kummer])[

设 $sum a_i , sum b_i$ 为正项级数，若 $n$ 充分大时有 $ 1 / b_n dot.op a_n / a_(n + 1) - 1 / b_(n + 1) gt.eq lambda > 0 $ 则 $sum a_n$ 收敛；若 $ 1 / b_n dot.op a_n / a_(n + 1) - 1 / b_(n + 1) lt.eq 0 $ 且 $sum b_n$ 发散，则 $sum a_n$ 发散。

]
#statement("proof")[

（1） 条件即 $ a_(n + 1) lt.eq 1 / lambda (a_n / b_n - a_(n + 1) / b_(n + 1)) $ 设 $S_n$ 是 $a_n$ 的和函数，有 $ S_(n + 1) lt.eq S_N + 1 / lambda (a_N / b_N - a_(n + 1) / b_(n + 1)) lt.eq S_N + 1 / lambda a_N / b_N $ 从而 $S_N$ 有上界，故收敛。

（2） 可知 $ 1 / b_n dot.op a_n / a_(n + 1) - 1 / b_(n + 1) lt.eq 0 arrow.r.double a_1 / b_1 lt.eq dots.h.c lt.eq a_n / b_n lt.eq a_(n + 1) / b_(n + 1) $ 故 $a_n gt.eq a_1 / b_1 b_n$，由 $sum b_n$ 知 $sum a_n$ 也发散。

]
当 $b_n = 1$ 时即得比值判别法；取 $b_n = 1 / n$ 就是 Raabe 判别法；取 $b_n = frac(1, n ln n)$，则得 Gauss 判别法。

#statement("theorem", title: [Cauchy 凝聚判别法])[

设 $a_n$ 单调递减趋于 $0$。则 $sum a_n$ 收敛当且仅当 $sum 2^k a_(2^k)$ 收敛。

]
=== 常见级数的收敛性
<0006-常见级数的收敛性>
#statement("theorem")[

级数 $sum 1 / n^p$ 在 $p > 1$ 时收敛，$p lt.eq 1$ 时发散。

]
#statement("proof")[

定义函数 $f ( x ) = 1 / n^p$，由于 $f$ 当 $p > 0$ 时在 $[ 1 , oo )$ 上单调递减，则由积分判别法知 $ integral_1^(+ oo) f ( x ) upright(d) x = integral_1^(+ oo) 1 / x^p upright(d) x $ 因此 $p > 1$ 时收敛，$p lt.eq 1$ 时发散。

]
== 一般项级数收敛判别法
<0006-一般项级数收敛判别法>
若级数 $sum a_n$ 各项绝对值组成的级数 $sum abs(a_n)$ 收敛，那么称原级数绝对收敛；若原级数收敛，绝对值级数不收敛，则称为条件收敛。

更神秘的判别法，比如 Abel 判别法、Dirichlet 判别法感觉不太用得到，跳过。

=== 交错级数
<0006-交错级数>
在 Taylor 公式中，我们经常得到正负项交替出现的级数，我们称为交错级数。

#statement("theorem", title: [Leibniz 判别法])[

若 $a_n$ 单调递减趋于 $0$，则级数 $sum ( - 1 )^(n - 1) a_n$ 收敛。

]
#statement("proof")[

懒得证了，TODO。大致思想是注意到 $S_(2 m - 1)$ 和 $S_(2 m)$ 分别是单减和单增的，从而 $[ S_(2 m - 1) , S_(2 m) ]$ 是退缩区间套。

]
== 函数项级数的一致收敛
<0006-函数项级数的一致收敛>
设 $f_1 , f_2 , dots.h.c$ 是 $E$ 上的函数列，记为 ${ f_i }$。若带入 $x = x_0$ 使得函数列的值收敛，则称函数列在点 $x_0$ 收敛，$x_0$ 称为函数列的收敛点；反之若发散，则称发散点。

若函数列在 $D subset E$ 上每一点都收敛，则称其在数集 $D$ 上收敛。此时对函数上每一点 $x$，都有一个极限值与之对应，称为函数列的极限函数。记为 $ lim_(n arrow.r oo) f_n ( x ) = f ( x ) $ 函数列的全体收敛点集，称为收敛域。

用 $epsilon - N$ 语言表示即：对任意固定的 $x in D$，任给 $epsilon$ 恒存在 $N ( epsilon , x )$ 使得当 $n > N$ 时有 $ abs(f_n ( x ) - f ( x )) < epsilon $ 则称 $lim_(n arrow.r oo) f_n ( x ) = f ( x )$。

对于函数列，我们不仅要讨论其收敛域，还需要更多的性质，比如连续性、导数、积分是否在极限下不变。

#statement("definition")[

若对于函数列 ${ f_n }$ 对任给的正数 $epsilon$ 总存在某一正整数 $N ( epsilon )$ 使得当 $n > N$ 时对一切 $x in D$ 都有 $ abs(f_n ( x ) - f ( x )) < epsilon $ 则称函数列一致收敛于 $f$，记作 $ f_n ( x ) arrows.rr f ( x ) ( n arrow.r oo ) $

]
一致收敛是比收敛更强的性质。反之，存在 $epsilon$ 使得对任何 $N$ 都有 $x ( N )$ 和 $n ( N ) > N$ 使得 $ abs(f_n ( x ) - f ( x )) gt.eq epsilon $ 则称其不一致收敛。

#statement("theorem", title: [函数列一致收敛 Cauthy 准则])[

给定函数列 ${ f_n }$ 在 $D$ 上一致收敛的充要条件是：对任给 $epsilon > 0$ 都存在正数 $N$ 使得 $n , m > N$ 时，对一切 $x in D$ 都有 $ abs(f_n ( x ) - f_m ( x )) < epsilon $

]
#statement("proof")[

先证必要性，已知 $f_n ( x ) arrows.rr f ( x )$，显然我们可以取 $epsilon / 2$ 使得 $ abs(f_n ( x ) - f_m ( x )) lt.eq abs(f_n ( x ) - f ( x )) + abs(f_m ( x ) - f ( x )) < epsilon / 2 + epsilon / 2 = epsilon $

再证必要性，考察每个点由 Cauthy 定理知其收敛，故一致收敛。

]
#statement("definition")[

若函数列 ${ f_n }$ 定义在区间 $I$ 上，若对任意闭区间 $[ a , b ] subset I$，函数列在 $[ a , b ]$ 上一致收敛于 $f$，则称 ${ f_n }$ 在函数列上一致收敛。

]
对于函数列，我们也可以定义函数项级数，和其部分和数列。

== 幂级数初步
<0006-幂级数初步>
接下来主要讨论幂函数序列 ${ a_n ( x - x_0 )^n }$ 所产生的函数项级数 $ sum_(n = 0)^oo = a_0 + a_1 ( x - x_0 ) + a_2 ( x - x_0 )^2 + dots.h.c $ 记作幂级数，接下来主要讨论 $x_0 = 0$。

#statement("theorem")[

若幂级数 $sum f_i x^i$ 在 $x = x_1 eq.not 0$ 处收敛，则对任何 $abs(x) < abs(x_1)$ 幂级数都绝对收敛；若幂级数在 $x = x_1$ 处发散，则对任何 $abs(x) > abs(x_1)$ 幂级数都发散。

]
#statement("proof")[

设 $sum f_i x_1^i$ 收敛，则 ${ f_i x_1^i }$ 收敛于 $0$ 且有界，那么对任意 $abs(x) < abs(x_1)$ 其仍收敛于 $0$ 且有界，且每一项都严格小于 ${ f_i x_1^i }$，因此绝对收敛。

那么若 $x_1$ 处发散，假如存在 $abs(x_2) > abs(x_1)$ 使得收敛，则由前证矛盾，故收敛。

]
因此幂级数的收敛域是关于原点对称的区间，我们记区间长度为 $2 R$，那么收敛半径为 $R$。对于 $x = plus.minus R$ 处，级数可能收敛，也可能不收敛。

#statement("theorem")[

对于幂级数 $sum f_i x^i$ 若 $ lim_(n arrow.r oo) root(n, abs(a_n)) = rho $

- 若 $rho = 0$ 时，幂级数的收敛半径是 $R = + oo$。

- 若 $rho > 0$ 时，幂级数的收敛半径是 $R = 1 / rho$。

- 若 $rho = oo$ 时，幂级数的收敛半径是 $R = 0$。

]
== 求和函数的一些方法
<0006-求和函数的一些方法>
求和函数主要以配凑为主，需要一定的积累。

=== 多项式系数
<0006-多项式系数>
首先观察公式 $ frac(1, 1 - x) & = sum_(n = 0)^oo x^n\
frac(1, ( 1 - x )^2) & = sum_(n = 0)^oo ( n + 1 ) x^n\
frac(2, ( 1 - x )^2) & = sum_(n = 0)^oo ( n + 1 ) ( n + 2 ) x^n $ 推广有 $ frac(1, ( 1 - x )^k) = sum_(n = 0)^oo binom(n + k - 1, k - 1) x^n $ 因此把系数配凑为类似下降阶乘的形式即可。

=== 存在分母
<0006-存在分母>
主要从以下函数寻找灵感。 $ - ln ( 1 - x ) & = sum_(n = 1)^oo x^n / n\
arctan x & = sum_(n = 0)^oo ( - 1 )^n frac(x^(2 n + 1), 2 n + 1)\
1 / 2 ln (frac(1 + x, 1 - x)) & = sum_(n = 0)^oo frac(x^(2 n + 1), 2 n + 1)\
 $

== Fourier 级数
<0006-fourier-级数>
函数列 $ 1 , quad cos x , quad sin x , quad cos 2 x , quad sin 2 x , dots.h.c $ 称为三角函数系，若这一列的函数记为 ${ phi_i ( x ) }$ 则 $ integral_(- pi)^pi phi_i ( x ) phi_j ( x ) upright(d) x = 0 , quad forall i eq.not j $ 这个性质称为三角函数系的正交性。有限和 $ a_0 + sum_(k = 1)^n ( a_k cos k x + b_k sin k x ) $ 称为三角多项式，而形式和 $ a_0 + sum_(k = 1)^oo ( a_k cos k x + b_k sin k x ) $ 称为三角级数，其中 $a_0 , a_k , b_k$ 称为三角函数的系数。

#statement("definition")[

假设 $f$ 是一个周期为 $2 pi$ 的 Riemann 可积函数，令 $ a_k = 1 / pi integral_(- pi)^pi f ( x ) cos k x upright(d) x , quad b_k = 1 / pi integral_(- pi)^pi f ( x ) sin k x upright(d) x $ 其中 $a_0 , a_k , b_k$ 称为 $f$ 的 Fourier 级数，形式和 $ a_0 / 2 + sum_(k = 1)^oo ( a_k cos k x + b_k sin k x ) $ 称为 $f$ 的 Fourier 级数或者 Fourier 展开。

]
比如 $ x & = sum_(k = 1)^oo 2 / k ( - 1 )^(k + 1) sin k x , quad & - pi lt.eq x lt.eq pi\
x^2 & = pi^2 / 3 + sum_(k = 1)^oo 4 / k^2 ( - 1 )^k cos k x , quad & - pi lt.eq x lt.eq pi\
 $

一般的，对于周期为 $[ - l , l ]$ 的函数 $f ( x )$，则其 Fourier 级数展开式为 $ f ( x ) = a_0 / 2 + sum_(n = 1)^oo (a_n cos frac(n pi x, l) + b_n sin frac(n pi x, l)) $ 其中 $ a_n = 1 / l integral_(- l)^l f ( x ) cos frac(n pi x, l) upright(d) x , quad b_n = 1 / l integral_(- l)^l f ( x ) sin frac(n pi x, l) upright(d) x $
