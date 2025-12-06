#import "../template/my-theorem.typ": theorem, definition, proof, show-theorion
#show: show-theorion

我初次用的书是华师的数分，现在发觉基础部分有相当多的细节。后参考自李逸的《基本分析讲义》。

若无额外说明，皆在 $bb(R)$ 下。仍有很多术语不曾了解。

== 前言
<前言>

实数理论确实很难以理解。

我初次接触华师数分时，实数看的云里雾里，不知道为什么要罗列一大堆定理，索性直接跳过，读的倒也算通顺。初入门径后，又读了几本其他的书，才感觉到实数理论的意义；但是感觉公理又多又乱，在脑子里缠起来了。继续读下去，观点再高了一点，终于敢说懂了一点。

我尝试讲一讲。按照 Bourbaki 的观点，序结构连同拓扑和代数结构一道组成了数学结构的三大母体。具体的说，如果只有一个光秃秃的集合，我们做不了太多事情。为了在这个集合上展开进一步的讨论，我们需要对它装备一些结构：
#footnote[#link("https://www.zhihu.com/question/47999353/answer/1012530744")[知乎：如何理解数学中的序结构,代数结构和拓扑结构？]]

1. 序结构：元素和元素的排序，比如实数上的大小关系、集合的包含关系。
2. 代数结构：元素和元素的运算，比如加法和乘法。
3. 拓扑结构：子集和子集之间的关系，比如点集的邻近性、敛散性、连续性。

学习实数，主要是抓住这三个方面的性质。接触了更多具体的例子，会对抽象的定义有更多的感悟。

== 集合和映射
<集合和映射>

集合的交并补是熟知的。

定义有序对为 $(a , b) := { { a } , { a , b } }$，其中 $a$ 称为有序对的第一坐标，而 $b$ 称为第二坐标。特殊的，$(a , a) = { a }$。

定义集合的笛卡尔 Cartesian 乘积为
$ A times B := { (a , b) | a in A upright("且") b in B } $
一般 $A times B eq.not B times A$。同样可以推广到多个集合
$ product X_i := X_1 times X_2 times dots.h.c times X_n = (X_1 times dots.h.c times X_(n - 1)) times X_n $
其元素 $x$ 是多层嵌套，我们可以简记为
$ x = (dots.h.c (x_1,x_2),x_3),dots.h.c ,x_n) = (x_1,x_2,dots.h.c,x_n) $
称 $x_i := upright(p r)_i (x)$ 为 $x$ 的第 $i$ 个分量，$upright(p r)$ 是投影映射。当所有 $X_i$ 都等于 $X$ 时，上述乘积记为 $X^n$。

设 $C$ 和 $D$ 为两个给定的集合。

#definition[
设 $R$ 是 $C times D$ 的一个子集，若满足当 $(c , d_1) in R$ 且 $(c , d_2) in R arrow.r.double d_1 = d_2$，称 $R$ 是一个赋值法则。
]

赋值法则的定义域 Domain 和像域 Image Set 约定如下
$ "dom"(R) := { c in C | exists d in D , (c , d) in R } \
"Im"(R) := { d in D | exists c in C , (c , d) in R }
$

#definition[
设 $R$ 为一个赋值法则，$B$ 为满足 $"Im" (R) subset.eq B$ 的一个集合，记二元对 $(R , B)$ 为一个映射，$B$ 称为值域。定义 $f$ 的定义域 $A$ 和像域为 $R$ 的定义域和像域。记作
$ f : A arrow.r B , a arrow.r.bar f (a) $
]

称 $f$ 的图为
$ "graph" (f) := { (a , f (a)) in A times B | a in A } $
对任意给定的 $A$ 的子集 $A_0$，定义 $f$ 在 $A_0$ 上的限制为映射
$ f |_(A_0) = f : A_0 arrow.r B $

称映射 $f$ 和 $g$ 的复合为
$ g circle.stroked.tiny f : A arrow.r C , a arrow.r.bar g (f (a)) $
显然 $g circle.stroked.tiny f$ 仅当 $"Im" (f) subset.eq "dom" (g)$ 时有定义。$f circle.stroked.tiny g$ 一般与 $g circle.stroked.tiny f$ 不相等。

