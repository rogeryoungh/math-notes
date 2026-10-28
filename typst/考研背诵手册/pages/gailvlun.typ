#import "../../template/environments.typ": statement

= 概率论
<gailvlun-概率论>
== 随机事件和概率
<gailvlun-随机事件和概率>
=== 大纲要求
<gailvlun-大纲要求>
\1. 了解样本空间（基本事件空间）的概念，理解随机事件的概念，掌握事件的关系及运算。

\2. 理解概率、条件概率的概念，掌握概率的基本性质，会计算古典型概率和几何型概率，掌握概率的加法公式、减法公式、乘法公式、全概率公式以及贝叶斯（Bayes）公式。

\3. 理解事件独立性的概念，掌握用事件独立性进行概率计算；理解独立重复试验的概念，掌握计算有关事件概率的方法。

=== 概率
<gailvlun-概率>
#statement("definition")[
设 $A , B$ 是两个事件且 $bb(P) ( A ) > 0$，我们称在已知 $A$ 发生的条件下事件 $B$ 发生的概率为条件概率，记作 $ bb(P) ( B mid(|) A ) = frac(bb(P) ( A B ), bb(P) ( A )) $
]
假如 $bb(P) ( B mid(|) A ) > bb(P) ( B )$，我们可以说事件 $A$ 促进了事件 $B$ 的发生。反之 $bb(P) ( B mid(|) A ) = bb(P) ( A )$，则 $B$ 的发生对 $A$ 无影响。

若两事件 $A , B$ 满足 $ bb(P) ( A B ) = bb(P) ( A ) bb(P) ( B ) $ 则称 $A , B$ 独立。

设一列事件 $A_1 , A_2 , dots.h.c$，假如从中取出任意有限个都成立 $ bb(P) ( A_(i 1) dots.h.c A_(i m) ) = bb(P) ( A_(i 1) ) dots.h.c bb(P) ( A_(i m) ) $ 那么称事件 $A_1 , A_2 , dots.h.c$ 相互独立。注意与两两独立的区别。

#statement("theorem", title: [全概率公式])[
设 $B_1 , dots.h.c$ 为一列事件，他们两两互斥且每次试验至少发生一个。有时称这种性质为"完备事件群"。那么对任意事件 $A$ 有 $ bb(P) ( A ) = sum_(i = 1)^n bb(P) ( B_i ) bb(P) ( A mid(|) B_i ) $
]
#statement("proof")[
显然 $ bb(P) ( A ) = sum_(i = 1)^n bb(P) ( B_i A ) = sum_(i = 1)^n bb(P) ( B_i ) bb(P) ( A mid(|) B_i ) $
]
#statement("theorem", title: [贝叶斯公式])[
对 $n$ 个两两不相容事件 $A_1 , dots.h.c , A_N$，则对事件 $B$ 有 $ bb(P) (A_j mid(|) B) = frac(bb(P) ( A_j ) bb(P) ( B mid(|) A_j ), sum_(i = 1)^n bb(P) ( A_i ) bb(P) ( B mid(|) A_i )) $
]
#statement("proof")[
显然 $ bb(P) (A_j mid(|) B) = frac(bb(P) ( A_j B ), bb(P) ( B )) = frac(bb(P) ( A_j ) bb(P) ( B mid(|) A_j ), sum_(i = 1)^n bb(P) ( A_i ) bb(P) ( B mid(|) A_i )) $
]
#statement("note")[
若 $bb(P) ( A B ) = 0$，不意味着 $A B = ∅$。比如 $[ 0 , 1 ] ∩ [ 1 , 2 ] = { 1 }$，但概率是 $0$。
]
=== 常见模型
<gailvlun-常见模型>
摸球不放回模型：袋中有 $a$ 个黑球，$b$ 个白球，若不放回的取 $n$ 个球，其中恰好 $k$ 个白球的概率为 $ bb(P) ( A_k ) = frac(binom(b, k) binom(a, n - k), binom(a + b, n)) $

摸球放回模型：袋中有 $a$ 个黑球，$b$ 个白球，若有放回的取出 $n$ 个球，其中恰好 $k$ 个白球的概率为 $ bb(P) ( B_k ) = binom(n, k) frac(a^(n - k) b^k, ( a + b )^n) = [ x^k ] (frac(a + b x, a + b))^n $

伯努利定理：假如一次试验中，事件 $A$ 发生的概率为 $p ( 0 < p < 1 )$，则 $n$ 重伯努利试验中，事件 $A$ 恰好发生 $k$ 次的概率为 $ binom(n, k) p^k ( 1 - p )^(n - k) $

#statement("theorem", title: [抽签原理])[
袋中有 $a$ 个黑球，$b$ 个白球，若不放回的依次取球，每次抽中白球的概率都为 $frac(b, a + b)$。
]
#statement("proof")[
对于第 $i$ 次抽检，可以看成从 $a + b$ 个球中抽出 $i$ 个球排成一排，其可能数是 $A_(a + b)^i$。而第 $i$ 个位置是白球的概率为 $b A_(a + b - 1)^(i - 1)$，故 $ bb(P) ( A_i ) = frac(b A_(a + b - 1)^(i - 1), A_(a + b)^i) = frac(b, a + b) $
]
== 随机变量及其分布
<gailvlun-随机变量及其分布>
=== 大纲要求
<gailvlun-大纲要求-1>
\1. 理解随机变量的概念，理解分布函数 $ F ( x ) = P { X lt.eq x } , quad - oo < x < + oo $ 的概念及性质，会计算与随机变量相联系的事件的概率。

