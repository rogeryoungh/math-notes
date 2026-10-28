#import "../../template/environments.typ": statement

= 积分理论
<0005-积分理论>
== 不定积分
<0005-不定积分>
先放这，稍后做整理。

#statement("definition")[

设函数 $f$ 与 $F$ 在区间 $I$ 上都有定义。若 $ F' ( x ) = f ( x ) , x in I $ 则称 $F$ 为 $f$ 在区间 $I$ 上的一个原函数。

]
#statement("theorem")[

设 $F_1$ 和 $F_2$ 是 $f$ 在区间 $I$ 上的两个个原函数，则 $F_1 ( x ) - F_2 ( x )$ 是与 $x$ 无关的常数。

]
#statement("proof")[

显然 $ G' ( x ) = [F_1 ( x ) - F_2 ( x )]' = f ( x ) - f ( x ) = 0 , x in I $ 根据 Lagrange 中值定理，有 $ F ( x ) - G ( x ) equiv C , x in I $

]
#statement("definition")[

函数 $f$ 在区间 $I$ 上的全体原函数称为 $f$ 在 $I$ 上的不定积分，记作 $ integral f ( x ) upright(d) x = F ( x ) + C $ 其中 $integral$ 称为积分号，$f ( x )$ 为被积函数，$f ( x ) upright(d) x$ 为被积表达式，$x$ 称为积分变量。

]
=== 基本不定积分表
<0005-基本不定积分表>
以下是一些常见函数的原函数

$ integral x^m upright(d) x & = frac(1, m + 1) x^(m + 1) + C , quad m eq.not 1\
integral x^(- 1) upright(d) x & = ln abs(x) + C\
integral frac(1, 1 + x^2) upright(d) x & = arctan x + C\
integral frac(1, 1 - x^2) upright(d) x & = 1 / 2 ln abs(frac(1 + x, 1 - x)) + C\
integral 1 / sqrt(1 + x^2) upright(d) x & = ln ( x + sqrt(1 + x^2) ) + C\
integral 1 / sqrt(1 - x^2) upright(d) x & = arcsin x + C\
 $

== 定积分
<0005-定积分>
设闭区间 $[ a , b ]$ 上有 $n - 1$ 个点，依次为 $ a = x_0 < x_1 < dots.h.c < x_(n - 1) < x_n = b $ 它们把 $[ a , b ]$ 分为 $n$ 个小区间 $Delta_i = [ x_(i - 1) , x_i ] , i = 1 , dots.h.c , n$。这些分点或这些闭子区间构成对 $[ a , b ]$ 的一个分割，记为 $ T = { x_0 , dots.h.c , x_n } med upright("或") med { Delta_1 , dots.h.c , Delta_n } $ 小区间 $Delta_i$ 的长度为 $Delta x_i = x_i - x_(i - 1)$，并记 $ norm(T) = max_(1 lt.eq i lt.eq n) { Delta x_i } $ 称为分割的模。

#statement("definition")[

设 $f$ 是定义在 $[ a , b ]$ 上的一个函数。对于 $[ a , b ]$ 的一个分割 $T = { Delta_1 , dots.h.c , Delta_n }$，任取点 $xi in Delta_i , i = 1 , dots.h.c , n$，并作和式 $ sum_(i = 1)^n f ( xi_i ) Delta x_i $ 称此和式为函数 $f$ 在 $[ a , b ]$ 上的一个积分和，也称黎曼和。

]
显然，积分既与分割 $T$ 与有关，又与所选取的点集 ${ xi_i }$ 有关。

#statement("definition")[

设 $f$ 是定义在 $[ a , b ]$ 上的一个函数，$J$ 是一个确定的实数。若对任给的正数 $epsilon.alt$，总存在某一正数 $delta$，使得对 $[ a , b ]$ 的任何分割 $T$，以及在其上任意选取的点集 ${ xi_i }$，只要 $norm(T) < delta$，就有 $ abs(sum_(i = 1)^n f ( xi_i ) Delta x_i - J) < epsilon $ 则称函数 $f$ 在区间 $[ a , b ]$ 上可积或黎曼可积；数 $J$ 称为 $f$ 在 $[ a , b ]$ 上的定积分或黎曼积分，记作 $ J = integral_a^b f ( x ) upright(d) x = lim_(norm(T) arrow.r 0) sum_(i = 1)^n f ( xi_i ) Delta x_i $

]
其中 $f$ 称为被积函数，$x$ 称为积分变量，$[ a , b ]$ 称为积分区间，$a , b$ 分别称为这个定积分的下限和上限。

