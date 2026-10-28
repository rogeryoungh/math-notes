#import "../../template/environments.typ": statement

= 高等数学
<gaoshu-高等数学>
== 函数、极限、连续
<gaoshu-函数极限连续>
=== 大纲要求
<gaoshu-大纲要求>
\1. 理解函数的概念，掌握函数的表示法，会建立应用问题的函数关系。

\2. 了解函数的有界性、单调性、周期性和奇偶性。

\3. 理解复合函数及分段函数的概念，了解反函数及隐函数的概念。

\4. 掌握基本初等函数的性质及其图形，了解初等函数的概念。

\5. 理解极限的概念，理解函数左极限与右极限的概念以及函数极限存在与左极限、右极限之间的关系。

\6. 掌握极限的性质及四则运算法则。

\7. 掌握极限存在的两个准则，并会利用它们求极限，掌握利用两个重要极限求极限的方法。

\8. 理解无穷小量、无穷大量的概念，掌握无穷小量的比较方法，会用等价无穷小量求极限。

\9. 理解函数连续性的概念（含左连续与右连续），会判别函数间断点的类型。

\10. 了解连续函数的性质和初等函数的连续性，理解闭区间上连续函数的性质（有界性、最大值和最小值定理、介值定理），并会应用这些性质。

=== 函数
<gaoshu-函数>
有界性：若函数 $f$ 在定义域 $D$ 上，存在正数 $M$ 使得 $abs(f ( x )) lt.eq M$ 对任意 $x in D$ 都成立，则称 $f$ 在 $D$ 上有界。

单调性：若函数 $f$ 在定义域 $D$ 上，对其上任意两点 $x_1 , x_2$（不妨 $x_1 < x_2$），恒有 $f ( x_1 ) < f ( x_2 )$，则称 $f$ 在区间 $D$ 上是单调增加的；恒有 $f ( x_1 ) > f ( x_2 )$，则称 $f$ 在区间 $D$ 上是单调减少的。

=== 数列极限
<gaoshu-数列极限>
#statement("definition", title: [数列极限的 $epsilon - N$ 定义])[
设 ${ a_n }$ 为数列，$A$ 为定数。若对任给的正数 $epsilon$，总存在正整数 $N = N ( epsilon )$，使得当 $n > N$ 时有 $ abs(a_n - A) < epsilon $ 则称数列 ${ a_n }$ 收敛于 $A$，或称 $A$ 为数列 ${ a_n }$ 的极限，记作 $ lim_(n arrow.r oo) a_n = A upright("，或") med a_n arrow.r a ( n arrow.r oo ) $
]
数列极限的性质：

- 唯一性：若数列收敛，则极限唯一；

- 局部有界性：若数列收敛，则数列有界；

- 局部保号性：若数列收敛于 $A$，且 $abs(A) eq.not 0$，则存在正整数 $N$ 使得当 $n > N$ 时 $a_n A > 0$。

数列极限的存在准则：

- 单调有界原理：单调有界数列必有极限。

- 夹逼准则：若存在 $N$ 使得当 $n > N$ 时有 $x_n lt.eq y_n lt.eq z_n$，且 $lim x_n = lim z_n = A$，则 $lim y_n = A$。

- 致密性定理：数列的任何子列都收敛。

- Cauchy 收敛准则：数列收敛当且仅当数列为 Cauchy 列。即任给 $epsilon > 0$，均存在 $N ( epsilon )$ 使任取 $m , n > N ( epsilon )$ 有 $abs(a_m - a_n) < epsilon$。

- 压缩映射原理：设递推数列 $a_(n + 1) = f ( a_n )$，若存在常数 $L in ( 0 , 1 )$ 使得对任意 $x_1 , x_2$ 有 $abs(f ( x_1 ) - f ( x_2 )) lt.eq L abs(x_1 - x_2)$ 则数列收敛。

=== 函数极限
<gaoshu-函数极限>
#statement("definition", title: [函数在 $x_0$ 处的极限])[
设函数 $f$ 在去心邻域 $U^compose ( x_0 ; delta' )$ 内有定义，$A$ 为定数。若对任给的 $epsilon > 0$，存在正数 $delta < delta'$，使得当 $0 < abs(x - x_0) < delta$ 时，有 $abs(f ( x ) - A) < epsilon$，则称函数 $f$ 当 $x$ 趋于 $x_0$ 时以 $A$ 为极限，记作 $ lim_(x arrow.r x_0) f ( x ) = A med upright("或") med f ( x ) arrow.r A ( x arrow.r x_0 ) $
]
#statement("definition", title: [函数在 $oo$ 处的极限])[
设函数 $f$ 在 $abs(x) > M'$ 上有定义，$A$ 为定数。若对任给的 $epsilon > 0$，存在正数 $M = M ( epsilon ) > M'$，使得当 $x > M$ 时，有 $ abs(f ( x ) - A) < epsilon $ 则称函数 $f$ 当 $x$ 趋于 $oo$ 时以 $A$ 为极限，记作 $ lim_(x arrow.r oo) f ( x ) = A med upright("或") med f ( x ) arrow.r A ( x arrow.r oo ) $
]
#statement("note")[
注意函数在 $oo$ 处的极限包括 $+ oo$ 和 $- oo$ 两个方向。
]
函数极限的性质：

- 唯一性：若函数极限存在，则极限唯一；

- 局部有界性：若函数极限存在，则存在去心邻域使其有界；

- 局部保号性：若函数极限为 $A$，且 $abs(A) eq.not 0$，则 $f$ 在某去心邻域 $U^compose ( x_0 )$ 上满足 $A f ( x ) > 0$。

- 左极限和右极限相等 $arrow.l.r.double$ 极限存在。

函数极限的存在准则：

- 夹逼定理：若 $f ( x ) lt.eq g ( x ) lt.eq h ( x )$ 且 $lim f ( x ) = lim g ( x ) = A$，则 $lim g ( x ) = A$。

- Heine 定理：极限 $lim_(x arrow.r x_0) f ( x )$ 存在的充要条件是，任何含于空心邻域 $U^compose ( x_0 )$ 的收敛于 $x_0$ 的数列 ${ x_n }$，极限 $lim_(n arrow.r oo) f ( x_n )$ 都收敛于同一值。

- Cauchy 收敛准则：极限 $lim_(x arrow.r x_0) f ( x )$ 存在的充要条件是，任给 $epsilon > 0$ 都存在邻域使得在其中任取 $x_1 , x_2 in U^compose ( x_0 )$ 使得 $abs(f ( x_1 ) - f ( x_2 )) < epsilon$。

=== 常用极限
<gaoshu-常用极限>
经典极限，不用证明： $ lim_(x arrow.r 0) frac(sin x, x) = 1 , #h(2em) lim_(x arrow.r 0) ( 1 + x )^(1 / x) = lim_(x arrow.r oo) (1 + 1 / x)^x = upright(e) $

经典但需要证明的极限：

#statement("example")[
如果 $a_1 , dots.h.c , a_k > 0$，那么有 $ lim_(n arrow.r oo) root(n, a_1^n + dots.h.c + a_k^n) = max { a_1 , dots.h.c , a_k } $
]
#statement("proof")[
不妨设 $a_1 = max { a_1 , dots.h.c , a_k }$，那么有 $ a_1 < root(n, a_1^n + dots.h.c + a_k^n) < root(n, k a_1^n) arrow.r a_1 $ 由夹逼原理知原式成立。
]
=== 连续
<gaoshu-连续>
#statement("definition", title: [连续性])[
设函数 $f$ 在某 $U ( x_0 )$ 上有定义。若 $ lim_(x arrow.r x_0) f ( x ) = f ( x_0 ) $ 则称 $f$ 在点 $x_0$ 连续。

连续性的 $epsilon - delta$ 形式定义：若对任给的 $epsilon > 0$，存在 $delta > 0$，使得当 $abs(x - x_0) < delta$ 时，有 $abs(f ( x ) - f ( x_0 )) < epsilon$，则称函数 $f$ 在点 $x_0$ 连续。
]
记 $Delta x = x - x_0$，称为自变量 $x$ 在点 $x_0$ 的增量或改变量。设 $y_0 = f ( x_0 )$，相应的函数 $y$ 在点 $x_0$ 的增量记为 $ Delta y = f ( x ) - f ( x ) = f ( x + Delta ) - f ( x_0 ) = y - y_0 $

#statement("definition", title: [间断点])[
设函数 $f$ 在某去心邻域 $U^compose ( x_0 )$ 上有定义，但 $f$ 在 $f ( x_0 )$ 处无定义、或有定义但不连续，则 $x_0$ 为间断点。
]
间断点分类：

- 第一类间断点：$f ( x^(+) )$ 与 $f ( x^(-) )$ 均存在。

  - 可去间断点：$f ( x^(+) ) = f ( x^(-) )$。

  - 跳跃间断点：$f ( x^(+) ) eq.not f ( x^(-) )$。

- 第二类间断点：$f ( x^(+) )$ 与 $f ( x^(-) )$ 至少有一个不存在。

  - 无穷间断点：$f ( x^(+) )$ 与 $f ( x^(-) )$ 至少有一个为 $oo$。

  - 震荡间断点：函数在区间内变动无限多次，如 $sin 1 / x$。

最值：设 $f$ 在区间 $I$ 上有定义，若存在 $x_0 in I$ 使得 $f ( x ) lt.eq f ( x_0 )$，则称 $f ( x_0 )$ 是区间上的最大值；若使得 $f ( x ) gt.eq f ( x_0 )$，则称 $f ( x_0 )$ 是区间上的最小值。

连续函数的性质：

- 基本初等函数在定义域区间内都是连续的；

- 最值定理：闭区间上连续的函数一定有界且必存在最大和最小值。

- 零点定理：函数 $f ( x )$ 在闭区间 $[ a , b ]$ 上连续，若 $f ( a ) f ( b ) < 0$ 则必存在至少一点 $xi in ( a , b )$ 使得 $f ( xi ) = 0$。

- 介值定理：函数 $f ( x )$ 在闭区间 $[ a , b ]$ 上连续，那么对于 $f ( a )$ 和 $f ( b )$ 之间的数 $c$，必存在 $xi in ( a , b )$ 使得 $f ( xi ) = c$。

== 一元函数微分学
<gaoshu-一元函数微分学>
=== 大纲要求
<gaoshu-大纲要求-1>
\1. 理解导数和微分的概念，理解导数与微分的关系，理解导数的几何意义，会求平面曲线的切线方程和法线方程，了解导数的物理意义，会用导数描述一些物理量，理解函数的可导性与连续性之间的关系。

\2. 掌握导数的四则运算法则和复合函数的求导法则，掌握基本初等函数的导数公式。了解微分的四则运算法则和一阶微分形式的不变性，会求函数的微分。

\3. 了解高阶导数的概念，会求简单函数的高阶导数。

\4. 会求分段函数的导数，会求隐函数和由参数方程所确定的函数以及反函数的导数。

\5. 理解并会用罗尔（Rolle）定理、拉格朗日（Lagrange）中值定理和泰勒（Taylor）定理，了解并会用柯西（Cauchy）中值定理。

\6. 掌握用洛必达法则求未定式极限的方法。

\7. 理解函数的极值概念，掌握用导数判断函数的单调性和求函数极值的方法，掌握函数最大值和最小值的求法及其应用。

\8. 会用导数判断函数图形的凹凸性（注：在区间 $( a , b )$ 内，设函数 $f ( x )$ 具有二阶导数。当 $f' ( x ) > 0$ 时，$f ( x )$ 的图形是凹的；当 $f ( x ) < 0$ 时， $f ( x )$ 的图形是凸的），会求函数图形的拐点以及水平、铅直和斜渐近线，会描绘函数的图形。

\9. 了解曲率、曲率圆与曲率半径的概念，会计算曲率和曲率半径。