- 若映射 $f$ 满足 $f (a_1) = f (a_2) arrow.r.double a_1 , a_2$，称 $f$ 为单射。
- 若映射 $f$ 满足对任意的 $b in B$ 存在 $a in A$ 满足 $f (a) = b$，称 $f$ 为满射。
- 若映射 $f$ 满足$f$ 既是单射又是满射，称 $f$ 为双射。

若 $f$ 为双射，我们定义它的逆映射 $f^(- 1)$ 为
$ f^(- 1) (b) = a <=> f (a) = b $

映射 $ast : X times X arrow.r X$ 通常也称为集合 $X$ 上的运算，此时我们把 $ast (x , y)$ 记做 $x ast y$。对 $X$ 中的非空子集定义
$ A ast B := ast (a times B) = { A ast b | a in A , b in B } $
如果映射定义中的 $B$ 是一个数域，则把映射称为函数。

== 序关系
<序关系>

称集合 $S times S$ 的子集 $dot.o$ 为关系。把 $(x, y) in dot.o$ 记作 $x dot.o y$。

#definition[
若集合 $S$ 上的关系 $tilde.eq$ 满足

- 自反性：对任意的 $x in S$ 有 $x tilde.eq x$。
- 对称性：若 $x tilde.eq y$ 则 $y tilde.eq x$。
- 传递性：若 $x tilde.eq y$ 且 $y tilde.eq z$ 则 $x tilde.eq z$。

则称 $tilde.eq$ 为等价关系，一般记作 $tilde.op$ 或 $=$。
]

记 $x in A$ 的等价类： $ [x] := { y in A | y tilde.op x } $

#definition[
若集合 $S$ 上的关系 $prec.eq$ 满足

- 反对称性：若 $x prec.eq y$ 且 $y prec.eq x$ 则 $x = y$。
- 传递性：若 $x prec.eq y$ 且 $y prec.eq z$ 则 $x prec.eq z$。
- 完全性：对任意的 $x , y in S$ 要么 $x prec.eq y$ 要么 $y prec.eq x$。（注意蕴含了自反性 $x prec.eq x$）。

则称 $prec.eq$ 为全序关系， $(S , prec.eq)$ 为全序集。一般用 $<=$ 来表示全序关系.
]

对于每一非严格的全序关系 $<=$，定义其对应的严格全序关系 $<$ 为：$a < b$ 等价于 $a <= b$ 且 $a eq.not b$。我们对四个关系
$< , <= , > , >=$ 都可以定义全序集。

#definition[
设全序集 $S' subset.eq S$，若 $x in S$ 是：

- $S$ 的最大元：若不存在 $y in S$ 使得 $x < y$，则称 $x$ 是最大元。
- $S'$ 的上界：若对于任取的 $x' in S'$ 满足 $x' <= x$，则称 $x$ 是 $S'$ 的上界。
- $S'$ 的上确界：对于任取的 $S'$ 的上界 $y$ 都有 $x <= y$，且 $x$ 是 $S'$ 的上界，则称 $x$ 是 $S'$ 的上确界。
]
类似的可定义全序集的最小元、下界、下确界。上、下确界分别记作 $sup S'$ 和 $inf S'$。比如取 $A = A' = (0 , 1)$，其上下确界都不存在。若取 $A = bb(R)$，上下确界存在也不一定在 $A'$ 里面。

#definition[
如果集合 $S$ 的任何非空有上界子集 $S'$ 有最小上界，则称 $S$
有最小上界性。

换句话说，若任取非空子集 $S' subset.eq S$，若 $S'$ 在 $S$ 内存在上界，那么 $S'$ 在 $S$ 内存在上确界。
]

例如 $bb(Q) inter (0 , sqrt(2))$ 是 $bb(Q)$ 的非空子集，其上界 $sqrt(2)$ 并不在 $bb(Q)$ 内。

同样的有最小下界性。可以证明，有最小上界性的一定有最大下界性。展开描述即

#definition[
设 $B$ 是具有最小上界性的集合 $S$ 的子集，则对任意的有下界的 $B$ 都有 $inf B in S$。
]

#proof[
对于每个 $B$，构造 $L$ 为 $B$ 的下界组成的集合，显然每个
$B$ 中的元素都是 $L$ 的上界。由最小上界性知，存在 $sup L in S$。

尝试证明 $inf B = sup L$。

对于任意的 $x in B$，若 $x < sup L$，则存在比 $sup L$ 小的 $L$ 的上界
$x$，矛盾。故 $x >= sup L$，即 $sup L$ 是 $B$ 的下界。