#statement("theorem", title: [Newton - Leibniz 公式])[

若函数 $f$ 在 $[ a , b ]$ 上连续，且存在原函数 $F$，即 $F' ( x ) = f ( x ) , x in [ a , b ]$，则 $f$ 在 $[ a , b ]$ 上可积，且 $ integral_a^b f ( x ) upright(d) x = F ( b ) - F ( a ) $

]
#statement("proof")[

即证对于任给的 $epsilon > 0$，存在 $delta > 0$ 使得当 $norm(T) < delta$ 时有 $ abs(sum_(i = 1)^n f ( xi_i ) Delta x_i - [ F ( b ) - F ( a ) ]) < epsilon $ 对于任意分割 $T$，在每个小区间 $[ x_(i - 1) , x_i ]$ 上对 $F ( x )$ 使用 Lagrange 中值定理，则分别存在 $eta_i in ( x_(i - 1) , x_i ) , i = 1 , dots.h.c , n$，使得 $ F ( b ) - F ( a ) = sum_(i = 1)^n F' ( eta_i ) Delta x_i = sum_(i = 1)^n f ( eta_i ) Delta x_i $ 又因为 $f$ 在 $[ a , b ]$ 上一致连续，因此存在 $delta > 0$ 当 $x_1 , x_2 in [ a , b ]$ 且 $abs(x_1 - x_2) < delta$ 时，有 $ abs(f(x_1) - f(x_2)) < frac(epsilon, b - a) $ 由 $Delta x_i lt.eq norm(T) < delta$ 时，任取 $xi_i in [ x_(i - 1) , x_i ]$，便有 $abs(xi_i - eta_i) < delta$，于是 $ L H S = abs(sum_(i = 1)^n [ f ( xi_i ) - f ( eta_i ) ] Delta x_i) lt.eq frac(epsilon, b - a) sum_(i = 1)^n Delta x_i = epsilon $ 于是 $f$ 在 $[ a , b ]$ 上可积。~◻

]
=== 可积条件
<0005-可积条件>
#statement("theorem")[

若函数 $f$ 在 $[ a , b ]$ 上可积，则 $f$ 在 $[ a , b ]$ 上必定有界。

]
#statement("proof")[

反证，若 $f$ 在 $[ a , b ]$ 上无界，则对于即对于 $[ a , b ]$ 的任意分割 $T$，必存在属于 $T$ 的某区间 $Delta_k$，使 $f$ 在其上无界。在 $i eq.not k$ 的各个区间 $Delta_i$ 上取定 $xi_i$，记 $ G = abs(sum_(i eq.not k) f ( xi ) Delta x_i) $ 任意大的正数 $M$，存在 $xi_k in Delta_k$，使得 $ abs(f ( xi_k )) > frac(M + G, Delta x_k) $ 于是有 $ abs(sum_(i = 1)^n f ( xi ) Delta x_i) gt.eq abs(f ( xi_k ) Delta x_k) - abs(sum_(i eq.not k) f ( xi ) Delta x_i) > frac(M + G, Delta x_k) dot.op Delta x_k - G = M $

]
有界函数不一定黎曼可积，比如 Dirichlet 函数。

设 $T$ 为对 $[ a , b ]$ 的任意分割。由 $f$ 在 $[ a , b ]$ 上有界，它在每个 $Delta_i$ 上存在上、下确界： $ M_i = sup_(x in Delta_i) f ( x ) , m_i = inf_(x = Delta_i) f ( x ) , i = 1 , dots.h.c , n $ 作和 $ S ( T ) = sum_(i = 1)^n M_i Delta x_i , s ( T ) = sum_(i = 1)^n m_i Delta x_i $ 分别称为 $f$ 关于分割 $T$ 的上和与下和（或称达布上和与达布下和，统称达布和）。任给 $xi_i = Delta_i , i = 1 , dots.h.c , n$，显然有 $ m ( b - a ) lt.eq s ( T ) lt.eq sum_(i = 1)^n f ( xi_i ) Delta x_i lt.eq S ( T ) lt.eq M ( b - a ) $ 与积分和相比较，达布和只与分割 $T$ 有关，而与点集 ${ xi_i }$ 无关。

#statement("proposition")[

给定分割 $T$，对于任何点集 ${ xi_i }$ 而言，上和时所有积分和的上确界，下和是所有积分和的下确界。

]
#statement("proof")[

