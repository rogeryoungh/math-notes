#import "../../template/environments.typ": statement

= 线性映射
<ga-9-线性映射>
== 线性映射及其运算
<ga-9-线性映射及其运算>
#statement("definition", title: [线性映射])[
#metadata(()) <ga-index-23> 设域 $F$ 上两个线性空间 $V , V'$，若映射 $bold(A) : V arrow.r V'$ 保持加法运算和纯量乘法运算，即 $ bold(A) ( alpha + beta ) = bold(A) ( alpha ) + bold(A) ( beta ) , quad bold(A) ( k alpha ) = k bold(A) ( alpha ) $ 则称 $bold(A)$ 是 $V$ 到 $V'$ 的一个线性映射。

]
线性空间 $V$ 到自身的线性映射通常称为 $V$ 上的线性变换，域 $F$ 上线性空间 $V$ 到 $F$ 的线性映射称为 $V$ 上的线性函数。#metadata(()) <ga-index-24>

$bold(A) ( alpha )$ 也可写成 $bold(A) alpha$。

特殊的，从 $V$ 映射到 $V'$ 的零向量是零映射，记作 $bold(0)$；$V$ 上映射到自身的变换叫做恒等变换，记作 $bold(I)$；映射 $alpha$ 到 $k alpha$ 的变换叫由 $k$ 决定的数乘变换，记作 $bold(k)$。

定积分 $bold(J) ( f ( x ) ) = integral_a^b f ( x ) upright(d) x$ 也是 $C [ a , b ]$ 到 $bb(R)$ 的一个线性映射。

===== 线性映射的存在性
<ga-9-线性映射的存在性>
#statement("theorem", title: [])[
设域 $F$ 上的线性空间 $V , V'$，且 $V$ 是有限维的。从 $V$ 中取一个基 $alpha_1 , dots.h.c , alpha_n$，从 $V'$ 任意取定 $n$ 个向量 $gamma_1 , dots.h.c , gamma_n$（可以有相同），令 $ bold(A) : V arrow.r V' , alpha = sum_(i = 1)^n alpha_i alpha_i mapsto sum_(i = 1)^n alpha_i gamma_i $ 则 $bold(A)$ 是 $V$ 到 $V'$ 的一个线性映射，且 $bold(A) ( alpha_i ) = gamma_i$。

]
设域 $F$ 上的线性空间 $V$ 有两个子空间 $U , W$，且 $V = U xor W$。任取 $alpha in V$，设 $alpha = alpha_1 + alpha_2 , alpha_1 in U , alpha_2 in W$。令 $ bold(P)_U : V arrow.r V , alpha mapsto alpha_1 $ 则 $bold(P)_U$ 是 $V$ 上的一个线性变换。称 $bold(P)_U$ 是平行于 $W$ 在 $U$ 上的投影，它满足 $ bold(P)_U ( alpha ) = cases(delim: "{", alpha comma & alpha in U, 0 comma & alpha in W) $ 可以证明，满足该式的投影变换是唯一的。

类似的，定义 $bold(P)_W ( alpha ) = alpha_2$，称它为平行于 $U$ 在 $W$ 的投影。

#statement("definition", title: [幂等变换])[
#metadata(()) <ga-index-25> 线性空间 $V$ 上的线性变换 $bold(A)$ 如果满足 $bold(A)^2 = bold(A)$，则称 $bold(A)$ 是幂等变换。

]
#statement("definition", title: [])[
线性空间 $V$ 上的两个线性变换 $bold(A) , bold(B)$ 如果满足 $bold(A) bold(B) = bold(B) bold(A) = 0$，则称 $bold(A)$ 与 $bold(B)$ 正交。

]
任取 $alpha in V$，设 $alpha = alpha_1 + alpha_2 , alpha_1 in U , alpha_2 in W$，则 $ bold(P)_U^2 ( alpha ) = bold(P)_U ( bold(P)_U ( alpha ) ) = alpha_1 = bold(P)_U ( alpha )\
bold(P)_W^2 ( alpha ) = bold(P)_W ( bold(P)_W ( alpha ) ) = alpha_1 = bold(P)_W ( alpha ) $ 且 $ bold(P)_U bold(P)_W ( alpha ) = bold(P)_U ( alpha_2 ) = 0 = bold(P)_W ( alpha_1 ) = bold(P)_W bold(P)_U ( alpha ) $ 由此得出 $ bold(P)_U^2 = bold(P)_U , bold(P)_W^2 = bold(P)_W , bold(P)_U $