\2. 理解离散型随机变量及其概率分布的概念，掌握 $0 - 1$ 分布、二项分布 $B ( n , p )$、几何分布、超几何分布、泊松（Poisson）分布 $P ( lambda )$ 及其应用。

\3. 了解泊松定理的结论和应用条件，会用泊松分布近似表示二项分布。

\4. 理解连续型随机变量及其概率密度的概念，掌握均匀分布 $U ( a , b )$、 正态分布 $N ( mu , sigma^2 )$、指数分布及其应用，其中参数为 $lambda ( lambda > 0 )$ 的指数分布 $E ( lambda )$ 的概率密度为 $ f ( x ) = cases(delim: "{", lambda e^(- lambda x) comma & x > 0, 0 comma & x lt.eq 0) $

\5. 会求随机变量函数的分布。

=== 常见分布
<gailvlun-常见分布>
===== 二项分布 $X tilde.op B ( n , p )$
<gailvlun-二项分布-x-sim-bn-p>
如果 $X$ 的概率分布为 $ bb(P) { X = k } = binom(n, k) p^k ( 1 - p )^(n - k) . quad k = 0 , 1 , dots.h.c , n $ 组合意义是 $n$ 重伯努利实验中事件 $A$ 发生的次数，其中 $bb(P) ( A ) = p$。其 $bb(E) [ X ] = n p , bb(D) [ X ] = n p ( 1 - p )$。

===== 泊松分布 $X tilde.op P ( lambda )$
<gailvlun-泊松分布-x-sim-plambda>
如果 $X$ 的概率分布为 $ bb(P) { X = k } = frac(lambda^k, k !) upright(e)^(- lambda) , quad k = 0 , 1 , dots.h.c $ 其 $bb(E) [ X ] = lambda , bb(D) [ X ] = lambda$。

===== 几何分布 $X tilde.op G ( p )$
<gailvlun-几何分布-x-sim-gp>
如果 $X$ 的概率分布为 $ bb(P) { X = k } = ( 1 - p )^(k - 1) p , quad k = 1 , 2 , dots.h.c $ 其 $bb(E) [ X ] = 1 / p , bb(D) [ X ] = frac(1 - p, p^2)$。

===== 超几何分布 $X tilde.op H ( n , N , M )$
<gailvlun-超几何分布-x-sim-hn-n-m>
如果 $X$ 的概率分布为 $ bb(P) { X = k } = frac(binom(M, k) binom(N - M, n - k), binom(N, n)) , quad max ( 0 , n - N + M ) lt.eq k lt.eq min ( M , n ) $ 其组合意义是在 $N$ 个产品 $M$ 个不合格产品，从中取出 $n$ 个次品数为 $k$。

===== 均匀分布 $X tilde.op U ( a , b )$
<gailvlun-均匀分布-x-sim-ua-b>
如果 $X$ 的概率密度函数为 $ f ( x ) = frac(1, b - a) , quad a < x < b $ 其 $bb(E) [ X ] = frac(a + b, 2) , bb(D) [ X ] = frac(( b - a )^2, 12)$。

===== 指数分布 $X tilde.op E ( lambda )$
<gailvlun-指数分布-x-sim-elambda>
如果 $X$ 的概率密度函数为 $ f ( x ) = lambda upright(e)^(- lambda x) , quad x > 0 $ 其 $bb(E) [ X ] = 1 / lambda , bb(D) [ X ] = 1 / lambda^2$。

===== 正态分布 $X tilde.op N ( mu , sigma^2 )$
<gailvlun-正态分布-x-sim-nmu-sigma2>
如果 $X$ 的概率密度为 $ f ( x ) = 1 / sigma phi (frac(x - mu, sigma)) = frac(1, sqrt(2 pi) sigma) exp (- frac(( x - mu )^2, 2 sigma^2)) , quad phi ( x ) = 1 / sqrt(2 pi) exp (- x^2 / 2) $ 如果 $X tilde.op N ( mu , sigma^2 )$，则 $frac(X - mu, sigma) tilde.op N ( 0 , 1 )$。 其 $bb(E) [ X ] = mu , bb(D) [ X ] = sigma^2$。

== 多维随机变量及其分布
<gailvlun-多维随机变量及其分布>
=== 大纲要求
<gailvlun-大纲要求-2>
\1. 理解多维随机变量的概念，理解多维随机变量的分布的概念和性质，理解二维离散型随机变量的概率分布、边缘分布和条件分布，理解二维连续型随机变量的概率密度、边缘密度和条件密度，会求与二维随机变量相关事件的概率。

\2. 理解随机变量的独立性及不相关性的概念，掌握随机变量相互独立的条件。

\3. 掌握二维均匀分布，了解二维正态分布 $N ( mu_1 , mu_2 ; sigma_1^2 , sigma_2^2 ; rho )$ 的概率密度，理解其中参数的概率意义。

\4. 会求两个随机变量简单函数的分布，会求多个相互独立随机变量简单函数的分布。

=== 多维随机变量及其分布
<gailvlun-多维随机变量及其分布-1>
随机变量 $( X , Y )$ 的联合分布为 $ F ( x , y ) = bb(P) { X lt.eq x , Y lt.eq y } $ 记为 $( X , Y ) tilde.op F$。