设 $B$ 的下界 $x$ 有 $x > sup L$，那么 $x in L$，则存在比 $sup L$ 大的
$L$ 元素，矛盾。故不存在比 $sup L$ 大的 $B$ 的下界。

综上，$B$ 的下界存在且 $inf B = sup L in S$。
]

== 代数初步
<代数初步>

首先给出一些性质。

#definition[
给定集合 $A$，设元素 $x , y , z in A$，定义如下性质

- 封闭性：若 $A ast A subset.eq A$，则称 $A$ 在运算 $ast$ 下封闭。
- 结合性：若 $x ast (y ast z) = (x ast y) ast z$，则称运算 $ast$ 是结合的。
- 交换性：若 $x ast y = y ast x$，则称运算 $ast$ 是交换的。
- 单位元（幺元）：若存在 $e in A$ 使得 $e ast x = x ast e = x$，则称 $e$ 为 $A$ 上的单位元。
- 逆元（么元）：若存在 $x^(- 1) in A$ 使得 $x ast x^(- 1) = x^(- 1) ast x = e$，则称 $x^(- 1)$ 为 $x$ 在 $A$ 上的逆元。
]

注意 $- x$ 和 $x^(- 1)$ 只是记号，不代表我们定义出了减法和除法运算。

#definition[
给定集合 $G$ 和其上的二元运算 $ast : G times G arrow.r G$，若：

- 满足结合律，称为半群。

- 满足单位元、交换性的半群，称为幺半群、交换半群。

- 每个元素都可逆的幺半群，称为群。

- 满足交换律的群，称为交换群（Abelian 群）。
]

#theorem[
群中单位元和逆元唯一。
]

#proof[
设 $x$ 存在两个逆元 $y_1 , y_2$，有
$ y_1 = y_1 ast e = y_1 ast x ast y_2 = e ast y_2 = y_2 $
类似的，设存在两个单位元 $e_1 , e_2$，有
$ e_1 = e_1 ast e_2 = e_2 $
]
#definition[
给定集合 $R$ 和其上的二元运算 $(R , + , ast)$，若：

- 满足 $(R , +)$ 是交换群，$(R , ast)$ 是幺半群，且乘法关于加法满足分配率，称为环。
- 环 $R$ 中 $(R , ast)$ 可交换，称为交换环。
- 除零元外皆可逆的环，称为除环。
- 交换除环称为域。
]

== 拓扑初步
<拓扑初步>

可以想象开集的基为开区间，闭集的基为闭区间。

#definition[
设 $cal(T)$ 是集合 $X$ 子集的集族：

(O1) 若 $diameter in cal(T)$ 且 $X in cal(T)$。

(O2) 若有限个 $U_i in cal(T)$，则 $inter.big U_i in cal(T)$。

(O3) 若任意个 $U_alpha in cal(T)$，则 $union.big U_alpha in cal(T)$。

则称 $(X , cal(T))$ 为拓扑空间，其中 $cal(T)$ 是此空间的拓扑，$cal(T)$
的元素称为开集。在无歧义的情况下，也称 $X$ 是拓扑空间。
]

#definition[
对于空间 $X$ 和空间内一点 $x in X$：

1. 若子集 $U$ 包含着某一开集且开集包含着 $x$，则称 $U$ 为 $x$ 的邻域。
2. 若子集 $U$ 是开集且 $x in U$，则称 $U$ 为 $x$ 的开邻域。
]

#definition[
对于空间 $X$，若其子集 $F$ 满足 $X - F$ 是开集，则称 $F$ 是闭集。
]

换句话说：

1. 任意多开集的交集还是开集，有限个开集的并集还是开集。

2. 任意多闭集的交集还是闭集，有限个闭集的并集还是闭集。

#definition()[
设空间 $X$ 和其子集 $A$，记

1. 所有包含 $A$ 的闭集的交为 $A$ 的闭包 $overline(A)$，即包含 $A$ 的最小闭集，其中的元素称为 $A$ 的接触点。
2. 所有包含 $A$ 的开集的并为 $A$ 的内核 $A^circle.stroked.tiny$，即包含 $A$ 的最大开集。
]

#definition()[
对于空间 $X$ 和其子集 $A$，若