===== 线性映射的运算
<ga-9-线性映射的运算>
设域 $F$ 上的线性空间 $V , V'$，把所有 $V arrow.r V'$ 的线性映射所组成的集合记作 $"Hom" ( V , V' )$，同样有 $"Hom" V , V$。

设域 $F$ 上的线性空间 $V , U , W$，其中 $bold(A) in "Hom" ( V , U ) , bold(B) in "Hom" ( U , W )$。线性映射作为映射，有映射的乘法 $bold(B) bold(A)$。

若 $bold(A) in "Hom" ( V , V' )$ 可逆，则 $bold(A)$ 是 $V arrow.r V'$ 的一同构映射，从而 $bold(A)^(- 1)$ 是 $V' arrow.r V$ 的同步映射。于是 $bold(A)^(- 1) in "Hom" ( V' , V )$。

设 $bold(A) , bold(B) in "Hom" ( V , V' )$，由于陪域 $V'$ 是线性空间，因此可以定义加法和纯量乘法如下 $ ( bold(A) + bold(B) ) alpha colon.eq bold(A) alpha + bold(B) alpha , ( k bold(A) ) alpha colon.eq k ( bold(A) alpha ) $ 显然其运算结果都是线性映射，称 $bold(A) + bold(B)$ 是 $bold(A)$ 与 $bold(B)$ 的和，$k bold(A)$ 是 $k$ 与 $bold(A)$ 的纯量乘积。

不难验证，$"Hom" ( V , V' )$ 是域 $F$ 上的线性空间。特别的，$"Hom" ( V , V )$ 是一个有单位元的环，还可证明其上变换的乘法与纯量加法满足 $ k ( bold(A) bold(B) ) = ( k bold(A) ) bold(B) = bold(A) ( k bold(B) ) $

于是有

#statement("definition", title: [代数])[
#metadata(()) <ga-index-26> 设域 $F$ 上的线性空间 $A$ 对于其上的加法和纯量乘法是一个有单位元的交换环，且 $ k ( alpha beta ) = ( k alpha ) beta = alpha ( k beta ) , forall k in F , alpha , beta in A $ 那么称 $A$ 是一个（结合）代数，把线性空间 $A$ 的维数称为代数 $A$ 的维数。

]
容易看出，$"Hom" ( V , V )$ 是域 $F$ 上的代数，$M_n ( F )$ 也是域 $F$ 上的代数。

因此可以在 $"Hom" ( V , V )$ 上定义 $bold(A)$ 的正整数幂 $ bold(A)^m colon.eq bold(A)^m dot.op bold(A) , bold(A)^0 = bold(I) $ 容易验证 $ bold(A)^m dot.op bold(A)^n = bold(A)^(m + n) , ( bold(A)^m )^n = bold(A)^(m n) $ 设 $f ( x ) = a_0 + a_1 x + dots.h.c + a_m x^m in F [ x ]$，用 $bold(A)$ 代入得 $ f ( bold(A) ) = a_0 bold(I) + a_1 bold(A) + dots.h.c + a_m bold(A)^m $ 显然 $f ( bold(A) ) in "Hom" ( V , V )$，称 $f ( bold(A) )$ 是 $bold(A)$ 的多项式。

把 $bold(A)$ 的所有多项式的全体记作 $F [ bold(A) ]$，不难发现其是 $"Hom" ( V , V )$ 的一个子环，且 $F [ bold(A) ]$ 是交换环。

$F [ bold(A) ]$ 中所有数乘变换组成的集合是 $F [ bold(A) ]$ 是 $F [ bold(A) ]$ 的一个子环，且域 $F$ 到这个子环之间存在双射 $ tau : k mapsto bold(k) $ 双射 $tau$ 保持加法与乘法运算，因此 $F [ bold(A) ]$ 可以看作 $F$ 的一个扩环。于是 $F$ 上一元多项式中的不定元 $x$ 可以用 $F [ bold(A) ]$ 中任意元素代入，从而在 $F [ x ]$ 中关于加法和乘法的等式在 $F [ bold(A) ]$ 中也成立。

更多的，我们还有镜面反射变换 $ bold(R)_U = bold(I) - 2 bold(P)_W $ 平移变换 $ bold(T_a) : f ( x ) mapsto f ( x + a ) $ 利用 Taylor 公式不难发现 $ f ( x + a ) & = f ( x ) + a bold(A) + frac(a^2, 2 !) f'' ( x ) + dots.h.c + frac(a^(n - 1), ( n - 1 ) !) f^(( n - 1 )) ( x )\
 & = (bold(I) + a bold(D) + frac(a^2, 2 !) bold(D) + dots.h.c + frac(a^(n - 1), ( n - 1 ) !) bold(D)^(( n - 1 ))) f ( x ) $ 即平移 $bold(T)_a$ 是导数 $bold(D)$ 的一个多项式。

== 线性映射的核与象
<ga-9-线性映射的核与象>
#statement("definition", title: [核])[
#metadata(()) <ga-index-27> 设域 $F$ 上的线性空间 $V , V'$，其中 $bold(A) : V arrow.r V'$，令 $V'$ 的零向量在 $bold(A)$ 下的原象集称为 $bold(A)$ 的和，记作 $"Ker" bold(A)$，即 $ "Ker" bold(A) colon.eq { alpha in V mid(|) bold(A) alpha = 0 } $ $bold(A)$ 的象（值域）记作 $"Im" A$ 或 $bold(A) V$。

]
#statement("proposition", title: [])[
设域 $F$ 上线性空间 $V , V'$ 的线性映射 $bold(A) : V arrow.r V'$，则

（1） $bold(A)$ 是单射当且仅当 $"Ker" bold(A) = 0$。

（2） $bold(A)$ 是满射当且仅当 $"Im" bold(A) = V'$。

]
#statement("theorem", title: [])[
设域 $F$ 上线性空间 $V , V'$ 的线性映射 $bold(A) : V arrow.r V'$，则 $ V \/ "Ker" bold(A) tilde.equiv "Im" bold(A) $

]
#statement("theorem", title: [])[
设域 $F$ 上线性空间 $V , V'$，且 $V$ 是有限维的。设线性映射 $bold(A) : V arrow.r V'$，则 $"Ker" bold(A)$ 和 $"Im" bold(A)$ 都是有限维的，且 $ dim ( "Ker" bold(A) ) + dim ( "Im" bold(A) ) = dim ( V ) $

]
当 $V$ 是有限维时，线性映射 $bold(A) : V arrow.r V'$，则 $bold(A)$ 的核的维数也称为 $bold(A)$ 的测度。$bold(A)$ 的象 $"Im" bold(A)$ 的维数称为 $bold(A)$ 的秩，记作 $"rank" ( bold(A) )$。