#heading(level: 4, numbering: none)[离散型]
<gailvlun-离散型>
离散型随机变量 $( X , Y )$ 的联合分布律为 $ bb(P) { X = x_i , Y = y_i } = p_(i j) $ 边缘分布律 $ p_(i , dot.op) = bb(P) { X = x_i } = sum_(j = 1)^oo p_(i , j) , quad p_(dot.op , y_j) bb(P) { Y = y_j } = sum_(i = 1)^oo p_(i y) $ 条件分布律 $ bb(P) { X = x_i mid(|) Y = y_i } = frac(bb(P) { X = x_i , Y = y_i }, bb(P) { Y = y_i }) = p_(x_i , y_i) / p_(dot.op , y) $

#heading(level: 4, numbering: none)[连续型]
<gailvlun-连续型>
连续型随机变量 $( X , Y )$ 的联合分布函数为 $ F ( x , y ) = bb(P) { X lt.eq x , Y lt.eq y } = integral_(- oo)^x integral_(- oo)^y f ( u , v ) upright(d) u upright(d) v $ 边缘分布函数 $ F_X ( x ) = bb(P) { X lt.eq x } = F ( x , + oo ) , quad F_Y ( y ) = = bb(P) { Y lt.eq y } = F ( + oo , y ) $

若 $F ( x , y )$ 连续可导，则其概率密度为 $ frac(partial^2 F ( x , y ), partial x partial y) = f ( x , y ) $ 反之若 $f$ 在点 $( x , y )$ 处连续，概率分布满足。类似的有边缘概率密度 $ f_X ( x ) = integral_(- oo)^(+ oo) f ( x , y ) upright(d) y , quad f_Y ( y ) = integral_(- oo)^(+ oo) f ( x , y ) upright(d) x $

#statement("note")[
连续型随机变量不能简单的定义为"各分量都是一维连续型随机变量"的那种。考虑 $X_1 = X_2$，则 $( X_1 , X_2 )$ 仅在对角线处有值，故不可能存在概率密度函数。
]
#heading(level: 4, numbering: none)[二维随机变量的独立性]
<gailvlun-二维随机变量的独立性>
设二维连续型随机向量 $( X , Y )$，其概率密度是 $f ( x , y )$。假设 $y in [ y_1 , y_2 ]$，依条件概率的定义，有 $ F_(X mid(|) Y) ( x mid(|) y_1 lt.eq Y lt.eq y_2 ) = bb(P) { X lt.eq x mid(|) y_1 lt.eq Y lt.eq y_2 } = frac(integral_(- oo)^x integral_(y_1)^(y_2) f ( x , y ) upright(d) y upright(d) x, integral_(y_1)^(y_2) f_Y ( y ) upright(d) y) $ 对 $x$ 求导，即得条件密度函数 $ f_(X mid(|) Y) ( x mid(|) y_1 lt.eq y lt.eq y_1 ) = frac(integral_(y_1)^(y_2) f ( x , y ) upright(d) y, integral_(y_1)^(y_2) f_Y ( y ) upright(d) t) $ 考虑极限，$y_1 , y_2$ 收敛于 $y$ 处时有 $ f_(X mid(|) Y) ( x mid(|) y ) = frac(f ( x , y ), f_Y ( y )) $

若二维随机变量 $( X , Y )$ 的联合概率密度函数 $f ( x , y )$ 满足 $ f ( x , y ) = f_X ( x ) f_Y ( y ) $ 则称随机变量 $x_1 , dots.h.c , x_n$ 相互独立。

=== 二维正态分布
<gailvlun-二维正态分布>
设二维随机变量的概率密度为 $ f ( x , y ) = frac(1, 2 pi sigma_1 sigma_2 sqrt(1 - rho^2)) exp (- frac(1, 2 ( 1 - p^2 )) (frac(( x - mu_1 )^2, sigma_1^2) + frac(( y - mu_2 )^2, sigma_2^2) - frac(2 rho, sigma_1 sigma_2) ( x - mu_1 ) ( y - mu_2 ))) $ 记为 $N ( mu_1 , mu_2 ; sigma_1 , sigma_2 ; rho )$，可以看作两个分布 $X tilde.op N ( mu_1 , sigma_1^2 ) , Y tilde.op N ( mu_2 , sigma_2^2 )$ 以相关系数 $rho$ 合起来。

=== 两个随机变量简单函数
<gailvlun-两个随机变量简单函数>
对于随机变量 $( X , Y )$，求 $g ( X , Y )$ 的概率密度和分布函数有两种方法：

#heading(level: 4, numbering: none)[定义法]
<gailvlun-定义法>
设其概率密度函数为 $f ( x , y )$，先求 $Z = g ( X , Y )$ 的概率密度 $ F_Z ( z ) = bb(P) { Z lt.eq z } = bb(P) { g ( X , Y ) lt.eq z } = integral.double_(g ( X , Y ) lt.eq z) f ( x , y ) upright(d) x upright(d) y $ 其概率密度则为 $f_Z ( z ) = frac(upright(d) F_z ( z ), upright(d) z)$。