设 $Delta_i$ 中 $M_i$ 是 $f ( x )$ 的上确界，故可选取点 $xi = Delta_i$，使 $f ( xi_i ) > M_i - frac(epsilon, b - a)$，于是有 $ sum_(i = 1)^n f ( xi_i ) Delta x_i > sum_(i = 1)^n M_i Delta x_i - frac(epsilon, b - a) sum_(i = 1)^n Delta x_i = S ( T ) - epsilon $ 即 $S ( T )$ 是全体积分和的上确界。类似可证 $s ( T )$ 是全体积分和的下确界。

]
#statement("proposition")[

设 $T'$ 为分割 $T$ 添加 $p$ 个新分点后所得到的分割，则有

]
#statement("theorem")[

函数 $f$ 在 $[ a , b ]$ 上可积的充要条件是：人格 $epsilon > 0$，总存在相应的一个分割 $T$ 使得 $ S ( T ) - s ( T ) < sum_(i = 1)^n omega_i Delta x_i = epsilon $

]
其中 $omega$ 称为 $f$ 在 $Delta_i$ 上的振幅。

由充要条件，我们可以得到一系列的可积函数类。

#statement("theorem")[

若 $f$ 为 $[ a , b ]$ 上的连续函数，则 $f$ 在 $[ a , b ]$ 上可积。

]
#statement("proof")[

由于 $f$ 在闭区间 $[ a , b ]$ 上一致连续，即任给 $epsilon > 0$，存在 $delta > 0$，对 $[ a , b ]$ 中任意两点 $x_1 , x_2$，只要 $abs(x_1 - x_2) < delta$，便有 $ abs(f ( x_1 ) - f ( x_2 )) < frac(epsilon, b - a) $ 所以对于在 $[ a , b ]$ 的分割 $T$ 满足 $norm(T) < delta$，在 $T$ 所属的任一小区间 $Delta_i$ 上，都有 $ omega_i = M_i - m_i = sup_(x_1 , x_2 in Delta_i) abs(f ( x_1 ) - f ( x_2 )) lt.eq frac(epsilon, b - a) $ 从而 $ sum_T omega_i Delta x_i lt.eq frac(epsilon, b - a) sum_T Delta x_i = epsilon $

]
== 不定积分
<0005-不定积分-1>
这部分我的参考书是《积分的方法与技巧》（金玉明等）。

=== 分项积分法
<0005-分项积分法>
若干微分式的和或差的不定积分，等于每个微分式的各自积分的和或差。 $ integral (f ( x ) + g ( x ) - h ( x )) upright(d) x = integral f ( x ) upright(d) x + integral g ( x ) upright(d) x - integral h ( x ) upright(d) x $ 因此多项式的积分可以简单的通过积分各个单项式得到。

当分母可以被拆成低次式时，可以考虑使用分项积分法。

如果一个分式的分母为多项式，则可把它化成最简单的分式再积分。如 $ frac(1, x^2 - a^2) = frac(1, 2 a) (frac(1, x - a) - frac(1, x + a)) $ 这里可以通过通分后待定系数得到。于是其积分为 $ integral frac(upright(d) x, x^2 - a^2) = frac(1, 2 a) ln abs(frac(x - a, x + a)) + C $ 对于更复杂的真分式的情况，若要计算的是 $ integral frac(m x + n, x^2 + p x + q) upright(d) x $ 分母不一定能直接分解，但总能进行配方 $ x^2 + p x + q = (x + p / 2)^2 + q - p^2 / 4 = t^2 plus.minus a^2 $ 再令 $A = m , B = n - 1 / 2 m p$，可得 $ integral frac(m x + n, x^2 + p x + q) upright(d) x = integral frac(A t + B, t^2 plus.minus a^2) upright(d) = A integral frac(t upright(d) t, t^2 plus.minus a^2) + B integral frac(upright(d) t, t^2 plus.minus a^2) $ 其中

$ A integral frac(t upright(d) t, t^2 plus.minus a^2) & = A / 2 integral frac(upright(d) ( t^2 plus.minus a^2 ), t^2 plus.minus a^2) = A / 2 ln abs(t^2 plus.minus a^2) + C\
B integral frac(upright(d) t, t^2 + a^2) & = B / a arctan t / a + C\
B integral frac(t upright(d) t, t^2 - a^2) & = frac(B, 2 a) ln abs(frac(t - a, t + a)) + C $

因此当 $p^2 < 4 q$ 时，可以得到 $ integral frac(m x + n, x^2 + p x + q) & = A / 2 ln abs(t^2 + a^2) + B / a arctan t / a + C\
 & = m / 2 ln abs(x^2 + p x + q) + frac(2 n - m p, sqrt(4 q - p^2)) arctan frac(2 x + p, sqrt(4 q - p^2)) + C $