== 线性映射和线性变换的矩阵表示
<ga-9-线性映射和线性变换的矩阵表示>
设域 $F$ 上的有限维线性空间 $V , V'$，其上的线性映射 $bold(A) : V arrow.r V'$。设 $dim V = n , dim V' = s$。我们知道 $bold(A)$ 被其在 $V$ 上的一个基所确定，不妨取 $V$ 上的一个基 $alpha_1 , dots.h.c , alpha_n$，$bold(A)$ 完全被 $bold(A) alpha_1 , dots.h.c , bold(A) alpha_n$ 决定。由于 $bold(A) alpha_i in V'$，因此在 $V'$ 中取一个基 $eta_1 , dots.h.c , eta_s$，$bold(A) alpha_i$ 被它在基 $eta_1 , dots.h.c , eta_s$ 下的坐标所决定，形式的记作 $ (bold(A) alpha_1 , bold(A) alpha_2 , dots.h.c , bold(A) alpha_n) = (eta_1 , eta_2 , dots.h.c , eta_n) mat(delim: "(", a_(1 1), a_(1 1), dots.h.c, a_(1 n); a_(2 1), a_(2 2), dots.h.c, a_(2 n); dots.v, dots.v, #none, dots.v; a_(s 1), a_(s 1), dots.h.c, a_(s n)) $ 把 $s times n$ 矩阵记作 $A$，它的第 $j$ 列就是 $bold(A) alpha_j$ 在 $eta_1 , dots.h.c , eta_s$ 下的坐标。称 $A$ 是线性映射 $bold(A)$ 在 $V$ 的基 $alpha_1 , dots.h.c , alpha_n$ 和 $V'$ 的基 $eta_1 , dots.h.c , eta_s$ 下的矩阵。于是线性映射 $bold(A)$ 有了矩阵表示。

通常把 $( bold(A) alpha_1 , dots.h.c , bold(A) alpha_n )$ 记成 $bold(A) ( alpha_1 , dots.h.c , alpha_n )$ 于是上式可以记成 $ bold(A) ( alpha_1 , dots.h.c , alpha_n ) = ( alpha_1 , dots.h.c , alpha_n ) A $