#heading(level: 4, numbering: none)[公式法]
<gailvlun-公式法>
对于 $Z = X + Y$，则 $ f_Z ( z ) = integral_(- oo)^(+ oo) f ( z - y , y ) upright(d) y = integral_(- oo)^(+ oo) f ( x , z - x ) upright(d) x $ 对于 $Z = X Y$，则 $ f_Z ( z ) = integral_(- oo)^(+ oo) frac(1, abs(x)) f (x , z / x) upright(d) y = integral_(- oo)^(+ oo) frac(1, abs(y)) f (z / y , y) upright(d) x $ 对于 $Z = X / Y$，则 $ f_Z ( z ) = integral_(- oo)^(+ oo) abs(y) f ( y z , y ) upright(d) y $ 对于 $Z = max { X , Y }$，则 $ F_Z ( z ) = F_X ( z ) F_Y ( z ) $ 对于 $Z = min { X , Y }$，则 $ F_Z ( z ) = 1 - ( 1 - F_X ( z ) ) ( 1 - F_Y ( z ) ) $

== 随机变量的数字特征
<gailvlun-随机变量的数字特征>
=== 大纲要求
<gailvlun-大纲要求-3>
\1. 理解随机变量数字特征（数学期望、方差、标准差、矩、协方差、相关系数）的概念，会运用数字特征的基本性质，并掌握常用分布的数字特征。

\2. 会求随机变量函数的数学期望。

=== 期望和方差
<gailvlun-期望和方差>
#heading(level: 3, numbering: none)[期望]
<gailvlun-期望>
设 $X$ 是随机变量，其分布列为 $p_i = bb(P) { X = x_i }$，记 $ bb(E) [ X ] = sum_(i = 1)^oo x_i p_i , quad bb(E) [ g ( X ) ] = sum_(i = 1)^oo g ( x_i ) p_i $ 为随机变量 $X$ 的数学期望。若 $X$ 是连续型随机变量，则记 $ bb(E) [ X ] = integral_(- oo)^(+ oo) x f ( x ) upright(d) x , quad bb(E) [ g ( X ) ] = integral_(- oo)^(+ oo) g ( x ) f ( x ) upright(d) x $ 为其期望

期望的性质

- 对于常数 $C$，有 $bb(E) [ C ] = C$；

- 线性性：$bb(E) [ sum k_i X_i ] = sum k_i bb(E) [ X ]$；

- 独立性：如果 $X_1 , dots.h.c , X_n$ 相互独立，$bb(E) [ X_1 X_2 dots.h.c X_n ] = bb(E) [ X_1 ] dots.h.c bb(E) [ X_n ]$。

#heading(level: 3, numbering: none)[方差]
<gailvlun-方差>
我们记 $bb(E) [ ( X - bb(E) X )^2 ]$ 为 $X$ 的方差，有 $ bb(D) [ X ] = bb(E) [ ( X - bb(E) X )^2 ] = bb(E) X^2 - ( bb(E) X )^2 $ 称 $sqrt(bb(D) [ X ])$ 为 $X$ 的标准差，或者均方差，记为 $sigma ( X )$。

若 $X$ 是离散型随机变量，则 $ bb(D) [ X ] = sum_(i = 1)^oo ( x_i - bb(E) X )^2 p_i $ 连续性随机变量，则 $ bb(D) [ X ] = integral_(- oo)^oo ( x - bb(E) X )^2 f ( x ) upright(d) x $

方差的性质

- 对于常数 $C$，有 $bb(D) [ C ] = C^2$；

- 线性性：如果 $X_1 , dots.h.c , X_n$ #strong[相互独立]，$bb(D) [ sum k_i X_i ] = sum k_i^2 bb(E) [ X ]$。

=== 协方差和相关系数
<gailvlun-协方差和相关系数>
#heading(level: 3, numbering: none)[矩]
<gailvlun-矩>
- $k$ 阶原点矩：$bb(E) [ X^k ]$；

- $k$ 阶中心距：$bb(E) [ ( X - bb(E) X )^k ]$；

- $k + l$ 阶混合矩：$bb(E) [ X^k Y^l ]$；

- $k + l$ 阶中心距：$bb(E) [ ( X - bb(E) X )^k ( Y - bb(E) Y )^l ]$；

#heading(level: 3, numbering: none)[协方差]
<gailvlun-协方差>
我们定义 $( X , Y )$ 的协方差为 $ "Cov" ( X , Y ) = bb(E) [ ( X - bb(E) X ) ( Y - bb(E) Y ) \) ] = bb(E) ( X Y ) - bb(E) X dot.op bb(E) Y $

称 $rho_(X Y) = frac("Cov" ( X , Y ), sqrt(bb(D) [ X ] bb(D) ( Y )))$ 为 $X , Y$ 的相关系数。

#heading(level: 3, numbering: none)[协方差的性质]
<gailvlun-协方差的性质>
- $"Cov" ( X , Y ) = "Cov" ( Y , X )$；

- $"Cov" ( X , X ) = bb(D) X$；

- $"Cov" ( a X , b Y ) = a b "Cov" ( X , Y )$；

- $"Cov" ( X_1 + X_2 , Y ) = "Cov" ( X_1 , Y ) + "Cov" ( X_2 , Y )$；

- $bb(D) ( X plus.minus Y ) = bb(D) X + bb(D) Y plus.minus 2 "Cov" ( X , Y )$；

$X , Y$ 相互独立可以推出不相关，但反之不行；

$X , Y$ 不相关与下列命题互推

- $rho_(X Y) = 0$；

- $"Cov" ( X , Y ) = 0$

- $bb(E) [ X Y ] = bb(E) X dot.op bb(E) Y$；

- $bb(E) ( X plus.minus Y ) = bb(E) X + bb(E) Y$。

