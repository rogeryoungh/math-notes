#import "../template/my-theorem.typ": theorem, definition, proof, example, solution, show-theorion
#show: show-theorion

== 数列极限的概念
<数列极限的概念>
#definition[
设 ${ a_n }$ 为数列，$A$ 为定数。若对任给的正数 $epsilon$，总存在正整数
$N = N (epsilon)$，使得当 $n > N$ 时有 $ lr(|a_n - A|) < epsilon $
则称数列 ${ a_n }$ 收敛于 $A$，或称 $A$ 为数列 ${ a_n }$ 的极限，记作
$ lim_(n arrow.r oo) a_n = A "，或" med a_n arrow.r a (n arrow.r oo) $

]
若数列 ${ a_i }$ 存在 $A in bb(R)$ 使得 $a_n arrow.r A$
成立，则称为收敛的。反之称为发散的，逻辑展开即：对任意 $A$ 都有 $a_n$
不收敛至 $A$。

在使用 $epsilon - N$ 语言时，$N (epsilon)$
的选取是非常有技巧的，需要多加练习才能感悟到。

特殊地，若 $lim_(n arrow.r oo) a_n = 0$，则称 ${ a_n }$ 为无穷小数列。

#definition[
若数列 ${ a_n }$ 满足：对任意正数 $M > 0$，存在正整数 $N$，使得当
$n > N$ 时，

1. $a_n > M$，则称数列 ${ a_n }$ 发散于正无穷大，记作 $lim_(n arrow.r oo) a_n = + oo$，或 $a_n arrow.r + oo$。

2. 有 $a_n < M$，则称数列 ${ a_n }$ 发散于负无穷大，记作 $lim_(n arrow.r oo) a_n = - oo$，或 $a_n arrow.r - oo$。

两者合称无穷大数列。

]
#example[
证明数列 $a_n = sin n$ 发散。

]
#solution[
不妨假设其极限为 $A$，任取 $epsilon$ 存在 $N$ 使得当
$n > N$ 时有 $lr(|sin n - A|) < epsilon$。注意到
$ lr(|2 sin 1 cos n|) = lr(|sin (n + 1) - sin (n - 1)|) < 2 epsilon $
可以得到 $cos n arrow.r 0$，又
$ lr(|sin 2 n|) = 2 lr(|sin n cos n|) < 2 lr(|cos n|) < frac(2 epsilon, sin 1) $
从而 $sin n arrow.r 0$。显然有矛盾
$ lr(|sin^2 2 n + cos^2 2 n|) < frac(5 epsilon^2, sin^2 1) < 1 $
故不存在极限，即发散。

]
== 收敛数列的性质
<收敛数列的性质>
#theorem[
若数列 ${ a_n }$ 收敛，则它只有一个极限。
]
#proof[
如果数列 ${ a_n }$ 同时以 $A , B$ 为极限，即任给
$epsilon > 0$，总存在 $N_1 , N_2$，使得
$ lr(|a_n - A|) < epsilon , n > N_1 ; quad lr(|a_n - B|) < epsilon , n > N_2 $
那么当 $n > max { N_1 , N_2 }$ 时需要恒成立
$ 2 epsilon > lr(|a_n - A|) + lr(|a_n - B|) >= lr(|A - B|) $ 当
$A eq.not B$ 时，对于 $2 epsilon < lr(|A - B|)$ 不恒成立，因此只能
$A = B$。

]
#theorem[
若数列 ${ a_n }$ 收敛，则 ${ a_n }$ 有界。

]
#proof[
不妨设 $lim_(n arrow.r oo) a_n = A$。令
$epsilon = 1$，那么存在 $n > N$ 使得 $ lr(|a_n - A|) <= 1 $ 令
$ M = { lr(|a_1|) , dots.h.c , lr(|a_N|) , lr(|A - 1|) , lr(|A + 1|) } $
那么对任意正整数 $n$，总有 $lr(|a_n|) <= M$。
]
#theorem[
设 $lim_(n arrow.r oo) a_n = A , lim_(n arrow.r oo) b_n = B$，则有

1. 如果存在 $N$ 使得当 $n > N$ 时有 $a_n >= b_n$ 恒成立，则 $A >= B$。
2. 反之，如果 $A > B$，则存在 $N$ 使得当 $n > N_1$ 时 $a_n > b_n$
恒成立。
]
#proof[
（1） 如果设 $B - A = 2 delta > 0$，那么存在
$N_2 , N_3 > N$
$ lr(|a_n - A|) < delta , n > N_2 ; #h(2em) lr(|b_n - B|) < delta , n > N_3 $
于是当 $n > max { N_2 , N_3 }$ 时有
$ a_n < A + delta = B - delta < b_n $ 因此矛盾，故 $A >= B$。