1. $overline(A) = X$ 则称集合 $A$ 稠密于空间 $X$。
2. $(overline(A))^circle.stroked.tiny = diameter$ 则称集合 $A$
疏（无处稠密）于空间 $X$。
]

显然 $bb(N)$ 和 $bb(Z)$ 疏于 $bb(R)$，$bb(Q)$ 和 $bb(R) - bb(Q)$ 稠密于 $bb(R)$。

虽然我们在小学二年级学过无理数的存在性，但我们仍对 $bb(Q)$ 和 $bb(R)$ 性状上的具体区别知之甚少。

#definition()[
若拓扑空间 $X$ 不能表示为两个不相交闭集的并，则称 $X$ 是连通空间。其子集
$X'$ 若是连通空间，则称 $X'$ 是连通的。
]

可以得到 $bb(R)$ 是连通的，$bb(Q)$ 是不连通的。

依定义，闭区间是 $bb(R)$ 内的开集，其任意数量的交都是闭集。假想一个不断变小的区间列，一层套一层。

#definition()[
给定有限的一列闭区间 ${ I_i = [a_i , b_i] }$，若

（1） 其是下降的 $I_1 supset.eq I_2 supset.eq I_3 supset dots.h.c$；

（2） 区间长度 $lim_(n arrow.r oo) (b_i - a_i) = 0$；

那么称这一列区间是闭缩区间套，简称区间套。
]

#definition()[
若域 $F$ 是满足如下条件的有序集

1. 当 $x , y , z in F$ 且 $y < z$ 时，$x + y < x + z$。
2. 如果 $x , y in F$，且 $x > 0 , y > 0$，则 $x y > 0$。

那么称 $F$ 是一个有序域。
]

例如 $bb(Q)$ 是有序域。

#theorem()[
具有最小上界性的有序域 $bb(R)$ 存在，且包容着 $bb(Q)$ 作为子域。
]

这个命题的证明较为复杂，是从 $bb(Q)$ 出发构造
$bb(R)$，而且其中有很多重要的信息，决定单独一章，这里略过。

#theorem()[
对于 $x , y in bb(R)$ 且 $x > 0$，那么必定存在正整数 $n$，使得
$n x > y$。
]

#proof[
设 $A = { n x | n in bb(N)^(+) }$，若不存在 $n$ 则 $y$ 将是 $A$ 的一个上界，由最小上界性可知 $A$ 的上确界存在。

又因为小于上确界的数 $sup A - x$ 不是上确界，即存在 $m in bb(N)^(+)$ 使得 $sup A - x < m x$，即 $sup A < (m + 1) x$，矛盾。

故必定存在 $n$ 使得 $n x > y$。
]

#definition()[
称集合 $X$ 的元素为点，若存在 $X$ 上双变量的函数
$d : X times X arrow.r bb(R)$，满足（$x , y , z in R$）

- 若 $x eq.not y$，则 $d (x , y)$；仅 $d (x , x) = 0$。
- 对于任意的 $x , y$ 都有 $d (x , y) = d (y , x)$。
- 对于任意的 $z$，都有 $d (x , y) <= d (x , z) + d (z , y)$。

就称 $(X , d)$ 是一个度量空间（度量空间），函数 $d$ 称作其上的距离函数。
]

这里的空间的含义是线性空间。

对于 $X$ 的子集 $Y$，定义其距离函数
$ d_Y : Y times Y arrow.r bb(R) , (y_1 , y_2) arrow.r.bar d_Y (y_1 , y_2) = d (y_1 , y_2) $
则 $(Y , d_Y)$ 仍是度量空间，称 $d_Y$ 是 $d$ 在 $Y$ 上的诱导度量。$(Y , d_Y)$ 称作是 $(X , d)$ 的子（度量）空间。

#definition()[
给定度量空间 $(X , d)$，$Y$ 是 $X$ 的子集。如果对任意的 $x in X$ 和任意小的 $epsilon > 0$，都存在 $y in Y$，使得 $d(y, x) < epsilon$，我们就称 $Y$ 在 $X$ 中是稠密的。
]

#theorem()[
$bb(Q)$ 在 $bb(R)$ 中稠密：对于 $x , y in bb(R)$ 且 $x < y$，那么必定存在 $p in bb(Q)$，使得 $x < p < y$。
]

#proof[
由 Achimedes 原理，可设存在 $n in bb(N)^(+)$ 使得
$n (y - x) > 1$。

