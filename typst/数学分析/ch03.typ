#import "../template/my-theorem.typ": theorem, definition, proof, example, solution, show-theorion
#show: show-theorion

== 函数极限的概念
<函数极限的概念>

#definition[
设 $f$ 为定义在 $\[ a , + oo \)$ 上的函数，$A$ 为定数。若对任给的
$epsilon > 0$，存在正数 $M = M (epsilon) >= a$，使得当 $x > M$ 时，有
$ lr(|f (x) - A|) < epsilon $ 则称函数 $f$ 当 $x$ 趋于 $+ oo$ 时以 $A$
为极限，记作
$ lim_(x arrow.r + oo) f (x) = A med upright("或") med f (x) arrow.r A (x arrow.r + oo) $

]
类似的有 $lim_(x arrow.r - oo) f (x)$ 和
$lim_(x arrow.r oo) f (x)$。不难证明
$ lim_(x arrow.r oo) f (x) = A arrow.l.r.double lim_(x arrow.r - oo) f (x) = lim_(x arrow.r + oo) f (x) = A $

为了描述在某点处的极限，我们需要邻域的概念
$ U (a ; delta) = (a - delta , a + delta) $ 和空心邻域的概念
$ U^circle.stroked.tiny (a ; delta) = (a - delta , a) union (a , a + delta) $

#definition[
设函数 $f$ 在 $U^circle.stroked.tiny (x_0 ; delta ')$ 内有定义，$A$
为定数。若对任给的 $epsilon > 0$，存在正数 $delta < delta'$，使得当
$0 < lr(|x - x_0|) < delta$ 时，有 $lr(|f (x) - A|) < epsilon$，则称函数
$f$ 当 $x$ 趋于 $x_0$ 时以 $A$ 为极限，记作
$ lim_(x arrow.r x_0) f (x) = A med upright("或") med f (x) arrow.r A (x arrow.r x_0) $

]
#definition[
设函数 $f$ 在 $U_(+)^circle.stroked.tiny (x_0 ; delta ')$ 内有定义，$A$
为定数。若对任给的 $epsilon > 0$，存在正数 $delta < delta'$，使得当
$x_0 < x < x_0 + delta$ 时，有 $lr(|f (x) - A|) < epsilon$，则称函数 $f$
当 $x$ 趋于 $x_0^(+)$ 时以 $A$ 为极限，记作
$ lim_(x arrow.r x_0^(+)) f (x) = A med upright("或") med f (x) arrow.r A (x arrow.r x_0^(+)) $

]
类似的还有左极限
$lim_(x arrow.r x_0^(-)) f (x)$，统称为单侧极限。又可记为
$ f (x_0 + 0) = lim_(x arrow.r x_0^(+)) f (x) med upright("与") med f (x_0 - 0) = lim_(x arrow.r x_0^(-)) f (x) $

同理还有
$ lim_(x arrow.r x_0) f (x) = A arrow.l.r.double lim_(x arrow.r x_0^(+)) f (x) = lim_(x arrow.r x_0^(-)) f (x) = A $

== 函数极限的性质
<函数极限的性质>

