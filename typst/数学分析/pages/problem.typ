#import "../../template/environments.typ": statement

= 习题
<problem-习题>
== 函数、极限、连续
<problem-函数极限连续>
#statement("problem", title: [000001])[

设 $a_1 = 1 , a_k = k ( a_(k - 1) + 1 )$，试计算 $ lim_(n arrow.r oo) product_(k = 1)^n (1 + 1 / a_k) $

]
#statement("solution")[

先变形 $ (1 + 1 / a_k) = frac(a_(n + 1), k a_n) $ 累乘可以化简 $ product_(k = 1)^n (1 + 1 / a_k) = frac(a_(n + 1), ( n + 1 ) !) $ 注意到 $ frac(a_(n + 1), ( n + 1 ) !) - frac(a_n, n !) = frac(a_(n + 1) - ( n + 1 ) a_n, ( n + 1 ) !) = frac(1, n !) $ 故 $ lim_(n arrow.r oo) product_(k = 1)^n (1 + 1 / a_k) = lim_(n arrow.r oo) (1 + frac(1, 2 !) + dots.h.c + frac(1, n !)) = upright(e) $

]
#statement("problem", title: [000002])[

设 $x_1 = 2 , x_n + ( x_n - 4 ) x_(n - 1) = 3 ( n = 2 , 3 , dots.h.c )$，求 $lim_(n arrow.r oo) x_n$。

]
#statement("solution")[

显然是考不动点。

考虑方程 $ x + ( x - 4 ) x - 3 = x^2 - 3 x - 3 = 0 $ 的解，取其中一解 $x_0 = frac(3 + sqrt(21), 2)$。接下来考察单调性，设 $x_(n - 1) in [ 2 , x_0 )$，有 $ x_n - x_(n - 1) = 4 - x_(n - 1) - frac(1, x_n - 1) = - frac(x_(n - 1)^2 - 3 x_(n - 1) - 3, x_(n - 1) - 1) > 0 $ 故序列 ${ x_n }$ 单调递增且 $x_n in [ 2 , x_0 )$。设极限为 $A$，解方程 $ A^2 - 3 A - 3 = 0 , quad A = x_0 = frac(3 + sqrt(21), 2) $

]
#statement("problem", title: [000003])[

是否存在这样的函数，它在区间 $[ 0 , 1 ]$ 上每点取有限值，在此区间的任何点的任一邻域内无界。

]
#statement("solution")[

构造 $ f ( x ) = cases(delim: "{", n comma & x = m / n comma m comma n med upright("为互质整数"), 0 comma & x med upright("为无理数")) $

]
#statement("problem", title: [000004])[

设 $f , g$ 是 $bb(R)$ 上的实函数，且 $ f ( x + y ) + f ( x - y ) = 2 f ( x ) g ( y ) $ 在 $bb(R)$ 上 $f ( x )$ 不恒等于零但有界，试证：$abs(g ( y )) lt.eq 1$

]
#statement("solution")[

令 $M = sup abs(f ( x ))$，则有 $ 2 M gt.eq abs(f ( x + y )) + abs(f ( x - y )) gt.eq abs(f ( x + y ) + f ( x - y )) = 2 abs(f ( x )) abs(g ( y )) $ 设存在 $y_0$ 使得 $abs(g ( y_0 )) = 1 + 2 delta > 1$。由上确界的定义知存在 $x_0$ 有 $ M gt.eq abs(f ( x_0 )) > frac(M, delta + 1) $ 故 $ 2 abs(f ( x_0 )) abs(g ( y_0 )) > frac(2 ( 1 + 2 delta ) M, 1 + delta) > 2 M $ 因此矛盾，故恒有 $abs(g ( y )) lt.eq 1$。

]
#statement("problem", title: [000005])[

设 $f$ 是闭区间 $[ a , b ]$ 上的增函数（但不一定连续），如果 $f ( a ) gt.eq a , f ( b ) lt.eq b$，试证： $exists x_0 in [ a , b ]$，使得 $f ( x_0 ) = x_0$。

]
#statement("solution")[

设 $A = { x mid(|) f ( x ) gt.eq x }$，由题知 $a in A$ 故 $A$ 非空。又 $f$ 定义在 $[ a , b ]$ 上，故 $A$ 有界。因此设 $x_0 = sup A in [ a , b ]$ 是有意义的。又 $f ( x ) in [ a , b ]$ 在定义域内，分类讨论如下

\1. 若 $y_0 = f ( x_0 ) > x_0$，由单调性知 $ f ( y_0 ) = f ( f ( x_0 ) ) gt.eq f ( x_0 ) = y_0 $ 故 $y_0 in A$。这意味着 $sup A gt.eq y_0 > x_0$，矛盾。

\2. 若 $y_0 = f ( x_0 ) < x_0$，由确界定义知 $exists x_1 in A$ 使 $y_0 < x_1 lt.eq x_0$，由单调性知 $ f ( x_1 ) lt.eq f ( x_0 ) = y_0 < x_1 $ 这意味着 $x_1 in.not A$，矛盾。

故 $y_0 = f ( x_0 ) = x_0$，此时 $x_0 = sup { x mid(|) f ( x ) gt.eq x }$。

注意 $x_0$ 不一定在 $A$ 中，即 $f ( x_0 ) gt.eq x_0$ 不一定成立。

]
#statement("problem", title: [000006])[

设 $f ( x )$ 是定义在 $bb(R)$ 上的函数且对任意 $x , y$有 $ abs(x f ( y ) - y f ( x )) lt.eq M abs(x) + M abs(y) $ 其中 $M > 0$。求证：存在常数 $a$ 使得对任意 $x$ 有 $abs(f ( x ) - a x) lt.eq M$

]
#statement("solution")[

当 $x = 0$ 时，有 $abs(f ( 0 )) lt.eq M$。而当 $x y eq.not 0$ 时，恒有 $ abs(f ( x ) - frac(f ( y ), abs(y)) x) lt.eq M (1 + frac(abs(x), abs(y))) $ 若 $a$ 不存在，即对任意的 $a$ 存在 $x_0$ 使 $ abs(f ( x_0 ) - a x_0) = M ( 1 + 2 delta ) > M $ 那么取 $a = frac(f ( y_0 ), abs(y_0))$，当 $y_0 = frac(abs(x_0), delta)$ 时，有 $ abs(f ( x ) - frac(f ( y_0 ), abs(y_0)) x) lt.eq M (1 + frac(abs(x_0), abs(y_0))) = M ( 1 + delta ) $ 因此矛盾，故存在 $a$。

]
#statement("problem", title: [000007])[

设 $lim_(n arrow.r oo) a_n = A$，求证：$lim_(n arrow.r oo) frac(sum a_n, n) = A$。

]
#statement("solution")[

即对于任给的 $epsilon > 0$，存在 $n > N_1$ 使得 $ abs(a_n - A) < epsilon / 2 $ 那么变形有 $ abs(frac(sum a_n, n) - A) lt.eq frac(sum abs(a_n - A), n) = frac(sum_(k = 1)^(N_1) abs(a_k - A), n) + frac(sum_(k = N_1 + 1)^n abs(a_k - A), n) $ 注意到 $sum_(k = 1)^(N_1) abs(a_k - A)$ 已经为定值，从而存在 $n > N_2$ 使得 $ frac(sum_(k = 1)^(N_1) abs(x_k - A), n) < epsilon / 2 $ 因此当 $n > max { N_1 , N_2 }$ 时有 $ L H S < epsilon / 2 + frac(n - N_1, n) times epsilon / 2 < epsilon / 2 + epsilon / 2 = epsilon $

]
#statement("problem", title: [000017])[

已知 $lim_(x arrow.r + oo) f ( x )$ 存在，且 $ f ( x ) = frac(x^(1 + x), ( 1 + x )^x) - x / upright(e) + 2 lim_(x arrow.r oo) f ( x ) $ 求 $f ( x )$。

]
#statement("solution")[