=== $Gamma$ 函数
<gailvlun-gamma-函数>
$Gamma$ 函数是一有力的工具，其定义为 $ Gamma ( z ) = integral_0^(+ oo) t^(z - 1) upright(e)^(- t) upright(d) t $ 其具有递推式和余元公式 $ Gamma ( z + 1 ) = z Gamma ( z ) , quad Gamma ( z ) Gamma ( 1 - z ) = frac(pi, sin pi z) $ 特殊的，$Gamma ( n + 1 ) = n !$，和 $Gamma ( 1 / 2 ) = sqrt(pi)$。不难化简 $ I_n = integral_0^(+ oo) x^n upright(e)^(- x^2) upright(d) x = 1 / 2 integral_0^(+ oo) (x^2)^(frac(n - 1, 2)) upright(e)^(- x^2) upright(d) (x^2) = 1 / 2 Gamma (frac(n + 1, 2)) $

== 大数定律和中心极限定理
<gailvlun-大数定律和中心极限定理>
=== 大纲要求
<gailvlun-大纲要求-4>
\1. 了解切比雪夫不等式。

\2. 了解切比雪夫大数定律、伯努利大数定律和辛钦大数定律（独立同分布随机变量序列的大数定律）。

\3. 了解棣莫弗-拉普拉斯定理（二项分布以正态分布为极限分布）和列维-林德伯格定理（独立同分布随机变量序列的中心极限定理）。

=== 神秘公式
<gailvlun-神秘公式>
#statement("theorem", title: [切比雪夫不等式])[
如果随机变量 $X$ 的期望 $bb(E) [ X ]$ 和方差 $bb(D) [ X ]$ 存在，则对任意 $epsilon > 0$ 有 $ bb(P) { abs(X - bb(E) [ X ]) < epsilon } gt.eq 1 - frac(bb(D) [ X ], epsilon^2) $
]
设随机变量 $X$ 与随机变量序列 ${ X_n }$，如果对任意的 $epsilon > 0$ 有 $ lim_(n arrow.r oo) bb(P) { abs(X_n - X) < epsilon } = 1 $ 则称随机变量序列 ${ X_n }$ 依概率收敛于随机变量 $X$，记为 $ lim_(n arrow.r oo) X_n = X ( P ) , quad upright("或") med X_n arrow.r^P X ( n arrow.r oo ) $

#statement("theorem", title: [切比雪夫大数定律])[
设 ${ X_n }$ 是相互独立的随机变量序列，如果方差 $bb(D) [ X ]$ 存在且有一致有上界，则 ${ X_n }$ 服从大数定律 $ 1 / n sum_(i = 1)^n X_i arrow.r^P 1 / n sum_(i = 1)^n bb(E) ( X_i ) $
]
#statement("theorem", title: [伯努利大数定律])[
假设 $mu_n$ 是 $n$ 重伯努利实验中时间 $A$ 发生的次数，在每次实验中 $A$ 发生的概率为 $p ( 0 < p < 1 )$，则 $ mu_n / n arrow.r^P p $
]
#statement("theorem", title: [辛钦大数定律])[
设 ${ X_n }$ 是独立同分布的随机变量序列，如果 $bb(E) ( X_i ) = mu$ 存在，则 $ 1 / n sum_(i = 1)^n X_i arrow.r^P mu $
]
#statement("theorem", title: [列维 - 林德伯格定理])[
假设 ${ X_n }$ 是独立同分布的随机变量序列，如果 $ bb(E) ( X_i ) = mu , bb(D) ( X_i ) = sigma^2 > 0 $ 存在，则对任意的实数 $x$ 有 $ lim_(n arrow.r oo) bb(P) {frac(sum_(i = 1)^n X_i - n mu, sigma sqrt(n)) lt.eq x} = integral_(- oo)^x 1 / sqrt(2 pi) upright(e)^(- t^2 / 2) upright(d) t = 𝛷 ( x ) $
]
#statement("theorem", title: [棣莫弗 - 拉普拉斯定理])[
设随机变量 $Y_n tilde.op B ( n , p )$，其中 $0 < p < 1$ 且 $n > 1$，则对任意的实数 $x$，有 $ lim_(n arrow.r oo) bb(P) {frac(Y_n - n p, sqrt(n p ( 1 - p ))) lt.eq x} = integral_(- oo)^x 1 / sqrt(2 pi) upright(e)^(- t^2 / 2) upright(d) t = 𝛷 ( x ) $
]
== 数理统计的基本概念
<gailvlun-数理统计的基本概念>
=== 大纲要求
<gailvlun-大纲要求-5>
\1. 理解总体、简单随机样本、统计量、样本均值、样本方差及样本矩的概念，其中样本 方差定义为 $ S^2 = frac(1, n - 1) sum_(i = 1)^n ( X_i - overline(X) ) $

\2. 了解 $chi^2$ 分布、$t$ 分布、$F$ 分布的概念及性质，了解上侧 $alpha$ 分位数的概念并会查表计算。

\3. 了解正态总体的常用抽样分布。

=== 统计量
<gailvlun-统计量>
随机试验的每一个可能的观察值称为个体，全部观察值称为总体，总体中包含个体的个数称为总体的容量。

$n$ 个相互独立且与总体 $X$ 同分布的随机变量 $X_1 , dots.h.c , X_n$ 称为来自总体 $X$ 或者来自分布函数 $F$ 的简单随机样本，其容量为 $n$。一次抽样结果的 $n$ 个具体数值称为 $X_1 , dots.h.c , X_n$ 的一个观测值（样本值）。

