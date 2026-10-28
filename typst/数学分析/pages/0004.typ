#import "../../template/environments.typ": statement

= 导数理论
<0004-导数理论>
== 导数的定义
<0004-导数的定义>
#statement("definition", title: [微分])[

设函数 $f$ 定义在某个邻域内 $U ( x_0 , r )$ 内，如果存在常数 $A$ 使得 $ f ( x ) = f ( x_0 ) + A ( x - x_0 ) + o ( x - x_0 ) $ 当 $x arrow.r x_0$ 成立，则称 $f$ 在 $x_0$ 处可微。线性函数 $A ( x - x_0 )$ 称为 $f$ 在 $x_0$ 处的微分。

]
我们记作 $upright(d) y = upright(d) f = A upright(d) x$。

#statement("definition", title: [导数])[

设函数 $y = f ( x )$ 在邻域 $U ( x_0 , r )$ 内有定义，若极限 $ lim_(x arrow.r x_0) frac(f ( x ) - f ( x_0 ), x - x_0) $ 存在，则称函数 $f$ 在点 $x_0$ 可导，并称该极限为函数 $f$ 在点 $x_0$ 的导数，记作 $f' ( x_0 )$。

]
#statement("theorem")[

若函数 $f$ 在点 $x_0$ 可导，则 $f$ 在点 $x_0$ 连续，反之不然。

]
显然一元函数的可微概念等价于可导。

#statement("example")[

考察 $ f_n ( x ) = x^n sin 1 / x , quad f_n ( 0 ) = 0 $ 当 $n gt.eq 1$ 时，有 $ lim_(x arrow.r 0) f_n ( x ) = lim_(x arrow.r 0) (x sin 1 / x) x^(n - 1) = 0 $ 当 $n gt.eq 2$ 时，有 $ f'_n ( 0 ) = lim_(Delta x arrow.r 0) frac(f ( 0 + Delta x ) - f ( 0 ), Delta x) = lim_(Delta x arrow.r 0) f_(n - 1) ( Delta x ) = 0 $ 当 $n gt.eq 3$ 时，有 $ f' ( x ) = x^(n - 2) (n x sin 1 / x - cos 1 / x) $ 从而 $lim_(x arrow.r 0) f' ( x ) = 0$。

因此，$f_1 ( x )$ 在 $bb(R)$ 上连续，但在 $x = 0$ 处不可导。$f_2 ( x )$ 连续且 $f'_2 ( 0 )$ 存在，但 $x = 0$ 处导函数不连续。$f_3 ( x )$ 连续且导函数连续。

]
#statement("definition", title: [单侧导数])[

设函数 $y = f ( x )$ 在点 $x_0$ 的某右邻域 $[ x_0 , x_0 + delta )$ 上有定义，若右极限 $ lim_(Delta x arrow.r 0^(+)) frac(Delta y, Delta x) = lim_(Delta x arrow.r 0^(+)) frac(f ( x_0 + Delta x ) - f ( x_0 ), Delta x) , ( 0 < Delta x < delta ) $ 存在，则称该极限值为 $f$ 在点 $x_0$ 的右导数，记作 $f'_(+) ( x )$。同理有左导数。左导数和右导数统称为单侧导数。

]
#statement("theorem")[

若函数 $y = f ( x )$ 在点 $x_0$ 的某邻域上有定义，则 $f' ( x_0 )$ 存在的充要条件是 $f'_(-) ( x )$ 与 $f'_(+) ( x )$ 都存在且相等。

]
若函数 $f$ 在区间 $I$ 上每一点都可导（对区间端点，仅考虑相应的单侧导数），则称 $f$ 为 $I$ 上的可导函数。此时对每一个 $x in I$，都有 $f$ 的一个导数 $f' ( x )$ （或单侧导数）与之对应。这样就定义了一个在 $I$ 上的函数，称为导函数，简称为导数。记作 $f' , y' , frac(upright(d) y, upright(d) x)$。

曲线 $y = f ( x )$ 在点 $( x_0 , y_0 )$ 的切线方程是 $ y - y_0 = f' ( x_0 ) ( x - x_0 ) $

这个极限还可以进行一定的变化，比如当 $f$ 在 $x_0$ 处可导时有 $ lim_(Delta x arrow.r 0) frac(f ( x_0 + Delta x ) - f ( x_0 - Delta x ), 2 Delta x) = f' ( x_0 ) $ 反之不成立，比如 $y = abs(x)$。

