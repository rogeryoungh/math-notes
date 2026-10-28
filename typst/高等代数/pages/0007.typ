#import "../../template/environments.typ": statement

= 多项式环
<ga-7-多项式环>
== 一元多项式环
<ga-7-一元多项式环>
#statement("definition", title: [一元多项式])[
#metadata(()) <ga-index-12> 数域 $K$ 上的一元多项式是指如下述的表达式 $ a_n x^n + dots.h.c + a_1 x + a_0 $ 其中 $x$ 是一个符号（它不属于 $K$）称为不定元，$n$ 是非负整数，$a_i in K ( i = 0 , dots.h.c , n )$ 称为系数，$a_i x^i$ 称为 $i$ 次项（$i = 1 , dots.h.c , n$），$a_0$ 称为零次项或常数项。

]
两个这种形式的表达式相等规定为它们含有完全相同的项。此时符号 $x$ 为不定元。系数全为 $0$ 的多项式称为零多项式，记作 $0$。

因此两个一元多项式相等当且仅当它们的同次项都对应相等相等，即一元多项式 的表示方式是唯一的。

我们常常用 $f ( x ) , g ( x ) , h ( x ) , dots.h.c$ 或 $f , g , h , dots.h.c$ 表示一元多项式。

一元多项式的重要特点是它有次数概念。设 $ f ( x ) = a_n x^n + dots.h.c + a_1 x + a_0 $ 如果 $a_n eq.not 0$，那么称 $a_n x^n$ 是 $f ( x )$ 的首项，称 $n$ 是 $f ( x )$ 的次数，记作 $deg f ( x )$。

零多项式的次数定义为 $- oo$，并且规定对于任意 $n in bb(N)$ $ ( - oo ) + ( - oo ) colon.eq - oo $ $ ( - oo ) + n colon.eq - oo $ $ - oo < n $

数域 $K$ 上所有一元多项式组成的集合记作 $K [ x ]$。在 $K [ x ]$ 中可以定义加法和乘法运算。

设 $f ( x ) = sum_(i = 0)^n a_i x^i , g ( x ) = sum_(i = 0)^m b_i x^i$，不妨设 $m lt.eq n$，令 $ f ( x ) + g ( x ) colon.eq sum_(i = 0)^n ( a_i + b_i ) x^i $ $ f ( x ) g ( x ) colon.eq sum_(s = 0)^(m + n) (sum_(i + j = s) a_i b_j) $

不难验证，一元多项式 的加法满足交换律、结合律。同样，其适合消去律 $ f ( x ) g ( x ) = f ( x ) h ( x ) and med f ( x ) eq.not 0 arrow.r.double g ( x ) = h ( x ) $

===== 环的基本概念
<ga-7-环的基本概念>
集合 $S$ 上的一个代数运算，是指 $S times S$ 到 $S$ 的一个映射。

#statement("definition", title: [环])[
#metadata(()) <ga-index-13> 设 $R$ 是一个非空集合，如果其上定义了加法和乘法两个代数运算，并且满足如下六条运算法则，其中 $forall a , b , c in R$：

\1. 加法结合律 $( a + b ) + c = a + ( b + c )$。

\2. 加法交换律 $a + b = b + a$。

\3. 在 $R$ 中有元素 $0$，使得 $a + 0 = a$，称 $0$ 为 $R$ 的零元素。

\4. 对于 $a$，在 $R$ 中有元素 $d$，使得 $a + d = 0$，称 $d$ 是 $a$ 的负元素，记作 $- a$。

\5. 乘法结合律 $( a b ) c = a ( b c )$。

\6. 乘法对于加法的分配律 $a ( b + c ) = a b + a c , ( b + c ) a = b a + c a$

那么称 $R$ 是一个环。

]
#statement("theorem", title: [])[
环 $R$ 中的零元素是唯一的，元素 $a$ 的负元素是唯一的。

]
于是环上可以定义减法： $ a - b colon.eq a + ( - b ) $

若环中的乘法还满足交换律，则称 R 为交换环。

若环 R 中有一个元素 $e$ 具有性质： $ e a = a e = a , forall a in R $ 则称 $e$ 是 $R$ 的单位元，此时称 $R$ 是有单位的单位环。不难证明，在有单位元的环 $R$ 中，单位元是唯一的，通常记其为 $1$。