（2） 设 $A - B = 2 delta > 0$，那么存在 $N_2 , N_3$
$ lr(|a_n - A|) < delta , n > N_2 ; #h(2em) lr(|b_n - B|) < delta , n > N_3 $
于是存在 $N_1 = max { N_2 , N_3 }$，当 $n > N_1$ 时有
$ a_n > A - delta = B + delta > b_n $
]

若 $b_n$ 是常数列，$A eq.not 0$，我们还可得到推论：存在 $N$，使得当
$n > N$ 时，有 $ 1 / 2 lr(|A|) < lr(|a_n|) < 3 / 2 lr(|A|) $

#definition[
设数列 ${ a_n } , { b_n } , { c_n }$ 满足当 $n > N_0$ 有
$a_n <= c_n <= b_n$。若
$ lim_(n arrow.r oo) a_n = A = lim_(n arrow.r oo) c_n $ 则
$lim_(n arrow.r oo) b_n = A$。

]
#proof[
即对于任给的 $epsilon > 0$，存在 $N_1 , N_2$，使得当
$n > N_1$ 有 $ A - epsilon < a_n < A + epsilon $ 当 $n > N_2$ 有
$ A - epsilon < c_n < A + epsilon $ 因此当 $n > max { N_0 , N_1 , N_2 }$
时，有 $ A - epsilon < a_n <= b_n <= c_n < A + epsilon $

]

#example[
如果 $a_1 , dots.h.c , a_k > 0$，那么有
$ lim_(n arrow.r oo) root(n, a_1^n + dots.h.c + a_k^n) = max { a_1 , dots.h.c , a_k } $
]
#proof[
不妨设 $a_1 = max { a_1 , dots.h.c , a_k }$，那么有
$ a_1 < root(n, a_1^n + dots.h.c + a_k^n) < root(n, k a_1^n) arrow.r a_1 $
由夹逼原理知原式成立。

]

#example[
设 $lim_(n arrow.r oo) a_n = A , lim_(n arrow.r oo) b_n = B$，则有

1. ${ alpha a_n + beta b_n }$ 收敛到 $alpha A + beta B$，其中 $alpha , beta$ 为常数。
2. ${ a_n b_n }$ 收敛到 $A B$。
3. 当 $B eq.not 0$ 时，${ a_n \/ b_n }$ 收敛到 $A \/ B$。

]
#proof[
（1） 任给 $epsilon > 0$，存在 $N_1 , N_2$ 使得
$ lr(|a_n - A|) < frac(epsilon, 2 lr(|alpha|) + 1) , n > N_1 ; #h(2em) lr(|b_n - B|) < frac(epsilon, 2 lr(|beta|) + 1) , n > N_2 $
则当 $n > max { N_1 , N_2 }$ 时有
$ lr(|(alpha a_n + beta b_n) - (alpha A + beta B)|) & <= lr(|alpha|) lr(|a_n - A|) + lr(|beta|) lr(|b_n - B|)\
 & < frac(epsilon lr(|alpha|), 2 lr(|alpha|) + 1) + frac(epsilon lr(|beta|), 2 lr(|beta|) + 1)\
 & < epsilon / 2 + epsilon / 2 = epsilon $

（2） 由收敛数列的有界性，存在 $M$ 使得 $lr(|a_n|) <= M$，那么
$ 0 <= lr(|a_n b_n - A B|) = lr(|(a_n - A) b_n + A (b_n - B)|) <= M lr(|a_n - A|) + lr(|A|) lr(|b_n - B|) $
由迫敛性知 $lim_(n arrow.r oo) lr(|a_n b_n - A B|) = 0$。

（3） 由保号性的推论，存在 $N$ 使得当 $n > N$ 时有
$lr(|b_n|) > lr(|B|) / 2$，那么
$ 0 <= lr(|1 / b_n - 1 / B|) = frac(lr(|b_n - B|), lr(|b_n|) lr(|B|)) <= 2 / lr(|B|)^2 lr(|b_n - B|) $
由迫敛性知 $lim_(n arrow.r oo) lr(|1 / b_n - 1 / B|) = 0$。

]
=== Stolz 定理
<stolz-定理>
Stolz 定理主要是用来处理 $oo \/ oo$ 型和 $0 \/ 0$
型极限，可以认为是洛必达的替代。