显然先取 $t = 1 / x$，设极限为 $A$，则 $ A = 2 A + lim_(t arrow.r 0^(+)) (frac(1, t ( t + 1 )^(1 / t)) - frac(1, t upright(e))) $ 故取等价无穷小得 $ - A = lim_(t arrow.r 0^(+)) frac(1 - exp (frac(ln ( t + 1 ), t) - 1), t exp frac(ln ( t + 1 ), t)) = lim_(t arrow.r 0^(+)) frac(1 - frac(ln ( t + 1 ), t), t upright(e)) = frac(1, 2 upright(e)) $ 因此 $ f ( x ) = frac(x^(1 + x), ( 1 + x )^x) - frac(x + 1, upright(e)) $

]
#statement("problem", title: [000019])[

设数列 ${ x_n }$ 满足 $0 < x_n < pi / 2$，且 $ cos x_(n + 1) - x_(n + 1) = cos x_n $

（1） 计算 $lim_(n arrow.r oo) x_n$。

（2） 计算 $lim_(n arrow.r oo) x_(n + 1) / x_n^2$。

]
#statement("solution")[

（1） 因为 $ cos x_(n + 1) - cos x_n = x_(n + 1) > 0 $ 且 $0 < x_n < pi / 2$，因此 $0 < x_(n + 1) < x_n$。故极限存在。

设极限为 $a$，由 $cos a - a = cos a$，易得 $a = 0$。

（2） 由于 $cos x tilde.op 1 - x^2 / 2$，故 $ lim_(n arrow.r oo) x_(n + 1) / x_n^2 = lim_(n arrow.r oo) frac(x_(n + 1), 2 - 2 cos x_n) = lim_(n arrow.r oo) frac(x_(n + 1), 2 - 2 cos x_(n + 1) + 2 x_(n + 1)) = 1 / 2 $

]
#statement("problem", title: [000030])[

设 $ x_(n + 1) = 2 + 1 / x_n , quad x_1 = 2 $ 求 $lim_(n arrow.r oo) x_n$。

]
#statement("solution")[

设 $A = 2 + 1 / A$，取正解 $A = 1 + sqrt(2)$。容易由数学归纳法证得 $x_n in [ 2 , 5 / 2 ]$，注意到 $ abs(x_(n + 1) - A) = abs(2 + 1 / x_n - A) = frac(1, A x_n) abs(x_n - A) lt.eq frac(1, 2 A) abs(x_n - A) $ 因此 $lim_(n arrow.r oo) x_n = A = 1 + sqrt(2)$。

也可以奇偶分开讨论单调性。

]
#statement("problem", title: [000031])[

设 $f ( x )$ 在 $[ 0 , 1 ]$ 上连续，且 $f ( 0 ) = f ( 1 )$。证明：对于任意的 $n in bb(N)$，在 $[ 0 , 1 ]$ 上至少存在一个 $xi$ 使得 $ f (xi + 1 / n) = f ( xi ) $

]
#statement("solution")[

设 $F ( x ) = f ( x + 1 / n ) - f ( x )$，即证其在 $[ 0 , 1 - 1 / n ]$ 上有零点。注意到取一些点 $ sum_(i = 0)^(n - 1) F (i / n) = f ( 1 ) - f ( 0 ) = 0 $ 则要么 $F$ 在这些点上值都为零，否则至少存在两个值异号，由介值定理知也存在零点。

]
#statement("problem", title: [000059])[

求极限 $ lim_(x arrow.r + oo) (root(x, x) - 1)^(frac(1, ln x)) $

]
#statement("solution")[

$ lim_(x arrow.r + oo) (root(x, x) - 1)^(frac(1, ln x)) = 1 / upright(e) $

]
#statement("problem", title: [000060])[

求极限 $ lim_(x arrow.r 0) frac(ln ( sin^x + upright(e)^x ) - 2 x, ln ( x^2 + upright(e)^(2 x) ) - 2 x) $

]
#statement("solution")[

$ lim_(x arrow.r 0) frac(ln ( sin^x + upright(e)^x ) - 2 x, ln ( x^2 + upright(e)^(2 x) ) - 2 x) = 1 $

]
#statement("problem", title: [000066])[

求极限 $ lim_(x arrow.r 0) (1 + 1 / n)^(n^2) / upright(e)^n $

]
#statement("solution")[

$ lim_(x arrow.r 0) (1 + 1 / n)^(n^2) / upright(e)^n = 1 / sqrt(upright(e)) $

]
#statement("problem", title: [000067])[

设 $x_1 = sqrt(a) , x_(n + 1) = sqrt(a + x_n)$，证明：$lim_(n arrow.r oo) x_n$ 存在，并求其值。

]
#statement("solution")[

设 $A = sqrt(a + A)$，取正解 $ A = frac(1 + sqrt(1 + 4 a), 2) $ 假设 $sqrt(a) lt.eq x_n lt.eq A$，不难推得 $ abs(x_(n + 1) - A) = frac(abs(x_n - A), sqrt(a + x_n) + A) lt.eq 1 / A abs(x_n - A) $ 因此 $lim_(n arrow.r oo) x_n arrow.r A$。

]
== 一元微分学
<problem-一元微分学>
#statement("problem", title: [000009])[

设 $f ( z )$ 在 $[ 0 , 1 ]$ 上具有一阶连续导数，$f ( 0 ) = 0$，证明:存在$xi in [ 0 , 1 ]$，使得 $ f' ( xi ) = 2 integral_0^1 f ( x ) upright(d) x $

]
#statement("solution")[

TODO。设上下界 $m , M$，中值定理。

]
#statement("problem", title: [000010])[

设 $f ( x )$ 在 $[ 0 , 1 ]$ 上连续，在 $( 0 , 1 )$ 内可导，且 $f ( 0 ) = 0 , f ( 1 ) = 1$，证明存在不同的 $xi_1 , xi_2 in ( 0 , 1 )$，使得 $ frac(1, f' ( xi_1 )) + frac(1, f' ( xi_2 )) = 2 $

]
#statement("solution")[

由于连续，即存在 $x_0 in ( 0 , 1 )$ 使得 $f ( x_0 ) = 1 / 2$。由中值定理，存在 $xi_1 in ( 0 , x_0 )$ 使得 $ f' ( xi_1 ) = frac(f ( x_0 ) - f ( 0 ), x_0 - 0) = frac(1, 2 x_0) $ 同理，存在 $xi_2 in ( x_0 , 1 )$ 使得 $ f' ( xi_2 ) = frac(f ( 1 ) - f ( x_0 ), 1 - x_0) = frac(1, 2 ( 1 - x_0 )) $ 故 $ frac(1, f' ( xi_1 )) + frac(1, f' ( xi_2 )) = 2 x_0 + 2 ( 1 - x_0 ) = 2 $

]
#statement("problem", title: [000011])[

设 $f ( x )$ 在 $[ 0 , 3 ]$ 上连续，在 $( 0 , 3 )$ 内可导，且 $f ( 0 ) + f ( 1 ) + f ( 2 ) = 3 , f ( 3 ) = 1$，证明存在 $xi in ( 0 , 3 )$，使得 $f' ( xi ) = 0$。

]
#statement("solution")[

TODO。设 $f ( c ) = f ( 3 ) = 1 , c in ( 0 , 2 )$。套中值定理。

]
#statement("problem", title: [000012])[

设 $f ( x )$ 在 $[ 0 , 1 ]$ 上连续，在 $( 0 , 1 )$ 内可导，且 $ f ( 1 ) = k integral_0^(1 / k) x upright(e)^(1 - x) f ( x ) upright(d) x ( k > 1 ) $ 证明至少存在一点 $xi in ( 0 , 1 )$，使得 $f' ( xi ) = ( 1 - xi^(- 1) ) f ( xi )$。

]
#statement("solution")[

TODO。构造 $F ( x ) = x upright(e)^(1 - x) f ( x )$。套中值定理。

]
#statement("problem", title: [000013])[