当 $p^2 > 4 q$ 时，可以得到 $ integral frac(m x + n, x^2 + p x + q) & = A / 2 ln abs(t^2 - a^2) + frac(B, 2 a) ln abs(frac(t - a, t + a))\
 & = m / 2 ln abs(x^2 + p x + q) + frac(2 n - m p, 2 sqrt(4 q - p^2)) ln abs(frac(2 x + p - sqrt(p^2 - 4 q), 2 x + p + sqrt(p^2 - 4 q))) + C $

=== 分部积分法
<0005-分部积分法>
根据乘积的微分法则 $ upright(d) ( u v ) = u upright(d) v + v upright(d) u $ 显然有 $ integral u upright(d) v = u v - integral v upright(d) u $

更进一步的，假设 $ integral u v^(( n + 1 )) upright(d) x & = integral u upright(d) v^(( n )) = u v^(( n )) - integral u' v ( n ) upright(d) x\
 & = u v^(( n )) - u^(( 1 )) v^(( n - 1 )) + u^(( 2 )) v^(( n - 2 )) + dots.h.c + ( - 1 )^n u^(( n )) v + ( - 1 )^(n + 1) integral u^(( n + 1 )) upright(d) v x $

例如当 $P ( x )$ 是关于 $x$ 的多项式时，假设计算 $ integral P ( x ) upright(e)^(a x) upright(d) x = upright(e)^(a x) (P / a - P' / a^2 + P'' / a^3 + c d o t s) $ 另一个形式是 $ integral P ( x ) sin a x upright(d) x = sin a x (P' / a^2 - P^(( 3 )) / a^4 + dots.h.c) - cos a x (P / a - P'' / a^3 + dots.h.c) $ 对于 $cos a x$，类似的有 $ integral P ( x ) cos a x upright(d) x = sin a x (P' / a^2 - P^(( 3 )) / a^4 + dots.h.c) + cos a x (P / a - P'' / a^3 + dots.h.c) $

这种一般答案比被积函数高一阶，试一试系数就行。有时候会两种形式交错，比如 $ integral upright(e)^(a x) sin b x upright(d) x = frac(upright(e)^(a x), a^2 + b^2) ( a sin b x - b cos b x ) + C $

=== 三角换元积分法
<0005-三角换元积分法>
这种题需要灵感并积累一些套路。

三角换元一般隐藏这一些直角三角形，建议草稿纸上画出来，分析的清楚一点。

===== 三角函数及双曲三角函数
<0005-三角函数及双曲三角函数>
回顾一下高中知识。除了常见的 $sin x , cos x , tan x$，其倒数也有名字 $ sin x csc x = 1 , quad cos x sec x = 1 , quad tan x cot x = 1 $ 常见公式 $sin^2 x + cos^2 x = 1$ 有变形 $ 1 + tan^2 x = sec^2 x , quad 1 + cot^2 x = csc^2 x $ 三角函数的和差关系 $ sin ( x plus.minus y ) & = sin x cos y plus.minus cos x sin y\
cos ( x plus.minus y ) & = cos x cos y minus.plus sin x sin y\
tan ( x plus.minus y ) & = frac(tan x plus.minus tan y, 1 minus.plus tan x tan y) $ 令 $t = tan x / 2$，有万能公式 $ sin x = frac(2 t, 1 + t^2) , quad cos x = frac(1 - t^2, 1 + t^2) , quad tan x = frac(2 t, 1 - t^2) $

双曲三角函数的定义是 $ sinh x = frac(upright(e)^x - upright(e)^(- x), 2) , quad cosh x = frac(upright(e)^x + upright(e)^(- x), 2) , quad tanh = frac(upright(e)^x - upright(e)^(- x), upright(e)^x + upright(e)^(- x)) $ 有公式 $sinh^2 x - cosh^2 x = 1$，变形即 $ 1 - tanh^2 x = frac(1, cosh^2 x) , quad 1 - coth^2 x = frac(1, sinh^2 x) $

类似的有反双曲三角函数，即 $ "arcsinh" x = ln ( x + sqrt(x^2 + 1) ) , quad "arccosh" x = ln ( x + sqrt(x^2 - 1) ) , quad "arctanh" x = 1 / 2 ln abs(frac(1 + x, 1 - x)) $

===== 形式一
<0005-形式一>
如果没有特殊形式，可以尝试齐次化（或者硬代万能公式），强行化有理式。

例如 $ integral frac(upright(d) x, a^2 sin^2 x + b^2 cos^2 x) $ 尝试 $tan x = t$，有 $ upright(d) t = frac(upright(d) x, cos^2 x) = ( 1 + t^2 ) upright(d) x $ 因此 $ L H S = integral frac(upright(d) t, a^2 t^2 + b^2) = frac(1, a b) arctan (a / b tan x) + C $

假如计算 $ integral frac(upright(d) x, sin 2 x) = integral frac(t^2 + 1, 2 t) upright(d) x = 1 / 2 ln abs(tan x) + C $

===== 形式二
<0005-形式二>
形如 $sqrt(a^2 - x^2)$ 的积分，设 $x = a sin theta$，则 $ upright(d) x = a cos theta upright(d) theta , quad sqrt(a^2 - x^2) = a cos theta $

例如 $ integral sqrt(a^2 - x^2) upright(d) x = a^2 integral cos^2 theta upright(d) theta = x / 2 sqrt(a^2 - x^2) + a^2 / 2 arcsin x / a + C $

===== 形式三
<0005-形式三>
形如 $sqrt(a^2 + x^2)$ 的积分，设 $x = a tan theta$，则 $ upright(d) x = a sec^2 theta upright(d) theta , quad sqrt(a^2 + x^2) = a sec theta $

双元法是一类特殊的三角换元，来自虚调子#footnote[#link("https://zhuanlan.zhihu.com/p/443599480")[一小时学会双元教程！]]。其本质就是 $x upright(d) x plus.minus y upright(d) y = 0$ 更直观，在部分题中能够避免被根号绕进去。

=== 欧拉替换法
<0005-欧拉替换法>
对于二次根式 $sqrt(a x^2 + b x + c)$。

===== 形式一
<0005-形式一-1>
令 $ sqrt(a^2 x^2 + b x + c) = t - a x $ 两边平方可得 $ x = frac(t^2 - c, 2 a t + b) , quad 2 frac(a t^2 + b t + c a, ( 2 a t + b )^2) upright(d) t $

== 定积分的基本性质
<0005-定积分的基本性质>
=== 中值定理
<0005-中值定理>
#statement("theorem", title: [积分第一中值定理])[

设 $f$ 在 $[ a , b ]$ 上可积且连续，则存在 $xi in [ a , b ]$ 使得 $ integral_a^b f ( x ) upright(d) x = f ( xi ) ( b - a ) $

]
#statement("proof")[