有一些可能不太好想的反例： $ lim_(x arrow.r a +) f ( x ) = oo ⇏ lim_(x arrow.r a +) f' ( x ) = oo $ 取 $ f ( x ) = 1 / x + cos 1 / x , quad 0 < x < pi / 2 $ 如 $ lim_(x arrow.r a +) f' ( x ) = oo ⇏ lim_(x arrow.r a +) f ( x ) = oo $ 取 $ f ( x ) = root(3, x) , quad 0 < x < 1 $ 如 $ lim_(x arrow.r + oo) f ( x ) = A ⇏ lim_(x arrow.r + oo) f' ( x ) = B $ 取 $ f ( x ) = frac(sin ( x^2 ), x) $ 如 $ lim_(x arrow.r + oo) f' ( x ) = A ⇏ lim_(x arrow.r + oo) f ( x ) = B $ 取 $ f ( x ) = cos ( ln x ) $ 这说明端点处取无穷大和函数导数在端点处取无穷大没有本质联系。

=== 高阶导数
<0004-高阶导数>
进一步的，我们可以定义导数的导数。 $ f^(( n_1 )) ( x_0 ) = (f^(( n )))' ( x_0 ) = frac(upright(d)^k f, upright(d) x^k) ( x_0 ) $ 任意阶导数都存在的函数称为光滑的。

二阶微分不具有微分不变性，比如 $y = f ( u ) , u = g ( x )$，有 $ frac(upright(d)^2 y, upright(d) x^2) = frac(upright(d)^2 y, upright(d) u^2) (frac(upright(d) u, d x))^2 + frac(upright(d) y, upright(d) u) frac(upright(d)^2 u, upright(d) x^2) $

#statement("theorem")[

假如 $f ( x )$ 在 $a$ 处二阶可导，则 $ f'' ( a ) = lim_(h arrow.r 0) frac(f ( a + h ) + f ( a - h ) - 2 f ( a ), h^2) $

]
#statement("proof")[

注意，这里转化为一阶导数定义再导出二阶的方法是错误的。只能使用 L'Hospital 法则。

]
== 求导法则
<0004-求导法则>
#statement("theorem")[

若函数 $u ( x )$ 和 $v ( x )$ 在点 $x_0$ 可导，则函数 $f ( x ) = u ( x ) plus.minus v ( x )$ 在点 $x_0$ 也可导，且 $ f' ( x_0 ) = u' ( x_0 ) plus.minus v' ( x_0 ) $ 函数 $f ( x ) = u ( x ) v ( x )$ 在点 $x_0$ 也可导，且 $ f' ( x_0 ) = u' ( x_0 ) v' ( x_0 ) $ 若 $v ( x ) eq.not 0$，则函数 $f ( x ) = frac(u ( x ), v ( x ))$ 在点 $x_0$ 也可导，且 $ f' ( x_0 ) = frac(u' ( x_0 ) v ( x_0 ) - u ( x_0 ) v' ( x_0 ), v ( x_0 )^2) $ 特别的，当 $f ( x ) = frac(1, v ( x ))$ 时，有 $ f' ( x_0 ) = - frac(v' ( x_0 ), v ( x_0 )^2) $

]
#statement("theorem")[

设 $y = f ( x )$ 严格单调且 $f' ( x_0 ) eq.not 0$，则其反函数 $x = f^(- 1) ( x ) = g ( y )$ 在对应区间内可导且且 $ g' ( y_0 ) = frac(1, f' ( x_0 )) $

]
#statement("theorem")[

设 $u = phi.alt ( x )$ 在点 $x_0$ 可导，$y = f ( u )$ 在点 $u_0 = phi.alt ( x_0 )$ 可导，则复合函数 $f compose phi.alt$ 在点 $x_0$ 可导，且 $ ( f compose phi.alt )' ( x_0 ) = f' ( u_0 ) phi.alt' ( x_0 ) = f' ( phi.alt ( x_0 ) ) phi.alt' ( x_0 ) $

]
=== 基本求导法则
<0004-基本求导法则>
\1. $( u plus.minus v )' = u' plus.minus v'$

\2. $( u v )' = u' v + u v'$

\3. $(u / v) = frac(u' v - u v', v^2)$

\4. $( u plus.minus v )' = u' plus.minus v'$

=== 基本初等函数导数公式
<0004-基本初等函数导数公式>
\1. $( c )' = 0$（$c$ 为常数）

