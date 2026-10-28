#import "../../template/environments.typ": statement

= 行列式
<ga-2-行列式>
== 排列
<ga-2-排列>
#statement("definition", title: [])[
由 $1 , 2 , dots.h.c , n$ 组成的一个有序数组称为一个 $n$ 阶排列。

]
特殊的，排列 $12 dots.h.c n$ 也是一个 $n$ 阶排列，称为自然排列。

#statement("definition", title: [])[
在一个排列中，如果一对数前面的数大于后面的数，那么它们就称为一个逆序，反之称为正序。

排列中逆序的对数称为这个排列的逆序数。

]
逆序数为偶数的排列称为偶排列，逆序数的排列称为奇排列。

排列 $j_1 j_2 dots.h.c j_n$ 的逆序数记为 $ tau ( j_1 j_2 dots.h.c j_n ) $

#statement("definition", title: [])[
把排列中某两个数位置互换，得到一个新排列。称这样的一个变换称为一个对换。

]
#statement("theorem", title: [])[
对换改变排列的奇偶性。

]
#statement("proof", title: [])[
设对换为 $( i , j )$，分类讨论：

（1） 若所换两数相邻，则不影响后面数字的逆序数。那么若 $i j$ 为一个逆序，则逆序数减 $1$，否则逆序数加 $1$，总之逆序数奇偶性改变。

（2） 若所换两数不相邻，不妨设 $i$ 在 $j$ 之前，排列为 $ dots.h.c i quad k_1 dots.h.c k_s quad j dots.h.c $ 那么有 $ ( i , j ) = ( i , k_1 ) dots.h.c ( i , k_s ) ( i , j ) ( k_s , j ) dots.h.c ( k_1 , j ) $ 即任意对换即总可以分解为奇数个相邻对换的积。

]
任何一个 $n$ 阶排列都可以与自然排列由一系列对换互变，即置换。奇置换可以分解为奇数个对换的积，偶置换可以分解为偶数个对换的积。

== $n$ 阶行列式
<ga-2-n-阶行列式>
记 $sum_(j_1 j_2 dots.h.c j_n)$ 表示对所有 $n$ 元排列求和。

#statement("definition", title: [])[
$n$ 阶行列式 $ mat(delim: "|", a_(1 1), a_(1 2), dots.h, a_(1 n); a_(2 1), a_(2 2), dots.h, a_(2 n); dots.v, dots.v, #none, dots.v; a_(n 1), a_(n 2), dots.h, a_(n n)) = sum_(j_1 j_2 dots.h.c j_n) ( - 1 )^(tau ( j_1 j_2 dots.h.c j_n )) a_(1 j_1) a_(2 j_2) dots.h.c a_(n j_n) $ 该式称为 $n$ 阶行列式的完全展开式。

]
若对角线下方的元素全为 $0$，则称为上三角行列式，即对于所有的 $1 lt.eq i < j lt.eq n$，有 $a_(j i) = 0$。

#statement("theorem", title: [])[
上三角行列式的值为 $ det(A) = a_(1 1) a_(2 2) dots.h.c a_(n n) $

]
#statement("proof", title: [])[
考虑其完整展开式的任意一项 $ ( - 1 )^(tau ( j_1 j_2 dots.h.c j_n )) a_(1 j_1) a_(2 j_2) dots.h.c a_(n j_n) $ 若该项不为 $0$，则对 $1 lt.eq k lt.eq n$，皆有 $j_k lt.eq k$。