设 $m , M$ 分别是 $f$ 在 $[ a , b ]$ 上的最小值和最大值，显然存在 $mu in [ m , M ]$ 使得 $ m lt.eq mu = frac(1, b - a) integral_a^b f ( x ) upright(d) x lt.eq M $ 由连续性显然存在 $f ( xi ) = mu$。

]
#statement("theorem", title: [广义积分第一中值定理])[

假设 $f , g$ 在 $[ a , b ]$ 上可积且连续，在 $[ a , b ]$ 上恒有 $g gt.eq 0$ 或 $g lt.eq 0$，则存在 $xi in [ a , b ]$ 使得 $ integral_a^b f ( x ) g ( x ) upright(d) x = f ( xi ) integral_a^b g ( x ) upright(d) x $

]
#statement("proof")[

不妨令 $g gt.eq 0$。设 $m , M$ 为 $f$ 在 $[ a , b ]$ 上的最小值和最大值，如果 $ integral_a^b g ( x ) upright(d) x eq.not 0 $ 则存在 $mu in [ m , M ]$ 使得 $ m lt.eq mu = frac(integral_a^b f ( x ) g ( x ) upright(d) x, integral_a^b g ( x ) upright(d) x) lt.eq M $ 显然此时存在 $xi = mu$。假如积分为 $0$，则显然有 $g = 0$，任意 $xi$ 都成立。

]
#statement("theorem", title: [积分第二中值定理])[

假设 $f , g$ 在 $[ a , b ]$ 上可积，且 $g gt.eq 0$。如果 $g$ 单调递减，则存在 $xi in [ a , b ]$ 满足 $ integral_a^b f ( x ) g ( x ) upright(d) x = g ( a ) integral_a^xi f ( x ) upright(d) x $ 如果 $g$ 单调递增，则存在 $eta in [ a , b ]$ 满足 $ integral_a^b f ( x ) g ( x ) upright(d) x = g ( b ) integral_eta^b f ( x ) upright(d) x $

]
#statement("proof")[