设 $X_1 , dots.h.c , X_n$ 为来自总体 $X$ 的一个样本，$g$ 为仅与 $x$ 有关的 $n$ 元函数，则称 $g$ 为样本的一个统计量。若 $( x_1 , dots.h.c , x_n )$ 为样本值，则 $g ( x_1 , dots.h.c , x_n )$ 为观测值。

假设总体 $X$ 的分布函数为 $F$，则 $( X_1 , dots.h.c , X_n )$ 的分布函数为 $ F ( x_1 , dots.h.c , x_n ) = product_(i = 1)^n F ( x_i ) $

样本均值和样本方差 $ overline(X) = 1 / n sum_(i = 1)^n X_i , quad S^2 = frac(1, n - 1) sum_(i = 1)^n ( X_i - overline(X) )^2 $ 样本 $k$ 阶（原点）矩和样本 $k$ 阶中心矩 $ A_k = 1 / n sum_(i = 1)^n X_i^k , quad B_k = 1 / n sum_(i = 1)^n ( X_i - overline(X) )^k $ 将 $n$ 个观测量从小到大的顺序排列，记随机变量 $X_(( k ))$ 为第 $k$ 顺序统计量。

显然样本与总体同分布 $ bb(E) [ X_i ] = bb(E) [ X ] , quad bb(D) [ X_i ] = bb(D) [ X ] $ 均值与方差 $ bb(E) [ overline(X) ] = bb(E) [ X ] , quad bb(D) ( overline(X) ) = 1 / n bb(D) [ X ] , quad bb(E) [ S^2 ] = bb(D) [ X ] $

#statement("note")[
为什么样本方差的分母是 $n - 1$？因为此时 $bb(E) [ S^2 ] = bb(D) [ X ]$，即 $S^2$ 是 $bb(D) [ X ]$ 的无偏估计量。具体的，不难带入样本均值计算 $ bb(E) [sum_(i = 1)^n (X_i - frac(sum X_i, n))^2] = bb(E) [frac(n - 1, n) (sum_(i = 1)^n X_i^2) - 1 / n (sum_(i = 1)^n sum_(i eq.not j) X_i X_j)] = ( n - 1 ) bb(D) [ X ] $
]
=== 三大分布
<gailvlun-三大分布>
===== $chi^2$ 分布
<gailvlun-chi2-分布>
若随机变量 $x_1 , dots.h.c , x_n$ 相互独立且都服从标准正态分布，则随机变量 $X = sum X_i^2$ 服从自由度为 $n$ 的 $chi^2$ 分布，记为 $X tilde.op chi^2 ( n )$。其中 $bb(E) [ chi^2 ] = n , bb(D) [ chi^2 ] = 2 n$。

===== $t$ 分布
<gailvlun-t-分布>
设随机变量 $X tilde.op N ( 0 , 1 ) , Y tilde.op chi^2 ( n )$，$X$ 与 $Y$ 互相独立，则随机变量 $t = X / sqrt(Y \/ n)$ 服从自由度为 $n$ 的 $t$ 分布，记为 $t tilde.op t ( n )$.

===== $F$ 分布
<gailvlun-f-分布>
设随机变量 $X tilde.op chi^2 ( n_1 ) , y tilde.op chi^2 ( n_2 )$，且 $X$ 与 $Y$ 相互独立，则 $F = frac(X \/ n_1, Y \/ n_2)$ 服从自由度为 $( n_1 , n_2 )$ 的 $F$ 分布，记为 $F tilde.op F ( n_1 , n_2 )$。

对于给定的 $alpha ( 0 < alpha < 1 )$ 和分布 $X$，称满足 $ bb(P) {X > X_alpha} = integral_(X_alpha)^oo f ( x ) upright(d) x = alpha $ 的 $X_alpha$ 为 $X$ 分布的上 $alpha$ 分位点。

=== 常用结论
<gailvlun-常用结论>
#strong[独立]分布的可加性

- 对于 $X tilde.op B ( n , p ) , Y tilde.op B ( m , p )$，则 $X + Y tilde.op B ( n + m , p )$；

- 对于 $X tilde.op P ( lambda_1 ) , Y tilde.op P ( lambda_2 )$，则 $X + Y tilde.op P ( lambda_1 + lambda_2 )$；

- 对于 $X tilde.op N ( mu_1 , sigma_1^2 ) , Y tilde.op N ( mu_2 , sigma_2^2 )$，则 $X + Y tilde.op N ( mu_1 + mu_2 , sigma_1^2 + sigma_2^2 )$；

- 对于 $X tilde.op chi^2 ( n ) , Y tilde.op chi^2 ( m )$，则 $X + Y tilde.op chi^2 ( n + m )$；

设正态总体 $X tilde.op N ( mu , sigma^2 )$，则

- $bb(E) [ X ] = mu$，$bb(D) [ X ] = sigma^2$，$bb(E) [ X^2 ] = mu^2 + sigma^2$，$bb(D) [ X^2 ] = 2 sigma^2 ( sigma^2 + 2 mu^2 )$。

- $bb(E) [ abs(X - mu) ] = sqrt(frac(2 sigma^2, pi))$，$bb(D) [ abs(X - mu) ] = sigma^2$，$overline(X) tilde.op N (mu , sigma^2 / n)$。