\2. $( x^a )' = a x^(a - 1)$（$a$ 为任意实数）

\3. $( sin x )' = cos x , ( cos x )' = - sin x , ( tan x )' = sec^2 x$

\4. $( cot x )' = - csc^2 x , ( sec x )' = sec x tan x , ( csc x )' = - csc x cot x$

\5. $( arcsin x )' = 1 / sqrt(1 - x^2) , ( arccos x )' = - 1 / sqrt(1 - x^2) , ( arctan x )' = frac(1, 1 + x^2)$

\6. $( a^x )' = a^x ln a ( a > 0 upright("且") a eq.not 1 )$

\7. $( log_a abs(x) )' = frac(1, x ln a) ( a > 0 upright("且") a eq.not 1 )$

== 极值定理
<0004-极值定理>
若函数 $f$ 在点 $x_0$ 的某邻域 $U ( x_0 )$ 上对一切 $x in U ( x_0 )$ 有 $ f ( x_0 ) gt.eq f ( x ) $ 则称 $f$ 在点 $x_0$ 取得极大值，称点 $x_0$ 为极大值点。同理有极小值点。极大值、极小值统称为极值，极大值点、极小值点统称为极值点。

显然极值点不一定是最值点，但假如最值点在定义域内部，则必是极值点。

#statement("theorem", title: [Fermat 定理])[

设函数 $f$ 在点 $x_0$ 的某邻域上有定义，且在点 $x_0$ 可导。若点 $x_0$ 为极值点，则必有 $f' ( x_0 ) = 0$。

]
#statement("proof")[

不妨设 $x_0$ 为 $f$ 的极小值点，则存在邻域 $U ( x_0 , delta )$ 且满足不等式 $f ( x ) lt.eq f ( x_0 )$，那么 $ frac(f ( x ) - f ( x_0 ), x - x_0) gt.eq 0 , quad x in ( x_0 - delta , x_0 ) #h(2em) frac(f ( x ) - f ( x_0 ), x - x_0) lt.eq 0 , quad x in ( x_0 , x_0 + delta ) $ 从而 $ 0 lt.eq f'_(+) ( x_0 ) = f' ( x_0 ) = f'_(-) ( x_0 ) lt.eq 0 $ 故 $f' ( x_0 ) = 0$。

]
如果 $f' ( x_0 ) = 0$，我们称为驻点。极值点不一定是驻点，比如 $y = abs(x)$，需要导数存在，反之驻点不一定是极值点，如 $y = x^3$。

#statement("theorem", title: [Darboux 定理])[

函数 $f$ 在 $[ a , b ]$ 上存在导数，且 $f'_(+) ( a ) eq.not f'_(-) ( b )$，对于任给的介于 $f'_(+) ( a ) , f'_(-) ( b )$ 之间的实数 $k$，总是存在 $xi in ( a , b )$ 使得 $f' ( xi ) = k$

]
#statement("proof")[

注意该定理并未要求导数连续，无法使用介值定理。令 $g ( x ) = f ( x ) - k x$。不妨设 $g'_(+) ( a ) < 0 < g'_(-) ( b )$，取 $g ( xi ) = min_([ a , b ]) g$。取两个邻域 $ frac(g ( x ) - g ( a ), x - a) < 0 , quad x in U ( a , delta ) #h(2em) frac(g ( x ) - g ( b ), x - b) > 0 , quad x in U ( b , delta ) $ 因此存在 $a < x_1 < x_2 < b$ 使得 $g ( x_1 ) < g ( a )$ 和 $g ( x_2 ) < g ( b )$。故 $xi$ 在开区间 $( a , b )$ 内，因此 $xi$ 为 $g$ 的极值点，由 Fermat 定理知 $g' ( xi ) = f' ( xi ) - k = 0$。

]
== 曲率
<0004-曲率>
给定光滑曲线 $C$，取固定点 $M$ 和动点 $N$ 得到弧长 $Delta s$。$N$ 处与 $M$ 处的切线和 $x$ 正轴夹角差记为 $Delta alpha$。以此定义 $M$ 处的曲率为 $ k = lim_(Delta s arrow.r 0) abs(frac(Delta alpha, Delta s)) $