设 $f ( x )$ 在 $[ 0 , 1 ]$ 上连续，在 $( 0 , 1 )$ 内二阶可导，过点 $A ( 0 , f ( 0 ) )$ 与 $B ( 1 , f ( 1 ) )$ 的直线与曲线 $y = f ( x )$ 相交于点 $C ( c , f ( c ) )$，其中 $0 < c < 1$，证明存在 $xi in ( 0 , 1 )$，使得 $f'' ( xi ) = 0$。

]
#statement("solution")[

TODO。构造 $F ( x ) = ( 1 - x ) f ( 0 ) + x f ( 1 ) - f ( x )$，有 $F ( 0 ) = F ( 1 ) = F ( c ) = 0$。套中值定理。

]
#statement("problem", title: [000016])[

设 $f ( x )$ 在 $[ a , b ]$ 上连续，在 $( a , b )$ 上导函数连续，且存在 $c in ( a , b )$ 使得 $f' ( c ) = 0$。证明：存在 $xi in ( a , b )$，使得 $ f' ( xi ) - f ( xi ) + f ( a ) = 0 $

]
#statement("solution")[

几何角度很直观，即 $frac(f' ( x ) - f ( a ), f' ( x ))$ 存在值为 $1$ 的时候。但是零点很恼人，严谨的说明是要费一番功夫的。

积分构造 $ F ( x ) = frac(f ( x ) - f ( a ), upright(e)^x) , quad F' ( x ) = frac(f' ( x ) - f ( x ) + f ( a ), upright(e)^x) = frac(f' ( x ), upright(e)^x) - F ( x ) $ 问题转化为存在 $xi$ 使得 $F' ( xi ) = 0$。

易知 $F ( a ) = 0 , F' ( c ) = - F ( c )$。因此由 Lagrange 中值定理得，存在 $x_0 in ( a , c )$ 使得 $ F' ( x_0 ) = frac(F ( c ) - F ( a ), c - a) $ 由于 $ F' ( x_0 ) F' ( c ) = frac(- F ( c )^2, c - a) < 0 $ 因此由介值定理可知，必存在 $xi in ( x_0 , c )$ 使得 $F' ( d ) = 0$。

]
#statement("problem", title: [000018])[

（1）证明：当 $x gt.eq 1$ 时，有 $ frac(1, x + 1) < ln (1 + 1 / x) < 1 / x $ （2）证明：设 $f ( x )$ 在 $[ 1 , oo )$ 连续可导，且 $ f' ( x ) = frac(1, 1 + f^2 ( x )) (sqrt(1 / x) - sqrt(ln (1 + 1 / x))) $ 有 $lim_(x arrow.r + oo) f ( x )$ 存在。

]
#statement("solution")[

（1） 显然求导即证。

（2） 显然 $f' ( x ) > 0$。由于 $1 + f^2 ( x ) gt.eq 1$，因此 $ 0 < f' ( x ) < 1 / sqrt(x) - 1 / sqrt(x + 1) < frac(1, 2 x sqrt(x)) $ 故 $f ( x )$ 在 $[ 1 , oo )$ 上单调递增，积分有 $ f ( t ) - f ( 1 ) = integral_1^t f' ( x ) upright(d) x < integral_1^t frac(1, 2 x sqrt(x)) upright(d) x = 1 - 1 / sqrt(t) < 1 $ 由于 $f$ 单调递增且有界，故极限存在。

]
#statement("problem", title: [000020])[

设 $ f_n ( x ) = cos x + cos^2 x + dots.h.c + cos^n x $

（1） 证明：对于每个 $n$，方程 $f_n ( x ) = 1$ 在 $[ 0 , pi / 3 )$ 内有且仅有一个实根。

（2） 证明：$lim_(n arrow.r oo) x_n$ 存在，并求其值。

]
#statement("solution")[

（1）设 $ g_n ( x ) = - 1 + sum_(i = 1)^n x^i = frac(2 x - 1 - x^(n + 1), 1 - x) , quad x eq.not 1 $ 因此 $f_n ( x ) = g_n ( cos x )$，由于 $cos x$ 单调，即证 $g_n ( x ) = 0$ 在 $( 1 / 2 , 1 ]$ 内有且仅有一个实根。

令 $h_n ( x ) = 2 x - 1 - x^(n + 1)$，求导 $ h'_n ( x ) = 2 - ( n + 1 ) x^n , quad h''_n ( x ) = - n ( n + 1 ) x^(n - 1) lt.eq 0 $ 可知 $h'_n ( x )$ 单调递减，解得零点 $x_0 = root(n, frac(2, n + 1))$。

当 $x in ( x_0 , 1 ]$ 时，$h_n ( x )$ 单调递减，知 $h_n ( x ) gt.eq h_n ( 1 ) = 0$。当 $x in ( x_0 , 1 )$ 时，$h_n ( x )$ 单调递增。又 $h_n ( 1 / 2 ) < h_n ( 1 ) = 1 < h_n ( x_0 )$，故存在唯一解。

（2）设 $y_n = cos x_n$。注意到 $ h_(n + 1) ( y_n ) = 2 y_n - 1 - y_n^(n + 1) > 2 y_n - 1 - y_n^n = h_n ( y_n ) = 0 $ 故 $y_(n + 1) < y_n$。因此 $y_n$ 单调递减且有界，故收敛。设极限为 $A$，显然 $A in ( 1 / 2 , 1 )$,得到 $ 0 = 2 A - 1 - lim_(n arrow.r oo) x_n^(n + 1) = 2 A - 1 $ 故 $A = 1 / 2$，反推 $x_n arrow.r pi / 3$。

（2）其实可以更直接的定出答案。注意到 $ h_n (frac(n + 1, 2 n)) = 1 / n - (frac(n + 1, 2 n))^(n + 1) > 1 / n - 1 / 2^(n + 1) > 0 $ 因此 $1 / 2 < cos x_n < frac(n + 1, 2 n)$。由夹逼准则知 $x_n arrow.r pi / 3$。

]
#statement("problem", title: [000021])[

（1987 卷 I）设函数 $f ( x )$ 在闭区间 $[ 0 , 1 ]$ 上可微，对于 $[ 0 , 1 ]$ 上的每一个 $x$，函数 $f ( x )$ 的值都在开区间 $( 0 , 1 )$ 内，且 $f' ( x ) eq.not 1$。证明：在 $( 0 , 1 )$ 内有且仅有一个 $x$，使 $f ( x ) = x$。

]
#statement("solution")[

设 $F ( x ) = f ( x ) - x$，注意到 $ F ( 0 ) = f ( 0 ) > 0 , quad F ( 1 ) = f ( 1 ) - 1 < 0 $ 因此 $F ( x )$ 至少存在一个实根。设存在两个不同的实根 $x_1 , x_2$，由 Lagrange 中值定理知存在 $xi in ( 0 , 1 )$ $ f' ( xi ) = frac(f ( x_1 ) - f ( x_2 ), x_1 - x_2) = 1 $ 故矛盾，因此实根唯一。

]
#statement("problem", title: [000023])[

设函数 $f$ 在 $[ 0 , 1 ]$ 上二阶可导，且 $integral_0^1 f ( x ) upright(d) x = 0$，则

A. 当 $f' ( x ) < 0$ 时，$f ( 1 / 2 ) < 0$。 B. 当 $f'' ( x ) < 0$ 时，$f ( 1 / 2 ) < 0$。

C. 当 $f' ( x ) > 0$ 时，$f ( 1 / 2 ) < 0$。 D. 当 $f'' ( x ) > 0$ 时，$f ( 1 / 2 ) < 0$。

]
#statement("solution")[

答案 D。考虑原函数 $F ( x )$ 的 Lagrange 余项 Taylor 公式，令 $x_0 = 1 / 2$，即存在 $xi in ( 0 , 1 )$ 使得 $ F ( x ) = F ( x_0 ) + F' ( x_0 ) ( x - x_0 ) + frac(F'' ( x_0 ), 2) ( x - x_0 )^2 + frac(F''' ( xi ), 6) ( x - x_0 )^3 $ 注意到 $F ( 0 ) = F ( 1 )$，带入即 $ 4 F' ( x_0 ) + F''' ( x_0 ) = 0 $ 故 $f'' ( x ) f ( 1 / 2 ) < 0$。

]
#statement("problem", title: [000024])[