#theorem[
若极限 $lim_(x arrow.r x_0) f (x)$ 存在，则此极限是唯一的。

]
#theorem[
若极限 $lim_(x arrow.r x_0) f (x)$ 存在，则 $f$ 在 $x_0$ 的某空心邻域
$U^circle.stroked.tiny (x_0)$ 上有界。

]
#theorem[
设 $lim_(x arrow.r x_0) f (x)$ 与 $lim_(x arrow.r x_0) g (x)$
均存在。若存在正数 $N_0$，使得当 $n > N_0$ 时，有 $a_n <= b_n$，则
$lim_(n arrow.r oo) a_n <= lim_(n arrow.r oo) b_n$。

]
#theorem[
设 $lim_(x arrow.r x_0) f (x) = lim_(x arrow.r x_0) g (x) = A$，且在某
$U^circle.stroked.tiny (x_0 ; delta ')$ 上有
$ f (x) <= h (x) <= g (x) $ 则 $lim_(x arrow.r x_0) h (x) = A$。

]
#theorem[
若 $lim_(x arrow.r x_0) f (x)$ 与 $lim_(x arrow.r x_0) g (x)$ 均存在，则
$ lim_(x arrow.r x_0) [f (x) plus.minus g (x)] = lim_(x arrow.r x_0) f (x) + lim_(x arrow.r x_0) g (x) $
$ lim_(x arrow.r x_0) [f (x) g (x)] = lim_(x arrow.r x_0) f (x) dot.op lim_(x arrow.r x_0) g (x) $
若 $lim_(x arrow.r x_0) g (x) eq.not 0$，则
$ lim_(x arrow.r x_0) frac(f (x), g (x)) = frac(lim_(x arrow.r x_0) f (x), lim_(x arrow.r x_0) g (x)) $

]
== 函数极限存在的条件
<函数极限存在的条件>
#theorem[
若 $f (x)$ 在 $U^circle.stroked.tiny (x_0 ; delta ')$
上有定义。$lim_(x arrow.r x_0) f (x)$ 存在的充要条件是：任何含于
$U^circle.stroked.tiny (x_0 ; delta ')$ 且以 $x_0$ 为极限的数列
${ x_n }$，极限 $lim_(x arrow.r x_0) f (x_n)$ 都存在且相等。

]
即若对任何 $x_n arrow.r x_0 (n arrow.r oo)$ 有
$lim_(n arrow.r oo) f (x_n) = A$，则 $lim_(x arrow.r x_0) f (x) = A$。

#theorem[
设 $f (x)$ 在点 $x_0$ 的某空心右邻域 $U_(+)^circle.stroked.tiny (x_0)$
有定义，则 $lim_(x arrow.r x_0^(+)) f (x) = A$ 的充要条件是：对任何以
$x_0$ 为极限的递减数列
${ x_n } subset U_(+)^circle.stroked.tiny (x_0)$，有
$lim_(n arrow.r oo) f (x_n) = A$。

]
#theorem[
设 $f (x)$ 为定义在 $U_(+)^circle.stroked.tiny (x_0)$
上的单调有界函数，则右极限 $lim_(x arrow.r x_0^(+)) f (x) = A$ 存在。

]
#theorem[
设 $f (x)$ 在 $U^circle.stroked.tiny (x_0 ; delta ')$ 上有定义，则
$lim_(x arrow.r x_0) f (x)$ 存在的充要条件是：任给
$epsilon > 0$，存在正数 $delta (< delta ')$，使得对任何
$x' , x'' in U^circle.stroked.tiny (x_0 , delta)$，有
$lr(|f (x ') - f (x '')|) < epsilon$。

]
== 两个重要的极限
<两个重要的极限>
#theorem[
$ lim_(x arrow.r 0) frac(sin x, x) = 1 $

]
#proof[
 首先注意到它是奇函数，只需讨论
$0 < x < pi / 2$。考虑圆上的角度为 $x$
的弧的弧长和弦长，容易从几何角度得到 $ 0 < sin x < x $
再考虑圆上的角度为 $x$ 的弧与三角形的面积，我们可以得到
$ 1 / 2 cos x < 1 / 2 x < 1 / 2 tan x $ 即我们得到了
$ cos x < frac(sin x, x) < 1 $ 利用夹逼定理，我们只需证明
$cos x arrow.r 1$，这点可以用后面的连续性证明。也可以直接
$ lr(|cos x - 1|) = lr(|2 sin^2 x / 2|) < lr(|x^2 / 2|) $

]

第二个是把数列极限推广到函数

#theorem[
$ lim_(x arrow.r oo) (1 + 1 / x)^x = upright(e) $
]