对于 $V$ 上的线性变换 $bold(A)$，由于 $bold(A) alpha_i in V$，因此 $bold(A) alpha_i$ 可以用 $V$ 的基 $alpha_1 , dots.h.c , alpha_n$ 线性表出，于是有 $ (bold(A) alpha_1 , bold(A) alpha_2 , dots.h.c , bold(A) alpha_n) = (alpha_1 , alpha_2 , dots.h.c , alpha_n) mat(delim: "(", a_(1 1), a_(1 1), dots.h.c, a_(1 n); a_(2 1), a_(2 2), dots.h.c, a_(2 n); dots.v, dots.v, #none, dots.v; a_(n 1), a_(n 1), dots.h.c, a_(n n)) $ 把右端的 $n$ 级矩阵记作 $A$，它的第 $j$ 列就是 $bold(A) alpha_j$ 在 $alpha_1 , dots.h.c , alpha_n$ 下的坐标。称 $A$ 是线性映射 $bold(A)$ 在 $V$ 的基 $alpha_1 , dots.h.c , alpha_n$ 下的矩阵。于是线性映射 $bold(A)$ 有了矩阵表示。 $ bold(A) ( alpha_1 , dots.h.c , alpha_n ) = ( alpha_1 , dots.h.c , alpha_n ) A $

设域 $F$ 上 $n$ 维线性空间 $V$ 上的幂等变换，有 $ V = "Im" bold(A) xor "Ker" bold(A) $ 且 $bold(A)$ 是平行于 $"Ker" bold(A)$ 在 $"Im" bold(A)$ 上的投影。在 $"Im" bold(A)$ 中取一个基 $alpha_1 , dots.h.c , alpha_r$；在 $"Ker" bold(A)$ 中取一个基 $beta_1 , dots.h.c , beta_(n - r)$，则 $alpha_1 , dots.h.c , alpha_r , beta_1 , dots.h.c , beta_(n - r)$ 是 $V$ 的一个基，由于 $bold(A)$ 是平行于 $"Ker" bold(A)$ 在 $"Im" A$ 上的投影，因此 $ bold(A) alpha_i = alpha_i , bold(A) beta_j = 0 $ 从而幂等变换 $bold(A)$ 在基 $alpha_1 , dots.h.c , alpha_r , beta_1 , dots.h.c , beta_(n - r)$ 下的矩阵 $bold(A)$ 为 $ A = mat(delim: "(", E_r, 0; 0, 0) $ 其中 $r = "rank" ( A ) = dim ( "Im" bold(A) ) = "rank" ( bold(A) )$。

===== $"Hom" ( V , V' )$ 与 $M_(s times n) ( F )$ 的关系，$"Hom" ( V , V )$ 与 $M_n ( F )$ 的关系
<ga-9-operatornamehomvv-与-m_s-times-nf-的关系operatornamehomvv-与-m_nf-的关系>
#statement("theorem", title: [])[
设域 $F$ 上的 $n$ 维线性空间 $V$ 和 $s$ 维的线性空间 $V'$，则线性映射 $bold(A) : V arrow.r V'$ 与它在 $V$ 的一个基和 $V'$ 的一个基下的矩阵 $A$ 的对应 $sigma$ 是线性空间 $"Hom" ( V , V' ) arrow.r M_(s times n) ( F )$ 的同构映射，从而 $ "Hom" ( V , V' ) tilde.equiv M_(s times n) ( F ) $ $ dim ( "Hom" ( V , V' ) ) = s n = ( dim V ) ( dim V' ) $

]
特别的有 $ "Hom" ( V , V ) tilde.equiv M_n ( F ) $ $ dim ( "Hom" ( V , V ) ) = s n = ( dim V )^2 $

注意到 $"Hom" ( V , V )$ 与 $M_n ( F )$ 都是域 $F$ 上的代数，它们都有加法、纯量乘法、乘法运算，可以证明 $sigma$ 映射保持乘法运算 $ sigma ( bold(A) bold(B) ) = A B = sigma ( bold(A) ) sigma ( bold(B) ) $ 因此 $sigma$ 是 $"Hom" ( V , V ) arrow.r M_n ( F )$ 的同构映射。

#statement("definition", title: [])[
设域 $F$ 上的代数 $F , F'$，如果存在双射 $sigma : M arrow.r M'$，使得 $sigma$ 既是线性空间 $M arrow.r M'$ 的同构映射，又是环 $M arrow.r M'$ 的同构映射，那么称代数 $M$ 与 $M'$ 是同构的，并且称 $sigma$ 是代数 $M arrow.r M'$ 的一个同构映射。

]
#statement("theorem", title: [])[
设域 $F$ 上 $n$ 维线性空间 $V$ 上的线性变换 $bold(A)$，$bold(A)$ 与它在 $V$ 的一个基下的矩阵 $A$ 的对应是代数 $"Hom" （ V , V ) arrow.r M_n ( F )$ 的同构映射，从而代数 $"Hom" ( V , V )$ 与 $M_n ( F )$ 是同构的。

]
===== 向量在线性映射（或线性变换）下的象的坐标
<ga-9-向量在线性映射或线性变换下的象的坐标>
。

设域 $F$ 上的 $n$ 维线性空间和 $s$ 维线性空间，线性映射 $bold(A) : V arrow.r V'$ 在 $V$ 的一个基 $alpha_1 , dots.h.c , alpha_n$ 和 $V'$ 的一个基 $eta_1 , dots.h.c , eta_s$ 下的矩阵为 $A$。设 $V$ 中向量 $alpha$ 在基 $alpha_1 , dots.h.c , alpha_n$ 下的坐标为 $X$，有 $ bold(A) alpha = ( eta_1 , dots.h.c , eta_n ) A X $ 则 $bold(A) alpha$ 在基 $eta_1 , dots.h.c , eta_s$ 下的坐标为 $A X$。