只证第一个命题。我们给出两种证法。

（1） 设 $F ( x )$ 为 $f$ 的原函数，首先分部积分法 $ integral_a^b f ( x ) g ( x ) upright(d) x = F ( b ) g ( b ) - F ( a ) g ( a ) - integral_a^b F ( x ) g' ( x ) upright(d) x $ 由 Lagrange 中值定理，知存在 $ integral_a^b F ( x ) g' ( x ) upright(d) x = F ( xi ) ( g ( b ) - g ( a ) ) $ 带入整理得 $ integral_a^b f ( x ) g ( x ) upright(d) x = g ( a ) ( F ( xi ) - F ( a ) ) + g ( b ) ( F ( b ) - F ( xi ) ) $ 即广义积分第二中值定理。注意到取 $g_1 = g$ 且在 $x = b$ 处设置间断点 $g ( b ) = 0$，以上证明仍成立。

（2）用到了 Abel 变换，有点复杂。TODO

]
#statement("theorem", title: [广义积分第二中值定理])[

假设 $f , g$ 在 $[ a , b ]$ 上可积，且 $g$ 单调，则存在 $xi in [ a , b ]$ 满足 $ integral_a^b f ( x ) g ( x ) upright(d) x = g ( a ) integral_a^xi f ( x ) upright(d) x + g ( b ) integral_xi^b f ( x ) upright(d) x $

]
#statement("proof")[

不妨设递增，令 $g_1 = g ( b ) - g ( x )$，应用积分第二中值定理即可。

]
#statement("theorem", title: [Cauchy 积分不等式])[

如果 $f , g$ 在 $[ a , b ]$ 上可积，那么我们有 $ (integral_a^b f ( x ) g ( x ) upright(d) x)^2 lt.eq (integral_a^b f^2 ( x ) upright(d) x) (integral_a^b g^2 ( x ) upright(d) x) $

]
#statement("proof")[

对任意划分 $T$ 有 $ (sum f ( x_i ) g ( x_i ) Delta x_i)^2 lt.eq (sum f^2 ( x_i ) Delta x_i) (sum g^2 ( x_i ) Delta x_i) $ 故当 $norm(T) arrow.r 0$ 时也成立。

]
#statement("theorem", title: [Jensen 积分不等式])[

如果 $f$ 在 $[ a , b ]$ 上是凸且连续的，且 $phi ( x )$ 在 $bb(R)$ 上连续，那么我们有 $ f (1 / c integral_0^c phi ( t ) upright(d) t) lt.eq 1 / c integral_0^c f ( phi ( t ) ) upright(d) t $

]
#statement("proof")[

对任意划分 $T$ 有 $ f (1 / c sum phi ( t ) Delta x_i) lt.eq 1 / c sum f ( phi ( t ) ) Delta x_i $ 故当 $norm(T) arrow.r 0$ 时也成立。

]
#statement("theorem", title: [Hadamard 积分不等式])[

如果 $f$ 在 $[ a , b ]$ 上是凸且连续的，那么有 $ f (frac(a + b, 2)) lt.eq frac(1, b - a) integral_a^b f ( t ) upright(d) t lt.eq frac(f ( a ) + f ( b ), 2) $

]
#statement("proof")[

（1） 假如 $f$ 可导，设 $ F_1 ( x ) = integral_a^x f ( t ) upright(d) t - ( x - a ) f (frac(a + x, 2)) $ 求导，由 Taylor 公式得 $ F'_1 ( x ) = f ( x ) - f (frac(a + x, 2)) - frac(x - a, 2) f' (frac(a + x, 2)) = frac(f'' ( xi_1 ), 2) (frac(x - a, 2))^2 gt.eq 0 $ 因此 $F_1 ( x ) gt.eq 0$。再构造 $ F_2 ( x ) = ( x - a ) ( f ( x ) + f ( a ) ) - 2 integral_a^x f ( t ) upright(d) t $ 求导得 $ F'_2 ( x ) = ( x - a ) f' ( x ) + f ( a ) - f ( x ) , quad F''_2 ( x ) = ( x - a ) f'' ( x ) gt.eq 0 $ 故 $F'_2 ( x ) gt.eq F'_2 ( a ) = 0$，因此 $F_2 ( x ) gt.eq 0$。