== 无穷小量与无穷大量
<无穷小量与无穷大量>

#definition[
设函数 $f$ 在某 $U^circle.stroked.tiny (x_0)$ 上有定义，若
$lim_(x arrow.r x_0) f (x) = 0$，则称 $f$ 为当 $x arrow.r x_0$
时的无穷小量。

]
#definition[
设函数 $f$ 在某 $U^circle.stroked.tiny (x_0)$ 上有界，则称 $f$ 为当
$x arrow.r x_0$ 时的有界量。

]
无穷小量收敛于 $0$ 的速度有快有慢。设当 $x arrow.r x_0$ 时，$f$ 与 $g$
均为无穷小量。

若 $lim_(x arrow.r x_0) frac(f (x), g (x)) = 0$，则称当 $x arrow.r x_0$
时 $f$ 为 $g$ 的高阶无穷小量，或称 $g$ 为 $f$ 的低阶无穷小量。

记作 $ f (x) = o (g (x)) (x arrow.r x_0) $ 特别地，$f$ 为当
$x arrow.r x_0$ 时的无穷小量记作 $ f (x) = o (1) (x arrow.r x_0) $

若存在正数 $K$ 和 $L$，使得在某 $U^circle.stroked.tiny (x_0)$ 上有
$ K <= lr(|frac(f (x), g (x))|) <= L $ 则称 $f$ 与 $g$ 为当
$x arrow.r x_0$ 时的同阶无穷小量。特别当
$ lim_(x arrow.r x_0) frac(f (x), g (x)) = c eq.not 0 $ 时，$f$ 与 $g$
必为同阶无穷小量。

若 $lim_(x arrow.r x_0) frac(f (x), g (x)) = 1$ 则称 $f$ 与 $g$ 是当
$x arrow.r x_0$ 时的等价无穷小量。记作
$ f (x) tilde.op g (x) (x arrow.r x_0) $

注意并不是任何两个无穷小量都可以进行这种阶的比较。例如 $x arrow.r 0$
时，$x sin 1 / x$ 和 $x^2$ 都是无穷小量，但它们的比都不是有界量。

#theorem[
设函数 $f , g , h$ 在 $U^circle.stroked.tiny (x_0)$ 上有定义，且有
$f (x) tilde.op g (x) (x arrow.r x_0)$，则

1.若 $lim_(x arrow.r x_0) f (x) h (x) = A$，则
$lim_(x arrow.r x_0) g (x) h (x) = A$。

2.若 $lim_(x arrow.r x_0) frac(h (x), f (x)) = B$，则
$lim_(x arrow.r x_0) frac(h (x), g (x)) = B$

]
#definition[
设函数 $f$ 在某 $U^circle.stroked.tiny (x_0)$ 上有定义，若对任给的
$G > 0$，存在 $delta > 0$，使得当
$x in U^circle.stroked.tiny (x_0 ; delta) subset U^circle.stroked.tiny (x_0)$
时，有 $lr(|f (x)|) > G$，则称函数 $f$ 当 $x arrow.r x_0$ 时有非正常极限
$oo$，记作 $lim_(x arrow.r x_0) f (x) = oo$。

]
== 常见等价无穷小
<常见等价无穷小>

实际上这些等价无穷小就是 Talor 展开。

$ frac(1, 1 - x) & = sum_(k = 0)^oo x^n , (- 1 , 1)\
 & = 1 + x + x^2 + x^3 + x^4 + x^5 + x^6 + O (x^7)\
ln (1 + x) & = sum_(k = 0)^oo frac((- 1)^k, k + 1) x^(k + 1) , \( - 1 , 1 \]\
 & = x - x^2 / 2 + x^3 / 3 - x^4 / 4 + x^5 / 5 - x^6 / 6 + x^7 / 7 + O (x^8)\