因此只有 $j_k = k$，只有这一项不为 $0$。

]
#statement("theorem", title: [])[
设 $n$ 级矩阵 $A$ 依据给定排列 $i_1 i_2 dots.h.c i_n$ 对行指标进行重排得到 $A_1$，则 $A_1$ 的行列式为 $ det(A_1) = ( - 1 )^(tau ( i_1 i_2 dots.h.c i_n )) det(A) $

]
#statement("proof", title: [])[
设一列元素 $a_(1 j_1) a_(2 j_2) dots.h.c a_(n j_n)$ 经过 $s$ 次相邻互换变为 $a_(i_1 k_1) a_(i_2 k_2) dots.h.c a_(i_n k_n)$，则有 $ ( - 1 )^(tau ( i_1 i_2 dots.h.c i_n )) & = ( - 1 )^s\
( - 1 )^(tau ( j_1 j_2 dots.h.c j_n )) ( - 1 )^s & = ( - 1 )^(tau ( k_1 k_2 dots.h.c k_n )) $ 从而 $ ( - 1 )^(tau ( i_1 i_2 dots.h.c i_n ) + tau ( k_1 k_2 dots.h.c k_n )) & = ( - 1 )^s ( - 1 )^(tau ( j_1 j_2 dots.h.c j_n )) ( - 1 )^s\
 & = ( - 1 )^(tau ( j_1 j_2 dots.h.c j_n )) $

]
同理，给定列指标的一个排列 $k_1 k_2 dots.h.c k_n$ 和对应的矩阵 $A_2$，则 $n$ 级矩阵的行列式为 $ det(A_2) = ( - 1 )^(tau ( k_1 k_2 dots.h.c k_n )) det(A) $

== 行列式的性质
<ga-2-行列式的性质>
#statement("theorem", title: [])[
转置后行列式值不变。

]
记矩阵 $A$ 转置后的矩阵 $A'$ 或 $A^(sans(T))$。