再设存在 $m_1 , m_2 in bb(N)^(+)$，使得 $m_1 > n x , m_2 > - n x$。于是
$ - m_2 < n x < m_1 $
因此存在 $m in bb(N)^(+)$ 有 $- m_2 <= m <= m_1$ 使得
$ m - 1 <= n x < m <= 1 + n x < n y $
从而存在 $p = m / n$ 使得 $x < p < y$。
]

== 数系的构造
<数系的构造>

直到我读了陶哲轩的《实分析》时，才感到接受了实数理论。实数的定义是公理化的，不是构造性的。

更具体的说，我们不需要知道实数是什么，只需知道这些对象有什么性质，我们就可以抽象的处理它们。从其他的数学对象出发来构造实数是可能的，有多种多样的模型，只要它们服从所有的公理并正确的运作，都是满足的。

实数究竟有多少性质？从自然数开始。

#theorem()[
若集合 $N$ 和其上的映射 $v (n)$ 满足

1. $0 in N$。
2. 若 $n in N$，则 $v (n) in N$。
3. 对于任意的 $n in N$，$v (n) eq.not 0$。
4. 若 $v (m) eq.not v (n)$，则 $m eq.not n$。
5. 【归纳原理】设 $P (n)$ 是关于自然数的性质，假设只要 $P (n)$ 为真，则 $P (v (n))$ 也为真；且 $P (0)$ 为真。那么对 $N$ 中所有的元素 $P$ 都为真。

那么称 $N$ 为自然数，记作 $bb(N)$，$v (n)$ 称为后继函数。
]

=== 自然数
<自然数>

设 $m , n in bb(N)$，定义 $bb(N)$ 上的加法 $+$ 和乘法 $dot.op$ 为
$ 0 + m := m & , quad v (n) + m := v (n + m)\
0 dot.op m := m & , quad v (n) dot.op m := n dot.op m + m $

我们可以利用归纳原理推出我们熟悉的一些性质。

#theorem()[
对于 $a , b , c in bb(N)$ 有

1. 加法是结合的和交换的，且有单位元 $0$。
2. 乘法是结合的和交换的，且有单位元 $1$。
3. 分配律：$(a + b) dot.op c = a dot.op c + b dot.op c$。
]

#definition()[
设 $m , n in bb(N)$。

1.若存在 $a in bb(N)$，使得 $n = m + a$，称 $m$ 小于等于 $n$，记作 $m <= n$。
2. 若 $n >= m$ 且 $n eq.not m$，则称 $m$ 严格小于 $n$，记作 $m < n$。
]
可以验证，$<$ 和 $<=$ 是 $bb(N)$ 上的序关系。

#theorem()[
对于 $a , b in bb(N)$，若 $a > b$，则 $a + c > b + c$。
]

=== 整数
<整数>

接下来几节，都是记 $a , b , c$ 为当前集合的元素，$x , y , z$
都是被构造的集合的元素。

为了表达整数，定义二元组 $(a , b)$，其中 $a , b in bb(N)$。记全体二元组的集合为 $Z$。我们约定
$ (a , b) = (c , d) <=> a + d = b + c $
因为自然数的序是已定义的，于是定义 $Z$ 上的序关系
$ (a , b) <= (c , d) <=> a + d <= b + c $ 然后是定义 $N$ 上的加法和乘法
$ (a , b) + (c , d) & := (a + c , b + d)\
(a , b) dot.op (c , d) & := (a c , b d) $

可以验证，$(n, 0)$ 与 $n$ 有相同的性状，我们可以令其相等，从而把自然数嵌入到整数内。至此，我们可以着手验证整数是否满足我们预想的性质。

#theorem[
对于 $x , y , z in bb(Z)$ 有

1. 加法是结合的和交换的，且有单位元 $0$，逆元存在。
2. 乘法是结合的和交换的，且有单位元 $1$。
3. 分配律：$(x + y) dot.op z = x dot.op z + y dot.op z$。
]
即 $bb(Z)$ 是一个交换环。于是

#theorem()[
1. 加法保序：当 $x , y , z in bb(Z)$ 且 $y < z$ 时，$x + y < x + z$。
2. 乘法保序：如果 $x , y in bb(Z)$，且 $x > 0 , y > 0$，则 $x y > 0$。
]