（2）前面的证明是不严谨的，因为 $f$ 不一定可导。构造 $F ( lambda ) = f ( a + lambda ( b - a ) )$，注意到 $ F ( lambda_1 + mu ( lambda_2 - lambda_1 ) & = f ( mu ( a + lambda_1 ( b - a ) ) + ( 1 - mu ) ( a + lambda_2 ( b - a ) ) )\
 & lt.eq mu F ( lambda_1 ) + ( 1 - mu ) F ( lambda_2 ) $ 故 $F$ 是凸的。因此根据 Jensen 不等式得 $ f (frac(a + b, 2)) = F (integral_0^1 lambda upright(d) lambda) lt.eq integral_0^1 F ( lambda ) upright(d) lambda = frac(1, b - a) integral_a^b f ( t ) upright(d) t $ 另一方面 $ integral_0^1 F ( lambda ) upright(d) lambda = frac(1, b - a) integral_a^b f ( t ) upright(d) t lt.eq integral_0^1 (( 1 - lambda ) f ( a ) + lambda f ( b )) upright(d) lambda = frac(f ( a ) + f ( b ), 2) $

]
=== 变量替换法
<0005-变量替换法>
#statement("theorem")[

假设函数 $phi : [ alpha , beta ] arrow.r [ a , b ]$ 连续可导，且 $phi ( alpha ) = a , phi ( beta ) = b$，则对任意的 $[ a , b ]$ 上的可积函数 $f$ 有 $f ( phi ( t ) ) phi' ( t )$ 可积，且 $ integral_a^b f ( x ) upright(d) x = integral_alpha^beta f ( phi ( t ) ) phi' ( t ) upright(d) t $ 假如 $phi$ 严格单调，则有 $ integral_(phi ( alpha ))^(phi ( beta )) f ( x ) upright(d) x = integral_alpha^beta f ( phi ( t ) ) phi' ( t ) upright(d) t $

]
== 反常积分
<0005-反常积分>
#statement("definition")[

假设函数 $f : [ a , oo ) arrow.r bb(R)$ 可积。如果极限存在，则记 $ integral_a^(+ oo) f ( x ) upright(d) x = lim_(A arrow.r + oo) integral_a^A f ( x ) upright(d) x $ 称为 $f$ 在 $[ a , + oo )$ 上的无穷积分或第一类反常积分。

]
类似的我们可以定义 $( - oo , a ]$ 上的无穷积分。考虑函数 $f : ( - oo , + oo ) arrow.r bb(R)$，若对任意的 $c$ 下面的积分都收敛，则记 $ integral_(- oo)^(+ oo) f ( x ) upright(d) x = integral_(- oo)^c f ( x ) upright(d) x + integral_c^(+ oo) f ( x ) upright(d) x $ 当然，只要存在 $c$ 使得收敛，将对全体 $bb(R)$ 收敛。

一个常见的误区是认为 $ lim_(A arrow.r + oo) integral_(- A)^A f ( x ) upright(d) x $ 收敛，则 $( - oo , + oo )$ 上的反常积分存在。反例是 $f = sin x$。

=== 收敛判别法
<0005-收敛判别法>
接下来我们考察 $ I ( f ) = integral_a^(+ oo) f ( x ) upright(d) x $ 的收敛性。

#statement("theorem", title: [有界判别法])[

积分 $ I_A ( f ) = integral_a^A f ( x ) upright(d) x $ 有界，是 $I ( f )$ 收敛的充分必要条件。

]
#statement("theorem", title: [比较判别法])[

如果 $0 lt.eq f ( x ) lt.eq g ( x )$。若 $I ( f )$ 发散则 $I ( g )$ 发散。若 $I ( g )$ 收敛则 $I ( f )$ 收敛。

对于极限形式 $ lim_(x arrow.r + oo) frac(f ( x ), g ( x )) = K gt.eq 0 $ 若 $K = 0$ 且 $I ( g )$ 收敛则 $I ( f )$ 收敛。若 $K = + oo$ 且 $I ( g )$ 发散则 $I ( f )$ 发散。若 $K$ 为正实数，则 $I ( f )$ 收敛是 $I ( g )$ 收敛的充要条件。

]
#statement("proof")[

非极限形式易证。对于极限形式，若 $K$ 是正实数，则存在 $a_1$ 使得对 $x > a_1$ 有 $ K / 2 g ( x ) lt.eq f ( x ) lt.eq frac(3 K, 2) g ( x ) $ 成立，套用非极限形式即证。

]
#statement("theorem", title: [Cauchy 判别法])[

假定 $a > 0$，若 $ f ( x ) lt.eq K / x^p , quad K > 0 , p > 1 $ 则 $I ( f )$ 收敛。若 $ f ( x ) gt.eq K / x^p , quad K > 0 , p lt.eq 1 $ 则 $I ( f )$ 发散。