假设光滑曲线由参数方程 $x ( t ) , y ( t )$ 给出，那么可以得到 $ alpha = arctan frac(y' ( t ), x' ( t )) , quad frac(upright(d) alpha, upright(d) t) = frac(y'' ( t ) x' ( t ) - y' ( t ) x'' ( t ), x' ( t )^2 + y' ( t )^2) $ 利用 $upright(d) s \/ upright(d) t = sqrt(x' ( t )^2 + y' ( t )^2)$ 得到 $ k = abs(frac(upright(d) a \/ upright(d) t, upright(d) s upright(d) t)) = frac(abs(y'' ( t ) x' ( t ) - y' ( t ) x'' ( t )), ( x' ( t )^2 + y' ( t )^2 )^(3 \/ 2)) $ 特别的曲线如果由 $y ( x )$ 给出，那么 $ k = frac(abs(y''), ( 1 + (y')^2 )^(3 \/ 2)) $ 其中令 $R = 1 \/ k$ 为曲线的曲率半径。

== 中值定理
<0004-中值定理>
微分中值定理主要有三个：Rolle 定理、Lagrange 中值定理和 Cauchy 中值定理。

=== Rolle 定理
<0004-rolle-定理>
#statement("theorem", title: [罗尔 Rolle 中值定理])[

若函数 $f$ 在 $[ a , b ]$ 上连续可导，且 $f ( a ) = f ( b )$。则存在 $xi in ( a , b )$，使得 $f' ( xi ) = 0$。

]
#statement("proof")[

因为 $f ( x )$ 在 $[ a , b ]$ 上连续，所以有最大值 $M$ 和最小值 $m$。

\1. 若 $m = M$，显然成立。

\2. 若 $m < M$，又 $f ( a ) = f ( b )$，故最值必然在 $xi in ( a , b )$ 中取到，从而 $x = xi$ 是其极值点，由 Fermat 定理知 $f' ( xi ) = 0$。

]
我们可以做更多点的推广。假如 $f ( x_1 ) = f ( x_2 ) = f ( x_3 )$ 都相等，据此存在 $xi_1 in ( x_1 , x_2 )$ 和 $xi_2 in ( x_2 , x_3 )$ 使得 $f' ( xi_1 ) = f' ( xi_2 ) = 0$，再用一遍定理知存在 $xi_3 in ( xi_1 , xi_2 )$ 使得 $f'' ( xi_3 ) = 0$。

#statement("example")[

设 $f$ 在 $[ a , b ]$ 上连续并二阶可导，且 $f ( a ) = f ( b ) = 0$，那么对任意的 $x in ( a , b )$ 存在 $xi_x in ( a , b )$ 满足 $ f ( x ) = frac(f'' ( xi_x ), 2) ( x - a ) ( x - b ) $

]
#statement("proof")[

对于任意的 $x$，我们定义常数 $ lambda_x = frac(2 f ( x ), ( x - a ) ( x - b )) $ 构造函数 $ F ( u ) = f ( u ) - lambda_x / 2 ( u - a ) ( u - b ) $ 注意到 $F ( a ) = F ( x ) = F ( b )$，且 $F'' ( u ) = f'' ( u ) - lambda_x$，由上文所证性质，故存在 $xi_x in ( a , b )$ 使得 $f'' ( xi_x ) = lambda_x$。

]
#statement("example")[

设函数 $f$ 在 $[ a , b ]$ 上连续并三阶可导，如果 $f ( a ) = f' ( a ) = f ( b ) = 0$，那么对任意的 $x$ 存在 $xi_x in ( a , b )$ 使得 $ f ( x ) = frac(f''' ( xi_x ), 3 !) ( x - a )^2 ( x - b ) $

]
#statement("proof")[

构造 $ F ( u ) = f ( u ) - frac(lambda_x, 3 !) ( u - a )^2 ( u - b ) , quad lambda_x = frac(3 ! f ( x ), ( x - a )^2 ( x - b )) $ 余略。

]
=== Lagrange 定理
<0004-lagrange-定理>
Rolle 定理需要两个函数等高，假如不等高我们可以旋转一下。

#statement("theorem", title: [Lagrange 定理])[

若函数 $f$ 在 $[ a , b ]$ 上连续，在 $( a , b )$ 中可微，则存在 $xi in ( a , b )$，使得 $ f' ( xi ) = frac(f ( b ) - f ( a ), b - a) $

]
#statement("proof")[