#theorem[
对于任意的 $1 <= k <= n$，设 $b_k > 0$ 且
$m <= a_k / b_k <= M$，则有
$ m <= frac(sum a_n, sum b_n) <= M $
]

#theorem[
设数列 ${ x_n } , { y_n }$，且 ${ y_n }$ 严格单调地趋于 $+ oo$，如果
$ lim_(n arrow.r oo) frac(x_n - x_(n - 1), y_n - y_(n - 1)) = A $ 则
$ lim_(n arrow.r oo) x_n / y_n = A $

]
#proof[
分类讨论 Todo……

]
#theorem[
设数列 ${ y_n }$ 严格单调地趋于 $0$，且数列 ${ x_n }$ 也收敛到
$0$，那么如果
$ lim_(n arrow.r oo) frac(x_n - x_(n - 1), y_n - y_(n - 1)) = A $ 则
$ lim_(n arrow.r oo) x_n / y_n = A $

]
#proof[
分类讨论 Todo……

]
== 数列收敛的判别法则
<数列收敛的判别法则>

我们需要一些更方便的判别法则。

=== 单调数列
<单调数列>

若数列 ${ a_n }$ 各项满足关系式
$a_n <= a_(n + 1) (a_n >= a_(n + 1))$，则称 ${ a_n }$
为递增（递减）数列，统称为单调数列。

#theorem[
单调有界数列必有极限。

]
#proof[
不妨设 ${ a_i }$
为有上界的单调递增序列，由确界原理知存在上确界 $beta$。按其定义，任给
$epsilon > 0$ 都存在 $N$ 使得 $beta - epsilon < a_N < beta$（否则
$beta - epsilon$ 就是新的上确界）。故
$lr(|a_n - beta|) < epsilon$，即收敛至 $beta$。

]
=== 子列
<子列>

设 ${ a_n }$ 为数列，如果 ${ n_k }$ 是一列严格递增的正整数，则数列
${ a_(n_k) }$ 称为数列 ${ a_n }$ 的一个子列。子列显然有性质
$n_k >= k$，归纳易证。

特殊的子列 ${ a_(2 k) }$ 和 ${ a_(2 k - 1) }$
分别称为偶子列与奇子列。数列本身也是其自己的子列。

#theorem[
任何有界数列必定有收敛的子列。

]
#proof[
不妨设数列包含无数个不同的
$a_n$，否则显然成立。假设数列有界，设其值域为
$[A_0 , B_0]$。注意到我们可以对分区间为 $[A_0 , frac(A_0 + B_0, 2)]$ 和
$[frac(A_0 + B_0, 2) , B_0]$，至少其中之一包含无穷多个 $a_n$，记为
$[A_1 , B_1]$。我们可以不断划分，得到一闭缩区间套
$ [A_0 , B_0] supset [A_1 , B_1] subset dots.h.c $
总是可以在区间中找到下标递增的项，即我们要求的子列。

]
#theorem[
数列 ${ a_n }$ 收敛的充要条件：${ a_n }$ 的任何子列都收敛。

]

=== Cauchy 准则
<cauchy-准则>

#theorem[
设 ${ a_n }$ 为数列，如果任给 $epsilon > 0$，均存在 $N (epsilon)$ 使任取
$m , n > N (epsilon)$ 有 $ lr(|a_m - a_n|) < epsilon $ 则称 ${ a_n }$ 为
Cauchy 数列或基本列。

]
反之，若存在 $epsilon > 0$ 使得任给 $N$ 都存在 $n , m > N$ 使得
$ lr(|a_n - a_m|) >= epsilon $ 则称该数列为非 Cauchy 的。

#theorem[
Cauchy 数列必定是有界数列。

]
#proof[
 取 $epsilon = 1$，则存在 $N$ 使得当 $m , n > N$ 时有
$ lr(|a_m - a_n|) < 1 $ 令
$M = max { lr(|a_k|) + 1 divides 1 <= k <= N + 1 }$，则当
$n <= N$ 时显然有 $lr(|a_n|) <= M$，而当 $n > N$ 时有
$ lr(|a_n|) <= lr(|a_n - a_(N + 1)|) + lr(|a_(N + 1) < 1 +|) a_(N + 1) \| <= M $
这说明 ${ a_n }$ 是有界数列。

]
#theorem[
${ a_n }$ 为 Cauchy 数列当且仅当它是收敛的。

]
#proof[
（1） 充分性：设 ${ a_n }$ 收敛到 $A$，则任给
$epsilon > 0$ 存在 $N$，当 $n > N$ 时有
$ lr(|a_n - A|) <= epsilon / 2 $ 因此当 $m , n > N$ 时有
$ lr(|a_m - a_n|) <= lr(|a_m - A|) + lr(|A - a_n|) < epsilon / 2 + epsilon / 2 = epsilon $
这说明 $a_n$ 为 Cauchy 数列。