如果 $R$ 中有元素 $a$ 对于给定的 $b eq.not 0$ 使得 $a b = 0$，则称 $a$ 为一个左零因子。左、右零因子都简称为零因子。若存在元素 $0$ 使得 $ 0 a = a 0 = 0 , forall a in R $ 则称 $a$ 为平凡的零因子，其余的则称为非平凡的。

若环 $R$ 中没有平凡的零因子，那么称 $R$ 是无零因子环。有单位元 $1 ( eq.not 0 )$ 的无零因子的交换环称为整环。$bb(Z) , K , K [ x ]$ 都是整环；$M_n ( K )$ 不是整环，因为它不满足乘法交换律，且它有非平凡的零因子。

若环 $R$ 的一个非空子集 $R_1$ 对于 $R$ 的加法和乘法也称为一个环，那么称 $R_1$ 是 $R$ 的一个子环。明显有 $R_1$ 对加法和乘法封闭。

#statement("theorem", title: [])[
环 $R$ 的非空子集 $R_1$ 为子环的充要条件为 $R_1$ 对减法与乘法封闭。

]
#statement("definition", title: [])[
设具有单位元 $1'$ 的交换环 $R$ 有一个子环 $R_1$，若满足

\1. $1' in R_1$。

\2. 双射 $tau : K arrow.r R_1$，且 $tau$ 保持加法与乘法运算。

那么 $R$ 可看作 $K$ 的一个扩环

]
双射 $tau$ 具有性质：$tau ( 1 ) = 1'$。

#statement("theorem", title: [])[
设 $K$ 是一个数域，$R$ 是 $K$ 的一个扩环，任意给定 $t in R$，令 $ sigma_t : K [ x ] & arrow.r R , f ( x ) = sum_(i = 0)^n a_i x^i & mapsto f ( t ) colon.eq sum_(i = 0)^n tau ( a_i ) t^i $ 则 $sigma_t$ 是 $K [ x ]$ 到 $R$ 的一个映射，且 $sigma_t$ 保持加法和乘法运算。有 $sigma_t ( x ) = t$。映射 $sigma_t$ 称为 $x$ 用 $t$ 代入。

]
== 整除关系，带余除法
<ga-7-整除关系带余除法>
设 $f ( x ) , g ( x ) in K [ x ]$，如果存在 $h ( x ) in K [ x ]$，使得 $f ( x ) = h ( x ) g ( x )$，那么称 $g ( x )$ 整除 $f ( x )$，记作 $g ( x ) divides f ( x )$；否则记 $g ( x ) divides.not f ( x )$。称 $g ( x )$ 是 $f ( x )$ 的一个隐式，$f ( x )$ 是 $g ( x )$ 的一个倍式。

整除是集合 $K [ x ]$ 中的一个二元关系，它具有反身性和传递性。#metadata(()) <ga-index-14>

#statement("definition", title: [])[
若 $f ( x ) divides g ( x )$ 且 $g ( x ) divides f ( x )$，那么称 $f ( x )$ 与 $g ( x )$ 相伴，记作 $f ( x ) tilde.op g ( x )$。

]
即 $f ( x ) tilde.op g ( x )$ 当且仅当存在 $c in K^(*)$ 使得 $f ( x ) = c g ( x )$。

#statement("definition", title: [带余除法])[
设 $f ( x ) , g ( x ) in K [ x ]$，且 $g ( x ) eq.not 0$，则在 $K [ x ]$ 中存在唯一的一对多项式 $h ( x ) , r ( x )$，使得 $ f ( x ) = h ( x ) g ( x ) + r ( x ) , deg r ( x ) < deg g ( x ) $ 其中 $f ( x ) , g ( x )$ 分别叫做被除式、除式。$h ( x ) , r ( x )$ 分别叫商式、余式。此式称为除法算式。

]
整数环 $bb(Z)$ 中也有带余除法。

#statement("theorem", title: [])[
任给 $a , b in bb(Z) , b eq.not 0$，则存在唯一的一对整数 $q , r$，使得 $ a = q b + r , 0 lt.eq r < abs(b) $

]
== 最大公因式
<ga-7-最大公因式>
在 $K [ x ]$ 中，若 $c ( x ) divides f ( x )$ 且 $c ( x ) divides g ( x )$，则称 $c ( x )$ 是 $f ( x )$ 与 $g ( x )$ 的一个公因式。