设函数 $f$ 在 $[ - 2 , 2 ]$ 上二阶可导，且 $abs(f) lt.eq 1$。又 $ 1 / 2 [ f' ( 0 ) ]^2 + [ f ( 0 ) ]^3 > 3 / 2 $ 证明：存在 $xi in ( - 2 , 2 )$，使得 $f'' ( xi ) + 3 [ f ( xi ) ]^2 = 0$。

]
#statement("solution")[

构造 $ F ( x ) = 1 / 2 [ f' ( x ) ]^2 + [ f ( x ) ]^3 , quad F' ( x ) = f' ( x ) ( f'' ( x ) + 3 f ( x ) ) $ 下面只需证存在 $xi$ 使得 $F' ( xi ) = 0$ 且 $f' ( xi ) eq.not 0$ 即可。注意到存在 $eta_1 in ( 0 , 2 )$ 使得 $ abs(f' ( eta_1 )) = frac(abs(f ( 2 ) - f ( 0 )), 2 - 0) lt.eq 1 $ 故 $ F ( eta_1 ) lt.eq 1 / 2 + 1 = 3 / 2 $ 同理存在 $eta_2 in ( - 2 , 0 )$ 使得 $F ( eta_2 ) lt.eq 3 / 2$。又 $F ( 0 ) gt.eq 3 / 2$，故存在最大值 $xi in ( eta_1 , eta_2 )$，且由 Fermat 定理知 $F' ( xi ) = 0$。此时 $F ( xi ) > 3 / 2$，故 $f' ( xi ) eq.not 0$。

]
#statement("problem", title: [000025])[

设 $ f ( x ) = integral_0^x upright(e)^(t^2) upright(d) x , quad x > 0 $

（1） 证明：对于任意的 $x$ 存在唯一的 $theta_x in ( 0 , 1 )$ 使得 $f ( x ) = x f' ( x dot.op theta_x )$。

（2）求 $lim_(x arrow.r 0^(+)) theta_x$。

]
#statement("solution")[

（1）不妨将定义域延伸至 $f ( 0 ) = 0$。由中值定理知存在 $xi in ( 0 , x )$ 使得 $ frac(f ( x ) - f ( 0 ), x - 0) = frac(f ( x ), x) = f' ( xi ) $ 又 $f' ( x ) = upright(e)^(x^2) > 0$，故 $xi$ 唯一，即 $theta_x = xi / x in ( 0 , 1 )$。

（2）容易解得 $ theta_x = 1 / x sqrt(ln frac(f ( x ), x)) $ 故极限为 $ lim_(x arrow.r 0^(+)) theta_x = lim_(x arrow.r 0^(+)) sqrt(frac(f ( x ) - x, x^3)) = sqrt(3) / 3 $

]
#statement("problem", title: [000026])[

已知 $f ( x )$ 是二阶可导的正值函数，且 $f ( 0 ) = f' ( 0 ) = 1$ 并 $ f ( x ) f'' ( x ) gt.eq [ f' ( x ) ]^2 $ 那么

A. $f ( 2 ) lt.eq upright(e)^2 lt.eq sqrt(f ( 1 ) f ( 3 ))$。B. $upright(e)^2 lt.eq f ( 2 ) lt.eq sqrt(f ( 1 ) f ( 3 ))$。

C. $sqrt(f ( 1 ) f ( 3 )) lt.eq upright(e)^2 lt.eq f ( 2 )$。D. $sqrt(f ( 1 ) f ( 3 )) lt.eq f ( 2 ) lt.eq upright(e)^2$。

]
#statement("solution")[

答案是 B。注意到我们应该对 $f' / f$ 进行改造，构造 $ g ( x ) = ln f ( x ) - x $ 即 $ g' ( x ) = frac(f' ( x ), f ( x )) - 1 , quad g'' ( x ) = frac(f ( x ) f'' ( x ) - [ f' ( x ) ]^2, f^2 ( x )) gt.eq 0 $ 故 $g' ( x ) gt.eq g' ( 0 ) = 0$，故 $g ( x ) gt.eq 0$，即 $f ( x ) gt.eq upright(e)^x$。注意到凹凸性，由 Jensen 不等式即可比大小。

]
#statement("problem", title: [000032])[

（1988 卷 I）设函数 $f$ 在区间 $[ a , b ]$ 上连续，且在 $( a , b )$ 内有 $f' ( x ) > 0$。证明：在 $( a , b )$ 内存在唯一的 $xi$，使得曲线 $y = f ( x )$ 与两直线 $y = f ( xi ) , x = a$ 所围平面图形面积 $S_1$ 是曲线 $y = f ( x )$ 与两直线 $y = f ( xi ) , x = b$ 所围平面图形 $S_2$ 的三倍。

]
#statement("solution")[

考虑面积的函数 $ S_1 ( t ) & = integral_a^t ( f ( t ) - f ( x ) ) upright(d) x\
S_2 ( t ) & = integral_t^b ( f ( x ) - f ( t ) ) upright(d) x $ 设 $F ( t ) = S_1 ( t ) - 3 S_2 ( t )$。注意到 $ F ( a ) = - 3 S_2 ( a ) < 0 , quad F ( b ) = S_1 ( b ) > 0 $ 故至少存在一个 $xi in ( a , b )$ 使得 $F ( xi ) = 0$。再注意到 $ F' ( t ) & = frac(upright(d), upright(d) t) (f ( t ) ( 3 b - a - 2 t ) - integral_a^t f ( x ) upright(d) x - 3 integral_t^b f ( x ) upright(d) x)\
 & = f' ( t ) ( 3 b - a - 2 t ) > 0 $ 故单调，即零点唯一。

]
#statement("problem", title: [000033])[

如果 $f$ 在 $[ a , b ]$ 上导数连续，那么存在 $xi in ( a , b )$ 满足 $ frac(a f ( b ) - b f ( a ), a - b) = f ( xi ) - xi f' ( xi ) $

]
#statement("solution")[

注意到 $ L H S = frac(frac(f ( b ), b) - frac(f ( a ), a), 1 / b - 1 / a) $ 取 $F ( x ) = frac(f ( x ), x) , G ( x ) = 1 / x$，套 Cauchy 定理即可。

]
#statement("problem", title: [000034])[

如果 $f$ 在 $[ a , b ]$ 上导数连续且不是线型函数，那么存在 $xi in ( a , b )$ 满足 $ abs(f' ( xi )) gt.eq abs(frac(f ( b ) - f ( a ), b - a)) $

]
#statement("solution")[

设 $ F ( x ) = f ( x ) - f ( a ) - frac(f ( b ) - f ( a ), b - a) ( x - a ) , quad F' ( x ) = f' ( x ) - frac(f ( b ) - f ( a ), b - a) $ 由非线性性知存在 $F ( c ) eq.not 0$，不妨设 $F ( c ) > 0$，存在两点 $xi_1 in ( a , c ) , xi_2 in ( c , b )$ 有 $ F' ( xi_1 ) = frac(F ( c ) - F ( a ), c - a) > 0 , quad F' ( xi_2 ) $ 故有 $ f' ( xi_2 ) < frac(f ( b ) - f ( a ), b - a) < f' ( xi_1 ) $ 不难推出 $xi_1 , xi_2$ 总有一个满足题意的。

]
#statement("problem", title: [000035])[

如果 $f$ 在 $[ a , b ]$ 上二阶可导且 $f ( a ) = f ( b ) = 0$，则对任意的 $x in ( a , b )$ 存在 $xi_x in ( a , b )$ 满足 $ f ( x ) = frac(f'' ( xi_x ), 2) ( x - a ) ( x - b ) $

]
#statement("solution")[

固定 $x$ 并定义 $ lambda = frac(2 f ( x ), ( x - a ) ( x - b )) $ 构造 $ F ( u ) = f ( u ) - lambda / 2 ( u - a ) ( u - b ) $ 注意到 $F ( a ) = F ( x ) = F ( b ) = 0$，套两次中值定理即得存在 $xi_x$ 使得 $F'' ( xi_x ) = 0$。

]
#statement("problem", title: [000036])[