- $bb(E) [ S^2 ] = sigma^2$，$bb(D) [ S^2 ] = frac(2 sigma^2, n - 1)$。

设 $X_1 , dots.h.c , X_n$ 是取自正态总体 $X$ 的一个样本，$overline(X) , S^2$ 分别是其样本均值和方差，则

- $overline(X)$ 与 $S^2$ 相互独立。

- $ overline(X) tilde.op N (mu , sigma^2 / n) , quad frac(( overline(X) - mu ), sigma \/ sqrt(n)) tilde.op N ( 0 , 1 ) $

- $ sum_(i = 1)^n (frac(X_i - mu, sigma))^2 tilde.op chi^2 ( n ) $

- $ frac(( n - 1 ) S^2, sigma^2) = sum_(i = 1)^n (frac(X_i - overline(X), sigma))^2 tilde.op chi^2 ( n - 1 ) $

- $ frac(( overline(X) - mu ), sqrt(S^2 \/ n)) tilde.op t ( n - 1 ) $

== 参数估计
<gailvlun-参数估计>
=== 大纲要求
<gailvlun-大纲要求-6>
\1. 理解参数的点估计、估计量与估计值的概念。

\2. 掌握矩估计法（一阶矩、二阶矩）和最大似然估计法。

\3. 了解估计量的无偏性、有效性（最小方差性）和一致性（相合性）的概念，并会验证估计量的无偏性。

\4. 理解区间估计的概念，会求单个正态总体的均值和方差的置信区间，会求两个正态总 体的均值差和方差比的置信区间。

=== 参数的点估计
<gailvlun-参数的点估计>
设总体 $X$ 的分布形式已知，但含有未知参数 $theta$，或者总体的某数字特征存在但未知，从总体中抽取样本 $X_1 , dots.h.c , X_n$，相应的样本值为 $x_1 , dots.h.c , x_n$。借助于样本给出一个未知参数具体数值的参数估计问题就是点估计问题。

要解决点估计问题，就要构造一个适当的统计量 $hat(theta) ( x_1 , dots.h.c , x_n )$ 作为参数 $theta$ 的近似值，则称 $hat(theta) ( X_1 , dots.h.c , X_n )$ 为 $theta$ 的估计量，$hat(theta) ( X_1 , dots.h.c , X_n )$ 为 $theta$ 为 $theta$ 的估计值。

=== 矩估计法
<gailvlun-矩估计法>
设总体 $X$ 分布有 $n$ 个样本，有 $k$ 个未知参数。若 $X$ 的原点矩存在，我们令样本矩等于总体矩 $ 1 / n sum_(i = 1)^N X_i^l = bb(E) ( X^l ) , quad l = 1 , dots.h.c , k $ 这是包含 $k$ 个参数的 $k$ 个方程，由此解得矩估计量和矩估计值。

一般约定：用矩法方程求总体未知参数的估计量时，从低阶开始。

=== 最大似然估计法
<gailvlun-最大似然估计法>
似然性与概率的区别：

- 概率 $p ( x ; theta )$ 是在已知参数 $theta$ 的情况下，发生观测结果 $x$ 的概率；

- 似然性 $L ( x ; theta )$ 是从观测结果 $x$ 出发，分布函数为 $theta$ 的可能性大小。

最大似然估计值即对给定的观测值 $x_1 , dots.h.c , x_n$，该估计值 $hat(theta)$ 使似然性最大。

假设 $X$ 是离散型随机变量，其概率分布为 $bb(P) { X = x } = p ( x ; theta )$，那么求其取值概率 $ L ( x_1 , dots.h.c , x_n ; theta ) = bb(P) { X_1 = x_1 , dots.h.c , X_n = x_n } = product_(i = 1)^n bb(P) { X_i = x_i } = product_(i = 1)^n p ( x_i ; theta ) $ 称为样本的似然函数。若存在 $hat(theta)$ 使得 $L$ 取到最大值，则称 $hat(theta)$ 为最大似然估计值，对应的统计量是 $theta$ 的最大似然估计量。

同理，连续型随机变量也有 $ L ( x_1 , dots.h.c , x_n ; theta ) = product_(i = 1)^n f ( x_i ; theta ) $

最大似然估计法步骤：

+ 计算似然函数 $L ( theta )$

+ 求关于 $theta$ 的最大值点，一般情况下可微，求导或者对数求导 $ frac(upright(d) L, upright(d) theta) = 0 , quad frac(upright(d) ( ln L ), upright(d) theta) = frac(L' ( theta ), L ( theta )) = 0 $ 得到极值点

+ 用样本 $X_i$ 代替样本值 $x_i$，得到最大似然估计量 $hat(theta)$。

倘若有多个参数 $theta$，也是计算多元极值点。

#statement("note")[
注意参数 $theta$ 的取值范围，有时候最值不是极值。
]
=== 估计量的评选标准
<gailvlun-估计量的评选标准>
无偏性：若估计量 $hat(theta)$ 的数学期望 $bb(E) [ hat(theta) ]$ 存在，且 $bb(E) [ hat(theta) ] = theta$，则称 $hat(theta)$ 是 $theta$ 的无偏估计量。