=== 导数
<gaoshu-导数>
#statement("definition", title: [微分])[
设函数 $f$ 定义在某个邻域内 $U ( x_0 , r )$ 内，如果存在常数 $A$ 使得 $ f ( x ) = f ( x_0 ) + A ( x - x_0 ) + o ( x - x_0 ) $ 当 $x arrow.r x_0$ 成立，则称 $f$ 在 $x_0$ 处可微。线性函数 $A ( x - x_0 )$ 称为 $f$ 在 $x_0$ 处的微分。我们记作 $upright(d) y = upright(d) f = A upright(d) x$。
]
#statement("definition", title: [导数])[
设函数 $y = f ( x )$ 在邻域 $U ( x_0 , r )$ 内有定义，若极限 $ lim_(x arrow.r x_0) frac(f ( x ) - f ( x_0 ), x - x_0) $ 存在，则称函数 $f$ 在点 $x_0$ 可导，并称该极限为函数 $f$ 在点 $x_0$ 的导数，记作 $f' ( x_0 )$。
]
显然一元函数可微等价于可导。

可导与连续（记住 $abs(x)$ 和 $x abs(x)$）： $ upright("左右连续") arrow.l.double upright("左右可导") arrow.l.double upright("可导") arrow.r.double upright("连续") arrow.l.r.double upright("左右连续") $

重点例子： $ f_n ( x ) = x^n sin 1 / x , quad f_n ( 0 ) = 0 $

- $f_1 ( x )$ 在 $bb(R)$ 上连续，但 $x = 0$ 处不可导。

- $f_2 ( x )$ 在 $bb(R)$ 上连续，在 $bb(R)$ 上可导，但 $f' ( x )$ 不在 $x = 0$ 处连续。

- $f_3 ( x )$ 在 $bb(R)$ 上连续，在 $bb(R)$ 上可导，且 $f' ( x )$ 在 $bb(R)$ 上连续。

导数关于加法线性 $ ( u plus.minus v )' = u' plus.minus v' , quad ( C u )' = C u' $ 乘除法 $ ( u v )' = u' v + v' u , quad (u / v)' = frac(u' v - u v', v^2) $

复合函数的求导法则：设 $y = f ( u ) , u = g ( x )$ 且 $f ( u ) , g ( x )$ 都可导，那么 $ frac(upright(d) y, upright(d) x) = frac(upright(d) y, upright(d) u) dot.op frac(upright(d) u, upright(d) x) , quad y' ( x ) = f' ( u ) g' ( x ) $

高阶导数的计算（Leibniz 公式）：若 $f = u v$，则 $ f^(( n )) = ( u v )^(( n )) = sum_(k = 0)^n binom(n, k) u^(( n - k )) v^(( k )) $

一阶微分的不变性：无论 $u$ 是中间变量还是自变量，微分形式 $upright(d) y = f' ( u ) upright(d) u$ 保持不变。二阶就没有不变性。

=== 常见导数公式
<gaoshu-常见导数公式>
指数对数幂函数 $ ( C )' = 0 , quad (x^a)' = a x^(a - 1) , quad (upright(e)^x)' = upright(e)^x , quad (ln x)' = 1 / x $ 当 $a > 0$ 且 $a eq.not 1$ 时 $ (a^x)' = ln a , quad (log_a x)' = frac(1, x ln a) $ 三角函数 $ (sin x)' = cos x , quad (cos x)' = - sin x , quad (tan x)' = frac(1, cos^2 x) = sec^2 x $ 另一堆三角函数 $ (cot x)' = - csc^2 x , quad (sec x)' = - sec x tan x , quad (csc x)' = sec x cot x $ 反三角函数 $ (arcsin x)' = 1 / sqrt(1 - x^2) , quad (arccos x)' = - 1 / sqrt(1 - x^2) , quad (arctan x)' = frac(1, 1 + x^2) $

=== L'Hospital 法则
<gaoshu-lhospital-法则>
#statement("theorem", title: [L'Hospital 法则])[
设 $f , g$ 是 $( a , b )$ 上的连续可导函数，$g' eq.not 0$，当 $x arrow.r a +$ 时：

- （$0 \/ 0$ 型）有 $lim f ( x ) = lim g ( x ) = 0$

- （$oo \/ oo$ 型）有 $lim f ( x ) = lim g ( x ) = oo$

- （$* \/ oo$ 型）有 $lim g ( x ) = oo$

且极限 $lim frac(f' ( x ), g' ( x ))$ 存在，则 $ lim frac(f ( x ), g ( x )) = lim frac(f' ( x ), g' ( x )) $
]
#statement("note")[
特别注意使用 L'Hospital 法则前后函数是否连续！
]
#statement("theorem", title: [Stolz 定理一])[
设数列 ${ x_n } , { y_n }$，且 ${ y_n }$ 严格单调地趋于 $+ oo$，如果 $ lim_(n arrow.r oo) frac(x_n - x_(n - 1), y_n - y_(n - 1)) = A $ 则 $ lim_(n arrow.r oo) x_n / y_n = A $
]
#statement("theorem", title: [Stolz 定理二])[
设数列 ${ y_n }$ 严格单调地趋于 $0$，且数列 ${ x_n }$ 也收敛到 $0$，那么如果 $ lim_(n arrow.r oo) frac(x_n - x_(n - 1), y_n - y_(n - 1)) = A $ 则 $ lim_(n arrow.r oo) x_n / y_n = A $
]
=== 导数的应用
<gaoshu-导数的应用>
#heading(level: 4, numbering: none)[单调性]
<gaoshu-单调性>
若函数 $f$ 在 $[ a , b ]$ 上连续，在 $( a , b )$ 内可导，若 $f' gt.eq 0$ 则 $f$ 在 $[ a , b ]$ 内单调递增；若 $f' lt.eq 0$ 则 $f$ 在 $[ a , b ]$ 内单调递减。

极值：若函数 $f$ 在某邻域 $U ( x_0 )$ 内有定义，若在去心邻域 $U^compose ( x_0 )$ 上满足 $f ( x ) < f ( x_0 )$ 则 $f ( x_0 )$ 是在 $f$ 上的极大值，$x_0$ 称为 $f$ 的极值点。

驻点：导数为 $0$ 的点。

#statement("theorem", title: [Fermat 定理])[
设函数 $f$ 在点 $x_0$ 的某邻域上有定义，且在点 $x_0$ 可导。若点 $x_0$ 为极值点，则必有 $f' ( x_0 ) = 0$。
]
#statement("proof")[
不妨设 $x_0$ 为 $f$ 的极小值点，则存在邻域 $U ( x_0 , delta )$ 且满足不等式 $f ( x ) lt.eq f ( x_0 )$，那么 $ frac(f ( x ) - f ( x_0 ), x - x_0) gt.eq 0 , quad x in ( x_0 - delta , x_0 ) #h(2em) frac(f ( x ) - f ( x_0 ), x - x_0) lt.eq 0 , quad x in ( x_0 , x_0 + delta ) $ 从而 $ 0 lt.eq f'_(+) ( x_0 ) = f' ( x_0 ) = f'_(-) ( x_0 ) lt.eq 0 $ 故 $f' ( x_0 ) = 0$。
]
极值的第一充分条件：设 $f$ 在 $x_0$ 处连续，且在 $x_0$ 的某去心邻域 $U^compose ( x_0 , delta )$ 可导。

- 若 $f' ( x )$ 在 $x = x_0$ 处两侧异号，则 $x_0$ 处取得极值。

- 若 $f' ( x )$ 在 $x = x_0$ 处两侧同号，则 $x_0$ 处不是极值点。

极值的第二充分条件：设 $f$ 在 $x_0$ 处二阶可导，且 $f' ( x_0 ) = 0 , f'' ( x_0 ) eq.not 0$，则 $f$ 在 $x_0$ 处取得极值。

#statement("theorem", title: [Darboux 定理])[
函数 $f$ 在 $[ a , b ]$ 上存在导数，且 $f'_(+) ( a ) eq.not f'_(-) ( b )$，对于任给的介于 $f'_(+) ( a ) , f'_(-) ( b )$ 之间的实数 $k$，总是存在 $xi in ( a , b )$ 使得 $f' ( xi ) = k$
]
#statement("proof")[
注意该定理并未要求导数连续，无法使用介值定理。令 $g ( x ) = f ( x ) - k x$。不妨设 $g'_(+) ( a ) < 0 < g'_(-) ( b )$，取 $g ( xi ) = min_([ a , b ]) g$。取两个邻域 $ frac(g ( x ) - g ( a ), x - a) < 0 , quad x in U ( a , delta ) #h(2em) frac(g ( x ) - g ( b ), x - b) > 0 , quad x in U ( b , delta ) $ 因此存在 $a < x_1 < x_2 < b$ 使得 $g ( x_1 ) < g ( a )$ 和 $g ( x_2 ) < g ( b )$。故 $xi$ 在开区间 $( a , b )$ 内，因此 $xi$ 为 $g$ 的极值点，由 Fermat 定理知 $g' ( xi ) = f' ( xi ) - k = 0$。
]
#heading(level: 4, numbering: none)[凹凸性]
<gaoshu-凹凸性>
#statement("definition", title: [凹凸性])[
设 $f$ 为定义在区间 $I$ 上的函数，若对 $I$ 上当任意两点 $x_1 , x_2$，不妨设 $x_1 < x_2$ 若 $ f (frac(x_1 + x_2, 2)) > frac(f ( x_1 ) + f ( x_2 ), 2) $ 则曲线上凹。若 $ f (frac(x_1 + x_2, 2)) < frac(f ( x_1 ) + f ( x_2 ), 2) $ 则曲线上凸。
]
二阶导和凹凸性（记住 $x^2$ 就行）：设函数 $f$ 在 $[ a , b ]$ 上连续，在 $( a , b )$ 内二阶可导，若在 $( a , b )$ 内 $f'' > 0$ 则曲线上凹；若 $f'' < 0$，则上凸。

拐点：函数在 $P ( x_0 , f ( x_0 ) )$ 左右侧凹凸性不一致。注意拐点是 $P ( x , y )$。

拐点的第一充分条件：设 $f$ 在 $U ( x_0 )$ 连续，去心邻域内二阶可导（注意不要求 $f'' ( x_0 )$ 存在。

- 若 $f'' ( x )$ 在 $x = x_0$ 处两侧异号，则 $( x_0 , f ( x_0 ) )$ 处是拐点。

- 若 $f'' ( x )$ 在 $x = x_0$ 处两侧同号，则 $( x_0 , f ( x_0 ) )$ 处不是拐点。