sin x & = sum_(k = 0)^oo frac((- 1)^k, (2 k + 1) !) x^(2 k + 1) , bb(R)\
 & = x - x^3 / 6 + x^5 / 120 - x^7 / 5040 + x^9 / 362880 + O (x^11)\
cos x & = sum_(k = 0)^oo frac((- 1)^k, (2 k) !) x^(2 k) , bb(R)\
 & = 1 - x^2 / 2 + x^4 / 24 - x^6 / 720 + x^8 / 40320 + x^10 / 3628800 + O (x^12)\
upright(e)^x & = sum_(k = 0)^oo frac(1, k !) x^k , bb(R)\
 & = 1 + x + x^2 / 2 + x^3 / 6 + x^4 / 24 + x^5 / 120 + x^6 / 720 + x^7 / 5040 + x^8 / 40320 + O (x^10)\
tan x & = sum_(k = 1)^oo frac((- 4)^k (1 - 4^k) B_(2 k), (2 k) !) x^(2 k - 1) , (- pi / 2 , pi / 2)\
 & = x + x^3 / 3 + frac(2 x^5, 15) + frac(17 x^7, 315) + frac(67 x^9, 2835) + O (x^11)\
sqrt(x + 1) & = 1 + sum_(k = 1)^oo (- 1 / 2)^k (2 k - 1) ! ! x^k , (- 1 , + oo)\
 & = 1 + x / 2 - x^2 / 8 + x^3 / 16 - frac(5 x^4, 128) + frac(7 x^5, 256) - frac(21 x^6, 1024) + O (x^7)\
ln (x + sqrt(1 + x^2)) & = x - x^3 / 6 + frac(3 x^5, 40) - frac(5 x^7, 112) + frac(35 x^9, 1152) + O (x^11)\
arcsin x & = x + x^3 / 6 + frac(3 x^5, 40) + frac(5 x^7, 112) + frac(35 x^9, 1152) + O (x^11)\
1 / 2 ln (frac(1 + x, 1 - x)) & = x + x^3 / 3 + x^5 / 5 + x^7 / 7 + x^9 / 9 + O (x^11)\
arctan x & = x - x^3 / 3 + x^5 / 5 - x^7 / 7 + x^9 / 9 + O (x^11)\
root(x, 1 + x) & = upright(e) x - frac(upright(e) x, 2) + frac(11 upright(e) x^2, 24) - frac(7 upright(e) x^3, 16) + O (x^4) $

== 函数的连续性
<函数的连续性>
#definition[
设函数 $f$ 在某 $U (x_0)$ 上有定义。若
$ lim_(x arrow.r x_0) f (x) = f (x_0) $
则称 $f$ 在点 $x_0$ 连续。

]
记 $Delta x = x - x_0$，称为自变量 $x$ 在点 $x_0$ 的增量或改变量。设
$y_0 = f (x_0)$，相应的函数 $y$ 在点 $x_0$ 的增量记为
$ Delta y = f (x) - f (x) = f (x + Delta) - f (x_0) = y - y_0 $

连续性的 $epsilon - delta$ 形式定义：若对任给的 $epsilon > 0$，存在
$delta > 0$，使得当 $lr(|x - x_0|) < delta$ 时，有
$lr(|f (x) - f (x_0)|) < epsilon$，则称函数 $f$ 在点 $x_0$ 连续。

或者进一步表示为
$ lim_(x arrow.r x_0) f (x) = f (lim_(x arrow.r x_0) x) $

#definition[
设函数 $f$ 在某 $U_(+) (x_0)$ 上有定义。若
$ lim_(x arrow.r x_0^(+)) f (x) = f (x_0) $ 则称 $f$ 在点 $x_0$
右连续。同理左连续。

]
因此函数 $f$ 在点 $x_0$ 连续的充要条件是：$f$ 在点 $x_0$
既是左连续，又是右连续。