特别的，设线性空间 $V$ 中的一组基 $alpha_1 , dots.h.c , alpha_n$，其上的线性变换 $bold(A)$ 在此基下的矩阵为 $A$。把向量 $alpha$ 在此基下的坐标记作 $X$，有 $ bold(A) alpha = ( alpha_1 , dots.h.c , alpha_n ) A X $ 即向量 $bold(A)$ 在此基下的坐标是 $A X$。

若向量 $gamma$ 在基 $alpha_1 , dots.h.c , alpha_n$ 下的坐标为 $Y$，则 $ bold(A) alpha = gamma arrow.l.r.double A X = Y $

===== 线性变换在不同基下的矩阵之间的关系
<ga-9-线性变换在不同基下的矩阵之间的关系>
#statement("theorem", title: [])[
设域 $F$ 上的 $n$ 维线性空间，线性变换 $bold(A)$ 在基 $alpha_1 , dots.h.c , alpha_n$ 下的矩阵为 $A$，在基 $eta_1 , dots.h.c , eta_s$ 下的矩阵为 $B$，从基 $alpha_1 , dots.h.c , alpha_n$ 到基 $eta_1 , dots.h.c , eta_s$ 的过度矩阵为 $S$，则 $ B = S^(- 1) A S $

]
即 同一个线性变换 $bold(A)$ 在 $V$ 的不同基下的矩阵是相似的。

由于行列式、秩、迹都是相似关系下的不变量，因此我们把 $bold(A)$ 在 $V$ 的基下的矩阵 $A$ 的行列式、秩、迹分别叫做线性变换 $bold(A)$ 的行列式、秩、迹，依次记作 $det ( bold(A) ) , "rank" ( bold(A) ) , "tr" ( bold(A) )$。

== 线性变换的特征值和特征向量，线性变换可对角化的条件
<ga-9-线性变换的特征值和特征向量线性变换可对角化的条件>
#statement("definition", title: [])[
设域 $F$ 上的线性空间 $V$ 上的一个线性变换 $bold(A)$，若 $V$ 中存在一个非零向量 $xi$，存在 $lambda_0 in F$ 使得 $ bold(A) xi = lambda_0 xi $ 则称 $lambda_0$ 是线性变换 $bold(A)$ 的一个特征值，称 $xi$ 是 $bold(A)$ 的属于特征值 $lambda_0$ 的一个特征向量。

]
对于几何空间 $V$，那么 $bold(A)$ 对 $xi$ 的作用是把 $xi$ 拉伸或压缩 $lambda_0$ 倍。

#statement("theorem", title: [])[
设域 $F$ 上 $n$ 为线性空间 $V$ 上的线性变换 $bold(A)$ 可对角化当且仅当 $bold(A)$ 有 $n$ 个线性无关的特征向量 $xi_1 , dots.h.c , xi_n$，此时 $bold(A)$ 在 $xi_1 , dots.h.c , xi_n$ 下的矩阵为 $ "diag" { lambda_1 , dots.h.c , lambda_n } $ 其中 $lambda_i$ 是 $xi_i$ 所属的特征值。该矩阵称为 $bold(A)$ 的标准型。除了主对角线上元素的排列次序外，$bold(A)$ 的标准型是由 $bold(A)$ 唯一决定的。

]
设域 $F$ 上线性空间 $V$ 上的线性变换 $bold(A)$，$lambda_0$ 是 $bold(A)$ 的一个特征值，令 $ V_(lambda_0) colon.eq { alpha in V mid(|) bold(A) alpha = lambda_0 alpha } $ 易验证 $V_(lambda_0)$ 是 $V$ 的一个子空间，称 $V_(lambda_0)$ 是数域特征值 $lambda_0$ 的特征子空间。且 $ V_(lambda_0) = "Ker" ( lambda_0 bold(I) - bold(A) ) $

#statement("proposition", title: [])[
域 $F$ 上 $n$ 维线性空间 $V$ 上的线性变换 $bold(A)$ 可对角化当且仅当下式成立 $ V = V_(lambda_1) xor dots.h.c xor V_(lambda_s) $ 其中 $lambda_1 , dots.h.c , lambda_s$ 是 $bold(A)$ 全部的不同的特征值。

]
由于 $n$ 维线性空间 $V$ 上线性变换 $bold(A)$ 在 $V$ 的不同基下的矩阵是相似的，而相似的矩阵有相等的多项式，因此我们把 $bold(A)$ 在 $V$ 的一个基下的矩阵 $A$ 的特征多项式称为线性变换 $bold(A)$ 的特征多项式。设 $lambda_i$ 是 $bold(A)$ 的一个特征值，把 $lambda_i$ 作为特征多项式的根的重数叫做 $lambda_i$ 的代数重数，把 $bold(A)$ 的属于特征值 $lambda_i$ 的特征子空间 $V_(lambda_i)$ 的维数叫做 $lambda_i$ 的几何重数。#metadata(()) <ga-index-28> #metadata(()) <ga-index-29>