如果 $f$ 在 $[ a , b ]$ 上三阶可导且 $f ( a ) = f' ( a ) = f ( b ) = 0$，则对任意的 $x in ( a , b )$ 存在 $xi_x in ( a , b )$ 满足 $ f ( x ) = frac(f''' ( xi_x ), 6) ( x - a )^2 ( x - b ) $

]
#statement("solution")[

TODO 仿照 000035 的计算方法，构造 $ F ( u ) = f ( u ) - lambda / 6 ( u - a )^2 ( u - b ) , quad frac(6 f ( x ), ( x - a )^2 ( x - b )) $ 求导即证。

]
#statement("problem", title: [000037])[

如果 $f$ 在 $[ a , b ]$ 上二阶可导，则对任意的 $c in ( a , b )$ 存在 $xi_c in ( a , b )$ 满足 $ f'' ( xi_c ) = frac(2 f ( a ), ( a - b ) ( a - c )) + frac(2 f ( b ), ( b - c ) ( b - a )) + frac(2 f ( c ), ( c - a ) ( c - b )) $

]
#statement("solution")[

TODO 仿照 000035 的计算方法，构造三个 $lambda$ 和 $F ( x )$，求导即证。

]
#statement("problem", title: [000038])[

设 $f$ 在区间 $[ a , b ]$ 上连续可导，且 $0 < a < b$，那么存在 $xi , eta in ( a , b )$ 满足 $ f' ( eta ) = ( b^2 + a b + a^2 + 2 ) frac(f' ( xi ), 3 xi^2 + 2) $

]
#statement("solution")[

首先选取 $eta$ $ frac(f ( b ) - f ( a ), b - a) = f' ( eta ) $ 接下来即证 $ frac(f ( b ) - f ( a ), b^3 - a^3 + 2 ( b - a )) = frac(f' ( xi ), 3 xi^2 + 2) $ 容易套用 Cauchy 中值定理。

]
#statement("problem", title: [000039])[

设 $f$ 在区间 $[ 0 , 1 ]$ 上二阶可导且 $abs(f ( 0 )) lt.eq 1 , abs(f ( 1 )) lt.eq 1$，同时 $abs(f'' ( x )) lt.eq 2$。求证 $abs(f' ( x )) lt.eq 3$。

]
#statement("solution")[

首先用两次 Taylor 公式，得到 $ f ( 1 ) - f ( 0 ) = f' ( x ) + frac(f'' ( xi ), 2) ( 1 - x )^2 - frac(f'' ( eta ), 2) x^2 $ 因此 $ abs(f' ( x )) & lt.eq abs(f ( 1 ) - f ( 0 ) - frac(f'' ( xi ), 2) ( 1 - x )^2 + frac(f'' ( eta ), 2) x^2)\
 & lt.eq 2 + abs(1 - x)^2 + abs(x)^2 lt.eq 3 $

]
#statement("problem", title: [000040])[

设 $f$ 是 $[ a , b ]$ 上的连续可导函数，且 $0 < a < b$，那么存在 $xi , eta in ( a , b )$ 使得 $ f' ( xi ) = frac(a + b, 2 eta) f' ( eta ) $

]
#statement("proof")[

首先存在 $xi in ( a , b )$ 使得 $ f' ( xi ) = frac(f ( b ) - f ( a ), b - a) $ 构造 $ F ( x ) = f ( x ) - f ( a ) - frac(f ( b ) - f ( a ), b^2 - a^2) ( x^2 - a^2 ) $ 注意到 $F ( a ) = F ( b ) = 0$，因此存在 $eta in ( a , b )$ 使得 $ F' ( eta ) = f' ( eta ) - 2 eta frac(f ( b ) - f ( a ), b^2 - a^2) = f' ( eta ) - frac(2 eta f' ( xi ), b + a) = 0 $

]
#statement("problem", title: [000041])[

设 $f$ 是 $[ a , b ]$ 上的连续可导函数，且 $f' ( a ) = f' ( b ) = 0$，那么存在 $xi in ( a , b )$ 使得 $ f ( xi ) - f ( a ) = f' ( xi ) ( xi - a ) $

]
#statement("proof")[

首先构造 $ F ( x ) = frac(f ( x ) - f ( a ), x - a) , quad F' ( x ) = frac(1, x - a) (f' ( x ) - frac(f ( x ) - f ( a ), x - a)) , quad x in ( a , b ] $ 可以令 $F ( a ) = f' ( a ) = 0$ 使其在 $x = a$ 处连续。注意到 $ F ( b ) = frac(f ( b ) - f ( a ), b - a) , quad F' ( b ) = - frac(f ( b ) - f ( a ), ( b - a )^2) $ 故存在 $x_0 in ( a , b )$ $ F' ( x_0 ) F' ( b ) = frac(F ( b ) - F ( a ), b - a) F' ( b ) lt.eq 0 $ 因此存在 $xi in ( x_0 , b )$ 使得 $F' ( xi ) = 0$。

]
#statement("problem", title: [000042])[

设函数 $f$ 是 $[ a , b ]$ 上连续且二阶可导，且 $f' ( a ) = f' ( b ) = 0$，那么存在 $c in ( a , b )$ 使得 $ abs(f'' ( c )) gt.eq frac(4, ( b - a )^2) abs(f ( b ) - f ( a )) $

]
#statement("proof")[

我们选取 $x_0$ 构造 $ F ( x ) = f ( x ) - f ( x_0 ) - f' ( x_0 ) ( x - x_0 ) , quad G ( x ) = ( x - x_0 )^2 $ 连续使用两次微分中值定理得到 $ frac(F ( x ), G ( x )) = frac(F ( x ) - F ( x_0 ), G ( x ) - G ( x_0 )) = frac(F' ( xi_1 ), G' ( xi_1 )) = frac(f' ( xi_1 ) - f' ( x_0 ), 2 ( xi_1 - x_0 )) = frac(f'' ( xi_2 ), 2) $ 其中 $x_0 < xi_2 < xi_1 < x$。定 $x = frac(a + b, 2)$，取 $x_0 = a$ 得到 $ f (frac(a + b, 2)) = f ( a ) + frac(f'' ( eta_1 ), 8) ( b - a )^2 , quad eta_1 in (a , frac(a + b, 2)) $ 同理可取 $x_0 = b$ 得到 $ f (frac(a + b, 2)) = f ( b ) + frac(f'' ( eta_2 ), 8) ( b - a )^2 , quad eta_2 in (frac(a + b, 2) , b) $ 从而有 $ frac(4 ( f ( b ) - f ( a ) ), ( b - a )^2) = frac(f'' ( eta_1 ) - f'' ( eta_2 ), 2) $ 故 $ frac(4, ( b - a )^2) abs(f ( b ) - f ( a )) = frac(abs(f'' ( eta_1 ) - f'' ( eta_2 )), 2) lt.eq max { f'' ( eta_1 ) , f'' ( eta_2 ) } $~◻

]
#statement("problem", title: [000043])[

设 $f$ 在区间 $[ a , b ]$ 上二阶可导且 $f ( a ) = f ( b ) = 0$，且二阶导数 $abs(f'' ( x )) lt.eq A$ 有界。则 $ abs(f (frac(a + b, 2))) lt.eq A / 8 ( b - a )^2 $

]
#statement("solution")[

用两次 Taylor 展开，得到 $ frac(f ( a ) + f ( b ), 2) = f (frac(a + b, 2)) + frac(f'' ( xi ) + f'' ( eta ), 4) frac(( b - a )^2, 4) $ 故 $ abs(f (frac(a + b, 2))) lt.eq A / 8 ( b - a )^2 $

]
#statement("problem", title: [000064])[

（1995 卷 I）函数 $f ( x )$ 和 $g ( x )$ 在 $[ a , b ]$ 上存在二阶导数，并且 $g'' ( x ) eq.not 0$，$f ( a ) = f ( b ) = g ( a ) = g ( b ) = 0$，试证：