#statement("definition", title: [])[
$K [ x ]$ 中多项式 $f ( x )$ 与 $g ( x )$ 的一个公因式 $d_0 ( x )$ 如果满足：对于任意的公因式 $d ( x )$，都有 $d ( x ) divides d_0 ( x )$，那么称 $d_0 ( x )$ 是 $f ( x )$ 的一个最大公因式。

]
显然两个最大公因式总是相伴的。首项系数为 $1$ 的最大公因式称为 $f ( x )$ 与 $g ( x )$ 的首一最大公因式，用 $gcd ( f ( x ) , g ( x ) )$ 或直接表述为 $( f ( x ) , g ( x ) )$。

#statement("lemma", title: [])[
在 $K [ x ]$ 中，如果有 $ f ( x ) = h ( x ) g ( x ) + r ( x ) $ 那么 $ {f ( x ) med upright("与") med g ( x ) med upright("的最大公因式")} = {g ( x ) med upright("与") med r ( x ) med upright("的最大公因式")} $

]
于是可以用辗转相除法求出 $f ( x )$ 与 $g ( x )$ 的最大公因式，其中 $g ( x ) eq.not 0$。

#statement("theorem", title: [])[
对于 $K [ x ]$ 中任意两个多项式 $f ( x )$ 与 $g ( x )$，存在它们的一个最大公因式 $d ( x )$，并且存在 $u ( x ) , v ( x ) in K [ x ]$ 使得 $ d ( x ) = u ( x ) f ( x ) + v ( x ) g ( x ) $

]
#statement("definition", title: [])[
$K [ x ]$ 中若 $gcd ( f ( x ) , g ( x ) ) = 1$，那么称 $f ( x )$ 与 $g ( x )$ 互素。

]
于是

#statement("definition", title: [])[
$K [ x ]$ 中多项式 $f ( x ) , g ( x )$ 互素的充要条件是：存在 $u ( x ) , v ( x ) in K [ x ]$，使得 $ u ( x ) f ( x ) + v ( x ) g ( x ) = 1 $

]
== 不可约多项式，唯一因式分解定理
<ga-7-不可约多项式唯一因式分解定理>
下文中，$f ( x )$ 为 $K [ x ]$ 中一个次数大于 $0$ 的多项式。

#statement("definition", title: [])[
若 $f ( x )$ 在 $K [ x ]$ 中的因式只有 $K$ 中的非零数和 $f ( x )$ 的相伴元，则称 $f ( x )$ 是数域 $K$ 上的一个不可约多项式，否则称为可约的。

]
#statement("theorem", title: [])[
设 $p ( x )$ 是 $K [ x ]$ 中一个次数大于 $0$ 的多项式，则下列命题等价。

（1） $p ( x )$ 是不可约多项式；

（2） $forall f ( x ) in K [ x ]$，有 $p ( x ) divides f ( x )$ 或 $( p ( x ) , f ( x ) ) = 1$；

（3） 在 $K [ x ]$ 中，从 $p ( x ) divides f ( x ) g ( x )$ 可推出 $ p ( x ) divides f ( x ) or p ( x ) divides g ( x ) $

（4） $p ( x )$ 不能分解为两个多项式之积。

]
#statement("theorem", title: [])[
$f ( x )$ 能够唯一的分解为数域 $K$ 上有限多个不可约多项式的乘积。

]
在整数环 $bb(Z)$ 中也有唯一因子分解定理。

#statement("definition", title: [])[
一个大于 $1$ 的整数 $m$，如果其正因数只有 $1$ 和它自身，那么称 $m$ 是一个素数；否则称 $m$ 为合数。

]
#statement("theorem", title: [])[
设 $p$ 为大于 $1$ 的整数，则下列命题等价

（1） $p$ 是一个素数。

（2） 对任意整数 $a$，都有 $p divides a$ 或 $( p , a ) = 1$；

（3） 在 $bb(Z)$ 中，从 $p divides a b$ 可推出 $p divides a$ 或 $p divides b$；

（4） $p$ 不能分解为两个较小的正整数之积。

]
#statement("theorem", title: [算术基本定理])[
任意大于 $1$ 的整数 $a$ 都能唯一的分解为有限多个素数的乘积。

]
== 重因式
<ga-7-重因式>
#statement("definition", title: [])[
$K [ x ]$ 中，不可约多项式 $p ( x )$ 如果满足 $p^k ( x ) divides f ( x )$ 而 $p^(k + 1) ( x ) divides f ( x )$，则 $p ( x )$ 称为 $f ( x )$ 的 $k$ 重因式，

]
当 $k = 1$ 时，称 $p ( x )$ 是 $f ( x )$ 的单因式。