因此 $bold(A)$ 可标准化当且仅当 $bold(A)$ 的标准型为对角矩阵，其主对角线上的元素是 $bold(A)$ 的全部特征值，且每个特征值 $lambda_i$ 出现的次数等于它的几何重数。即当 $bold(A)$ 可对角化时，$bold(A)$ 的特征多项式为 $ ( lambda - lambda_1 )^(r_1) dots.h.c ( lambda - lambda_s )^(r_s) $

#statement("theorem", title: [])[
域 $F$ 上 $n$ 维线性空间 $V$ 上的线性变换 $bold(A)$ 可对角化当且仅当 $bold(A)$ 的特征多项式在 $F [ lambda ]$ 中可分解成 $ ( lambda - lambda_1 )^(l_1) dots.h.c ( lambda - lambda_s )^(l_s) $ 其中 $lambda_1 , dots.h.c , lambda_s$ 两两不等，其诶 $bold(A)$ 的每个特征值 $lambda_i$ 的几何重数等于它的代数重数。

]
== 线性变换的不变子空间
<ga-9-线性变换的不变子空间>
#statement("definition", title: [不变子空间])[
#metadata(()) <ga-index-30> 设域 $F$ 上的线性空间 $V$ 上的线性变换 $bold(A)$，若 $V$ 的子空间 $W$ 如果满足对任意 $alpha in W$ 都有 $bold(A) alpha in W$ 那么称 $W$ 是 $bold(A)$ 的不变子空间，简称为 $bold(A)$- 子空间。

]
设线性空间 $V$ 上的可交换线性变换 $bold(A) , bold(B)$，容易验证 $"Ker" bold(B) , "Im" bold(B) , bold(B)$ 的特征子空间都是 $bold(A)$- 子空间

#statement("theorem", title: [])[
设域 $F$ 上 $n$ 维线性空间 $V$ 上的线性变换 $bold(A)$，则 $bold(A)$ 在 $V$ 的一个基下的矩阵为分块对角矩阵当且仅当 $V$ 能被分解为 $bold(A)$ 的非平凡不变子空间的直和：$V = W_1 xor dots.h.c xor W_s$，并且 $A_i$ 是 $lr(bold(A)|)_(W_i)$ 在 $W_i$ 下的矩阵。

]
#statement("theorem", title: [])[
设域 $F$ 上的线性空间 $V$ 上的线性变换 $bold(A)$，若在 $K [ x ]$ 中有 $ f ( x ) = f_1 ( x ) dots.h.c f_s ( x ) $ 且 $f_1 ( x ) , dots.h.c , f_s ( x )$ 两两互素，则 $ "Ker" f ( bold(A) ) = "Ker" f_1 ( bold(A) ) xor dots.h.c xor "Ker" f_s ( bold(A) ) $

]
#statement("definition", title: [零化多项式])[
#metadata(()) <ga-index-31> 设域 $F$ 上线性空间 $V$ 上的线性变换 $bold(A)$，若 $F$ 上的一元多项式 $f ( bold(A) ) = bold(0)$，那么称 $f ( x )$ 为 $bold(A)$ 的一个零化多项式。

]
设 $dim V = 0$，则 $dim ( "Hom" ( V , V ) ) = n^2$，从而 $ bold(I) , bold(A) , bold(A)^2 , dots.h.c , bold(A)^(n^2) $ 一定线性相关，于是存在一组不全为 $0$ 的元素 $k_0 , dots.h.c , k_(n^2)$ 使得 $ k_0 bold(I) + k_1 bold(A) + k_2 bold(A)^2 + dots.h.c + k_(n^2) bold(A)^(n^2) = bold(0) $ 令 $f ( x ) = k_0 + k_1 x + k_2 x^2 + dots.h.c + k_(n^2) x^(n^2)$，则有 $f ( bold(A) ) = bold(0)$，于是 $f ( x )$ 是 $bold(A)$ 的一个零化多项式。

#statement("definition", title: [])[
设 $F$ 上的 $n$ 级矩阵 $A$，若 $f ( x ) in F [ x ]$ 使得 $f ( A ) = 0$，那么称 $f ( x )$ 是 $A$ 的一个零化多项式。

]
#statement("theorem", title: [Hamilton - Cayley 定理])[
设域 $F$ 上的 $n$ 级矩阵，则 $A$ 的特征多项式 $f ( lambda )$ 是 $A$ 的一个零化多项式。

]
利用该定理可以把 $V$ 分解为 $bold(A)$ 的非平凡不变子空间的直和：设 $bold(A)$ 的特征多项式 $f ( lambda )$ 在 $F [ lambda ]$ 中分解为 $ f ( lambda ) = p_1^(r_1) ( lambda ) dots.h.c p_s^(r_s) ( lambda ) $ 其中 $p_i ( lambda )$ 是 $F$ 上两两不等的首一不可约多项式，则 $ V = "Ker" ( p_1^(r_1) ( bold(A) ) ) xor dots.h.c xor "Ker" ( p_s^(r_s) ( bold(A) ) ) $