（1） 在开区间 $( a , b )$ 内 $g ( x ) eq.not 0$。

（2） 在开区间 $( a , b )$ 内至少存在一点 $xi$，使 $ frac(f ( xi ), g ( xi )) = frac(f'' ( xi ), g'' ( xi )) $

]
#statement("solution")[

（1） Rolle 定理显然。

（2） 构造 $ F ( x ) = f ( x ) g' ( x ) - f' ( x ) g ( x ) $ 注意到 $F ( a ) = F ( b ) = 0$，而且 $ F' ( x ) = f ( x ) g'' ( x ) - f'' ( x ) g ( x ) $ 因此存在 $xi$ 使得 $ F' ( xi ) = frac(F ( b ) - F ( a ), b - a) = 0 $ 原式成立。

]
== 一元积分学
<problem-一元积分学>
#statement("problem", title: [000008])[

求 $ integral_(- oo)^(+ oo) upright(e)^(- x^2) upright(d) x $

]
#statement("solution")[

$ integral_(- oo)^(+ oo) upright(e)^(- x^2) upright(d) x = sqrt(pi) $

]
#statement("problem", title: [000014])[

求 $ integral frac(1, ( x^2 + a^2 )^2) upright(d) x $

]
#statement("solution")[

令 $x = a tan t$，则 $ x^2 + a^2 = a^2 sec^2 t , quad upright(d) x = a sec^2 t upright(d) t $ 有 $ L H S = 1 / a^3 integral cos^2 t upright(d) t = frac(1, 2 a^3) (arctan x / a + frac(a x, x^2 + a^2)) $

]
#statement("problem", title: [000015])[

求 $ integral frac(upright(d) x, sqrt(x^2 + a)) upright(d) x $

]
#statement("solution")[

$ L H S = ln abs(x + sqrt(x^2 + a)) + C $

]
#statement("problem", title: [000022])[

设函数 $ f ( x ) = x integral_1^0 upright(e)^(- x^2 t^2) upright(d) t $ 则当 $0 < a < x < b$ 时有：

A. $x f ( x ) > a f ( a )$，B. $b f ( b ) > x f ( x )$，C. $x f ( a ) > a f ( x )$，D. $x f ( b ) > b f ( x )$。

]
#statement("solution")[

答案 D。首先积分换元 $ f ( x ) = integral_1^0 upright(e)^(- ( x t )^2) upright(d) ( x t ) = - integral_0^1 upright(e)^(- x^2) upright(d) x $ 剩下的比较直观，就不写了。

]
#statement("problem", title: [000027])[

已知 $a > 0$，则对于反常积分 $ I = integral_0^1 frac(ln x, x^a) upright(d) x $ 的敛散性的判别，下列正确的是

A. 当 $a > 1$ 时 $I$ 收敛。B. 当 $a < 1$ 时 $I$ 收敛。

C. 敛散性和 $a$ 的取值无关，必收敛。D. 敛散性与 $a$ 的取值无关，必发散。

]
#statement("solution")[

当 $a < 1$ 时，注意到 $ f' ( x ) = frac(1 - a ln x, x^(a + 1)) $ 故 $abs(f ( x )) lt.eq abs(f ( upright(e)^(1 \/ a) ))$，有界故收敛。当 $a gt.eq 1$ 时，考虑与 $x^(- a)$ 进行比较，注意到当 $0 < x < 1 / upright(e)$ 时有 $f ( x ) < - 1 / x^a$，故 $I$ 发散。

]
#statement("problem", title: [000028])[

设 $p$ 为常数，若反常积分 $ I = integral_0^1 frac(ln x, x^p ( 1 - x )^(1 - p)) upright(d) x $ 收敛，求 $p$ 的取值范围。

]
#statement("solution")[

答案是 $( - 1 , 1 )$。考虑划分成两部分 $ I = integral_0^(1 / 2) frac(ln x, x^p ( 1 - x )^(1 - p)) upright(d) x + integral_(1 / 2)^1 frac(ln x, x^p ( 1 - x )^(1 - p)) upright(d) x = I_1 + I_2 $ 分别对 $x arrow.r 0$ 和 $x arrow.r 1$ 讨论即可，有点麻烦。

]
#statement("problem", title: [000029])[

已知 $ b = integral_1^(+ oo) (frac(2 x^3 + a x + 1, x ( x + 2 )) - ( 2 x - 4 )) upright(d) x $ 其中 $a , b$ 为常数，求 $a b$。

]
#statement("solution")[

答案是 $- 4 ln 3$。注意到 $ b = integral_1^(+ oo) frac(( a + 8 ) x + 1, x ( x + 2 )) upright(d) x = integral_1^(+ oo) (frac(1, 2 x) - frac(2 a + 15, 2 ( x + 2 ))) upright(d) x $ 讨论一下，就知道 $a = - 8 , b = frac(ln 3, 2)$。

]
#statement("problem", title: [000044])[

任给 $beta gt.eq 0$ 和 $b > a > 0$ 证明 $ abs(integral_a^b upright(e)^(- beta x) frac(sin x, x) upright(d) x) lt.eq 2 / a $

]
#statement("solution")[

用积分第二中值定理，得到 $ integral_a^b upright(e)^(- beta x) / x sin x upright(d) x lt.eq upright(e)^(- a beta) / a integral_a^xi upright(e)^(- beta x) / x sin x upright(d) x $ 因此 $ abs(integral_a^b upright(e)^(- beta x) frac(sin x, x) upright(d) x) lt.eq frac(2, a upright(e)^(a beta)) lt.eq 2 / a $

]
#statement("problem", title: [000045])[

设 $f$ 在 $[ a , b ]$ 上连续，且 $ integral_a^b f ( x ) upright(d) x = integral_a^b x f ( x ) = 0 $ 证明：存在 $x_1 eq.not x_2$ 使得 $f ( x_1 ) = f ( x_2 ) = 0$。

]
#statement("solution")[

显然 $f$ 至少存在一个零点，否则积分不可能为 $0$。假设 $x_0$ 是其唯一零点，不妨设左边小于 $0$ 右边大于 $0$。那么 $ integral_a^b ( x - x_0 ) f ( x ) upright(d) x = integral_a^b x f ( x ) upright(d) x - x_0 integral_a^b f ( x ) upright(d) x = 0 $ 注意到 $( x - x_0 ) f ( x ) > 0$ 在 $x eq.not x_0$ 成立，故左边积分不等于 $0$，矛盾。

]
#statement("problem", title: [000046])[

设 $f$ 在 $[ a , b ]$ 上可积且 $a > 0$，证明 $ abs(f ( 0 )) lt.eq 1 / a integral_0^a abs(f ( x )) upright(d) x + integral_0^a abs(f' ( x )) upright(d) x $

]
#statement("solution")[

有积分中值定理得到 $ integral_0^a f ( x ) upright(d) x = a f ( xi ) $ 因此 $ f ( 0 ) = f ( xi ) - integral_0^xi f' ( x ) upright(d) x = 1 / a integral_0^a f ( x ) upright(d) x - integral_0^xi f' ( x ) upright(d) x $ 从而 $ abs(f ( 0 )) lt.eq 1 / a integral_0^a abs(f ( x )) upright(d) x + integral_0^a abs(f' ( x )) upright(d) x $

]
#statement("problem", title: [000047])[

假设在 $f$ 在 $[ 0 , 1 ]$ 上可导，且 $ f ( 1 ) = 2 integral_0^(1 / 2) x f ( x ) upright(d) x $ 证明存在 $xi in ( 0 , 1 )$ 使得 $ f' ( xi ) = - frac(f ( xi ), xi) $

]
#statement("solution")[

构造 $F ( x ) = x f ( x )$，由积分中值定理知存在 $eta in ( 0 , 1 / 2 )$ 使得 $ f ( 1 ) = 2 integral_0^(1 / 2) F ( x ) upright(d) x = F ( eta ) $ 又 $F ( 0 ) = 0 , F ( 1 ) = f ( 1 ) = F ( eta )$，故存在 $xi in ( eta , 1 )$ 使得 $ F' ( xi ) = frac(F ( 1 ) - F ( eta ), 1 - eta) = 0 = f ( xi ) + xi f' ( xi ) $

]
#statement("problem", title: [000048])[