#statement("definition", title: [])[
对于 $K [ x ]$ 中的多项式 $ f ( x ) = a_n x^n + a_(n - 1) x^(n - 1) + dots.h.c a_1 x + a_0 $ 我们定义 $f ( x )$ 的导数 $ f' ( x ) colon.eq n a_n x^(n - 1) + ( n - 1 ) a_(n - 1) x^(n - 2) + dots.h.c a_1 $

]
显然一个 $n$ 次多项式的导数是一个 $n - 1$ 次多项式；它的 $n$ 阶导数是 $K$ 中的一个非零数。

#statement("theorem", title: [])[
在 $K [ x ]$ 中，不可约多项式 $p ( x )$ 是 $f ( x )$ 的一个 $k gt.eq 1$ 次重因式，则 $p ( x )$ 是 $f' ( x )$ 的一个 $k - 1$ 重因式。特别的，$f ( x )$ 的单因式不是 $f' ( x )$ 的因式。

]
== 多项式的根
<ga-7-多项式的根>
#statement("theorem", title: [])[
在 $K [ x ]$ 中，用 $x - a$ 去除 $f ( x )$ 所得的余式是 $f ( a )$。

]
显然有

#statement("theorem", title: [Bezout 定理])[
在 $K [ x ]$ 中，$x - a$ 是 $f ( x )$ 的一次因式当且仅当 $a$ 是 $f ( x )$ 在 $K$ 中的一个根。

]
#statement("theorem", title: [])[
在 $K [ x ]$ 中，设 $f ( x )$ 与 $g ( x )$ 的次数都不超过 $n$，如果 $K$ 中有 $n + 1$ 个不同的数 $c_1 , dots.h.c , c_(n + 1)$ 使得 $f ( c_i ) = g ( c_i )$，则 $f ( x ) = g ( x )$。

]
该定理说明了一元多项式 $f ( x )$ 与多项式函数 $f$ 等同看待。即映射 $f : a mapsto t o f ( a ) , forall a in K$，称为由多项式 $f ( x )$ 诱导的多项式函数，即 $K$ 上的一元多项式函数。

把数域 $K$ 上所有一元多项式函数组成的集合记作 $K_(upright(p o l))$，在此集合中规定 $ ( f + g ) ( a ) colon.eq f ( a ) + g ( a ) , quad ( f g ) ( a ) colon.eq f ( a ) g ( a ) $ 即 $K_(upright(p o l))$ 是一个有单位元的交换环，称它为 $K$ 上的一元多项式函数环。

#statement("definition", title: [])[
设 $R$ 和 $R'$ 两个环，存在双射 $sigma : R arrow.r R'$，它保持加法和乘法运算，那么称 $sigma$ 是环 $R$ 到 $R'$ 的一个同构映射。此时称 $R$ 与 $R'$ 同构，记作 $R tilde.equiv R'$。

]
对于数域 $K$ 上，显然有 $ K [ x ] tilde.equiv K_(upright(p o l)) $ 从而可以把数域 $K$ 上的一元多项式 $f ( x )$ 与数域 $K$ 上的一元多项式函数 $f$ 等同起来。

现在研究复数域上的不可约多项式有哪些。设 $ f ( x ) colon.eq a_n x^n + dots.h.c + a_1 x + a_0 in bb(C) [ x ] $ 且 $deg f ( x ) = n > 0$，假如 $f ( x )$ 没有负根，则 $forall z in bb(C)$，有 $f ( z ) eq.not 0$.于是函数 $ Phi ( z ) = frac(1, f ( z )) $ 的定义域为 $bb(C)$。可以验证，$Phi ( z )$ 在复平面 $bb(C)$ 的每一个点都有导数，此时称 $Phi ( z )$ 在 $bb(C)$ 上解析。

#statement("theorem", title: [代数基本定理])[
每一个次数大于 $0$ 的复系数多项式至少有一个复根。

]
#statement("theorem", title: [])[
每一个次数大于 $0$ 的复系数多项式在复数域上都可以唯一的分解成一次因式的乘积。

]
回到定理：数域 $K$ 上次数不超过 $n$ 的多项式被它在 $K$ 中的 $n + 1$ 个不同元素的值唯一的确定。