拐点的第二充分条件：设 $f$ 在 $x_0$ 处三阶可导，且 $f'' ( x_0 ) = 0 , f''' ( x_0 ) eq.not 0$，则 $f$ 在 $( x_0 , f ( x_0 ) )$ 处取得拐点。

拐点的第三充分条件：设 $f$ 满足 $ f' ( x ) = f'' ( x_0 ) = dots.h.c f^(( n )) ( x_0 ) = 0 $ 但 $f^(( n + 1 )) ( x_0 ) eq.not 0$，则

- 当 $n$ 是偶数时，$( x_0 , f ( x_0 ) )$ 是拐点；

- 当 $n$ 是奇数时，$( x_0 , f ( x_0 ) )$ 是极值点；

#heading(level: 4, numbering: none)[平面几何]
<gaoshu-平面几何>
渐近线：若曲线上的动点 $M$ 无限的远离原点时，点 $M$ 与某固定的直线 $L$ 的距离趋向于 $0$，则称 $L$ 是曲线的渐近线。有以下三种：

- 若 $lim_(x arrow.r a plus.minus) = oo$，则称 $x = a$ 是其铅直渐近线；

- 若 $lim_(x arrow.r plus.minus oo) = c$，则称 $y = c$ 为其水平渐近线。

- 若 $lim_(x arrow.r plus.minus oo) frac(f ( x ), x) = a eq.not 0$ 且 $lim_(x arrow.r plus.minus oo) f ( x ) - a x = b$，则称 $y = a x + b$ 为其水平渐近线。

平面曲线 $y = f ( x )$ 在 $M ( x_0 , y_0 )$ 处的切线方程为 $ y - y_0 = f' ( x_0 ) ( x - x_0 ) $ 法线方程为 $ y - y_0 = frac(1, f' ( x_0 )) ( x - x_0 ) $

曲率： $ K = frac(abs(y''), (1 + ( y' )^2)^(3 / 2)) = frac(abs(y'' x' - x'' y'), ( ( x' )^2 + ( y' )^2 )^(3 / 2)) $ 半径 $rho = 1 / K$。

=== 微分中值定理
<gaoshu-微分中值定理>
微分中值定理主要有三个：Rolle 定理、Lagrange 中值定理和 Cauchy 中值定理。

#statement("theorem", title: [Rolle 中值定理])[
若函数 $f$ 在 $[ a , b ]$ 上连续可导，且 $f ( a ) = f ( b )$。则存在 $xi in ( a , b )$，使得 $f' ( xi ) = 0$。
]
#statement("proof")[
因为 $f ( x )$ 在 $[ a , b ]$ 上连续，所以有最大值 $M$ 和最小值 $m$。

\1. 若 $m = M$，显然成立。

\2. 若 $m < M$，又 $f ( a ) = f ( b )$，故最值必然在 $xi in ( a , b )$ 中取到，从而 $x = xi$ 是其极值点，由 Fermat 定理知 $f' ( xi ) = 0$。
]
我们可以做更多点的推广。假如 $f ( x_1 ) = f ( x_2 ) = f ( x_3 )$ 都相等，据此存在 $xi_1 in ( x_1 , x_2 )$ 和 $xi_2 in ( x_2 , x_3 )$ 使得 $f' ( xi_1 ) = f' ( xi_2 ) = 0$，再用一遍定理知存在 $xi_3 in ( xi_1 , xi_2 )$ 使得 $f'' ( xi_3 ) = 0$。

#statement("theorem", title: [Lagrange 定理])[
若函数 $f$ 在 $[ a , b ]$ 上连续，在 $( a , b )$ 中可微，则存在 $xi in ( a , b )$，使得 $ f' ( xi ) = frac(f ( b ) - f ( a ), b - a) $
]
#statement("proof")[
做辅助函数 $ F ( x ) = f ( x ) - f ( a ) - frac(f ( b ) - f ( a ), b - a) ( x - a ) $ 显然 $F ( a ) = F ( b ) = 0$，且满足 Rolle 定理的其他两个条件，故存在 $xi in ( a , b )$ 使得 $ F' ( xi ) = f' ( xi ) - frac(f ( b ) - f ( a ), b - a) = 0 $ 移项即证。
]
一般可以直接说，存在 $xi in ( a , b )$ 使得 $f ( b ) - f ( a ) = f' ( xi ) ( b - a )$。考虑设 $ xi = ( 1 - theta ) a + theta b = a + theta ( b - a ) , quad theta in ( 0 , 1 ) $ 因此可以说存在 $theta in ( 0 , 1 )$ 使得 $ f ( b ) - f ( a ) = f' ( a + theta ( b - a ) ) ( b - a ) $

#statement("theorem", title: [Cauchy 中值定理])[
设 $f , g$ 在 $[ a , b ]$ 上连续，在 $( a , b )$ 中可微，且 $g' ( x ) eq.not 0$，则存在 $xi in ( a , b )$，使得 $ frac(f ( b ) - f ( a ), g ( b ) - g ( a )) = frac(f' ( xi ), g' ( xi )) $
]
#statement("proof")[
首先注意到 $g ( b ) eq.not g ( a )$，否则由 Rolle 定理知存在 $g' ( x ) = 0$。构造 $ F ( x ) = f ( x ) - f ( a ) - lambda ( g ( x ) - g ( a ) ) , quad lambda = frac(f ( b ) - f ( a ), g ( b ) - g ( a )) $ 注意到 $F ( a ) = F ( b ) = 0$，由 Rolle 定理知存在 $xi in ( a , b )$ $ F' ( xi ) = f' ( xi ) - lambda g' ( xi ) = 0 $
]
常见导数恒等构造：

- 对于 $x f' + n f$，构造 $( x^n f )'$；

- 对于 $x f' - n f$，构造 $( x^(- n) f )'$；

- 对于 $f' + lambda f$，构造 $( upright(e)^(lambda x) f )'$；

- 对于 $f' - lambda f$，构造 $( upright(e)^(- lambda x) f )'$；

- 重点：对于 $( f' )^2 + f dot.op f''$，构造 $( f dot.op f' )'$；

- 重点：对于 $f' \/ f$，构造 $ln f$；

以上导数公式大多可以通过微分方程凑得，不必强记。

=== Taylor 公式
<gaoshu-taylor-公式>
假设函数 $f$ 在 $x_0$ 处 $n$ 阶可导，定义其在 $x_0$ 处的 $n$ 阶 Taylor 多项式定义为 $ P_n ( x ; x_0 , f ) = f ( x_0 ) + sum_(k = 1)^n frac(f^(( k )) ( x_0 ), k !) ( x - x_0 )^k $ 当 $x_0 = 0$ 时，即为 Maclaurin 公式。

#statement("theorem", title: [Peano 型余项])[
存在 $delta > 0$ 使得对 $x in ( x_0 - delta , x_0 + delta )$ 有 $ f ( x ) = P_n ( x ) + r_n ( x ) , quad r_n ( x ) = o ( ( x - x_n )^n ) , quad x arrow.r x_0 $
]
#statement("proof")[
我们可以通过洛 $n$ 次证明。略。
]
#statement("theorem", title: [Lagrange 型余项])[
存在 $delta > 0$，设 $f$ 在 $( x_0 , x_0 + delta )$ 上连续并 $n + 1$ 阶可导，则对任意的 $x$ 都存在 $xi$ 有 $ f ( x ) = P_n ( x ) + r_n ( x ) , quad r_n ( x ) = frac(f^(( n + 1 )) ( xi ), ( n + 1 ) !) ( x - x_0 )^(n + 1) $
]
#statement("proof")[
固定 $x$，构造辅助函数 $ G ( t ) = f ( x ) - sum_(k = 0)^n frac(f^(( k )) ( t ), k !) ( x - t )^k $ 并任意的取在 $( x_0 , x_0 + delta )$ 上连续可导的函数 $H ( t )$，且 $H ( x ) = 0$。存在 $xi in ( x_0 , x_0 + delta )$ 满足 $ frac(G ( x_0 ), H ( x_0 )) = frac(G ( x ) - G ( x_0 ), H ( x ) - H ( x_0 )) = frac(G' ( xi ), H' ( xi )) = - frac(f^(( n + 1 )) ( xi ), n ! H' ( xi )) ( x - xi )^n $ 即 $ G ( x_0 ) = - frac(f^(( n + 1 )) ( xi ), n ! H' ( xi )) ( x - xi )^n H ( x_0 ) $ 取 $H ( t ) = ( x - t )^(n + 1)$ 即证。
]
#statement("theorem", title: [Cauchy 型余项])[
存在 $delta > 0$，设 $f$ 在 $( x_0 , x_0 + delta )$ 上连续并 $n + 1$ 阶可导，则对任意的 $x$ 都存在 $xi$ 有 $ f ( x ) = P_n ( x ) + r_n ( x ) , quad r_n ( x ) = frac(f^(( n + 1 )) ( xi ), n !) ( x - xi )^n ( x - x_0 ) $
]
#statement("proof")[
在上一个证明中取 $H ( t ) = x - t$ 即可。
]
常见 Taylor 展开：

$ frac(1, 1 - x) & = sum_(k = 0)^oo x^n = 1 + x + x^2 + x^3 + x^4 + x^5 + O ( x^6 )\
ln ( 1 + x ) & = sum_(k = 0)^oo frac(( - 1 )^k, k + 1) x^(k + 1) = x - x^2 / 2 + x^3 / 3 - x^4 / 4 + x^5 / 5 + O ( x^8 )\
sin x & = sum_(k = 0)^oo frac(( - 1 )^k, ( 2 k + 1 ) !) x^(2 k + 1) = x - x^3 / 6 + x^5 / 120 + O ( x^7 )\
cos x & = sum_(k = 0)^oo frac(( - 1 )^k, ( 2 k ) !) x^(2 k) = 1 - x^2 / 2 + x^4 / 24 - x^6 / 720 + O ( x^8 )\
upright(e)^x & = sum_(k = 0)^oo frac(1, k !) x^k = 1 + x + x^2 / 2 + x^3 / 6 + x^4 / 24 + x^5 / 120 + O ( x^6 ) $

奇奇怪怪的 Taylor 展开：

$ tan x & = x + x^3 / 3 + frac(2 x^5, 15) + O ( x^7 )\
sqrt(x + 1) & = 1 + x / 2 - x^2 / 8 + x^3 / 16 - frac(5 x^4, 128) + frac(7 x^5, 256) + O ( x^6 )\
ln ( x + sqrt(1 + x^2) ) & = x - x^3 / 6 + frac(3 x^5, 40) - frac(5 x^7, 112) + O ( x^9 )\
arcsin x & = x + x^3 / 6 + frac(3 x^5, 40) + frac(5 x^7, 112) + O ( x^9 )\
1 / 2 ln (frac(1 + x, 1 - x)) & = x + x^3 / 3 + x^5 / 5 + x^7 / 7 + O ( x^7 )\
arctan x & = x - x^3 / 3 + x^5 / 5 - x^7 / 7 + O ( x^9 )\
root(x, 1 + x) & = upright(e) x - frac(upright(e) x, 2) + frac(11 upright(e) x^2, 24) - frac(7 upright(e) x^3, 16) + O ( x^4 ) $

对于其他的函数，可以转化为已知函数，比如 $x^x = upright(e)^(x ln x)$ 和 $a^x = upright(e)^(x ln a)$。

== 一元函数积分学
<gaoshu-一元函数积分学>
=== 大纲要求
<gaoshu-大纲要求-2>
\1. 理解原函数的概念，理解不定积分和定积分的概念。

\2. 掌握不定积分的基本公式，掌握不定积分和定积分的性质及定积分中值定理，掌握换元积分法与分部积分法。

\3. 会求有理函数、三角函数有理式和简单无理函数的积分。

\4. 理解积分上限的函数，会求它的导数，掌握牛顿-莱布尼茨公式。

\5. 理解反常积分的概念，了解反常积分收敛的比较判别法，会计算反常积分。

\6. 掌握用定积分表达和计算一些几何量与物理量（平面图形的面积、平面曲线的弧长、旋转体的体积及侧面积、平行截面面积为已知的立体体积、功、引力、压力、质心、形心等）及函数的平均值。

=== 不定积分
<gaoshu-不定积分>
#statement("note")[
不定积分可能含有奇点，不连续的段应当分别计算。比如 $ integral_0^pi frac(upright(d) x, 1 + sin^2 x) $ 就应当在 $pi / 2$ 两侧分别计算。
]
#statement("theorem", title: [第一类换元积分法])[
设 $f ( u )$ 具有原函数，$u = phi ( x )$ 可导，则有换元公式 $ integral f ( phi ( x ) ) phi' ( x ) upright(d) x = [integral f ( u ) upright(d) u]_(u = phi ( x )) $
]
#statement("theorem", title: [第二类换元积分法])[
设 $x = psi ( t )$ 是单调的可导函数，并且 $psi' ( t ) eq.not 0$。又设 $f ( psi ( t ) ) psi' ( t )$ 具有原函数，则有换元公式 $ integral f ( x ) upright(d) x = [integral f ( psi ( t ) ) psi' ( t ) upright(d) t]_(psi ( t ) = x) $
]
有理分式积分：拆开分母，待定系数分子，拆的好分即可。

根式积分：

- 遇到有理分式，拆开分母，待定分子系数。

- 遇到 $root(n, a x + b)$，则令 $t = root(n, a x + b)$。

- 遇到 $root(n, frac(a x + b, c x + d))$，则令 $t = root(n, frac(a x + b, c x + d))$。

- 遇到 $sqrt(a^2 - x^2)$，则设 $x = a sin t$ 或 $x = a cos t$。

- 遇到 $sqrt(a^2 + x^2)$，则设 $x = a tan t$。

- 遇到 $sqrt(x^2 - a^2)$，则设 $x = a sec t = frac(a, cos t)$。

分部积分法： $ integral u v' upright(d) x = u v - integral u' v upright(d) x $ 可以把常见的几类初等函数按复杂程度排序：反三角、对数、幂函数、三角函数、指数函数，一般使用复杂的做 $u$，简单的做 $v'$。

=== 不定积分表
<gaoshu-不定积分表>
以下是一些常见函数的原函数

$ integral x^m upright(d) x & = frac(1, m + 1) x^(m + 1) , quad m eq.not 1\
integral x^(- 1) upright(d) x & = ln abs(x)\
integral frac(1, 1 + x^2) upright(d) x & = arctan x\
integral frac(1, 1 - x^2) upright(d) x & = 1 / 2 ln abs(frac(1 + x, 1 - x))\
integral 1 / sqrt(1 + x^2) upright(d) x & = ln ( x + sqrt(1 + x^2) )\
integral 1 / sqrt(1 - x^2) upright(d) x & = arcsin x $

请注意恒等变换，不同形式的结果可能本质相同 $ tan (x + pi / 4) & = frac(1 + tan x, 1 - tan x) $ 双曲三角函数 $ sinh x = frac(upright(e)^x - upright(e)^(- x), 2) , quad cosh x = frac(upright(e)^x + upright(e)^(- x), 2) , quad tanh = frac(upright(e)^x - upright(e)^(- x), upright(e)^x + upright(e)^(- x)) $ 和反双曲三角函数 $ "arcsinh" x = ln ( x + sqrt(x^2 + 1) ) , quad "arccosh" x = ln ( x + sqrt(x^2 - 1) ) , quad "arctanh" x = 1 / 2 ln abs(frac(1 + x, 1 - x)) $

我们这里列一些组合的。

#statement("example", title: [有理式])[
$ integral frac(1, ( x + a ) ( x + b )) upright(d) x & = frac(1, b - a) ln abs(frac(x + b, x + a))\
integral frac(1, x^2 ( x + a )) upright(d) x & = 1 / a^2 ln abs(1 + a / x) - frac(1, a x)\
integral frac(1, x ( x^2 + a )) upright(d) x & = frac(1, 2 a) ln abs(frac(x^2, x^2 + a)) $
]
#statement("example", title: [带 $a^2 plus.minus x^2$])[
$ integral frac(1, a^2 + x^2) upright(d) x & = 1 / a arctan x / a\
integral frac(1, a^2 - x^2) upright(d) x & = 1 / a "arctanh" x / a\
integral 1 / sqrt(a^2 - x^2) upright(d) x & = arcsin x / a\
integral 1 / sqrt(a^2 + x^2) upright(d) x & = "arcsinh" x / a\
integral x / sqrt(a^2 plus.minus x^2) upright(d) x & = plus.minus sqrt(a^2 plus.minus x^2)\
integral frac(1, ( a^2 plus.minus x^2 )^(3 / 2)) upright(d) x & = frac(x, a^2 sqrt(x^2 plus.minus a^2))\
integral frac(x, ( a^2 plus.minus x^2 )^(3 / 2)) upright(d) x & = minus.plus frac(x, a^2 sqrt(x^2 plus.minus a^2))\
integral sqrt(a^2 + x^2) upright(d) x & = x / 2 sqrt(a^2 + x^2) + a^2 / 2 integral frac(upright(d) x, sqrt(a^2 - x^2)) $
]
#statement("example", title: [根式])[
$ integral x sqrt(x + a) upright(d) x & = 2 / 15 ( 3 x - 2 a ) ( x + a )^(3 / 2)\
integral x / sqrt(x + a) upright(d) x & = 2 / 3 ( x - 2 a ) sqrt(x + a)\
integral frac(1, x sqrt(x + a)) upright(d) x & = - 1 / sqrt(a) ln abs(frac(sqrt(a + x) + sqrt(a), sqrt(a + x) - sqrt(a))) , quad a > 0\
integral frac(1, x sqrt(x - a)) upright(d) x & = 2 / sqrt(a) arctan sqrt(x / a - 1) , quad a > 0\
integral sqrt(frac(a + x, a - x)) upright(d) x & = arcsin x / a - sqrt(a^2 - x^2) , quad a > 0\
integral sqrt(frac(a - x, a + x)) upright(d) x & = arcsin x / a + sqrt(a^2 + x^2) , quad a > 0\
integral sqrt(x + a) / x upright(d) x & = 2 sqrt(x + a) + a integral frac(upright(d) x, x sqrt(x + a)) $
]
#statement("example", title: [三角函数])[
$ integral tan x upright(d) x & = - ln ( cos x )\
integral frac(1, sin x) upright(d) x & = ln tan x / 2\
integral frac(1, cos x) upright(d) x & = ln tan (x / 2 + pi / 4) $
]
=== 定积分
<gaoshu-定积分>
#statement("theorem")[
假设函数 $phi : [ alpha , beta ] arrow.r [ a , b ]$ 连续可导，且 $phi ( alpha ) = a , phi ( beta ) = b$，则对任意的 $[ a , b ]$ 上的可积函数 $f$ 有 $f ( phi ( t ) ) phi' ( t )$ 可积，且 $ integral_a^b f ( x ) upright(d) x = integral_alpha^beta f ( phi ( t ) ) phi' ( t ) upright(d) t $ 假如 $phi$ 严格单调，则有 $ integral_(phi ( alpha ))^(phi ( beta )) f ( x ) upright(d) x = integral_alpha^beta f ( phi ( t ) ) phi' ( t ) upright(d) t $
]
#statement("theorem", title: [Wallis 公式])[
$ I_n = integral_0^(pi / 2) sin^n x upright(d) x = integral_0^(pi / 2) cos^n x upright(d) x = frac(n - 2, n) I_(n - 2) $ 其中 $I_0 = pi / 2 , I_1 = 1$。用双阶乘记之 $ I_(2 n) = frac(( 2 n - 1 ) ! !, ( 2 n ) ! !) pi / 2 , quad I_(2 n + 1) = frac(( 2 n ) ! !, ( 2 n + 1 ) ! !) tilde.op sqrt(pi ( n + 1 )) $
]
#statement("proof")[
使用分部积分法 $ I_n & = integral_0^(pi / 2) sin^(n - 1) x upright(d) ( - cos x )\
 & = (- sin^(n - 1) x cos x)_0^(pi / 2) + integral_0^(pi / 2) cos x upright(d) ( sin^(n - 1) x )\
 & = ( n - 1 ) integral_0^(pi / 2) sin^(n - 2) x cos^2 x upright(d) x\
 & = ( n - 1 ) I_(n - 2) - ( n - 1 ) I_n $ 从而 $I_n = frac(n - 1, n) I_(n - 2)$。
]
=== 反常积分
<gaoshu-反常积分>
反常积分的定义分为两种，一种是在无穷区间上的反常积分 $ I ( f ) = integral_a^(+ oo) f ( t ) upright(d) t = lim_(x arrow.r + oo) integral_a^x f ( t ) upright(d) t $ 另一种是在无界函数上的反常积分，其发散到无穷的点称为瑕点。

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
#heading(level: 4, numbering: none)[常见反常积分]
<gaoshu-常见反常积分>
积分 $ integral_1^(+ oo) frac(upright(d) x, x^p) = cases(delim: "{", lr(frac(x^(1 - p), 1 - p) |)_1^oo comma & p eq.not 1, lr(ln x |)_1^oo comma & p = 1) $ 在 $p lt.eq 1$ 时发散，$p > 1$ 时收敛。 积分 $ integral_2^(+ oo) frac(upright(d) x, x ln^p x) = cases(delim: "{", lr(frac(ln^(1 - p) x, 1 - p) |)_2^oo comma & p eq.not 1, lr(ln ln x |)_2^oo comma & p = 1) $ 在 $p lt.eq 1$ 时发散，$p > 1$ 时收敛。

=== 积分的应用
<gaoshu-积分的应用>
#heading(level: 4, numbering: none)[曲线围成的面积]
<gaoshu-曲线围成的面积>
曲线 $y = f ( x )$ 在 $[ a , b ]$ 上围成的曲边梯形面积 $ S = integral_a^b abs(f ( x )) upright(d) x $ 曲线 $r = r ( theta )$ 在 $[ alpha , beta ]$ 上围成的曲边扇形的面积 $ S = 1 / 2 integral_alpha^beta r_theta^2 upright(d) theta $

#heading(level: 4, numbering: none)[平面曲线的弧长]
<gaoshu-平面曲线的弧长>
当曲线由 $x = x ( t ) , y = y ( t )$ 决定时，且 $x , y$ 在 $t in [ a , b ]$ 上具有连续导数且不同时为 $0$ 时，弧长 $ s = integral_a^b sqrt([ x' ( t ) ]^2 + [ y' ( t ) ]^2) upright(d) t $ 当曲线由方程 $y = f ( x )$ 给出时，且 $f$ 在 $[ a , b ]$ 上具有连续导数时，弧长 $ s = integral_a^b sqrt(1 + [ f' ( x ) ]^2) upright(d) x $ 当曲线由 $r = r ( theta )$，且 $r$ 在 $[ a , b ]$ 上具有连续导数时，弧长 $ s = integral_a^b sqrt([ r ( theta ) ]^2 + [ r' ( theta ) ]^2) upright(d) theta $

#heading(level: 4, numbering: none)[旋转体的体积]
<gaoshu-旋转体的体积>
如果旋转体是 $y = f ( x )$ 在 $[ a , b ]$ 上的曲边梯形，则其绕 $x$ 轴旋转的体积为 $ V_x = pi integral_a^b [ f ( x ) ]^2 upright(d) x $ 如果绕 $y$ 轴旋转，则 $ V_y = 2 pi integral_a^b x f ( x ) upright(d) x $

假如曲线绕直线 $y = tan theta x = k x$ 进行旋转，则高度应当是 $ d = abs(x cos theta - y sin theta) $ 小矩形的宽度为增量在直线上的投影 $ ( upright(d) x , upright(d) y ) dot.op ( cos theta , sin theta ) = cos theta upright(d) x + sin theta upright(d) y $ 故 $ V_x = pi integral_a^b abs(x cos theta - y sin theta)^2 ( cos theta upright(d) x + sin theta upright(d) y ) = pi integral_a^b frac(abs(y k - x)^2, ( k^2 + 1 )^(3 / 2)) ( y' k + 1 ) upright(d) x $

#heading(level: 4, numbering: none)[旋转体的侧面积]
<gaoshu-旋转体的侧面积>
如果旋转体是 $y = f ( x )$ 在 $[ a , b ]$ 上的曲边梯形，则其绕 $x$ 轴旋转的侧面积为 $ A = integral 2 pi f ( x ) upright(d) s = 2 pi integral_a^b f ( x ) sqrt(1 + [ f' ( x ) ]^2) upright(d) x $

== 向量代数和空间解析几何
<gaoshu-向量代数和空间解析几何>
=== 大纲要求
<gaoshu-大纲要求-3>
\1. 理解空间直角坐标系，理解向量的概念及其表示。

\2. 掌握向量的运算（线性运算、数量积、向量积、混合积），了解两个向量垂直、平行的条件。

\3. 理解单位向量、方向数与方向余弦、向量的坐标表达式，掌握用坐标表达式进行向量运算的方法。

\4. 掌握平面方程和直线方程及其求法。

\5. 会求平面与平面、平面与直线、直线与直线之间的夹角，并会利用平面、直线的相互关系（平行、垂直、相交等））解决有关问题。

\6. 会求点到直线以及点到平面的距离。

\7. 了解曲面方程和空间曲线方程的概念。

\8. 了解常用二次曲面的方程及其图形，会求简单的柱面和旋转曲面的方程。

\9. 了解空间曲线的参数方程和一般方程。了解空间曲线在坐标平面上的投影，并会求该投影曲线的方程。

=== 向量运算
<gaoshu-向量运算>
叉积的性质

- 反交换律：$a times b = - b times a$；

- 分配律 $c times ( a + b ) = c times a + c times b$。

混合积的性质：

- $( a times b ) dot.op c = ( b times c ) dot.op a = ( c times a ) dot.op b$；

- $( a times b ) dot.op c = a dot.op ( b times c )$；

- $( a times b ) dot.op c = 0 arrow.l.r.double a , b , c$ 共面。

混合积的坐标形式： $ [ a b c ] = ( a times b ) dot.op c = mat(delim: "|", a_x, a_y, a_z; b_x, b_y, b_z; c_x, c_y, c_z) $

两向量平行的条件：假设 $a eq.not 0$，则 $b$ 平行于 $a$ 的充要条件即

- 存在唯一的实数 $lambda$ 使得 $b = lambda a$\;

- 向量 $a , b$ 线性相关；

- $a times b = 0$。

两向量垂直的条件：假设 $a eq.not 0$，则 $b$ 垂直于 $a$ 的充要条件为 $a dot.op b = 0$。

=== 平面与直线
<gaoshu-平面与直线>
#heading(level: 4, numbering: none)[平面方程]
<gaoshu-平面方程>
点法式：给定法向量 $bold(n) = ( A , B , C )$，和其上的一点 $M ( x_0 , y_0 , z_0 )$，则平面方程为 $ A ( x - x_0 ) + B ( y - y_0 ) + C ( z - z_0 ) = 0 $

一般式： $ pi_1 ( x , y , z ) = A x + B y + C z + D = 0 $ 其法向量为 $bold(n) = ( A , B , C )$。

三点式 $ mat(delim: "|", x - x_1, y - y_1, z - z_1; x - x_2, y - y_2, z - z_2; x - x_3, y - y_3, z - z_3) = 0 $

截距式 $ x / a + y / b + z / c = 1 $

#heading(level: 4, numbering: none)[直线方程]
<gaoshu-直线方程>
一般式： $ pi_1 ( x , y , z ) = pi_2 ( x , y , z ) = 0 $ 即两个平面的交点。该直线的方向向量为 $bold(tau) = bold(n)_1 times bold(n)_2$。

点向式：若给定直线的方向向量 $bold(tau) = ( D , E , F )$ 和其上一点 $M_0 ( x_0 , y_0 , z_0 )$，则方程为 $ frac(x - x_0, D) = frac(y - y_0, E) = frac(z - z_0, F) $ 其方向向量为 $bold(tau) = ( D , E , F )$。约定分母为零则分子为 $0$。

两点式： $ frac(x - x_1, x_2 - x_1) = frac(y - y_1, y_2 - y_1) = frac(z - z_1, z_2 - z_1) $

参数形式：令 $ frac(x - x_0, D) = frac(y - y_0, E) = frac(z - z_0, F) = t $ 则得到 $ x = x_0 + D t , quad y = y_0 + E t , quad z = z_0 + F t $

过直线 $L$ 的全体平面束，若直线表现为两平面交线（即一般式）$pi_1 ∩ pi_2$，则平面束方程为 $ pi_1 ( x , y , z ) + lambda pi_2 ( x , y , z ) = 0 , quad lambda in bb(R)^(*) $ 其他形式则很容易构造两个平面转化为一般式。

如果直线 $L_1$ 与直线 $L_2 , L_3$ 都垂直，则方向向量可以取 $bold(n)_1 = bold(n)_2 times bold(n)_3$。

#heading(level: 4, numbering: none)[平面与直线的夹角]
<gaoshu-平面与直线的夹角>
由余弦定理知 $ cos chevron.l n_1 , n_2 chevron.r = frac(abs(n_1 dot.op n_2), norm(n_1) norm(n_2)) $

- 平面与平面：即法向量的夹角 $cos phi = cos chevron.l n_1 , n_2 chevron.r$。

- 直线与直线：即方向向量的夹角 $cos phi = cos chevron.l tau_1 , tau_2 chevron.r$。

- 平面与直线：不太一样 $sin phi = cos chevron.l n_1 , tau_1 chevron.r$。

#heading(level: 4, numbering: none)[距离公式]
<gaoshu-距离公式>
点到平面：点 $P ( x_0 , y_0 , z_0 )$ 到直线 $A x + B y + C z + D = 0$ 的距离公式为 $ d = frac(abs(A x_0 + B y_0 + C z_0 + D), sqrt(A^2 + B^2 + C^2)) $

平行平面：两个平行平面 $A x + B y + C z + D_(1 , 2) = 0$ 的距离公式 $ d = frac(abs(D_1 - D_2), sqrt(A^2 + B^2 + C^2)) $ 也可以随便代入一个点，算点到平面的距离。

点到直线：设 $P$ 是直线外一点，$M$ 是直线上任意一点，且直线的方向向量为 $tau$，则距离为 $ d = frac(norm(accent(P M, ⃗) times tau), norm(tau)) $

异面直线：设两条直线的方向向量为 $tau_1 , tau_2$，并分别选一点 $P_1 , P_2$，则距离为 $ d = frac(abs(( tau_1 times tau_2 ) dot.op accent(P_1 P_2, ⃗)), norm(tau_1 times tau_2)) $

#heading(level: 4, numbering: none)[空间曲面与曲面]
<gaoshu-空间曲面与曲面>
空间曲面可以表示为 $F ( x , y , z ) = 0$ 的三维方程。

曲线的一般方程：表示为两个曲面的交集，即 $F_1 ( x , y , z ) = F_2 ( x , y , z ) = 0$。

空间曲线的参数方程：即也表示为参数方程 $x ( t ) , y ( t ) , z ( t )$。

投影曲线：比如对一般方程 $F_1 = F_2 = 0$ 在 $x O y$ 轴进行投影，则消去 $z$ 得到 $H ( x , y )$，其就是投影曲线。

== 多元函数微分学
<gaoshu-多元函数微分学>
=== 大纲要求
<gaoshu-大纲要求-4>
\1. 理解多元函数的概念，理解二元函数的几何意义。

\2. 了解二元函数的极限与连续的概念以及有界闭区域上连续函数的性质。

\3. 理解多元函数偏导数和全微分的概念，会求全微分，了解全微分存在的必要条件和充分条件，了解全微分形式的不变性。

\4. 理解方向导数与梯度的概念，并掌握其计算方法。

\5. 掌握多元复合函数一阶、二阶偏导数的求法。

\6. 了解隐函数存在定理，会求多元隐函数的偏导数。

\7. 了解空间曲线的切线和法平面及曲面的切平面和法线的概念，会求它们的方程。

\8. 了解二元函数的二阶泰勒公式。

\9. 理解多元函数极值和条件极值的概念，掌握多元函数极值存在的必要条件，了解二元函数极值存在的充分条件，会求二元函数的极值，会用拉格朗日乘数法求条件极值，会求简单多元函数的最大值和最小值，并会解决一些简单的应用问题。

=== 多元函数的微分
<gaoshu-多元函数的微分>
我们可以定义球邻域、方邻域 $ bb(B)^n ( bold(x) , r ) = { bold(y) mid(|) norm(bold(y) - bold(x)) < r } , quad bb(O)^n ( bold(a) , r ) = { bold(x) mid(|) abs(x_i - a_i) < r , 1 lt.eq i lt.eq n } $ 由于 $ bb(B)^n ( bold(a) , r ) subset bb(O)^n ( bold(a) , r ) subset bb(B)^n ( bold(a) , r sqrt(n) ) $ 我们可以不加区分的统称为邻域，记作 $U ( bold(a) , r )$。多元函数的极限概念便在其邻域上定义。

如果对于任给的 $delta > 0$，点 $bold(a)$ 的去心邻域 $U^compose ( bold(a) , delta )$ 内总有平面点集 $D$ 中的点，则称 $bold(a)$ 为 $D$ 的聚点。

#statement("definition", title: [多元函数的极限])[
设 $D subset bb(R)^n$ 上的函数 $f$，对于其上的聚点 $bold(a)$ 和常数 $A$，如果对任意 $epsilon > 0$ 存在 $delta > 0$ 使得当 $bold(x) in U^compose ( bold(a) , delta ) ∩ D$ 有 $ abs(f ( bold(x) ) - A) < epsilon $ 成立，则称 $f$ 在 $D$ 上当 $bold(x) arrow.r bold(a)$ 时以 $A$ 为极限，或者称为 $n$ 重极限，记作 $ lim_(bold(x) arrow.r bold(a)) f ( bold(x) ) = A $
]
#statement("definition", title: [多元函数的连续性])[
设 $D subset bb(R)^n$ 上的函数 $f$，对于其上聚点 $bold(a)$，若 $ lim_(bold(x) arrow.r bold(a)) f ( bold(x) ) = f ( bold(a) ) $ 成立，则称 $f$ 在点 $bold(a)$ 处连续。
]
#statement("definition", title: [二元函数的偏导数])[
设函数 $z = f ( x , y )$ 在 $P ( x_0 , y_0 )$ 的邻域内有定义，若极限 $ lim_(Delta x) frac(f ( x_0 + Delta x , y_0 ) - f ( x_0 , y_0 ), Delta x) $ 存在，则称此极限为 $z$ 在 $P$ 处对 $x$ 的偏导数，记作 $frac(partial z, partial x) ( x_0 , y_0 )$ 或者 $f'_x ( x_0 , y_0 )$。类似的可以定义对 $y$ 的偏导数。
]
#statement("definition", title: [全微分])[
设 $n$ 元函数 $f ( bold(x) )$ 在 $bold(a)$ 的邻域内有定义，若存在 $n$ 维向量 $bold(b)$ 使得 $ lim_(Delta bold(x) arrow.r 0) frac(f ( bold(a) + Delta bold(x) ) - f ( bold(a) ) - bold(b) dot.op Delta bold(x), norm(Delta bold(x))) = 0 $ 成立则称 $f$ 在 $bold(a)$ 处可微，向量 $bold(b)$ 为函数 $f$ 在 $bold(a)$ 处的导数，记为 $bold(f)' ( bold(a) ) = bold(b)$ 并记微分（全微分）为 $upright(d) bold(f) = bold(b) dot.op upright(d) bold(x)$。
]
#statement("definition", title: [方向导数])[
设 $n$ 元函数 $f ( bold(x) )$ 在 $bold(a)$ 的邻域内有定义，考虑一单位向量 $bold(mu)$，如果极限 $ frac(partial f, partial bold(mu)) ( bold(a) ) = lim_(t arrow.r 0 +) frac(f ( bold(a) + t bold(mu) ) - f ( bold(a) ), t) $ 存在，则称函数 $f$ 在 $bold(a)$ 处沿着方向 $bold(mu)$ 是方向可导的，并称该极限为函数 $f$ 在 $bold(a)$ 处沿着 $bold(mu)$ 的方向导数。
]
假如 $f$ 在 $P_0 ( x_0 , y_0 )$ 处的偏导数存在，函数 $f$ 在 $P_0$ 处的梯度为 $ "grad" f ( x_0 , y_0 ) = nabla f ( x_0 , y_0 ) = f'_x ( x_0 , y_0 ) bold(i) + f'_y ( x_0 , y_0 ) bold(j) $ 显然当函数 $f$ 可微时，$nabla f ( x_0 , y_0 ) = bold(f)' ( x_0 , y_0 )$，且 $ frac(partial f, partial bold(mu)) ( x_0 , y_0 ) = nabla f ( x_0 , y_0 ) dot.op bold(mu) $

对于下列命题：

- $Q_1 :$ 如果 $f$ 在 $bold(a)$ 处的偏导数存在且连续；

- $Q_2 :$ 函数 $f$ 在 $bold(a)$ 点可微；

- $Q_3 :$ 函数 $f$ 在 $bold(a)$ 点连续；

- $Q_4 :$ 函数 $f$ 在 $bold(a)$ 点极限存在；

- $Q_5 :$ 函数 $f$ 在 $bold(a)$ 点偏导数存在；

- $Q_6 :$ 函数 $f$ 在 $bold(a)$ 点任意方向的方向导数存在。

则他们的关系为 $ Q_1 arrow.r.double Q_2 arrow.r.double Q_3 arrow.r.double Q_4 , quad Q_2 arrow.r.double Q_5 , quad Q_2 arrow.r.double Q_6 $ 一些反例

- $Q_1 ⇍ Q_2 :$ 考虑一元时的经典反例 $( x^2 + y^2 ) sin frac(1, x^2 + y^2)$，其在原点处可微但偏导数不连续。

- $Q_5 ⇍ Q_3 + Q_6 :$ 考虑圆锥 $sqrt(x^2 + y^2)$，其在原点处可微、任意方向导数存在，但偏导数不存在。

- $Q_4 ⇍ Q_5 + Q_6 :$ 考虑 $frac(x y, x^2 + y^2)$，其在原点处任意方向导数存在、偏导数存在，但极限不存在。

- $Q_2 ⇍ Q_3 + Q_5 + Q_6 :$ 考虑 $sqrt(abs(x y))$，其在原点处连续、偏导数存在，。

=== 多元微分学的几何应用
<gaoshu-多元微分学的几何应用>
对于空间曲线 $Gamma : bold(f) ( t ) = ( phi , psi , omega )$，向量 $bold(s) = bold(f)' ( t_0 ) = ( phi' , psi' , omega' )$ 称为曲线 $Gamma$ 在点 $bold(f) ( t_0 )$ 处的一个切向量，从而曲线 $Gamma$ 在点 $bold(f) ( t_0 )$ 处的切线方程为 $ frac(x - x_0, phi ( t_0 )) = frac(y - y_0, psi ( t_0 )) = frac(z - z_0, omega ( t_0 )) $ 通过点 $bold(f) ( t_0 )$ 且与切线垂直的平面称为 $Gamma$ 在点 $M$ 处的法平面，其法向量是 $bold(s)$，其方程为 $ phi' ( t_0 ) ( x - x_0 ) + psi' ( t_0 ) ( y - y_0 ) + omega' ( t_0 ) ( z - z_0 ) = 0 $

对于空间曲面 $Sigma : F ( x , y , z ) = 0$，$M ( x_0 , y_0 , z_0 )$ 是曲面 $Sigma$ 上一点，向量 $bold(n) = ( F'_x , F'_y , F'_z )$ 是曲面 $Sigma$ 在点 $M$ 的切平面的一个法向量，该切平面的方程为 $ F'_x ( M ) ( x - x_0 ) + F'_y ( M ) ( y - y_0 ) + F'_z ( M ) ( z - z_0 ) = 0 $ 法线方程为 $ frac(x - x_0, F'_x ( M )) = frac(y - y_0, F'_y ( M )) = frac(z - z_0, F'_z ( M )) $

=== 极值问题
<gaoshu-极值问题>
#heading(level: 4, numbering: none)[无条件极值]
<gaoshu-无条件极值>
那么对于二元函数 $f$，设 $( x_0 , y_0 )$ 为其驻点，引入记号 $ Delta ( x_0 , y_0 ) = ( f_(x x) f_(y y) - f_(x y)^2 ) ( x_0 , y_0 ) $ 则有如下结论：

- 如果 $Delta > 0$，则当 $f_(x x) > 0$ 时为严格极小值；$f_(x x) < 0$ 为严格极大值。

- 如果 $Delta < 0$，不是极值。

- 如果 $Delta = 0$ 无法判断，可能有可能没有。

#heading(level: 4, numbering: none)[有条件极值]
<gaoshu-有条件极值>
Lagrange 乘数法：要找函数 $z = f ( x , y )$ 在 $phi ( x , y ) = 0$ 下的极值点，可以先做函数 $ L ( x , y ) = f ( x , y ) = lambda phi ( x , y ) $ 联立 $ cases(frac(partial L, partial x) = f'_x ( x , y ) + lambda phi'_x ( x , y ) = 0,
frac(partial L, partial y) = f'_y ( x , y ) + lambda phi'_y ( x , y ) = 0,
phi ( x , y ) = 0) $ 该方程解出的 $x , y , lambda$ 中的 $( x , y )$ 即是全部可能极值点。

#heading(level: 4, numbering: none)[二元函数的二阶 Taylor 公式]
<gaoshu-二元函数的二阶-taylor-公式>
#statement("theorem")[
设 $z = f ( x , y )$ 在点 $( x_0 , y_0 )$ 的邻域内且有连续 $3$ 阶偏导数，$( x_0 + h , y_0 + k )$ 为此邻域内任一点，令 $ D_(h , k) = h frac(partial, partial x) + k frac(partial, partial y) $ 则有 $ f ( x_0 + h , y_0 + k ) & = f ( x_0 , y_0 ) + (h frac(partial, partial x) + k frac(partial, partial y)) f ( x_0 , y_0 )\
 & + frac(1, 2 !) (h frac(partial, partial x) + k frac(partial, partial y))^2 f ( x_0 , y_0 )\
 & + 1 / 3 (h frac(partial, partial x) + k frac(partial, partial y))^3 f ( x_0 + theta h , y_0 + theta k ) quad theta in ( 0 , 1 ) $
]
一般的，记号 $ (h frac(partial, partial x) + k frac(partial, partial y))^m f = sum_(p = 0)^m binom(m, k) h^p k^(m - p) frac(partial^m f, partial x^p partial y^(m - p)) $

== 多元函数积分学
<gaoshu-多元函数积分学>
=== 大纲要求
<gaoshu-大纲要求-5>
\1. 理解二重积分、三重积分的概念，了解重积分的性质，，了解二重积分的中值定理。

\2. 掌握二重积分的计算方法（直角坐标、极坐标），会计算三重积分（直角坐标、柱面坐标、球面坐标）。

\3. 理解两类曲线积分的概念，了解两类曲线积分的性质及两类曲线积分的关系。

\4. 掌握计算两类曲线积分的方法。

\5. 掌握格林公式并会运用平面曲线积分与路径无关的条件，会求二元函数全微分的原函数。

\6. 了解两类曲面积分的概念、性质及两类曲面积分的关系，掌握计算两类曲面积分的方 法，掌握用高斯公式计算曲面积分的方法，并会用斯托克斯公式计算曲线积分。

\7. 了解散度与旋度的概念，并会计算。

\8. 会用重积分、曲线积分及曲面积分求一些几何量与物理量（平面图形的面积、体积、曲面面积、弧长、质量、质心、形心、转动惯量、引力、功及流量等）。

=== 重积分
<gaoshu-重积分>
二重积分可以考虑按 $x$ 轴分划或者按 $y$ 轴分划，化而二重积分为二次积分。比如对 $x$ 分划 $ integral.double_D f ( x , y ) upright(d) sigma = integral_a^b [integral_(phi_1 ( x ))^(phi_2 ( x )) f ( x , y ) upright(d) y] upright(d) x = integral_a^b upright(d) x integral_(phi_1 ( x ))^(phi_2 ( x )) f ( x , y ) upright(d) y $ 也可以用极坐标系转换 $x = r cos theta , y = r sin theta$，转化为 $ integral.double_D f ( x , y ) upright(d) sigma = integral.double_D f ( r cos theta , r sin theta ) r upright(d) r upright(d) theta $

三重积分可以考虑划分成"先重后单"或者"先单后重"的积分，比如 $ integral.triple_Omega f ( x , y , z ) upright(d) v = integral.double_(D_(x y)) upright(d) x upright(d) y integral_(z_1 ( x , y ))^(z_2 ( x , y )) f ( x , y , z ) upright(d) z $ 也可以考虑柱坐标系 $x = r cos theta , y = r sin theta , z = z$，则 $ integral.triple_Omega f ( x , y , z ) upright(d) v = integral.triple_Omega F ( r , theta , z ) r upright(d) r upright(d) theta upright(d) z $ 也可以考虑球面坐标系 $ cases(x = r sin phi cos theta,
y = r sin phi sin theta,
z = r cos phi) #h(2em) integral.triple_Omega f ( x , y , z ) upright(d) v = integral.triple_Omega F ( r , phi , theta ) r^2 sin phi upright(d) r phi upright(d) theta $

#statement("note")[
特别注意极坐标下 $r$ 是函数，不是定值！遇到很规整的重积分时，注意看能不能用轮换对称性！
]
=== 曲线积分
<gaoshu-曲线积分>
设 $L subset R^3$ 是一条可求长的连续曲线，起点终点分别为 $A$ 和 $B$。$L$ 的分割 $norm(T)$ 是指 $L$ 上的有序有限点列 $ A = P_0 arrow.r P_1 arrow.r dots.h.c P_n = B $ 令 $ Delta_s = abs(accent(P_(i - 1) P_i, ̂)) , quad norm(T) = max_(i = 1)^n Delta s_i $

#statement("definition", title: [第一型曲线积分])[
给定的 $f$ 是定义在曲线弧 $L$ 上的有界函数。对 $L$ 做分割 $bold(T)$ 并求和 $ sum_(i = 1)^n f ( T_i ) Delta s_i $ 如果 $norm(bold(T)) arrow.r 0$ 时，$S ( f , bold(T) )$ 存在极限且和分割 $bold(T)$ 无关，称该极限 $ integral_L f upright(d) s = integral_L f ( x , y , z ) upright(d) s = lim_(norm(T) arrow.r 0) sum_(i = 1)^n f ( T_i ) Delta s_i $ 为函数 $f$ 在曲线 $L$ 上的第一型曲线积分。此时称 $f$ 为被积函数而 $L$ 称为积分路径。
]
#statement("definition", title: [第二型曲线积分])[
设 $bold(F) = ( P , Q , R )$ 是一向量值函数，定义其沿着曲线 $L$ 的第二型曲线积分为 $ integral_L bold(F) dot.op bold(tau) upright(d) s = integral_L ( P ( x , y , z ) cos alpha + Q ( x , y , z ) cos beta + R ( x , y , z ) cos gamma ) upright(d) s $ 其中 $upright(d) s$ 是 $L$ 的弧微元。定义弧微元向量 $ upright(d) bold(s) = bold(tau) upright(d) s = ( upright(d) x , upright(d) y , upright(d) z ) $ 从而可以记成 $ integral_L bold(F) dot.op upright(d) bold(s) = integral_L P upright(d) x + Q upright(d) y + R upright(d) z $
]
#heading(level: 4, numbering: none)[曲线积分的计算]
<gaoshu-曲线积分的计算>
如果是第一型曲线积分 $f upright(d) s$：

- 如果有 $x ( t ) , y ( t )$，考虑依据 $sqrt(( upright(d) x )^2 + ( upright(d) y )^2)$ 投影。

- 如果有 $y = y ( x )$，考虑转换为 $sqrt(1 + (y')^2) upright(d) x$ 投影。

- 如果是 $r = r ( theta )$，考虑转换为 $sqrt(r^2 + (r')^2) upright(d) theta$ 投影。

如果是第二型曲线积分 $P upright(d) x + Q upright(d) y$：

- 考虑对曲线参数化，带入变成一重积分。

- 考虑法向量。

- 考虑格林公式，化为区域上的重积分。

=== 曲面积分
<gaoshu-曲面积分>
假设 $Sigma$ 是可求面积的连续曲面，分割 $bold(T)$ 是用坐标曲线网将 $Sigma$ 分成的 $n$ 个小曲面。令 $ Delta S_i = abs(Sigma_i) , quad norm(bold(T)) = max_(i = 1)^n Delta S_i $

#statement("definition", title: [第一型曲面积分])[
给定的 $f$ 是定义在 $Sigma$ 上的有界函数。对 $Sigma$ 做分割 $bold(T)$ 并求和 $ S ( f , bold(T) ) = sum_(i = 1)^n f ( P_i ) Delta S_i $ 如果 $norm(bold(T)) arrow.r 0$ 时，$S ( f , bold(T) )$ 存在极限且和分割 $bold(T)$ 无关，称该极限 $ integral.double_Sigma f upright(d) S = integral.double_Sigma f ( x , y , z ) upright(d) S = lim_(norm(T) arrow.r 0) sum_(i = 1)^n f ( P_i ) Delta S_i $ 为函数 $f$ 在曲线 $Sigma$ 上的第一型曲面积分。此时称 $f$ 为被积函数而 $Sigma$ 称为积分曲面。
]
#statement("definition", title: [第二型曲面积分])[
设 $bold(F) = ( P , Q , R )$ 是一向量值函数，定义其沿着曲面 $L$ 的第二型曲面积分为 $ integral_L bold(F) dot.op bold(tau) upright(d) s = integral_L ( P ( x , y , z ) cos alpha + Q ( x , y , z ) cos beta + R ( x , y , z ) cos gamma ) upright(d) s $ 其中 $upright(d) s$ 是 $L$ 的弧微元。定义弧微元向量 $ upright(d) bold(s) = bold(tau) upright(d) s = ( upright(d) x , upright(d) y , upright(d) z ) $ 从而可以记成 $ integral_L bold(F) dot.op upright(d) bold(s) = integral_L P upright(d) x + Q upright(d) y + R upright(d) z $
]
特别的，若 $z = z ( x , y )$，则法向量 $ bold(n) = plus.minus 1 / sqrt(1 + z_x^2 + z_y^2) ( - z_x , z_y , 1 ) $

#heading(level: 4, numbering: none)[曲面积分的计算]
<gaoshu-曲面积分的计算>
如果是第一型曲面积分 $f upright(d) S$：

- 如果有 $z = z ( x , y )$，考虑依据 $sqrt(1 + ( z_x )^2 + ( z_y )^2) upright(d) x upright(d) y$ 投影。

- 如果有 $F ( x , y , z ) = 0$，考虑求出 $z_x , z_y$，转换为上面的情况。

- 考虑斯托克公式，转化为第二型曲面积分。

如果是第二型曲面积分 $P upright(d) x + Q upright(d) y + R upright(d) z$：

- 考虑对坐标平面进行投影，化为重积分。 $ integral.double_Sigma R ( x , y , z ) upright(d) x upright(d) y = plus.minus integral.double_(D_(x y)) R ( x , y , z ( x , y ) ) upright(d) x upright(d) y $

- 考虑高斯公式，化为体积上的重积分。

=== 旋度、散度
<gaoshu-旋度散度>
#statement("theorem", title: [Green 公式])[
假设 $D subset bb(R)^2$ 是由有限条光滑或分段光滑的 Jordan 曲线所围成的区域，并取 $partial D$ 的正向。对任何有一阶连续偏导数的 $P , Q$ 有 $ integral_(partial D) P upright(d) x + Q upright(d) y = integral.double_D (frac(partial Q, partial x) - frac(partial P, partial y)) upright(d) x upright(d) y = integral.double_D mat(delim: "|", frac(partial, partial x), frac(partial, partial y); P, Q) upright(d) x upright(d) y $
]
#statement("theorem", title: [Green 定理])[
假设 $D subset bb(R)^2$ 是区域且 $P , Q$ 在 $D$ 上连续，则下列命题等价：

- 对 $D$ 内从 $M_1 arrow.r M_2$ 的任意分段光滑曲线 $L_1 , L_2$，曲线积分 $ integral_(L_1) P upright(d) x + Q upright(d) y = integral_(L_2) P upright(d) x + Q upright(d) y $

- 如果存在 $U$ 使得 $upright(d) U = P upright(d) x + Q upright(d) y$，即称 $P upright(d) x + Q upright(d) y$ 在 $D$ 上是正合的，称 $U$ 是其原函数。

- 沿着 $D$ 内任意分段光滑闭曲线 $L$，有 $ integral.cont_L P upright(d) x + Q upright(d) y = 0 $

- 恒有 $ frac(partial Q, partial x) = frac(partial P, partial y) $
]
#heading(level: 4, numbering: none)[高斯公式与散度]
<gaoshu-高斯公式与散度>
对于向量场 $ A ( x , y , z ) = ( P , Q , R ) $ 其中 $Sigma$ 是场中一段有向曲面，$bold(n)$ 是曲面 $Sigma$ 在点 $( x , y , z )$ 处的单位法向量，积分 $ integral.double_Sigma A dot.op bold(n) upright(d) S $ 记为向量场 $A$ 通过曲面 $Sigma$ 向指定侧的通量。定义散度为 $ "div" A = frac(partial P, partial x) + frac(partial Q, partial y) + frac(partial R, partial z) = nabla dot.op bold(A) $

#statement("theorem", title: [Gauss 公式])[
设 $Omega subset bb(R)^3$ 是区域且边界 $partial Omega$ 是由分段光滑的定向曲面构成。对于向量场 $A = ( P , Q , R )$ 是一阶导数连续的，则 $ integral.double_(partial Omega) P upright(d) y upright(d) z + Q upright(d) z upright(d) x + R upright(d) x upright(d) y = integral.triple_Omega (frac(partial P, partial x) + frac(partial Q, partial y) + frac(partial R, partial z)) upright(d) x upright(d) y upright(d) z $ 也可记为 $ integral.double_(partial Omega) A dot.op bold(n) upright(d) S = integral.triple_Omega "div" A upright(d) V $
]
#heading(level: 4, numbering: none)[斯托克公式与旋度]
<gaoshu-斯托克公式与旋度>
对于向量场 $ A ( x , y , z ) = ( P , Q , R ) $ $Gamma$ 是一条有向闭曲线，$bold(tau)$ 是曲线 $Gamma$ 在点 $( x , y , z )$ 处的单位切向量，积分 $ integral.cont_Gamma A dot.op bold(tau) upright(d) s $ 记为向量场 $A$ 沿有向闭曲线 $Gamma$ 的环流量。定义旋度为 $ "rot" A = (R_y - Q_z , P_z - R_x , Q_x - P_y) = mat(delim: "|", bold(e)_1, bold(e)_2, bold(e)_3; frac(partial, partial x), frac(partial, partial y), frac(partial, partial z); P, Q, R) $

#statement("theorem", title: [Stokes 公式])[
设 $Sigma$ 是光滑定向曲面且边界 $partial Sigma$ 为分段光滑闭曲线，取诱导定向。对其上具有一阶连续偏导数的函数 $P , Q , R$ 有 $ integral_(partial Sigma) P upright(d) x + Q upright(d) y + R upright(d) z = integral.double_Sigma mat(delim: "|", upright(d) y upright(d) z, upright(d) z upright(d) x, upright(d) x upright(d) y; frac(partial, partial x), frac(partial, partial y), frac(partial, partial z); P, Q, R) $ 也可记为 $ integral_(partial Sigma) A dot.op bold(tau) upright(d) s = integral.double_Sigma "rot" A dot.op bold(n) upright(d) S $
]
=== 多元积分的应用
<gaoshu-多元积分的应用>
#heading(level: 4, numbering: none)[面积与体积]
<gaoshu-面积与体积>
平面区域 $D$ 的面积等于 $integral.double_D upright(d) x upright(d) y$，体积 $integral.triple_D upright(d) x upright(d) y upright(d) z$。

以 $f ( x , y )$ 为顶的曲顶柱体的体积为 $integral.double_D f ( x , y ) upright(d) x upright(d) y$。

曲面的表面积：对于曲面 $S : z = f ( x , y )$，$D_(x y)$ 为其在 $x O y$ 面上的投影区域，则曲面的面积公式为 $ A = integral.double_(D_(x y)) sqrt(1 + [ f'_x ( x , y ) ]^2 + [ f'_y ( x , y ) ]^2) upright(d) x upright(d) y $

#heading(level: 4, numbering: none)[形心与质心]
<gaoshu-形心与质心>
对于平面 $D$ 上的薄片，其面密度为 $rho ( x , y )$，其质量为 $ M = integral.double_D rho ( x , y ) upright(d) sigma $ 则质心坐标公式为 $ quad overline(x) = 1 / M integral.double_D x rho ( x , y ) upright(d) sigma , quad overline(y) = 1 / M integral.double_D y rho ( x , y ) upright(d) sigma $

类似的，对于空间 $Omega$ 上物体，其体密度为 $rho ( x , y , z )$，其质量为 $ M = integral.triple_Omega rho ( x , y , z ) upright(d) V $ 则质心坐标公式为 $ overline(x) = 1 / M integral.triple_D x rho ( x , y , z ) upright(d) V , quad overline(y) = 1 / M integral.triple_D y rho ( x , y , z ) upright(d) V , quad overline(z) = 1 / M integral.triple_D z rho ( x , y , z ) upright(d) V $

#heading(level: 4, numbering: none)[转动惯量]
<gaoshu-转动惯量>
对于平面 $D$ 上的薄片，其面密度为 $rho ( x , y )$，令 $d ( x , y )$ 为上面任何一点到转动轴的距离，则 $ I = integral.double_D d^2 rho ( x , y ) upright(d) sigma $

对于空间 $Omega$ 上的物体，其体密度为 $rho ( x , y , z )$，令 $d ( x , y , z )$ 为上面任何一点到转动轴的距离，则 $ I = integral.triple_Omega d^2 rho ( x , y , z ) upright(d) V $

== 无穷级数
<gaoshu-无穷级数>
=== 大纲要求
<gaoshu-大纲要求-6>
\1. 理解常数项级数收敛、发散以及收敛级数的和的概念，掌握级数的基本性质及收敛的必要条件。

\2. 掌握几何级数与 $p$ 级数的收敛与发散的条件。

\3. 掌握正项级数收敛性的比较判别法、比值判别法、根值判别法，会用积分判别法。

\4. 掌握交错级数的莱布尼茨判别法。

\5. 了解任意项级数绝对收敛与条件收敛的概念以及绝对收敛与收敛的关系。

\6. 了解函数项级数的收敛域及和函数的概念。

\7. 理解幂级数收敛半径的概念，并掌握幂级数的收敛半径、收敛区间及收敛域的求法。

\8. 了解幂级数在其收敛区间内的基本性质（和函数的连续性、逐项求导和逐项积分）， 会求一些幂级数在收敛区间内的和函数，并会由此求出某些数项级数的和。

\9. 了解函数展开为泰勒级数的充分必要条件。

\10. 掌握 $e^x$，$sin x$，$cos x$，$ln ( 1 + x )$ 及 $( 1 + x )^alpha$ 的的麦克劳林（Maclaurin）展开式，会用它们将一些简单函数间接展开为幂级数。

\11. 了解傅里叶级数的概念和狄利克雷收敛定理，会将定义在 $[ - l , l ]$ 上的函数展开为傅里叶级数，会将定义在 $[ 0 , l ]$ 上的函数展开为正弦级数与余弦级数，会写出傅里叶级数的和函数的表达式。

=== 收敛判别法
<gaoshu-收敛判别法>
重要级数 $ sum_(n = 1)^oo 1 / n^p $ 当 $p > 1$ 时收敛。

重要级数 $ sum_(n = 2)^oo frac(1, n^p ( ln n )^q) $ 当 $p > 1$ 时、$p = 1 , q > 1$ 时收敛。

级数收敛一般感觉一下，都能感觉出来。但还是有一些反常的，摘录如下。

- 若 $lim a_n / b_n = 1$，且 $sum b_n$ 收敛，则 $sum a_n$ 收敛。

- 考虑 $b_n = frac(( - 1 )^n, sqrt(n)) , a_n = b_n + 1 / n$。

- 若正项级数 $a_n$ 单调减少且 $lim n a_n = 0$，则 $sum a_n$ 收敛。考虑 $a_n = frac(1, n ln n)$。

- 考虑 $b_n = frac(( - 1 )^n, sqrt(n)) , a_n = b_n + 1 / n$。

- 若级数 $sum a_n$ 收敛，则级数 $sum a_n^2$ 收敛。

- 考虑 $a_n = frac(( - 1 )^n, sqrt(n))$。

一些求和技巧：#link("https://zhuanlan.zhihu.com/p/357350424")[知乎：常数项级数求和总结]。

=== 幂级数
<gaoshu-幂级数>
对于幂级数 $sum f_i x^i$ 或者一般项级数 $sum u_i ( x )$，计算

- 比值法：$rho = lim abs(frac(u_(n + 1) ( x ), u_n ( x )))$。

- 根式法：$rho = lim root(n, abs(u_n ( x )))$。

则

- 若 $0 < rho < + oo$ 时，$R = 1 / rho$。

- 若 $rho = 0$ 时，$R = + oo$。

- 若 $rho = oo$ 时，$R = 0$。

常见函数的幂级数展开式 $ upright(e)^x & = sum_(n = 0)^oo frac(1, n !) x^n , & x in bb(R)\
a^x = upright(e)^(x ln a) & = sum_(n = 0)^oo frac(( ln a )^n, n !) x^n , & x in bb(R)\
sin x & = sum_(n = 0)^oo frac(( - 1 )^n, ( 2 n + 1 ) !) x^(2 n + 1) , & x in bb(R)\
cos x & = sum_(n = 0)^oo frac(( - 1 )^n, ( 2 n ) !) x^(2 n) , & x in bb(R)\
frac(1, 1 + x) & = sum_(n = 0)^oo ( - 1 )^n x^n , & x in ( - 1 , 1 )\
ln ( 1 + x ) & = sum_(n = 0)^oo frac(( - 1 )^(n - 1), n) x^n , & x in ( - 1 , 1 ]\
arctan x & = sum_(n = 0)^oo frac(( - 1 )^n, 2 n + 1) x^(2 n + 1) , & x in [ - 1 , 1 ]\
frac(1, ( 1 - x )^k) & = sum_(n = 0)^oo binom(n + k - 1, k - 1) x^n , & x in ( - 1 , 1 ) $

=== Fourier 级数
<gaoshu-fourier-级数>
函数列 $ 1 , quad cos x , quad sin x , quad cos 2 x , quad sin 2 x , dots.h.c $ 称为三角函数系，若这一列的函数记为 ${ phi_i ( x ) }$ 则 $ integral_(- pi)^pi phi_i ( x ) phi_j ( x ) upright(d) x = 0 , quad forall i eq.not j $ 这个性质称为三角函数系的正交性。有限和 $ a_0 + sum_(k = 1)^n ( a_k cos k x + b_k sin k x ) $ 称为三角多项式，而形式和 $ a_0 + sum_(k = 1)^oo ( a_k cos k x + b_k sin k x ) $ 称为三角级数，其中 $a_0 , a_k , b_k$ 称为三角函数的系数。

#statement("definition", title: [Fourier 级数])[
假设 $f$ 是一个周期为 $2 pi$ 的 Riemann 可积函数，令 $ a_k = 1 / pi integral_(- pi)^pi f ( x ) cos k x upright(d) x , quad b_k = 1 / pi integral_(- pi)^pi f ( x ) sin k x upright(d) x $ 其中 $a_0 , a_k , b_k$ 称为 $f$ 的 Fourier 级数，形式和 $ a_0 / 2 + sum_(k = 1)^oo ( a_k cos k x + b_k sin k x ) $ 称为 $f$ 的 Fourier 级数或者 Fourier 展开。
]
比如 $ x & = sum_(k = 1)^oo 2 / k ( - 1 )^(k + 1) sin k x , quad & - pi lt.eq x lt.eq pi\
x^2 & = pi^2 / 3 + sum_(k = 1)^oo 4 / k^2 ( - 1 )^k cos k x , quad & - pi lt.eq x lt.eq pi $

一般的，对于周期为 $[ - l , l ]$ 的函数 $f ( x )$，则其 Fourier 级数展开式为 $ f ( x ) = a_0 / 2 + sum_(n = 1)^oo (a_n cos frac(n pi x, l) + b_n sin frac(n pi x, l)) $ 其中 $ a_n = 1 / l integral_(- l)^l f ( x ) cos frac(n pi x, l) upright(d) x , quad b_n = 1 / l integral_(- l)^l f ( x ) sin frac(n pi x, l) upright(d) x $

== 常微分方程
<gaoshu-常微分方程>
=== 大纲要求
<gaoshu-大纲要求-7>
\1. 了解微分方程及其阶、解、通解、初始条件和特解等概念。

\2. 掌握变量可分离的微分方程及一阶线性微分方程的解法。

\3. 会解齐次微分方程、伯努利方程和全微分方程，会用简单的变量代换解某些微分方程。

\4. 会用降阶法解下列形式的微分方程：$y^(( n )) = f ( x )$，$y'' = f ( x , y' )$ 和 $y'' = f ( y , y' )$。 5. 理解线性微分方程解的性质及解的结构。

\6. 掌握二阶常系数齐次线性微分方程的解法，并会解某些高于二阶的常系数齐次线性微分方程。

\7. 会解自由项为多项式、指数函数、正弦函数、余弦函数以及它们的和与积的二阶常系数非齐次线性微分方程。

\8. 会解欧拉方程。

\9. 会用微分方程解决一些简单的应用问题。

=== 一阶微分方程
<gaoshu-一阶微分方程>
#heading(level: 4, numbering: none)[可分离变量的微分方程]
<gaoshu-可分离变量的微分方程>
如果方程可以写成 $f ( x ) upright(d) x = g ( y ) upright(d) y$ 的形式，则称为可分离变量的微分方程，两边同时积分即可。

#statement("note")[
特别注意分离变量时，分母为 $0$ 可能也有解。
]
#heading(level: 4, numbering: none)[齐次方程]
<gaoshu-齐次方程>
形如 $ frac(upright(d) y, upright(d) x) = g (y / x) $ 的方程，记作齐次微分方程。做变量代换 $u = y / x$，有 $ frac(upright(d) u, upright(d) x) = 1 / x (frac(upright(d) y, upright(d) x) - y / x) = frac(g ( u ) - u, x) $ 就变成变量分离的了。

USELESS！！可能再多点变化： $ frac(upright(d) y, upright(d) x) = g (frac(a_1 x + b_1 y + c_1, a_2 x + b_2 y + c_2)) $ 分为三种情况讨论：

+ 如果 $ a_1 / a_2 = b_1 / b_2 = c_1 / c_2 = k $ 则比较显然。

+ 如果 $ a_1 / a_2 = b_1 / b_2 = k eq.not c_1 / c_2 $ 令 $u = a_2 x + b_2 y$，此时有 $ frac(upright(d) u, upright(d) x) = g (a_2 + b_2 frac(k u + c_1, u + c_2)) $ 是变量分离方程。

+ 对于剩余的情况，把分子分母看成两条不相交的直线，尝试平移到原点。设交点为 $( x , y ) = ( x_0 , y_0 )$，有 $ frac(upright(d) y, upright(d) x) = frac(upright(d) ( y - y_0 ), upright(d) ( x - x_0 )) = g (frac(a_1 ( x - x_0 ) + b_1 ( y - y_0 ), a_2 ( x - x_0 ) + b_2 ( y - y_0 ))) $ 也变成了齐次形式。

#heading(level: 4, numbering: none)[一阶线性微分方程]
<gaoshu-一阶线性微分方程>
一阶线性非齐次常微分方程为 $ frac(upright(d) y, upright(d) x) + p ( x ) y = q ( x ) $ 即 $P ( x ) = integral p ( x ) upright(d) x$，注意到 $ (y upright(e)^(P ( x )))' / upright(e)^(P ( x )) = y' + p ( x ) y = q ( x ) $ 可以得到 $y ( x )$ 的解 $ y ( x ) = upright(e)^(- P ( x )) (integral upright(e)^(P ( x )) q ( x ) + C) $

#heading(level: 4, numbering: none)[Bernoulli 微分方程]
<gaoshu-bernoulli-微分方程>
形如 $ frac(upright(d) y, upright(d) x) = p ( x ) y + q ( x ) y^n , quad n eq.not 0 , 1 $ 的方程称为 Bernoulli 微分方程。设 $y eq.not 0$，得到 $ y^(- n) frac(upright(d) y, upright(d) x) = frac(upright(d) ( y^(1 - n) ), ( 1 - n ) upright(d) x) = y^(1 - n) p ( x ) + q ( x ) $ 换元 $u = y^(1 - n)$ 即可。

#heading(level: 4, numbering: none)[Riccati 方程]
<gaoshu-riccati-方程>
形如 $ frac(upright(d) y, upright(d) x) + p ( x ) y + q ( x ) y^2 = r ( x ) $ 的方程称为 Riccati 微分方程。设 $phi.alt ( x )$ 是其一个特解，令 $u = y - phi.alt$，得到 $ frac(upright(d) u, upright(d) x) + ( p + 2 phi.alt q ) u + q u^2 = 0 $ 即是一个 Bernoulli 方程。

#heading(level: 4, numbering: none)[Euler 方程]
<gaoshu-euler-方程>
形如 $ x^2 frac(upright(d)^2 y, upright(d) x^2) + p x frac(upright(d) y, upright(d) x) + q = r ( x ) $ 当 $x > 0$ 时，令 $x = upright(e)^u$，则 $ frac(upright(d) y, upright(d) x) = frac(upright(d) y, x upright(d) u) , quad frac(upright(d)^2 y, upright(d) x^2) = 1 / x^2 (frac(upright(d)^2 y, upright(d) u^2) - frac(upright(d) y, upright(d) u)) $ 因此方程化为 $ frac(upright(d)^2 y, upright(d) u^2) + ( p - 1 ) frac(upright(d) y, upright(d) u) + q y = r ( upright(e)^u ) $

#heading(level: 4, numbering: none)[恰当微分方程]
<gaoshu-恰当微分方程>
如果方程 $P ( x , y ) upright(d) x + Q ( x , y ) upright(d) y = 0$ 能写成全微分 $u ( x , y )$，则通解为 $u ( x , y ) = C$。注意到 $ frac(partial f, partial y) = frac(partial^2 u, partial y partial x) = frac(partial^2 u, partial x partial y) = frac(partial g, partial x) $ 故其是该方程为恰当微分方程的充要条件。

=== 可降阶的高阶方程
<gaoshu-可降阶的高阶方程>
一般有三类：

- $y'' = f ( x , y' )$ 型：令 $p = y'$，方程化为 $y'' = p' = f ( x , p )$；

- $y'' = f ( y , y' )$ 型：令 $p = y'$，方程化为 $y'' = frac(p upright(d) p, upright(d) y) = f ( y , p )$；

- $y^(( n )) = f ( x )$ 型：对 $f$ 积分 $n$ 次。

=== Gronwall 定理
<gaoshu-gronwall-定理>
考虑区间 $[ a , b ]$ 上的微分不等式 $ y' ( x ) + p ( x ) y ( x ) lt.eq f ( x ) $ 令 $P ( x )$ 为 $p ( x )$ 的原函数，类似于普通微分方程的解法，有 $ frac(upright(d), upright(d) x) (y ( x ) upright(e)^(P ( x ))) = ( y' ( x ) + p ( x ) y ) upright(e)^(P ( x )) lt.eq f ( x ) upright(e)^(P ( x )) $ 选取 $u in [ a , b ]$，在 $[ a , u ]$ 上积分得到 $ y ( u ) upright(e)^(P ( u )) - y ( a ) lt.eq integral_a^u f ( s ) upright(e)^(P ( s )) upright(d) s = upright(e)^(P ( u )) integral_a^u f ( s ) upright(e)^(P ( s ) - P ( u )) upright(d) s $ 从而得到 $ y ( x ) lt.eq y ( a ) upright(e)^(- P ( u )) + integral_a^u f ( s ) upright(e)^(P ( s ) - P ( u )) upright(d) s $

特殊的，令 $f equiv 0$，有 $ y ( x ) lt.eq y ( a ) upright(e)^(- P ( x )) $ 如果 $y_1 , y_2$ 满足如下微分不等式 $ y'_1 + p ( x ) y_1 lt.eq y'_2 + p ( x ) y_2 , quad y_1 ( a ) = y_2 ( a ) $ 则一定 $y_1 equiv y_2$。

=== 线性微分方程
<gaoshu-线性微分方程>
#heading(level: 4, numbering: none)[二阶常系数齐次线性微分方程]
<gaoshu-二阶常系数齐次线性微分方程>
对于方程 $y'' + p y' + q y = 0$，求其特征方程的根 $r_1 , r_2$，然后

- 如果是一对不等的实根，则 $y = C_1 upright(e)^(r_1 x) + C_2 upright(e)^(r_2 x)$；

- 如果是一对相等的实根，则 $y = ( C_1 + C_2 x ) upright(e)^(r x)$；

- 如果是一对共轭复根 $alpha plus.minus beta i$，则 $y = upright(e)^(a x) ( C_1 cos beta x + C_2 sin beta x )$；

#heading(level: 4, numbering: none)[二阶常系数非齐次线性微分方程]
<gaoshu-二阶常系数非齐次线性微分方程>
对于方程 $y'' + p y' + q y = f ( x )$，求其特解：

- 若 $f ( x ) = P_n ( x )$，则特解设为 $y^(*) = Q_n ( x )$。

- 若 $f ( x ) = P_m ( x ) cos b x + P_n ( x ) sin b x$，则特解设为 $y^(*) = Q_l ( x ) cos b x + R_l ( x ) sin b x$。

- 若 $f ( x ) = upright(e)^(a x) P_n ( x )$，则特解设为 $ y^(*) = upright(e)^(a x) Q_n ( x ) x^k $ 其中 $0 lt.eq k lt.eq 2$，并与 $a$ 和特征根重合数有关。

- 当 $f ( x ) = upright(e)^(a x) (P_m ( x ) cos b x + P_n ( x ) sin b x)$ 时，设 $ y^(*) = upright(e)^(a x) (Q_l ( x ) cos b x + R_r ( x ) sin b x) $ 其中 $l = max ( n , m ) , 0 lt.eq k lt.eq 1$，并与 $a plus.minus b i$ 和特征根重合数有关。

具体计算时，不妨增加待定系数多项式 $P_(n + 2) ( x )$ 的幂次，感觉一下就知道了。