我们有理由相信，$(a , b)$ 符合我们对整数的一切想象。因此 $Z = bb(Z)$。

另外的，定义整数的负运算为 $- (a , b) = (b , a)$，以此定义减法
$ x - y := x + (- y) $
可以验证
$ (a , 0) - (b , 0) = (a , b) = a - b $

=== 有理数
<有理数>

类似的，记整数的二元组 $(a , b)$，其中 $a , b in bb(Z) , b eq.not 0$，记全体二元组的集合为 $Q$。我们约定
$ (a , b) = (c , d) <=> a d = b c $
因为整数的序是已定义的，于是定义 $Q$ 上的序关系
$ (a , b) <= (c , d) <=> a d <= b c $ 于是定义 $Q$ 上的加法和乘法
$ (a , b) + (c , d) & := (a d + b c , b + d)\
(a , b) dot.op (c , d) & := (a dot.op c , b dot.op d) $
定义加法逆元为 $- (a , b) := (- a , b)$。可以验证，$(a , 1)$ 与 $a$ 有相同的性状，我们可以令其相等，从而把整数嵌入到有理数内。

至此，我们可以着手验证有理数是否满足我们预想的性质。

#definition[
对于 $x , y , z in bb(Q)$ 有

1. 加法是结合的和交换的，且有单位元 $0$，逆元存在。
2. 乘法是结合的和交换的，且有单位元 $1$，非零元逆元存在。
3. 分配律：$(x + y) dot.op z = x dot.op z + y dot.op z$。
]

即 $bb(Q)$ 是一个域。

#theorem()[
保序性

1. 加法保序：当 $x , y , z in bb(Q)$ 且 $y < z$ 时，$x + y < x + z$。
2. 乘法保序：如果 $x , y in bb(Q)$，且 $x > 0 , y > 0$，则 $x y > 0$。
]

我们有理由相信，$(a , b)$ 符合我们对有理数的一切想象。因此 $Q = bb(Q)$。

另外，定义倒数 $(a , b)^(- 1) = (b , a)$，显然
$a , b eq.not 0$。从而定义除法
$ x / y := x dot.op y^(- 1) $
可以验证，
$ ((a , 1)) / ((b , 1)) = (a , b) = a / b $

=== 实数~·~Dedekind 分割
<实数-dedekind-分割>

#theorem()[
对于给定的空间 $S$，
$A subset S , A' = complement_S A$，若满足以下三个条件

(D1) $A eq.not diameter , A eq.not S (A ' eq.not diameter)$；

(D2) 当 $p in A , q in A'$ 时，$p < q$；

(D3) 不存在最大数：任给 $p in A$，存在 $q in A$，使得 $p < q$；

则称 $A$ 为 $S$ 的一个分割。
]

直观的来说，我们把整个 $S$ 划分成了下组 $A$ 和上组 $A'$。

记 $bb(Q)$ 上 Dedekind 分割的全体为 $R$，集合的相等即是 $R$ 上的等价关系，$R$ 上的序关系定义是
$ A subset.eq B <=> A <= B $
定义加法
$ A + B := { a + b | a in A , b in B } $
于是可以定义负运算
$ - A & := { s in bb(Q) | exists r > 0 , - s - r in complement_(bb(Q)) A }\
- A & := { s in bb(Q) | exists r in complement_(bb(Q)) A , s < - r } $

然而乘法因为负数的问题，我们需要分类讨论。$R$ 中存在加法单位元 $0^(ast) = { x in bb(Q) | x >= 0 }$，对于正实数 $A , B >= 0^(ast)$，定义乘法
$ A dot.op B := { p in bb(Q) | upright("存在") med 0 < a in A , med upright("存在") med 0 < b in B , p < a b } $
同时
$ A dot.op B := 
cases(delim: "{",
  - ((- A) dot.op B) \, & A < 0^(ast) \, B >= 0^(ast),
  - (A dot.op (- B)) \, & A >= 0^(ast) \, B < 0^(ast),
  - ((- A) dot.op (- B)) \, & A < 0^(ast) \, B < 0^(ast)) $

当 $A > 0^(ast)$ 时，定义乘法逆元
$ A^(- 1) := { s in bb(Q) | exists r in complement_(bb(Q)) A , s < r^(- 1) } $
当 $A < 0^(ast)$ 时，定义乘法逆元为 $A^(- 1) := - (- A^(- 1))$。