#statement("proof", title: [])[
设行列式 $B = A^(sans(T))$，即 $a_(i j) = b_(j i)$。由前文知，按列指标展开 $B$ 有（注意第 $1$ 个下标是列指标，第 $2$ 个下标是行指标） $ det(B) = sum_(i_1 i_2 dots.h.c i_n) ( - 1 )^(tau ( i_1 i_2 dots.h.c i_n )) a_(1 i_1) a_(2 i_2) dots.h.c a_(n i_n) $ 按列指标展开 $A$ 有 $ det(A) = sum_(i_1 i_2 dots.h.c i_n) ( - 1 )^(tau ( i_1 i_2 dots.h.c i_n )) a_(1 i_1) a_(2 i_2) dots.h.c a_(n i_n) $ 因此 $det(A) = det(B)$。

]
#statement("theorem", title: [])[
行列式的一行乘以一个数，等于行列式乘以这个数。

]
#statement("proof", title: [])[
即行列式 $B$ 除了第 $i_1$ 行有 $b_(i_1 j) = k a_(i_1 j)$，其他行都有 $b_(i j) = a_(i j)$。 $ det(B) & = sum_(j_1 j_2 dots.h.c j_n) ( - 1 )^(tau ( j_1 j_2 dots.h.c j_n )) a_(1 j_1) dots.h.c ( k a_(i_1 j) ) dots.h.c a_(n j_n)\
 & = k sum_(j_1 j_2 dots.h.c j_n) ( - 1 )^(tau ( j_1 j_2 dots.h.c j_n )) a_(1 j_1) dots.h.c a_(i_1 j) dots.h.c a_(n j_n)\
 & = k det(A) $

]
#statement("theorem", title: [])[
除了同一行以外全部相等的两个行列式，与此行替换为这两行的和的行列式相等。

]
#statement("proof", title: [])[
即行列式 $A$ 除了第 $i_1$ 行有 $a_(i_1 j) = b_(i_1 j) + c_(i_1 j)$，其他行都有 $a_(i j) = b_(i j) = c_(i j)$。 $ det(A) & = sum_(j_1 j_2 dots.h.c j_n) ( - 1 )^(tau ( j_1 j_2 dots.h.c j_n )) a_(1 j_1) dots.h.c ( b_(i_1 j) + c_(i_1 j) ) dots.h.c a_(n j_n)\
 & = sum_(j_1 j_2 dots.h.c j_n) ( - 1 )^(tau ( j_1 j_2 dots.h.c j_n )) a_(1 j_1) dots.h.c b_(i_1 j) dots.h.c a_(n j_n) + sum_(j_1 j_2 dots.h.c j_n) ( - 1 )^(tau ( j_1 j_2 dots.h.c j_n )) a_(1 j_1) dots.h.c c_(i_1 j) dots.h.c a_(n j_n)\
 & = det(B) + det(C) $

]
#statement("theorem", title: [])[
行列式中有两行互换，行列式反号。

]
#statement("proof", title: [])[
即设行列式 $B$ 为行列式第 $k_1 , k_2$ 两行交换的结果，又 $ ( - 1 )^(tau ( j_1 dots.h.c j_(k_2) dots.h.c j_(k_1) dots.h.c j_n )) = - ( - 1 )^(tau ( j_1 dots.h.c j_(k_1) dots.h.c j_(k_2) dots.h.c j_n )) $ 那么有 $ det(B) & = sum_(j_1 dots.h.c j_(k_2) dots.h.c j_(k_1) dots.h.c j_n) ( - 1 )^(tau ( j_1 dots.h.c j_(k_2) dots.h.c j_(k_1) dots.h.c j_n )) a_(1 j_1) dots.h.c a_(k_1 j_(k_2)) dots.h.c a_(k_2 j_(k_1)) dots.h.c a_(n j_n)\
 & = - sum_(j_1 dots.h.c j_(k_1) dots.h.c j_(k_2) dots.h.c j_n) ( - 1 )^(tau ( j_1 dots.h.c j_(k_1) dots.h.c j_(k_2) dots.h.c j_n )) a_(1 j_1) dots.h.c a_(k_1 j_(k_1)) dots.h.c a_(k_2 j_(k_2)) dots.h.c a_(n j_n)\
 & = - det(A) $

]
#statement("theorem", title: [])[
行列式中有两行相等，行列式为零。

]
#statement("proof", title: [])[
交换这相同的两行，行列式变号，其仍与原来相等，只能为 $0$。

]
#statement("theorem", title: [])[
行列式中两行成比例，行列式为零。

]
#statement("proof", title: [])[
提出公因子使两行相等，即为 $0$。

]
#statement("theorem", title: [])[
把一行的倍数加到另一行，行列式不变。

]
#statement("proof", title: [])[
一行是另一行的倍数的行列式为 $0$，合并后自然不变。

]
== 行列式按一行展开
<ga-2-行列式按一行展开>
#statement("definition", title: [代数余子式])[
#metadata(()) <ga-index-2> $n$ 阶行列式 $det(A)$ 中，划去第 $i$ 行和第 $j$ 列，剩下的元素按原来次序组成的 $n - 1$ 阶行列式称为矩阵 $A$ 的 $( i , j )$ 元的余子式。记作 $ M_(i j) = sum_(k_1 dots.h.c k_(i - 1) k_(i + 1) dots.h.c k_n) ( - 1 )^(tau ( k_1 dots.h.c k_(i - 1) k_(i + 1) dots.h.c k_n )) a_(1 k_1) dots.h.c a_(i - 1 , k_(i - 1)) a_(i + 1 , k_(i + 1)) dots.h.c a_(n k_n) $ 其中 $j = k_i$，令 $A_(i j) = ( - 1 )^(i + j) M_(i j)$，称 $A_(i j)$ 是 $A$ 的 $( i , j )$ 元的代数余子式。

]
#statement("theorem", title: [])[
对于 $n$ 阶行列式 $det(A)$ 有 $ det(A) = sum_(j = 1)^n a_(i j) A_(i j) = sum_(i = 1)^n a_(i j) A_(i j) $ 前者称为 $n$ 阶行列式按第 $i$ 行的展开式，后者称为按第 $j$ 列的展开式。

]
#statement("proof", title: [])[
首先列出 $det(A)$ 的行完全展开式，其中 $j = k_i$ $ det(A) = sum_(k_1 dots.h.c k_(i - 1) j k_(i + 1) dots.h.c k_n) ( - 1 )^(tau ( k_1 dots.h.c k_(i - 1) j k_(i + 1) dots.h.c k_n )) a_(1 k_1) dots.h.c a_(i - 1 , k_(i - 1)) a_(i j) a_(i + 1 , k_(i + 1)) dots.h.c a_(n k_n) $ 把第 $i$ 行换到第 $1$ 行，第 $j$ 列换到第 $1$ 列，由对换的性质有 $ ( - 1 )^(tau ( i 1 dots.h.c ( i - 1 ) ( i + 1 ) dots.h.c n ) + tau ( j k_1 dots.h.c k_(i - 1) k_(i + 1) dots.h.c k_n )) = ( - 1 )^(i - 1) ( - 1 )^(j - 1) ( - 1 )^(tau ( k_1 dots.h.c k_(i - 1) k_(i + 1) dots.h.c k_n )) $ 因此 $ det(A) & = sum_(j = 1)^n a_(i j) ( - 1 )^(i + j) sum_(k_1 dots.h.c k_(i - 1) k_(i + 1) dots.h.c k_n) ( - 1 )^(tau ( k_1 dots.h.c k_(i - 1) k_(i + 1) dots.h.c k_n )) a_(1 k_1) dots.h.c a_(i - 1 , k_(i - 1)) a_(i + 1 , k_(i + 1)) dots.h.c a_(n k_n)\
 & = sum_(j = 1)^n a_(i j) ( - 1 )^(i + j) M_(i j) = sum_(j = 1)^n a_(i j) A_(i j) $ 对于列展开式，转置即可。

]
#statement("theorem", title: [])[
对于 $n$ 阶行列式 $det(A)$ 有 $ sum_(j = 1)^n a_(i j) A_(k j) = 0 ( k eq.not i ) $

]
#statement("proof", title: [])[
设矩阵 $B$ 第 $k$ 行与第 $i$ 行相等，因此按第 $k$ 行展开有 $ det(B) = sum_(j = 1)^n a_(k j) A_(k j) = sum_(j = 1)^n a_(i j) A_(k j) = 0 $

]
#statement("definition", title: [Vandermonde 行列式])[
若行列式满足 $a_(i j) = a_j^i$，则称为 Vandermonde 行列式。其值为（证略） $ product_(1 lt.eq j < i lt.eq n) ( a_i - a_j ) $

]
== 克莱姆 Cramer 法则
<ga-2-克莱姆-cramer-法则>
对于数域 $K$ 上 $n$ 个方程的 $n$ 元线性方程组，

$ cases(delim: "{", a_(1 1) x_1 + a_(1 2) x_2 + dots.h.c + a_(1 n) x_n = b_1, a_(2 1) x_1 + a_(2 2) x_2 + dots.h.c + a_(2 n) x_n = b_2, dots.h.c #h(2em) dots.h.c #h(2em) dots.h.c, a_(n 1) x_1 + a_(n 2) x_2 + dot.op + a_(n n) x_n = b_n) $

其系数矩阵记作 $A$，增广矩阵记作 $tilde(A)$。

#statement("theorem", title: [])[
方程组有唯一解的充要条件是 $det(A) eq.not 0$。定义 $B_j$ 为矩阵 $A$ 第 $j$ 列换为常数项后的矩阵，此时解为 $ (frac(det(B_1), det(A)) , dots.h.c , frac(det(B_n), det(A))) $

]
#statement("proof", title: [])[
假设行列式有唯一解，由上一章知矩阵 $tilde(A)$ 可以通过初等行变换变化为阶梯型矩阵 $J$，$det(A) = l det(J) eq.not 0$。

]