做辅助函数 $ F ( x ) = f ( x ) - f ( a ) - frac(f ( b ) - f ( a ), b - a) ( x - a ) $ 显然 $F ( a ) = F ( b ) = 0$，且满足 Rolle 定理的其他两个条件，故存在 $xi in ( a , b )$ 使得 $ F' ( xi ) = f' ( xi ) - frac(f ( b ) - f ( a ), b - a) = 0 $ 移项即证。

]
一般可以直接说，存在 $xi in ( a , b )$ 使得 $f ( b ) - f ( a ) = f' ( xi ) ( b - a )$。考虑设 $ xi = ( 1 - theta ) a + theta b = a + theta ( b - a ) , quad theta in ( 0 , 1 ) $ 因此可以说存在 $theta in ( 0 , 1 )$ 使得 $ f ( b ) - f ( a ) = f' ( a + theta ( b - a ) ) ( b - a ) $

=== Cauchy 中值定理
<0004-cauchy-中值定理>
#statement("theorem")[

设 $f , g$ 在 $[ a , b ]$ 上连续，在 $( a , b )$ 中可微，且 $g' ( x ) eq.not 0$，则存在 $xi in ( a , b )$，使得 $ frac(f ( b ) - f ( a ), g ( b ) - g ( a )) = frac(f' ( xi ), g' ( xi )) $

]
#statement("proof")[

首先注意到 $g ( b ) eq.not g ( a )$，否则由 Rolle 定理知存在 $g' ( x ) = 0$。构造 $ F ( x ) = f ( x ) - f ( a ) - lambda ( g ( x ) - g ( a ) ) , quad lambda = frac(f ( b ) - f ( a ), g ( b ) - g ( a )) $ 注意到 $F ( a ) = F ( b ) = 0$，由 Rolle 定理知存在 $xi in ( a , b )$ $ F' ( xi ) = f' ( xi ) - lambda g' ( xi ) = 0 $

]
Cauchy 中值定理就更加的变化多端了。

=== 凹凸性
<0004-凹凸性>
#statement("definition")[

设 $f$ 为定义在区间 $I$ 上的函数，若对 $I$ 上当任意两点 $x_1 , x_2$ 和任意实数 $lambda in ( 0 , 1 )$ 总有 $ f ( lambda x_1 + ( 1 - lambda ) x_2 ) lt.eq lambda f ( x_1 ) + ( 1 - lambda ) f ( x_2 ) $ 则称 $f$ 为 $I$ 上的凸函数。反之，如果总有 $ f ( lambda x_1 + ( 1 - lambda ) x_2 ) gt.eq lambda f ( x_1 ) + ( 1 - lambda ) f ( x_2 ) $ 则称 $f$ 为 $I$ 上的凹函数。

]
== L'Hospital 法则
<0004-lhospital-法则>
#statement("theorem", title: [L'Hospital 法则，0/0 型])[

设 $f , g$ 是 $( a , b )$ 上的连续可导函数，$g' eq.not 0$，且 $ lim_(x arrow.r a^(+)) f ( x ) = lim_(x arrow.r a^(+)) g ( x ) = 0 $ 如果极限 $ lim_(x arrow.r a^(+)) frac(f' ( x ), g' ( x )) = A $ 其中 $A$ 为实数或 $oo$。则 $ lim_(x arrow.r a^(+)) frac(f ( x ), g ( x )) = lim_(x arrow.r a^(+)) frac(f' ( x ), g' ( x )) $

]
#statement("proof")[

考虑补上 $x = a$ 处的零值，延展函数 $f , g$ 为 $F , G$，从而存在 $xi_x in ( a , x )$ 使得 $ frac(F ( x ), G ( x )) = frac(F ( x ) - F ( a ), G ( x ) - G ( a )) = frac(F' ( xi_x ), G' ( xi_x )) $ 因此当 $x arrow.r a^(+)$ 时，$xi_x arrow.r a^(+)$。故 $ lim_(x arrow.r a^(+)) frac(f ( x ), g ( x )) = lim_(xi_x arrow.r a^(+)) frac(f' ( xi_x ), g' ( xi_x )) $

]
#statement("theorem", title: [L'Hospital 法则，0/0 型])[