有效性：若 $hat(theta)_1$ 和 $hat(theta)_2$ 都是 $theta$ 的估计量，若 $bb(D) [ hat(theta)_1 ] lt.eq bb(D) [ hat(theta)_2 ]$，则称 $hat(theta)_1$ 较 $hat(theta)_2$ 有效。 一致性（相合性）：若估计量 $hat(theta)$ 在 $n arrow.r oo$ 时 $hat(theta)$ 依概率收敛于 $theta$，则称 $hat(theta)$ 是 $theta$ 的一致估计量。

一致性：若估计量 $hat(theta)$ 对任意 $epsilon > 0$ 有 $ lim_(n arrow.r oo) bb(P) { abs(hat(theta) - theta) gt.eq epsilon } = 0 $ 即当 $hat(theta) arrow.r^P theta$ 时，称 $hat(theta)$ 为 $theta$ 的一致估计。

=== 区间估计
<gailvlun-区间估计>
设总体 X 的分布 $F ( x ; theta )$ 含有未知参数 $theta$，若对于给定的概率 $1 - alpha$ 存在两个统计量 $theta_1 , theta_2$ 使得 $ bb(P) { theta_1 < theta < theta_2 } = 1 - alpha $ 则称随机区间 $( theta_1 , theta_2 )$ 是 $theta$ 置信度 $1 - alpha$ 的置信区间，$alpha$ 称为显著性水平。若 $bb(P) { theta < theta_1 } = bb(P) { theta > theta_2 } = alpha / 2$ 时，则称这种置信区间为等尾置信区间。

一般对于具体题目，要求区间估计时，首先建立 $hat(theta)$ 的统计量，再与常见分布建立联系，利用常见分布的分位点求解。

对于 $X tilde.op N ( mu , sigma^2 )$，其置信区间为

- $sigma^2$ 已知，$mu$ 的置信水平是 $1 - alpha$ 的置信区间为 $ U = frac(overline(X) - mu, sigma \/ sqrt(n)) = N ( 0 , 1 ) , #h(2em) I_1 = (overline(X) - sigma / sqrt(n) z_(alpha \/ 2) , overline(X) + sigma / sqrt(n) z_(alpha \/ 2)) $

- $sigma^2$ 未知，$mu$ 的置信水平是 $1 - alpha$ 的置信区间为 $ U = frac(overline(X) - mu, S \/ sqrt(n)) tilde.op t ( n - 1 ) , #h(2em) I_2 = (overline(X) - S / sqrt(n) t_(alpha \/ 2) , overline(X) + S / sqrt(n) t_(alpha \/ 2)) $

- $mu$ 已知，$sigma^2$ 的置信水平是 $1 - alpha$ 的置信区间为 $ W' = 1 / sigma^2 sum_(i = 1)^n ( X_i - mu )^2 tilde.op chi^2 ( n ) , #h(2em) I_3 = (frac(sum ( X_i - mu )^2, chi_(alpha \/ 2)^2 ( n )) , frac(sum ( X_i - mu )^2, chi_(1 - alpha \/ 2)^2 ( n ))) $

- $mu$ 未知，$sigma^2$ 的置信水平是 $1 - alpha$ 的置信区间为 $ W = frac(( n - 1 ) S^2, sigma^2) tilde.op chi^2 ( n - 1 ) , #h(2em) I_4 = (frac(( n - 1 ) S^2, chi_(alpha \/ 2)^2 ( n - 1 )) , frac(( n - 1 ) S^2, chi_(1 - alpha \/ 2)^2 ( n - 1 ))) $

== 假设检验
<gailvlun-假设检验>
=== 大纲要求
<gailvlun-大纲要求-7>
\1. 理解显著性检验的基本思想，掌握假设检验的基本步骤，了解假设检验可能产生的两类错误。

\2. 掌握单个及两个正态总体的均值和方差的假设检验。

=== 假设检验的基本概念
<gailvlun-假设检验的基本概念>
假设检验问题：总体函数未知，或者参数未知的情况下，提出一些关于总体分布或者参数的假设，然后抽取样本构建统计量，再根据样本所提的假设做出接受或者拒绝的决策。

检验法：借助于样本值来判断接受假设，或者拒绝假设的法则，称为检验法。

需要着重考察的假设称为原假设，常常记为 $H_0$；与原假设相对立的假设称为备选假设（或对立假设），备择假设记为 $H_1$。

检验统计量：如果基于某一个统计量的观测值来确定接受 $H_0$ 或者拒绝 $H_0$ 时，这一统计量称为检验统计量。

当统计量落在某个区域时就拒绝 $H_0$，这一区域称为拒绝域，拒绝域的边界点称为临界点。

两类错误：

- 第 I 类错误：弃真，$H_0$ 实际上为真时但拒绝 $H_0$。

- 第 II 类错误：取伪，$H_0$ 实际上为假但接受 $H_0$。

显著性水平：在做检验时要求犯第一类错误的概率 $lt.eq alpha$，则 $alpha$ 称为显著性水平，通常取 $0.1 , 0.05$ 等值。

显著性检验：对于给定的样本容量，只控制犯第 I 类错误的概率，而不考虑犯第 II 类错误的检验法，称为显著性检验。

假设检验的一般步骤：

- 提出所要检验的原假设 $H_0$ 与备择假设 $H_1$；

- 选择检验的统计量，并在 $H_0$ 成立下求出它的分布；

- 给定显著性水平，在 $H_0$ 成立下去的那个临界值和否定域；

- 由样本值推算出统计量的值，判断该值是否落入否定域。

正态分布下均值与方差的假设检验：不抄了，看张宇。