假设在 $f$ 在 $[ 0 , 1 ]$ 上可导，那么存在 $c_x in ( a , x )$ 使得 $ integral_a^x f ( t ) upright(d) t = f ( c_x ) ( x - a ) $ 若 $f$ 在 $a$ 处可导且 $f' ( a ) eq.not 0$ 则 $ lim_(x arrow.r a +) frac(c_x - a, x - a) = 1 / 2 $

]
#statement("solution")[

由积分中值定理，$c_x$ 的存在是显然的。定义 $ I = lim_(x arrow.r a +) frac(1, ( x - a )^2) (integral_a^x f ( t ) upright(d) t - ( x - a ) f ( a )) $ 首先由 L'Hopital 法则得到 $ I = lim_(x arrow.r a +) frac(f ( x ) - f ( a ), 2 ( x - a )) = 1 / 2 f' ( a ) $ 又 $ I = lim_(x arrow.r a +) frac(f ( c_x ) - f ( a ), x - a) = f' ( a ) frac(partial c_x, partial x) $ 当 $f' ( a ) eq.not 0$ 时比较即知。

]
#statement("problem", title: [000049])[

假设 $f$ 在 $[ a , b ]$ 上存在二阶导数，那么存在 $xi in ( a , b )$ 满足 $ f'' ( xi ) = frac(24, ( b - a )^3) integral_a^b (f ( x ) - f (frac(a + b, 2))) upright(d) x $

]
#statement("solution")[

令 $x_0 = frac(a + b, 2)$，由 Taylor 公式知存在 $eta in ( a , x )$ 使得 $ f ( x ) - f ( x_0 ) = f' ( x_0 ) ( x - x_0 ) + frac(f'' ( eta_x ), 2) ( x - x_0 )^2 $ 积分得 $ integral_a^b ( f ( x ) - f ( x_0 ) ) upright(d) x = 1 / 2 integral_a^b f'' ( eta_x ) ( x - x_0 )^2 upright(d) x $ 由积分中值定理，存在 $xi$ 使 $ 1 / 2 integral_a^b f'' ( eta_x ) ( x - x_0 )^2 upright(d) x = 1 / 2 f'' ( xi ) integral_a^b ( x - x_0 )^2 upright(d) x = frac(( b - a )^3, 24) f'' ( xi ) $

]
#statement("problem", title: [000050])[

假设 $f$ 在 $[ 0 , 1 ]$ 上连续且 $f > 0$，则对任意正整数 $n$ 存在 $xi_n$ 满足 $ 1 / n integral_0^1 f ( x ) upright(d) x = integral_0^(xi_n) f ( x ) upright(d) x + integral_(1 - xi_n)^1 f ( x ) upright(d) x $ 且 $ lim_(n arrow.r + oo) n xi_n = frac(1, f ( 0 ) + f ( 1 )) integral_0^1 f ( x ) upright(d) x $

]
#statement("solution")[

设 $F$ 为 $f$ 的原函数，构造 $ G ( x ) = F ( x ) - F ( 0 ) + F ( 1 ) - F ( 1 - x ) $ 注意到 $ G' ( x ) = f ( x ) + f ( 1 - x ) > 0 , quad G ( 0 ) = 0 , G ( 1 ) = 2 F ( 1 ) $ 由于 $G$ 连续且单调递增，因此存在 $xi_n$ 使得 $1 / n F ( 1 ) = G ( xi_n )$，且 $xi_n$ 单调递减趋于 $0$。又由积分中值定理知存在 $alpha_n in ( 0 , xi_n ) , beta_n in ( 1 - xi_n , 1 )$ 使得 $ G ( xi_n ) = f ( alpha_n ) xi_n + f ( beta_n ) xi_n $ 因此 $ lim_(n arrow.r + oo) n xi_n = lim_(n arrow.r + oo) frac(n G ( xi_n ), f ( alpha_n ) + f ( beta_n )) = frac(F ( 1 ), f ( 0 ) + f ( 1 )) $

]
#statement("problem", title: [000051])[

如果 $f , g$ 在 $[ a , b ]$ 上连续且 $f , g > 0$，那么存在 $xi in ( a , b )$ 满足 $ frac(f ( xi ), integral_a^xi f ( x ) upright(d) x) - frac(g ( xi ), integral_xi^b g ( x ) upright(d) x) = 1 $

]
#statement("solution")[

设 $F , G$ 分别为 $f , g$ 的原函数，即证 $ frac(F' ( xi ), F ( xi )) - frac(G' ( xi ), G ( b ) - G ( xi )) = 1 $ 构造 $ H ( x ) = upright(e)^(- x) F ( x ) ( G ( b ) - G ( x ) ) $ 注意到 $H ( a ) = H ( b ) = 0$，因此存在 $xi$ 使得 $ H' ( xi ) = frac(F ( xi ) ( G ( b ) - G ( xi ) ), upright(e)^xi) (frac(F' ( xi ), F ( xi )) - frac(G' ( xi ), G ( b ) - G ( xi )) - 1) = 0 $

]
#statement("problem", title: [000052])[

如果 $f , g$ 在 $[ a , b ]$ 上连续且 $phi ( x ) eq.not 0$，那么存在 $xi in ( a , b )$ 满足 $ g ( xi ) integral_a^b f ( x ) phi ( x ) upright(d) x = f ( xi ) integral_a^b g ( x ) phi ( x ) upright(d) x $

]
#statement("solution")[

构造 $ F ( x ) = (integral_a^b f ( t ) phi ( t ) upright(d) t) integral_a^x g ( t ) phi ( t ) upright(d) t - (integral_a^b g ( t ) phi ( t ) upright(d) t) integral_a^x f ( t ) phi ( t ) upright(d) t $ 注意到 $ F' ( x ) = phi ( x ) (g ( x ) integral_a^b f ( t ) phi ( t ) upright(d) t - f ( x ) integral_a^b g ( t ) phi ( t ) upright(d) t) , quad F ( a ) = F ( b ) = 0 $ 故存在 $F' ( xi ) = 0$。

]
#statement("problem", title: [000053])[

假设 $f$ 在 $[ - 1 , 1 ]$ 且在 $x = 0$ 处可导，$f ( 0 ) = 0 , f' ( 0 ) eq.not 0$。求极限 $ I = lim_(x arrow.r 0 +) frac(integral_0^x ( x^2 - t^2 ) f ( t ) upright(d) t, integral_0^x t f ( x^2 - t^2 ) upright(d) t) $

]
#statement("solution")[

容易发现 $ I = lim_(x arrow.r 0 +) frac(integral_0^x ( x^2 - t^2 ) f ( t ) upright(d) t, 1 / 2 integral_0^(x^2) f ( u ) upright(d) u) = lim_(x arrow.r 0 +) frac(2, f ( x^2 )) integral_0^x f ( t ) upright(d) t $ 注意条件里没有导数连续，因此不能用 L'Hospital 法则，考虑用导数定义 $ I = lim_(x arrow.r 0 +) frac(2 integral_0^x f ( t ) upright(d) t, x^2) frac(x^2, f ( x^2 ) - f ( 0 )) = lim_(x arrow.r 0 +) frac(f ( x ), f' ( 0 ) x) = 1 $

]
#statement("problem", title: [000054])[

假设 $f$ 在 $[ 0 , 1 ]$ 上连续且 $f gt.eq 0$。若满足 $ f^2 ( x ) lt.eq 1 + 2 integral_0^x f ( t ) upright(d) t $ 求证：$f ( x ) lt.eq 1 + x$。

]
#statement("solution")[

令 $F$ 为 $f$ 的原函数，原方程即为 $F' ( x )^2 lt.eq 1 + 2 F ( x )$。注意到 $ 0 lt.eq frac(F' ( x ), sqrt(1 + 2 F ( x ))) = (sqrt(2 F + 1))' lt.eq 1 $ 两侧积分得到 $ 1 lt.eq sqrt(2 F ( x ) + 1) lt.eq 1 + x $ 因此 $f = F' lt.eq sqrt(2 F ( x ) + 1) lt.eq x + 1$。

]
#statement("problem", title: [000055])[