极限形式：若 $ lim_(x arrow.r + oo) x^p f ( x ) = K gt.eq 0 $ 当 $K$ 是非负实数且 $p > 1$ 时收敛。当 $K$ 是正实数或 $+ oo$ 且 $p lt.eq 1$ 时 $I ( f )$ 发散。

]
#statement("proof")[

在比较判别法中取 $g = x^(- p)$ 即可。

]
#statement("theorem", title: [Abel 判别法])[

假设反常积分 $ integral_a^(+ oo) f ( x ) upright(d) x $ 收敛且 $g ( x )$ 单调有界，则反常积分 $ integral_a^(+ oo) f ( x ) g ( x ) upright(d) x $ 收敛。

]
#statement("theorem", title: [Dirichlet 判别法])[

假如函数 $ F ( A ) = integral_a^A f ( x ) upright(d) x $ 有界且 $g ( x )$ 单调同时 $g arrow.r 0$ 则反常积分 $ integral_a^(+ oo) f ( x ) g ( x ) upright(d) x $

]
== 常见的积分
<0005-常见的积分>
基本积分表之前已经列出，我们这里列一些组合的。

#statement("example", title: [有理式])[

$ integral frac(1, ( x + a ) ( x + b )) upright(d) x & = frac(1, b - a) ln abs(frac(x + b, x + a)) + C\
integral frac(1, x^2 ( x + a )) upright(d) x & = 1 / a^2 ln abs(1 + a / x) - frac(1, a x) + C\
integral frac(1, x ( x^2 + a )) upright(d) x & = frac(1, 2 a) ln abs(frac(x^2, x^2 + a)) + C $

]
#statement("example", title: [带 $a^2 plus.minus x^2$])[

$ integral frac(1, a^2 + x^2) upright(d) x & = 1 / a arctan x / a + C\
integral frac(1, a^2 - x^2) upright(d) x & = 1 / a "arctanh" x / a + C = frac(1, 2 a) ln abs(frac(a + x, a - x)) + C\
integral 1 / sqrt(a^2 - x^2) upright(d) x & = arcsin x / a + C\
integral 1 / sqrt(a^2 + x^2) upright(d) x & = "arcsinh" x / a + C = ln abs(sqrt(a^2 + x^2) + x^2) + C\
integral x / sqrt(a^2 plus.minus x^2) upright(d) x & = plus.minus sqrt(a^2 plus.minus x^2) + C\
integral frac(1, ( a^2 plus.minus x^2 )^(3 / 2)) upright(d) x & = frac(x, a^2 sqrt(x^2 plus.minus a^2)) + C\
integral frac(x, ( a^2 plus.minus x^2 )^(3 / 2)) upright(d) x & = minus.plus frac(x, a^2 sqrt(x^2 plus.minus a^2)) + C\
integral sqrt(a^2 + x^2) upright(d) x & = x / 2 sqrt(a^2 + x^2) + a^2 / 2 integral frac(upright(d) x, sqrt(a^2 - x^2))\
integral frac(1, ( a^2 + x^2 )^n) upright(d) x & = frac(x, 2 ( n - 1 ) a^2 ( x^2 + a^2 )^(n - 1)) + frac(2 n - 3, 2 ( n - 1 ) a^2) integral frac(upright(d) x, ( x^2 + a^2 )^n) $

]
#statement("example", title: [根式])[

$ integral x sqrt(x + a) upright(d) x & = 2 / 15 ( 3 x - 2 a ) ( x + a )^(3 / 2) + C\
integral x / sqrt(x + a) upright(d) x & = 2 / 3 ( x - 2 a ) sqrt(x + a) + C\
integral frac(1, x sqrt(x + a)) upright(d) x & = - 1 / sqrt(a) ln abs(frac(sqrt(a + x) + sqrt(a), sqrt(a + x) - sqrt(a))) + C , quad a > 0\
integral frac(1, x sqrt(x - a)) upright(d) x & = 2 / sqrt(a) arctan sqrt(x / a - 1) , quad a > 0\
integral sqrt(frac(a + x, a - x)) upright(d) x & = arcsin x / a - sqrt(a^2 - x^2) + C , quad a > 0\
integral sqrt(frac(a - x, a + x)) upright(d) x & = arcsin x / a + sqrt(a^2 + x^2) + C , quad a > 0\
integral sqrt(x + a) / x upright(d) x & = 2 sqrt(x + a) + a integral frac(upright(d) x, x sqrt(x + a)) $

]