如果 $f ( lambda )$ 可以分解为 $ f ( lambda ) = ( lambda - lambda_1 )^(r_1) dots.h.c ( lambda - lambda_s )^(r_s) $ 其中 $lambda_i$ 是 $F$ 中两两不等的元素，则 $ V = "Ker" ( ( bold(A) - lambda_1 bold(I) )^(r_1) ) xor dots.h.c xor "Ker" ( ( bold(A) - lambda_s bold(I) )^(r_s) ) $ 其中 $"Ker" ( ( bold(A) - lambda_j bold(I) )^(r_j) )$ 称为 $bold(A)$ 的根子空间。

== \*线性变换和矩阵的最小多项式
<ga-9-线性变换和矩阵的最小多项式>
#statement("definition", title: [最小多项式])[
#metadata(()) <ga-index-32> 设域 $F$ 上线性空间 $V$ 的一个线性变换 $bold(A)$ 的所有非零的零化多项式中，次数最低的首项系数为 $1$ 的多项式称为 $bold(A)$ 的最小多项式。

]
== 幂零变换的 Jordan 标准型
<ga-9-幂零变换的-jordan-标准型>
#statement("definition", title: [])[
若 $eta in W$，且存在一个正整数 $t$ 使得 $bold(B)^(t - 1) eta eq.not 0 , bold(B)^t eta = 0$，则称子空间 $chevron.l bold(B)^(t - 1) eta , bold(B) eta , eta chevron.r$ 是由 $eta$ 生成的 $bold(B)$- 强循环子空间。

]
#statement("theorem", title: [])[
设域 $F$ 上 $r$ 维线性空间 $W$ 上的幂零变换 $bold(B)$，其幂零指数为 $l$，则 $W$ 能分解成 $dim W_0$ 个 $bold(B)$- 强循环子空间的直和，其中 $W_0$ 是 $bold(B)$ 的属于特征值 $0$ 的特征子空间。

]
#statement("theorem", title: [])[
设域 $F$ 上 $r$ 维线性空间 $W$ 上的幂零变换，其幂零指数为 $l$，则 $W$ 中存在一个基使得 $bold(B)$ 在此基下的矩阵 $B$ 为一个 Jordan 形矩阵，其中每个 Jordan 块的主对角元都是 $0$，且级数不超过 $l$；Jordan 块的总数等于 $dim ( "Ker" bold(B) ) = r - "rank" ( bold(B) )$；$t$ 级 Jordan 块的个数 $N ( t )$ 为 $ N ( t ) = "rank" ( bold(B)^(t + 1) ) + "rank" ( bold(B)^(t - 1) ) - 2 "rank" ( bold(B)^t ) $ 把 $B$ 称为 $bold(B)$ 的 Jordan 标准型。除了 Jordan 块的排列次序外，$bold(B)$ 的 Jordan 标准型是唯一的。

]
== 线性变换的有理标准型
<ga-9-线性变换的有理标准型>
== 线性函数与对偶空间
<ga-9-线性函数与对偶空间>
#statement("definition", title: [线性函数])[
#metadata(()) <ga-index-33> 设域 $F$ 上的线性空间 $V$，映射 $f : V arrow.r F$ 若对任意的 $k in F , alpha , beta in V$ 满足 $ f ( alpha + beta ) & = f ( alpha ) + f ( beta )\
f ( k alpha ) & = k f ( alpha ) $ 那么称 $f$ 是 $V$ 上的线性函数。

]
例如，令 $ "tr" : M_n ( F ) arrow.r F , A = ( a_(i j) ) mapsto sum_(i = 1)^n a_(i i) $ 容易验证 $"tr"$ 是 $M_n ( F )$ 上的线性函数，称它为迹函数。

设 $V$ 是域 $F$ 上的线性空间，由于 $V$ 上的线性函数可看成 $V arrow.r F$ 的映射，因此可以把 $V$ 上所有线性函数的全集记作 $"Hom" ( V , F )$。它是域 $F$ 上的一个线性空间，称它为 $V$ 上的线性函数空间。