至此，我们可以着手验证实数是否满足我们预想的性质。

#theorem()[
对于 $x , y , z in bb(R)$ 有

1. 加法是结合的和交换的，且有单位元 $0$，逆元存在。
2. 乘法是结合的和交换的，且有单位元 $1$，非零元逆元存在。
3. 分配律：$(x + y) dot.op z = x dot.op z + y dot.op z$。
]

即 $bb(R)$ 是一个域。

#theorem()[
1. 加法保序：当 $x , y , z in bb(R)$ 且 $y < z$ 时，$x + y < x + z$。
2. 乘法保序：如果 $x , y in bb(R)$，且 $x > 0 , y > 0$，则 $x y > 0$。
]

我们有理由相信，$R$ 符合我们对实数性质的一切想象，从而 $R = bb(R)$。

#theorem[
设 $A$ 为 $bb(R)$ 上的 Dedekind 分割，$A' = complement_(bb(R)) A$，对于任给的 $a in A , a' in A'$，存在 $r in bb(R)$ 使得 $a < r <= a'$。
]

#proof[
由于 $a , a'$ 也是 $bb(Q)$ 上的分割，下面使用集合的语言。显然 $a' in A'$ 是 $A$ 的一个上界。构造
$ b = union.big_(a in A) a $
下证 $a subset b subset.eq a'$。

首先证明 $b$ 是 $bb(Q)$ 上分割。

- D1：显然 $b$ 非空，又因为对于任意的 $a in A , a' in A'$ 都有 $a subset a'$，故 $b subset.eq a'$（注意可取等），即 $b eq.not bb(Q)$。
- D2：接下来取 $beta in b , beta' in complement_(bb(Q)) b$，于是存在 $a_0 in A$ 使得 $beta in a_0$，此时 $beta' in.not a_0$ 即 $beta' in a_0'$，故 $beta < beta'$。
- D3：对于任意的 $beta_1 in b$，存在 $a_0 in b$ 使得 $beta_1 in a_0$，此时存在 $alpha_1 in a_0$ 使得 $beta_1 < alpha_1$ 且 $alpha_1 in b$。

接下来证明 $b in.not A$。假设 $b in A$ 即存在 $a_0$ 使得 $b = a_0$，但由 D3 总是存在 $b = a_0 subset a_1$，与 $b$ 是全体并集矛盾。

因此 $b in A'$，故 $a subset b subset.eq a'$。
]

实数和有理数的最基本的一个区别就是有最小上界性。

#theorem()[
$bb(R)$ 具有最小上界性。即对于 $bb(R)$ 的任何子集 $S$，若 $S$ 在 $bb(R)$ 内存在上界，那么 $S$ 在 $bb(R)$ 内存在上确界。

]
#proof[
设 $B'$ 是 $S$ 全体上界组成的集合，即 $B' = { x | forall s in S , x >= s }$，令
$ B = complement_(bb(R)) B' = { x | exists s in S , x < s } $
试证 $B$ 是 $bb(R)$ 的一个分割。D1 和 D2 比较显然。显然对于任意的 $b in B$ 存在 $s in S$ 使得 $x < s$，那么总是可以取 $b_2 = frac(b + s, 2) in B$ 使 $x < b_2$。

由上文所证的 Dedekind 原理知，总存在 $u in bb(R) (B ')$ 使得任取上确界 $b' in B'$ 使得 $u <= b'$，故 $u$ 是上确界。
]

=== 实数~·~Cauchy 序列
<实数-cauchy-序列>

我们试图得到实数，是因为有理数还不足以表示所有的数，比如 $x^2 = 2$ 的解。得到实数和前面的方法有所不同，要复杂的多。

一个有理数上的序列 ${a_n}$，是一个从集合 $bb(N)$ 到 $bb(Q)$ 的一个映射，即我们以前说的数列。

对于 $bb(Q)$ 上的无限序列 ${ a_n }$，若对于任意的 $epsilon > 0$ 存在 $N >= 0$ 使得当 $j , k >= N$ 时有
$ d(a_j,a_k) < epsilon $
则称序列 ${ a_n }$ 为 Cauchy 序列，记作 $"LIM" (a_n)$。记 Cauchy 序列的全体为集合 $R$。