设 $f , g$ 是 $( a , b )$ 上的连续可导函数，$g' eq.not 0$，且 $ lim_(x arrow.r a^(+)) f ( x ) = lim_(x arrow.r a^(+)) g ( x ) = oo $ 如果极限 $ lim_(x arrow.r a^(+)) frac(f' ( x ), g' ( x )) = A $ 其中 $A$ 为实数或 $oo$。则 $ lim_(x arrow.r a^(+)) frac(f ( x ), g ( x )) = lim_(x arrow.r a^(+)) frac(f' ( x ), g' ( x )) $

]
对于 $0 dot.op oo$，一般考虑 $ lim_(x arrow.r a) f ( x ) g ( x ) = lim_(x arrow.r a) frac(f ( x ), frac(1, g ( x ))) $ 对于 $oo - oo$，一般考虑 $ lim_(x arrow.r a) ( f ( x ) - g ( x ) ) = lim_(x arrow.r a) frac(frac(1, f ( x )) - frac(1, g ( x )), frac(1, f ( x ) g ( x ))) $ 倘若 $0^0$、$oo^0$、$1^oo$，则 $ lim_(x arrow.r a) f ( x )^(g ( x )) = exp (lim_(x arrow.r a) g ( x ) ln f ( x )) $

== Taylor 公式
<0004-taylor-公式>
假设函数 $f$ 在 $x_0$ 处 $n$ 阶可导，定义其在 $x_0$ 处的 $n$ 阶 Taylor 多项式定义为 $ P_n ( x ; x_0 , f ) = f ( x_0 ) + sum_(k = 1)^n frac(f^(( k )) ( x_0 ), k !) ( x - x_0 )^k $ 当 $x_0 = 0$ 时，即为 Maclaurin 公式。

=== Peano 型余项
<0004-peano-型余项>
存在 $delta > 0$ 使得对 $x in ( x_0 - delta , x_0 + delta )$ 有 $ f ( x ) = P_n ( x ) + r_n ( x ) $ 这里 $ r_n ( x ) = o ( ( x - x_n )^n ) , quad x arrow.r x_0 $ 我们可以通过洛 $n$ 次证明。

=== Lagrange 型余项
<0004-lagrange-型余项>
由 Lagrange 中值定理，考虑在 $( x_0 , x_0 + delta )$，对任意的 $x$ 都存在 $xi_1$ 使得 $ f ( x ) = f ( x_0 ) + f' ( xi_1 ) ( x - x_0 ) $ 大胆的推广一下，我们可以证明 $ f ( x ) = f ( x_0 ) + f' ( x_0 ) ( x - x_0 ) + frac(f'' ( xi_2 ), 2) ( x - x_0 )^2 $ 一般的，我们就得到了 Lagrange 型余项。

#statement("theorem")[

存在 $delta > 0$，设 $f$ 在 $( x_0 , x_0 + delta )$ 上连续并 $n + 1$ 阶可导，则对任意的 $x$ 都存在 $xi$ 有 $ f ( x ) = P_n ( x ) + r_n ( x ) $ 其中 $ r_n ( x ) = frac(f^(( n + 1 )) ( xi ), ( n + 1 ) !) ( x - x_0 )^(n + 1) $

]
#statement("proof")[

固定 $x$，构造辅助函数 $ G ( t ) = f ( x ) - sum_(k = 0)^n frac(f^(( k )) ( t ), k !) ( x - t )^k $ 并任意的取在 $( x_0 , x_0 + delta )$ 上连续可导的函数 $H ( t )$，且 $H ( x ) = 0$。存在 $xi in ( x_0 , x_0 + delta )$ 满足 $ frac(G ( x_0 ), H ( x_0 )) = frac(G ( x ) - G ( x_0 ), H ( x ) - H ( x_0 )) = frac(G' ( xi ), H' ( xi )) = - frac(f^(( n + 1 )) ( xi ), n ! H' ( xi )) ( x - xi )^n $ 即 $ G ( x_0 ) = - frac(f^(( n + 1 )) ( xi ), n ! H' ( xi )) ( x - xi )^n H ( x_0 ) $ 取 $H ( t ) = ( x - t )^(n + 1)$ 即证。

]
=== Cauchy 型余项
<0004-cauchy-型余项>
#statement("theorem")[

存在 $delta > 0$，设 $f$ 在 $( x_0 , x_0 + delta )$ 上连续并 $n + 1$ 阶可导，则对任意的 $x$ 都存在 $xi$ 有 $ f ( x ) = P_n ( x ) + r_n ( x ) $ 其中 $ r_n ( x ) = frac(f^(( n + 1 )) ( xi ), n !) ( x - xi )^n ( x - x_0 ) $

]
#statement("proof")[

在上一个证明中取 $H ( t ) = x - t$ 即可。

]