容易看出 $"Hom" ( V , f ) tilde.equiv V$，任取 $f in "Hom" ( V , F )$ 由于 $f$ 完全被它在 $V$ 上的一个基 $alpha_1 , dots.h.c , alpha_n$ 决定，因此对应法则 $ sigma : "Hom" ( V , F ) arrow.r F^n , quad f mapsto ( f ( alpha_1 ) , dots.h.c , f ( alpha_n ) ) $ 是一个映射，显然 $sigma$ 是满射、单射，且保持加法和纯量运算，因此 $sigma$ 是 $"Hom" ( V , F ) arrow.r F^n$ 上的同构映射，从而 $sigma^(- 1)$ 是 $"Hom" ( V , F ) arrow.r F^n$ 的同构映射。在 $F^n$ 中取标准基 $bold(epsilon)_1 , dots.h.c , bold(epsilon)_n$ 则 $sigma^(- 1) ( bold(epsilon)_1 ) , dots.h.c , sigma^(- 1) ( bold(epsilon)_1 )$ 是 $"Hom" ( V , F )$ 的一个基。

记 $f_i = sigma^(""_1) ( bold(epsilon)_i )$，则 $sigma ( f_i ) = bold(epsilon)$。于是有 $f_i ( alpha_j ) = delta_(i j)$。

$"Hom" ( V , F )$ 的这个基 $f_1 , dots.h.c , f_n$ 称为 $V$ 的基 $alpha_1 , dots.h.c , alpha_n$ 的对偶基，把 $"Hom" ( V , F )$ 称为 $V$ 的对偶空间，记作 $V^(*)$。

#statement("theorem", title: [])[
设域 $F$ 上 $n$ 维线性空间 $V$，在 $V$ 中取两个基：$alpha_1 , dots.h.c , alpha_n$ 与 $beta_1 , dots.h.c , beta_n$；$V^(*)$ 中相对应的对偶基分别为 $f_1 , dots.h.c , f_n$ 与 $g_1 , dots.h.c , g_n$。如果 $V$ 中基 $alpha_1 , dots.h.c , alpha_n$ 到基 $beta_1 , dots.h.c , beta_n$ 的过渡矩阵是 $A$，那么 $V^(*)$ 中基 $f_1 , dots.h.c , f_n$ 到基 $g_1 , dots.h.c , g_n$ 的过渡矩阵 $B$ 为 $ B = ( A^(- 1) )^(sans(T)) $

]
设域 $F$ 上 $n$ 维线性空间 $V$，取 $V$ 一个基 $alpha_1 , dots.h.c , alpha_n$，在 $V^(*)$ 中取相应的对偶基 $f_1 , dots.h.c , f_n$。映射 $ sigma : V arrow.r V^(*) , quad alpha = sum_(i = 1)^n x_i alpha_i mapsto sum_(i = 1)^n x_i f_i $ 是一个同构映射，把 $alpha$ 在 $sigma$ 下的像记作 $f_alpha$ 或 $alpha^(*)$。对 $V$ 中任意向量 $beta = sum_(i = 1)^n y_i alpha_i$，由于 $f_i ( beta ) = y_i$，因此有 $ f_alpha ( beta ) = (sum_(i = 1)^n x_i f_i) = sum_(i = 1)^n x_i f_i ( beta ) = sum_(i = 1)^n x_i y_i $ 这表明 $alpha$ 在 $sigma$ 下的像 $f_alpha$ 在 $beta$ 处的函数值等于 $alpha$ 与 $beta$ 的坐标的对应分量乘积之和。

进一步地，我们可以考虑对偶空间 $V^(*)$ 的对偶空间 $( V^(*) )^(*)$，简记为 $V^(* *)$，称 $V^(* *)$ 是 $V$ 的双重对偶空间，有 $ V tilde.equiv V^(*) tilde.equiv V^(* *) $

设 $alpha_1 , dots.h.c , alpha_n$ 是 $V$ 的一个基，$V^(*)$ 中相应的对偶基为 $f_1 , dots.h.c , f_n$。设同构映射 $ sigma : V arrow.r V^(*) , quad alpha mapsto f_alpha $ 同理，有同构映射 $ tau : V^(*) arrow.r V^(* *) , quad f_alpha mapsto alpha^(* *) $ 任取 $f in V$，有 $ f_alpha = sum_(i = 1)^n x_i f_i , quad f = sum_(i = 1)^n f ( alpha_i ) f_i $ 从而 $ alpha^(* *) ( f ) = sum_(i = 1)^n x_i f ( alpha_i ) = f (sum_(i = 1)^n x_i alpha_i) = f ( alpha ) $ 由于 $( tau sigma ) alpha = tau ( sigma alpha ) = tau ( f_alpha ) = alpha^(* *)$，因此 $alpha^(* *) ( f )$ 的值不依赖于 $V$ 中基的选择。我们称这种不依赖于基的选择的同构映射为标准同构或自然同构。即 $tau sigma : V arrow.r V^(* *)$ 是自然同构。#metadata(()) <ga-index-34>

于是 $V$ 与 $V^(*)$ 互为对偶空间。