#definition[
设函数 $f$ 在某 $U^circle.stroked.tiny (x_0)$ 上有定义。若 $f$ 在点
$x_0$ 无定义，或 $f$ 在点 $x_0$ 有定义而不连续，则称点 $x_0$ 为函数 $f$
的间断点或不连续点。

]
若 $lim_(x arrow.r x_0) f (x) = A$，而 $f$ 在点 $x_0$ 无定义，或有定义但
$f (x_0) eq.not A$，则称点 $x_0$ 为 $f$ 的可去间断点。

若函数 $f$ 在点 $x_0$ 的左、右极限都存在，但
$lim_(x arrow.r x_0^(+)) f (x) eq.not lim_(x arrow.r x_0^(-)) f (x)$，则称点
$x_0$ 为函数 $f$ 的跳跃间断点。

可去间断点与跳跃间断点统称为第一类间断点，所有其他形式的间断点统称为第二类间断点。

若函数 $f$ 在区间 $I$ 上的每一点都连续，则称 $f$ 为 $I$
上的连续函数。对于闭区间或半开区间的端点，函数在这些点上连续是指左连续或右连续。

=== 连续函数的性质
<连续函数的性质>

#definition[
若函数 $f$ 在点 $x_0$ 连续，则 $f$ 在某 $U (x_0)$ 上有界。

]
#theorem[
若函数 $f$ 在点 $x_0$ 连续，且 $f (x_0) > 0$，则对任何正数
$r < f (x_0)$，存在某 $U (x_0)$，使得对一切 $x in U (x_0)$，有
$f (x) > r$。

]
#theorem[
若函数 $f , g$ 在点 $x_0$ 连续，则
$f plus.minus g , f dot.op g , f \/ g$ 也都在点 $x_0$ 连续。

]
#theorem[
若函数 $f$ 在点 $x_0$ 连续，$g$ 在点 $u_0$
连续，$u_0 = f (x_0)$，则复合函数 $g circle.stroked.tiny f$ 在 $x_0$
连续。

]
#definition[
设 $f$ 为定义在数集 $D$ 上的函数。若存在 $x_0 in D$，使得对一切
$x in D$，有 $f (x_0) >= f (x)$，则称 $f$ 在 $D$ 上有最大值，并称
$f (x_0)$ 为 $f$ 在 $D$ 上的最大值。

]
#theorem[
若函数 $f$ 在闭区间 $[a , b]$ 上连续，则 $f$ 在闭区间 $[a , b]$
上有最大值与最小值。

]
#theorem[
若函数 $f$ 在闭区间 $[a , b]$ 上连续，且 $f (a) eq.not f (b)$。若 $mu$
为介于 $f (a)$ 和 $f (b)$ 之间的任何实数。则至少存在一点
$x_0 in (a , b)$ 使得 $f (x_0) = mu$。

]
#theorem[
若函数 $f$ 在 $[a , b]$ 上严格单调并连续，则反函数 $f^(- 1)$ 在其定义域
$[min { f (a) , f (b) } , max { f (a) , f (b) }]$ 上连续。

]
#definition[
设 $f$ 是定义在区间 $I$ 上的函数。若对任给的 $epsilon > 0$ 存在
$delta = delta (epsilon) > 0$ 使得对任何 $x' , x'' in I$，只要
$lr(|x ' - x ''|) < delta$ 就有 $ lr(|f (x ') - f (x '')|) < epsilon $
就称函数 $f$ 在区间 $I$ 上一致连续。

]
#theorem[
若函数 $f$ 在闭区间 $[a , b]$ 上连续，则 $f$ 在 $[a , b]$ 上一致连续。

]
=== 初等函数的连续性
<初等函数的连续性>
#theorem[
设 $p > 0$，$a , b$ 为任意两个实数，则有
$ p^a dot.op p^b = p^(a + b) , (p^a)^b = p^(a b) $

]
#theorem[
指数函数 $a^x (a > 0)$ 在 $bb(R)$ 上是连续的。

]