#statement("theorem", title: [])[
设 $c_0 , dots.h.c , c_n$，数域 $K$ 中 $n + 1$ 个不同的数 $d_0 , dots.h.c , d_n in K$，则 $K [ x ]$ 中存在唯一的一个次数不超过 $n$ 的多项式 $f ( x )$ 使得$f ( c_i ) = d_i$。

]
#statement("proof", title: [])[
构造 $ f ( x ) = sum_(i = 0)^n d_i frac(( x - c_0 ) dots.h.c ( x - c_(i - 1) ) ( x - c_(i + 1) ) dots.h.c ( x - c_n ), ( c - c_0 ) dots.h.c ( c - c_(i - 1) ) ( c - c_(i + 1) ) dots.h.c ( c - c_n )) $ 不难验证 $f ( c_j ) = d_j$。

]
构造出的多项式 $f ( x )$ 称为 Lagrange 插值公式。类似的还有 Newton 插值公式。 $ f ( x ) = u_0 + u_1 ( x - c_0 ) + u_2 ( x - c_0 ) ( x - c_1 ) + dots.h.c + u_n ( x - c_0 ) dots.h.c ( x - c_(n - 1) ) $ 其中系数 $u_i$ 可以用待定系数法求出。不过既然都待定系数了，直接设 $ f ( x ) = a_n x^n + dots.h.c a_1 x + a_0 $ 解方程组即可，其的系数行列式是 Vandermonde 行列式，于是必有解。

== 实数域上的不可约多项式 · 实系数多项式的根
<ga-7-实数域上的不可约多项式-实系数多项式的根>
#statement("theorem", title: [])[
设 $f ( x )$ 是实系数多项式，如果 $c$ 是 $f ( x )$ 的一个复根，那么 $overline(c)$ 也是 $f ( x )$ 的一个复根。

]
#statement("theorem", title: [])[
实数域上的不可约多项式只有一次多项式和判别式小于 $0$ 的二次多项式。

]
#statement("theorem", title: [])[
每一个次数大于 $0$ 的实系数多项式 $f ( x )$ 在实数域上都可以唯一地分解称一次因式与判别式小于 $0$ 的二次因式的乘积。

]
== 有理数域上的不可约多项式
<ga-7-有理数域上的不可约多项式>
#statement("definition", title: [])[
一个非零的整系数多项式 $g ( x )$，如果它的各项系数的最大公因数只有 $plus.minus 1$，则称 $g ( x )$ 是一个本原多项式。

]
显然两个本原多项式 $g ( x ) , h ( x )$ 在 $bb(Q) [ x ]$ 中相伴当且仅当 $g ( x ) = plus.minus h ( x )$。

#statement("theorem", title: [Gauss 引理])[
两个本原多项式的乘积还是本原多项式。

]
#statement("theorem", title: [])[
设 $ f ( x ) = a_n x^n + a_(n - 1) x^(n - 1) + dots.h.c + a_1 x + a_0 $ 是一个次数 $n$ 大于 $0$ 的整系数多项式。若 $p \/ q$ 是 $f ( x )$ 的一个有理根，其中 $p , q$ 互素，则 $p divides a_n , q divides a_0$。

]
#statement("theorem", title: [Eisenstein 判别法])[
设 $ f ( x ) = a_n x^n + a_(n - 1) x^(n - 1) + dots.h.c + a_1 x + a_0 $ 是一个次数 $n$ 大于 $0$ 的本原多项式。若存在素数 $p$ 使得

\1. $p divides a_i , i = 0 , dots.h.c n - 1$

\2. $p divides.not a_n and p^2 divides.not a_0$。

那么 $f ( x )$ 在 $bb(Q)$ 上不可约。

]
#statement("theorem", title: [])[
设 $ f ( x ) = a_n x^n + a_(n - 1) x^(n - 1) + dots.h.c + a_1 x + a_0 $ 是一个次数 $n$ 大于 $0$ 的整系数多项式。若存在素数 $p$ 使得 $ p divides a_i , i = 1 , dots.h.c , n , p divides.not a_0 and p^2 divides.not a_n $ 则 $f ( x )$ 在 $bb(Q)$ 上不可约。

]
== 多元多项式环
<ga-7-多元多项式环>
#statement("definition", title: [])[
设 $K$ 是一个数域，用不属于 $K$ 的 $n$ 个符号 $x_1 , dots.h.c , x_n$ 作表达式 $ sum_(i_1 , dots.h.c , i_n) a_(i_1 , dots.h.c , i_n) x_1^(i_1) dots.h.c x_n^(i_n) $ 其中 $a_(i_1 dots.h.c i_n) in K$ 称为系数，表达式每一项称为单项式。两个这种形式的表达式相等当且仅当他们除去系数为 $0$ 的单项式外含有完全相同的单项式。

]
== 域与域上的一元多项式环
<ga-7-域与域上的一元多项式环>
数域 $K$ 上的一元多项式环 $K [ x ]$ 中有加法和乘法。现在我们试图引进分式的概念。