（2） 必要性：已证 Cauchy 列有界，则必存在收敛子列
${ a_(u_k) }$，因此任给 $epsilon > 0$ 存在 $N_1$ 使得当 $u_i > N_1$ 时有
$ lr(|a_(u_i) - A|) < epsilon / 2 $ 又由定义知存在 $N_2$ 使得任取
$n , m > N_2$ 有 $ lr(|a_n - a_m|) < epsilon / 2 $ 因此取
$N = max { N_1 , N_2 }$，取 $u_k > N$，则当 $n > N$ 时有
$ lr(|a_n - A|) <= lr(|a_n - a_(u_k)|) + lr(|a_(u_k) - A|) <= epsilon $

]
#theorem[
设递推数列 $a_(n + 1) = f (a_n)$，假设
$a_n subset (alpha , beta)$，若存在常数 $L in (0 , 1)$ 使得对任意
$x , y in (alpha , beta)$ 有 $ lr(|f (x) - f (y)|) <= L lr(|x - y|) $
则数列收敛。

]
#proof[
首先类似于等比
$ lr(|a_(n + 1) - a_n|) <= dots.h.c <= L^(n - 1) lr(|a_2 - a_1|) $
从而
$ lr(|a_(n + k) - a_n|) <= sum_(i = 1)^k lr(|a_(n + i) - a_(n + i - 1)|) <= sum_(i = 1)^k L^(n + i) lr(|a_2 - a_1|) <= frac(L^(n - 1), 1 - L) lr(|a_2 - a_1|) $
由 Cauchy 收敛准则知数列收敛。

]
== 常见数列
<常见数列>

首先我们定义三个数列
$ a_n = (1 + 1 / n)^n , quad b_n = (1 + 1 / n)^(n + 1) , e_n = sum_(i = 0)^n frac(1, k !) $
我们通常定义 $a_n$ 的极限为 $upright(e)$。下证三者极限存在且相同。

其中 $e_n$ 的单调性是显然的。我们先证：
$ a_n < a_(n + 1) , quad b_n > b_(n + 1) $ 首先
$ a_n & = sum_(k = 0)^n binom(n, k) 1 / n^k\
 & = 1 + sum_(k = 1)^n frac(1, k !) product_(j = 1)^(k - 1) (1 - j / n)\
 & < 1 + sum_(k = 1)^n frac(1, k !) product_(j = 1)^(k - 1) (1 - frac(j, n + 1))\
 & < 1 + sum_(k = 1)^(n + 1) frac(1, k !) product_(j = 1)^(k - 1) (1 - frac(j, n + 1)) = a_(n + 1)\
 $ 再借助 Bernoulli 不等式
$ b_(n - 1) / b_n & = (1 + frac(1, n - 1))^n / (1 + 1 / n)^(n + 1)\
 & = (1 + frac(1, n^2 - 1))^n frac(1, 1 + 1 / n)\
 & > (1 + frac(n, n^2 - 1)) frac(1, 1 + 1 / n)\
 & = 1 + frac(1, (n + 1)^2 (n - 1)) > 1 $

注意到当 $n > 2$ 时
$ a_n <= 1 + sum_(k = 1)^n frac(1, k !) = e_n <= 2 + sum_(k = 2)^n frac(1, k (k - 1)) = 3 - 1 / n < 3 $
故 $a_n$ 和 $b_n$ 单调有界，故必有极限。再注意到
$ b_n = (1 + 1 / n) a_n $ 由极限的四则运算，故 $b_n$ 的极限也存在，且
$a_n$ 和 $b_n$ 收敛于同一个值。

我们定义 $a_n$ 的极限为 $upright(e)$，下证
$e_n arrow.r upright(e)$。注意到固定 $u$ 有
$ a_n & = 1 + sum_(k = 1)^n frac(1, k !) product_(j = 1)^(k - 1) (1 - j / n)\
 & > 1 + sum_(k = 1)^u frac(1, k !) product_(j = 1)^(k - 1) (1 - j / n) $
那么令 $n arrow.r oo$，有
$ e_k = sum_(k = 0)^u frac(1, k !) <= a_n arrow.r upright(e) $
故由夹逼定理知 $e_n arrow.r upright(e)$。