对于 Cauchy 序列 $"LIM" (a_n) , "LIM" (b_n)$，若对于任意的 $epsilon > 0$ 存在 $N >= 0$ 使得当 $n >= N$ 时有
$ d(a_n,a_n) < epsilon $ 则记作 $"LIM" (a_n) = "LIM" (b_n)$。

定义 $R$ 的序关系，对于实数 $x , y$，若存在 Cauchy 序列满足 $x = "LIM" (a_n) , y = "LIM" (b_n)$，对于 $n >= 1$ 有 $a_n <= b_n$，则 $"LIM" (a_n) <= "LIM" (b_n)$。

于是定义 $R$ 上的加法和乘法
$ "LIM" (a_n) + "LIM" (b_n) & := "LIM" (a_n + b_n) & \
"LIM" (a_n) dot.op "LIM" (b_n) & := "LIM" (a_n b_n) $
定义负运算 $- "LIM" (a_n) := "LIM" (- a_n)$。

定义倒数时会因为恼人的 $0$ 出现了一些困难，解决的方法即是把 $0$ 排出。若存在 $c in bb(Q)$ 满足 $c > 0$ 使得 $d (a_n , 0) >= c$，则称 ${ a_n }$ 为限制离开零的序列。若 $x$ 为不为零的实数，则必存在一个限制离开零的 Cauchy 序列 $"LIM" (a_n) = x$。

于是我们可以定义，设 $x$ 为一个不为零的实数，则存在限制离开零的 Cauchy 序列 $x = "LIM" (a_n)$，定义倒数为
$ x^(- 1) := "LIM" (a_n^(- 1)) $

可以验证，常数 Cauchy 序列 ${ a_n }$ 与 $a$ 具有相同的性状，因此可以令它们相等，从而使有理数嵌入到实数中。

至此，我们可以着手验证实数是否满足我们预想的性质，在 Dedekind 分割中提过了，这里不再重复。

另外，定义 $R$ 上的 Cauchy 序列，若对于任意的实数 $epsilon > 0$ 存在 $N >= 0$ 使得当 $j , k >= N$ 时有

可以证明，$R$ 上的 Cauchy 序列与 $bb(Q)$ 上的 Cauchy 序列等价。

若存在实数 $L$ 满足，存在 $N > 0$ 使得当 $n >= N$ 时，都有 $d(a_n, L) <= epsilon$，则 $a_n$ 收敛于 $L$，记作 
$ lim_(n arrow.r oo) a_n = L $

可以验证 $ "LIM" (a_n) = lim_(n arrow.r oo) a_n $

=== 复数
<复数>

记实数的二元组 $(a , b)$，其中 $a , b in R$，记全体二元组的集合为 $C$。我们约定
$ (a , b) = (c , d) <=> a = b and c = d $
复数没有序关系。定义 $C$ 上的加法和乘法
$ (a , b) + (c , d) & := (a + c , b + d)\
(a , b) dot.op (c , d) & := (a c - b d , a d + b c) $

定义加法逆元为 $- (a , b) := (- a , - b)$。可以验证，$(a , 0)$ 与 $a$ 具相同的性状，我们可以令其相等，从而把实数嵌入到复数域内。

定义非零数的乘法逆元 $(a , b)^(- 1) := (frac(a, a^2 + b^2) , - frac(b, a^2 + b^2))$。

== 实数的完备性
<实数的完备性>

如上所见，实数可以有多种完全不同的定义。换句话说我们可以承认一些公理，使得些都是等价的公理，以下举出几个例子。

- R0 Dedekind 原理；
- R1 确界原理；
- R2 单调有界原理;
- R3 区间套原理；
- R4 有限覆盖原理；
- R5 聚点原理；
- R6 致密性原理；
- R7 柯西收敛原理；
- R8 介值定理；
- R9 连通性原理；
- R10 Achimedes 原理；

这些定理是彼此等价的，其逻辑关系是
$ upright(R 0) <=> upright(R 1) <=> upright(R 2) <=> upright(R 3) + upright(R 10) <=> upright(R 4) <=> upright(R 5) <=> upright(R 6) <=> upright(R 7) + upright(R 10) <=> upright(R 8) <=> upright("R9") $
因此都可以选作实数的完备性（连续性）公理。互相推导很适合作为课后练习，可以查看
#link("https://zhuanlan.zhihu.com/p/48859870")[知乎：实数的完备性定理];。

确界原理由于其简明的性质，我们将在其上构建极限与收敛的体系。