定义多项式的有序对 $( f ( x ) , g ( x ) )$，其中 $g ( x ) eq.not 0$，记全体二元组的集合是 $T = K [ x ]^(+) times K [ x ]^(+)$ 。我们约定 $ ( f_1 , g_1 ) tilde.op ( f_2 , g_2 ) arrow.l.r.double f_1 g_2 = g_1 f_2 $ 于是 $T$ 上有了等价关系。记 $T$ 上等价关系 $tilde.op$ 商集为 $K ( x )$，其中的元素 $( f , g )$ 也可记作 $f \/ g$，定义 $K ( x )$ 上的加法 $ ( f_1 , g_1 ) + ( f_2 , g_2 ) & colon.eq frac(f_1 g_2 + g_1 f_2, g_1 g_2)\
( f_1 , g_1 ) dot.op ( f_2 , g_2 ) & colon.eq frac(f_1 f_2, g_1 g_2) $ 定义加法逆元 $- ( f , g ) colon.eq ( - f , g )$ 和乘法逆元 $( f , g )^(- 1) colon.eq ( g , f )$。可以验证 $( f , 1 )$ 与 $f$ 有相同的性状，我们可以令其相等，从而把多项式嵌入到分式内。于是可以在 $K ( x )$ 上定义减法和除法。

可以发现 $K ( x )$ 与有理数集 $bb(Q)$ 有很多的相似之处。抽象出域的概念。

#statement("definition", title: [域])[
#metadata(()) <ga-index-15> 一个有单位元 $1 ( eq.not 0 )$ 的交换环 $F$ 如果它的每个非零元都可逆，那么称 $F$ 是一个域。

]
把 $K ( x )$ 中的元素 $f \/ g$ 记称 $K$ 上的一元分式，其中 $f$ 称为分子，$g$ 称为分母。定义分式 $f \/ g$ 的次数为 $deg f - deg g$。特殊的，分式 $0 \/ 1$ 的次数为 $- oo$。如果分式的分子与分母是互素的，那么称它是既约分式。

类似于一元分式域的构造方法，我们可以构造出 $n$ 元分式域，记作 $K ( x_1 , dots.h.c , x_n )$。

一般的，设 $m$ 是大于 $1$ 的正整数，在 $bb(Z)$ 中规定 $ a equiv b med ( mod med m ) arrow.l.r.double m divides a - b $ 这给出了 $bb(Z)$ 上的模 $m$ 同余关系。模 $m$ 同余关系具有性质：若 $a equiv b med ( mod med m ) , c equiv d med ( mod med m )$，则 $ overline(i) = { a in bb(Z) mid(|) a equiv i med ( mod med m ) } = { k m + i mid(|) k in bb(Z) } $ 该关系划分出 $bb(Z)$ 的商集 $bb(Z)_m$ 或 $bb(Z) \/ ( m )$。

在 $bb(Z)_m$ 中可以规定加法和乘法运算 $ overline(i) + overline(j) colon.eq overline(i + j) , overline(i) overline(j) colon.eq overline(i j) $ 不难验证，$bb(Z)_m$ 十一个有单位元 $overline(1) ( eq.not overline(0) )$ 的交换环，称为模 $m$ 剩余环类。

若 $p$ 是素数，则 $bb(Z)_p$ 是一个域，称为模 $p$ 剩余类域。

#statement("definition", title: [])[
设域 $F$ 的单位元为 $e$，如果对任意 $n in bb(N)^(+)$ 都有 $n e eq.not 0$，则称 $F$ 的特征 $"char" F = 0$。若存在素数 $p$ 使得 $p e = 0$，而对于 $0 < l < p$ 有 $l e eq.not 0$，则 $"char" F = p$。

]
#statement("theorem", title: [中国剩余定理])[
设 $m_1 , dots.h.c , m_s$ 是两两互素的正整数，$b_1 , dots.h.c , b_s$ 是任意给定的 $s$ 个整数，则同余方程组 $ x equiv b_i med ( mod med m_i ) , quad i = 1 , dots.h.c , s $ 在 $bb(Z)$ 中必有解，并且如果 $c$ 和 $d$ 是两个解，那么 $ c equiv d med ( mod med product m_i ) $

]