假设 $f$ 在 $[ 0 , 1 ]$ 上连续在 $( 0 , 1 )$ 上可导，且 $f ( 0 ) = f ( 1 / 4 ) = 0$，且 $ integral_(1 / 4)^(3 / 4) f ( x ) upright(d) x = frac(f ( 1 ), 2) $ 证明：存在 $xi in ( 0 , 1 )$ 满足 $f'' ( xi ) 0$。

]
#statement("solution")[

根据积分中值定理，知存在 $ integral_(1 / 4)^(3 / 4) f ( x ) upright(d) x = frac(f ( eta_1 ), 2) = frac(f ( 1 ), 2) $ 即 $f ( eta_1 ) = f ( 1 )$，故存在 $f' ( eta_2 ) = 0$。又 $f ( 0 ) = f ( 1 / 4 )$ 知存在 $f' ( eta_3 ) = 0$，因此存在 $xi in ( 0 , 1 )$ 使得 $f'' ( xi ) = 0$。

]
#statement("problem", title: [000056])[

设 $f$ 在 $[ a , b ]$ 上导数存在且连续，又 $f ( a ) = 0$，求证： $ integral_a^b f^2 ( x ) upright(d) x lt.eq frac(( b - a )^2, 2) integral_a^b ( f' ( x ) )^2 upright(d) x $

]
#statement("solution")[

由 Cauchy 积分不等式得 $ f^2 ( x ) = (integral_a^x f' ( t ) upright(d) t)^2 lt.eq ( x - a ) integral_a^x ( f' ( t ) )^2 upright(d) t $ 因此 $ integral_a^b f^2 ( x ) upright(d) x lt.eq (integral_a^b ( x - a ) upright(d) x) integral_a^b ( f' ( x ) )^2 upright(d) x = frac(( b - a )^2, 2) integral_a^b ( f' ( x ) )^2 upright(d) x $

]
#statement("problem", title: [000057])[

设 $f$ 在 $[ 0 ， 1 ]$ 上导数存在且连续，又 $f ( 0 ) = 0$ 且 $0 lt.eq f' lt.eq 1$，求证： $ integral_0^1 f^3 ( x ) upright(d) x lt.eq (integral_0^1 f ( x ) upright(d) x)^2 $

]
#statement("solution")[

设 $ G ( x ) = (integral_0^x f ( t ) upright(d) t)^2 - integral_0^x f^3 ( t ) upright(d) t $ 求导得 $ G' ( x ) = f ( x ) (2 integral_0^x f ( t ) upright(d) t - f^2 ( x )) $ 令 $ H ( x ) = 2 integral_0^x f ( t ) upright(d) t - f^2 ( x ) , quad H' ( x ) = 2 f ( x ) ( 1 - f' ( x ) ) gt.eq 0 $ 因此 $H ( x ) gt.eq H ( 0 ) = 0$，故 $G ( x ) gt.eq G ( 0 ) = 0$。

]
#statement("problem", title: [000058])[

设 $f$ 在 $[ 0 , 1 ]$ 上二阶导数连续，$f ( 0 ) = f ( 1 ) = 0$，且在 $( 0 , 1 )$ 上 $f > 0$，求证： $ integral_0^1 abs(frac(f'' ( x ), f ( x ))) upright(d) x gt.eq 4 $

]
#statement("solution")[

不妨设 $f > 0$。设 $x = a$ 时取到最大值，对两侧端点取微分中值定理 $ frac(f ( a ) - f ( 0 ), a - 0) = f' ( eta_1 ) , quad frac(f ( 1 ) - f ( a ), 1 - a) = f' ( eta_2 ) $ 因此 $ integral_0^1 abs(frac(f'' ( x ), f ( x ))) & gt.eq frac(1, f ( a )) integral_(eta_1)^(eta_2) abs(f'' ( x )) upright(d) x\
 & gt.eq frac(abs(f' ( eta_1 ) - f' ( eta_2 )), f ( a ))\
 & = frac(1, a ( 1 - a )) gt.eq 4 $

]
== 常微分方程
<problem-常微分方程>
#statement("problem", title: [000061])[

（1991 卷 I）在上半平面求一条向上凹的曲线，其上任何一点 $P ( x , y )$ 处的曲率等于此曲线在该点法线段 $P Q$ 长度的倒数（$Q$ 是法线与 $x$ 轴的交点），且曲线在 $( 1 , 1 )$ 处的切线与 $x$ 轴平行。 的值最小。

]
#statement("solution")[

由题意得 $ frac(y'', ( 1 + ( y' )^2 )^(3 / 2)) = frac(1, y sqrt(1 + ( y' )^2)) $ 整理得 $ y'' y - ( y' )^2 = 1 $ 构造 $p = y'$，得 $y'' = frac(p upright(d) p, upright(d) y)$，故 $ 1 + p^2 = y p frac(upright(d) p, upright(d) y) $ 分离变量解得 $ y^2 - p^2 = 1 $ 容易解得 $ y = frac(upright(e)^(x - 1) - upright(e)^(- ( x - 1 )), 2) $

]
#statement("problem", title: [000063])[

（1993 卷 I）设物体 $A$ 从点 $( 0 , 1 )$ 出发，以速度大小为常数 $v$ 沿 $y$ 轴正向运动。物体 $B$ 从点 $( 1 , 0 )$ 与 $A$ 同时出发，其速度大小为 $2 v$，方向始终指向 $A$，试建立物体 $B$ 的运动轨迹所满足的微分方程，并写出初始条 件。

]
#statement("solution")[

首先物体 $A$ 的速度指向物体 $B$，即 $ frac(upright(d) y, upright(d) x) = frac(1 + v t - y, 0 - x) $ 同时速度是 $2 v$，得到 $ sqrt(( upright(d) x )^2 + ( upright(d) y )^2) = 2 v upright(d) t $ 这里需要把变量 $t$ 消去，联立得 $ 2 x y'' + sqrt(1 + ( y' )^2) = 0 $

]
== 无穷级数
<problem-无穷级数>
#statement("problem", title: [000065])[

判断级数 $ sum_(n = 2)^oo frac(( - 1 )^n, (n + ( - 1 )^n)^p) $ 的收敛性（绝对、条件），其中 $p > 1$。

]
#statement("solution")[

当 $p > 1$ 时，显然绝对收敛，又 $0 < p lt.eq 1$ 显然绝对发散，接下来只需考察是否条件收敛。设原来级数为 $sum a_n$，构造 $ b_n = frac(( - 1 )^n, n^p) $ 令其和函数分别为 $S_n , T_n$，不难发现 $ T_(2 n) + S_(2 n) = 0 , quad T_(2 n + 1) + S_(2 n + 1) = frac(1, ( 2 n + 1 )^p) - frac(1, ( 2 n )^p) arrow.r 0 $ 又显然 $T_n arrow.r 0$，故 $S_n arrow.r 0$。

]
== 概率论与数理统计
<problem-概率论与数理统计>
#statement("problem", title: [000062])[

（1989 卷 I）设随机变量 $X$ 与 $Y$ 相互独立，且 $X$ 服从均值为 $1$、标准差为 $sqrt(2)$ 的正态分布，而 $Y$ 服从标准正态分布，求随机变量 $Z = 2 X - Y + 3$ 的概率密度函数。

]
#statement("solution")[

由于 $Z$ 是 $X , Y$ 的线性组合，故也服从正态分布。分别计算 $E ( Z ) , D ( Z )$。 $ E ( Z ) = 2 E ( X ) - E ( Y ) + 3 = 5 , quad D ( Z ) = 4 D ( X ) + D ( Y ) + 0 = 9 $ 故 $Z tilde.op N ( 5 , 9 )$，得到 $ f_Z ( z ) = frac(1, 3 sqrt(2 pi)) exp (- frac(( z - 5 )^2, 18)) $

]
