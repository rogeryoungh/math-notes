#import "../../template/environments.typ": statement

= 多变量理论
<0008-多变量理论>
== 多变量极限
<0008-多变量极限>
我们回忆一下 $n$ 维 Euclidean 空间 $ bb(R)^n = { bold(x) = ( x_1 , dots.h.c , x_n ) mid(|) x_i in bb(R) } $ 其中的元素我们记为 $n$ 维向量（vector）。在其上我们定义向量内积的概念 $ bold(x) dot.op bold(y) = chevron.l bold(x) , bold(y) chevron.r = sum_(i = 1)^n x_i y_i $ 向量内积具有线性性。并满足 Schwarz 不等式： $ ( bold(x) dot.op bold(y) )^2 lt.eq ( bold(x) dot.op bold(x) ) ( bold(y) dot.op bold(y) ) $

我们定义一个向量的范数（norm）为 $ norm(bold(x)) = sqrt(bold(x) dot.op bold(x)) = sqrt(sum_(i = 1)^n abs(x_i)^2) $ 从而有三角不等式 $ norm(bold(x) + bold(y)) + lt.eq norm(bold(x)) + norm(bold(y)) $ 事实上还存在一些其他范数，比如 $p$ - 范数 $ norm(bold(x))_p = root(p, sum_(i = 1)^n abs(x_i)^p) $ 和 $oo$ - 范数 $ norm(bold(x))_oo = max_(i = 1)^n abs(x_i) $

可以进一步的定义向量的夹角 $ theta_(bold(x) , bold(y)) = arccos frac(bold(x) dot.op bold(y), norm(bold(x)) norm(bold(y))) $ 和距离 $ d ( bold(x) , bold(y) ) = norm(bold(x) - bold(y)) $ 从而构建出度量空间。

我们可以定义球邻域 $ bb(B)^n ( bold(x) , r ) = { bold(y) mid(|) norm(bold(y) - bold(x)) < r } $ 和方邻域 $ bb(O)^n ( bold(a) , r ) = { bold(x) mid(|) abs(x_i - a_i) < r , 1 lt.eq i lt.eq n } $ 由于 $ bb(B)^n ( bold(a) , r ) subset bb(O)^n ( bold(a) , r ) subset bb(B)^n ( bold(a) , r sqrt(n) ) $ 我们可以不加区分的统称为邻域，记作 $U ( bold(a) , r )$。

#statement("definition")[

设 ${ bold(x)_i }$ 是 $bb(R)^n$ 中的点列。如果存在 $M > 0$ 使得 $bold(x)_i in bb(B)^n ( bold(0) , M )$，则称其为有界的。如果对任意 $epsilon > 0$ 都存在正整数 $I$ 使得当 $i > I$ 时满足 $ norm(bold(i) - bold(x)) < epsilon $ 成立，即 $bold(x) in bb(B)^n ( bold(x) , epsilon )$，则记 $ lim_(i arrow.r oo) bold(x)_i = bold(x) $ 假如不收敛到任何点，则称其为发散的。

]
考虑到考研对多元部分的考察并不深入，将实数上的连续性搬到多元空间上是自然的，可以信赖直觉。

#statement("definition")[

设 $D subset bb(R)^n$，且 $bold(a) in D'$ 是 $D$ 的聚点，如果对任意 $epsilon > 0$ 存在 $delta > 0$ 使得当 $bold(x) in U^compose ( bold(a) , delta ) ∩ D$ 有 $ abs(f ( bold(x) ) - A) < epsilon $ 成立，则称 $f ( bold(x) )$ 在 $D$ 上当 $bold(x) arrow.r bold(a)$ 时以 $A$ 为极限，或者称为 $n$ 重极限，记作 $ lim_(bold(x) arrow.r bold(a)) f ( bold(x) ) = A $

]
实数上极限的唯一性、有界性等性质也可以搬过来。但是有一些复杂的情况，比如 $ lim_(( x , y ) arrow.r bold(0)) y / x $ 我们沿着 $y = k x$ 趋于 $bold(0)$，得到是 $k$ 不是定值，说明极限不存在。

#statement("definition")[

设 $D = D_1 times D_2 subset bb(R)$，$x_0 , y_0$ 分别是 $D_1 , D_2$ 的聚点。如果对每个固定的 $y in D_2$ 且 $y eq.not y_0$ 作为 $x$ 的一元函数，极限 $ lim_(x arrow.r x_0) f ( x , y ) $ 存在且极限 $ lim_(y arrow.r y_0) lim_(x arrow.r x_0) f ( x , y ) $ 也存在，则称后者为 $f$ 在 $( x_0 , y_0 )$ 点先对 $x$ 后对 $y$ 的累次极限。

]
== 多变量导数
<0008-多变量导数>
回顾一下一元函数 $f ( x )$ 在 $a$ 处的微分 $ f ( a + Delta x ) - f ( a ) = f' ( a ) Delta x + o ( abs(Delta x) ) $ 根据无穷小的定义得到 $ lim_(Delta x arrow.r 0) frac(f ( a + Delta x ) - f ( a ) - f' ( a ) Delta x, abs(Delta x)) = 0 $

#statement("definition")[

设 $n$ 元函数 $f ( bold(x) )$ 在 $bold(a)$ 的邻域内有定义，若存在 $n$ 维向量 $bold(b)$ 使得 $ lim_(Delta bold(x) arrow.r 0) frac(f ( bold(a) + Delta bold(x) ) - f ( bold(a) ) - bold(b) dot.op Delta bold(x), norm(Delta bold(x))) = 0 $ 成立，即 $ f ( bold(a) + Delta bold(x) ) - f ( bold(a) ) = bold(b) dot.op Delta bold(x) + o ( abs(Delta x) ) $ 则称 $f$ 在 $bold(a)$ 处可微或可导，向量 $bold(b)$ 为函数 $f$ 在 $bold(a)$ 处的导数，记为 $ bold(b) = f' ( bold(a) ) = nabla f ( bold(a) ) $ 并记微分（全微分）为 $upright(d) f = bold(b) dot.op upright(d) bold(x)$。

]
假如考虑对于固定点 $bold(a)$，考虑在 $x_i$ 方向上的极限 $ lim_(Delta x_i arrow.r 0) frac(f ( a_1 , dots.h.c , a_i + Delta x_i , dots.h.c , a_n ) - f ( bold(a) ), Delta x_i) $ 若极限存在，则称 $f$ 在 $bold(a)$ 关于 $x_i$ 可偏导，记极限为 $f$ 在 $bold(a)$ 处关于 $x_i$ 的偏导数并记为 $ frac(partial f, partial x_i) ( bold(a) ) = f_(x_i) ( bold(a) ) $

注意，偏导数存在不意味着可微。比如 $ f ( x , y ) = frac(x y, x^2 + y^2) , quad f ( bold(0) ) = 0 $ 此时 $f_x ( bold(0) ) = f_y ( bold(0) ) = 0$，但并不连续。

#statement("theorem")[

如果函数 $f$ 在 $bold(a)$ 处可微，则在 $bold(a)$ 处必存在偏导数且满足 $ f' ( bold(a) ) = (f_(x_1) ( bold(a) ) , dots.h.c , f_(x_n) ( bold(a) )) $ 和 $ upright(d) f ( bold(a) ) = f' ( bold(a) ) upright(d) bold(x) = sum_(i = 1)^n f_(x_i) upright(d) x_i $

]
#statement("proof")[

由可微知存在 $bold(b)$ 使得 $ f ( bold(a) + Delta bold(x) ) - f ( bold(a) ) = bold(b) dot.op Delta bold(x) + o ( norm(Delta bold(x)) ) $ 此时我们可以取仅 $x_i$ 方向有值的无穷小，便可导出偏导。

]
#statement("theorem")[

如果 $f$ 在 $bold(a)$ 的某个邻域存在偏导数，且偏导数在 $bold(a)$ 点连续，则 $f$ 在 $bold(a)$ 处可微。

]
考虑一单位向量 $bold(mu)$，如果极限 $ frac(partial f, partial mu) ( bold(x)_0 ) = lim_(t arrow.r 0 +) frac(f ( bold(x)_0 + t bold(mu) ) - f ( bold(x)_0 ), t) $ 存在，则称函数 $f$ 在 $bold(x)_0$ 处沿着方向 $bold(mu)$ 是方向可导的，并称该极限为函数 $f$ 在 $bold(x)_0$ 处沿着 $bold(mu)$ 的方向导数。

假如 $f$ 在 $bold(x)_0$ 处的偏导数存在，函数 $f$ 在 $bold(x)_0$ 处的梯度为 $ "grad"_(bold(x)_0) f = nabla_(bold(x)_0) f = (f_(x_1) ( bold(x)_0 ) , dots.h.c , f_(x_n) ( bold(x)_n )) $ 显然当函数 $f$ 可微时，$nabla_(bold(x)_0) f = f' ( bold(x)_0 )$，且 $ frac(partial f, partial bold(mu)) ( bold(x)_0 ) = nabla_(bold(x)_0) f dot.op bold(mu) $

我们记其为 Nabla 算子，即 $ nabla = (frac(partial, partial x_1) , dots.h.c , frac(partial, partial x_n)) $ 和 Laplace 算子 $ Delta = nabla dot.op nabla = sum_(i = 1)^n frac(partial^2, ( partial x_i )^2) $ 如果函数 $f$ 的所有二阶偏导存在且 $Delta f = 0$，则称其为调和的。

推广偏导数概念到二阶直至更高阶是自然的，但是微分算子是不可交换的。

#statement("theorem", title: [Clairaut - Euler])[

假设函数 $f$ 的混合二阶偏导数 $f_(x_i x_j)$ 和 $f_(x_j x_i)$ 在 $bold(x)_0$ 连续，则必有 $f_(x_i x_j) ( bold(x)_0 ) = f_(x_j x_i) ( bold(x)_0 )$。

]
=== 隐函数
<0008-隐函数>
一个基本想法是如何从 $n + 1$ 元函数方程 $ F ( bold(x) , y ) = 0 $ 中提取出 $y = f ( bold(x) )$，其中 $bold(x) in bb(R)^n$，假设这样的 $f$ 存在且可任意偏导。则两边对 $bold(x_i)$ 求偏导得 $ F_(x_i) ( bold(x) , y ) + F_y ( bold(x) , y ) f_(x_i) ( bold(x) ) = 0 $ 即得 $ f_(x_i) ( bold(x) ) = - frac(F_(x_i) ( bold(x) , y ), F_y ( bold(x) , y )) , quad 1 lt.eq i lt.eq n $ 顺此可推得全微分。

== 偏导数的应用
<0008-偏导数的应用>
=== 链式法则
<0008-链式法则>
我们以二元为例子，考虑二元二维向量值函数 $bold(g) ( x , y ) = ( u ( x , y ) , v ( x , y ) )$，得到复合函数 $ z = ( f compose bold(g) ) ( x , y ) = f ( u ( x , y ) , v ( x , y ) ) $ 我们有链式法则 $ frac(partial z, partial x) ( x_0 , y_0 ) = frac(partial f, partial u) ( u_0 , v_0 ) frac(partial u, partial x) ( x_0 , y_0 ) + frac(partial f, partial v) ( u_0 , v_0 ) frac(partial v, partial x) ( x_0 , y_0 )\
frac(partial z, partial y) ( x_0 , y_0 ) = frac(partial f, partial u) ( u_0 , v_0 ) frac(partial u, partial y) ( x_0 , y_0 ) + frac(partial f, partial v) ( u_0 , v_0 ) frac(partial v, partial y) ( x_0 , y_0 ) $

=== 微分中值定理
<0008-微分中值定理>
如果对任意 $bold(x)_0 , bold(x)_1 in D$ 都有 $ overline(bold(x)_0 bold(x)_1) = { ( 1 - t ) bold(x)_0 + t bold(x)_1 mid(|) t in ( 0 , 1 ) } subset D $ 则称区域 $D subset bb(R)^n$ 是凸的。如果对 $bold(x)_0$ 有任意的 $bold(x)_1$ 都有 $overline(bold(x)_0 bold(x)_1) subset D$，称 $D subset bb(R)^n$ 是关于 $bold(x)_0$ 星形的。

#statement("theorem")[

若多元函数 $f$ 在凸区域 $D subset bb(R)^n$ 内可微，则对 $D$ 内的任意两点 $bold(x)_0$ 和 $bold(x)$，存在 $theta in ( 0 , 1 )$ 使得 $ f ( bold(x) ) - f ( bold(x)_0 ) = nabla_(bold(x)_0 + theta ( bold(x) - bold(x)_0 )) ( f ) dot.op ( bold(x) - bold(x)_0 ) $

]
类似的，我们可以把一元的 Taylor 各种公式扩展到多元。

=== 空间几何基础
<0008-空间几何基础>
平面方程的一般式是 $ pi_1 ( x , y , z ) = A x + B y + C z + D = 0 $ 其法向量为 $bold(n) = ( A , B , C )$。或者说是点法式 $ A ( x - x_0 ) + B ( y - y_0 ) + C ( z - z_0 ) = 0 $ 有三点式 $ mat(delim: "|", x - x_1, y - y_1, z - z_1; x - x_2, y - y_2, z - z_2; x - x_3, y - y_3, z - z_3) = 0 $

空间直线的一般式是 $ pi_1 ( x , y , z ) = pi_2 ( x , y , z ) = 0 $ 即两个平面的交点。该直线的方向向量为 $bold(tau) = bold(n)_1 times bold(n)_2$。或者有点向式 $ frac(x - x_0, D) = frac(y - y_0, E) = frac(z - z_0, F) $ 其方向向量为 $bold(tau) = ( D , E , F )$。或者两点式 $ frac(x - x_1, x_2 - x_1) = frac(y - y_1, y_2 - y_1) = frac(z - z_1, z_2 - z_1) $

过直线 $L$ 的全体平面束，若直线表现为两平面交线（即一般式）$pi_1 ∩ pi_2$，则平面束方程为 $ pi_1 ( x , y , z ) + lambda pi_2 ( x , y , z ) = 0 , quad lambda in bb(R)^(*) $ 其他形式则很容易构造两个平面转化为一般式。

如果直线 $L_1$ 与直线 $L_2 , L_3$ 都平行，则方向向量可以取 $bold(n)_1 = bold(n)_2 times bold(n)_3$。

=== 切线与法平面
<0008-切线与法平面>
考虑空间中曲线的参数方程 $ bold(r) ( t ) = ( x ( t ) , y ( t ) , z ( t ) ) , quad t in [ a , b ] $ 如果 $bold(r)' ( t )$ 连续且 $bold(r)' ( t ) eq.not bold(0)$ 则称曲线是光滑的。

固定点 $bold(P)_0 = ( x_0 , y_0 , z_0 )$，我们可以得到切向量 $ bold(r)' ( t_0 ) = ( x' ( t_0 ) , y' ( t_0 ) , z' ( t_0 ) ) $ 和曲线在 $bold(P)_0$ 处的切线方程 $ frac(x - x_0, x' ( t_0 )) = frac(y - y_0, y' ( t_0 )) = frac(z - z_0, z' ( t_0 )) $ 和曲线在 $bold(P)_0$ 处的法平面 $ x' ( t_0 ) ( x - x_0 ) + y' ( t_0 ) ( y - y_0 ) + z' ( t_0 ) ( z - z_0 ) = bold(r)' ( t_0 ) dot.op ( bold(p) - bold(P)_0 ) = 0 $

考虑曲面的方程 $ F ( x , y , z ) = 0 $ 固定点 $bold(P)_0 = ( x_0 , y_0 , z_0 )$，得到切平面的法向量 $ bold(n) = ( F_x ( bold(P)_0 ) , F_y ( bold(P)_0 ) , F_z ( bold(P)_0 ) ) $ 从而得到切平面方程为 $ F_x ( bold(P)_0 ) ( x - x_0 ) + F_y ( bold(P)_0 ) ( y - y_0 ) + F_z ( bold(P)_0 ) ( z - z_0 ) = nabla_(bold(P)_0) f dot.op ( bold(p) - bold(P)_0 ) = 0 $ 和法线方程 $ frac(x - x_0, F_x ( t_0 )) = frac(y - y_0, F_y ( t_0 )) = frac(z - z_0, F_z ( t_0 )) $

== 极值问题
<0008-极值问题>
极值问题主要有两种：无条件极值和有条件极值。

对于多元函数 $f$，若存在 $bold(x)_0$ 的邻域 $bb(B)^n ( bold(x)_0 , rho )$ 使得 $ f ( bold(x)_0 ) gt.eq f ( bold(x) ) $ 则称 $bold(x)_0$ 为 $f$ 的极大值点。类似的，有极小值点，统称为极值点。如果存在去心邻域 $bb(B)^n ( bold(x)_0 , rho ) - { bold(x)_0 }$ 使得 $ f ( bold(x)_0 ) > f ( bold(x) ) $ 则称为严格极大值点。类似的有严格极小值和严格极值点。

=== 无条件极值
<0008-无条件极值>
#statement("theorem", title: [多元函数 Fermat 引理])[

假设 $n$ 元函数 $f$ 在 $bold(x)_0$ 处可偏导且 $bold(x)_0$ 为其极值点，则 $f' ( bold(x)_0 ) = bold(0)$。

]
#statement("theorem")[

假设 $bold(x)_0$ 为多元函数 $f$ 的驻点，并假设 $f$ 在 $bold(x)_0$ 处有二阶连续偏导数，引入 Hessian 矩阵 $ "Hess"_(bold(x)) ( f ) = [ f_(x_i x_j) ( bold(x) ) ]_(n times n) $ 则有如下结论：

- $"Hess"_(bold(x)) ( f )$ 正定，$f ( bold(x)_0 )$ 为严格极小值。

- $"Hess"_(bold(x)) ( f )$ 负定，$f ( bold(x)_0 )$ 为严格极大值。

- $"Hess"_(bold(x)) ( f )$ 不定，$f ( bold(x)_0 )$ 不是极值。

]
那么对于二元函数 $f$，设 $( x_0 , y_0 )$ 为其驻点，引入记号 $ Delta ( x_0 , y_0 ) = ( f_(x x) f_(y y) - f_(x y)^2 ) ( x_0 , y_0 ) $ 则有如下结论：

- 如果 $Delta > 0$，则当 $f_(x x) > 0$ 时为严格极小值；$f_(x x) < 0$ 为严格极大值。

- 如果 $Delta < 0$，不是极值。

- 如果 $Delta = 0$ 无法判断，可能有可能没有。

无法判断的例子有 $f_1 = x^2 y^2 , g = - f , h = x^2 y^3$，在 $0$ 处极值情况各不相同。

因此我们求取最值可以通过以下几个步骤：

- 求出驻点和不可导点和相应的函数值。

- 求出边界上的函数值。

- 比较 $1$ 和 $2$ 的情况。

=== 条件极值问题
<0008-条件极值问题>
Todo Lagrange 橙子法。

== 二重积分
<0008-二重积分>
#statement("definition")[

设 $D subset bb(R)^2$ 是渴求面积的有界点集，$z = f ( x , y )$ 在 $D$ 上有界。任取分割 $bold(T)$ 把 $D$ 分成 $n$ 个不重不漏的可求面积的子区域 $D_i$，并记 $ norm(bold(T)) = max_(i = 1)^n "diam" ( D_i ) $ 在每个子区域 $D_i$ 上任取点 $( xi_i , eta_i )$ 并求和 $ sigma ( f , bold(T) , ( bold(xi) , bold(eta) ) ) = sum_(i = 1)^n f ( xi_i , eta_i ) abs(D_i) $ 若当 $norm(bold(T)) arrow.r 0$ 时，$sigma ( f , bold(T) , ( bold(xi) , bold(eta) ) )$ 的极限存在且和分割 $bold(T)$ 及点 $( xi_i , eta_i )$ 的选取无关，则称函数 $f ( x , y )$ 在 $D$ 上可积，并称该极限为函数 $f$ 在 $D$ 上的二重积分，记作 $ integral.double_D f upright(d) sigma = integral.double_D f ( x , y ) upright(d) x upright(d) y = lim_(norm(bold(T))) sum_(i = 1)^n sigma ( f , bold(T) , ( bold(xi) , bold(eta) ) ) $ 我们称 $f$ 是可积函数，$D$ 是积分区域，$x , y$ 是积分变量，$upright(d) sigma = upright(d) x upright(d) y$ 是面积元。

]
一般的，设 $Omega subset bb(R)^n$ 是可测的闭区域，$f$ 是其上的有界函数，任取分割任取分割 $bold(T)$ 把 $Omega$ 分成 $n$ 个不重不漏的可求面积的子区域 $Omega_i$，并记 $ norm(bold(T)) = max_(i = 1)^n "diam" ( Omega_i ) $ 在每个子区域 $Omega_i$ 上任取点 $bold(xi)_i$ 并求和 $ V ( f , bold(T) , bold(xi) ) = sum_(i = 1)^n f ( bold(xi)_i ) abs(Omega_i) $ 若当 $norm(bold(T)) arrow.r 0$ 时，$V ( f , bold(T) , bold(xi) )$ 的极限存在且和分割 $bold(T)$ 及点 $bold(xi)_i$ 的选取无关，则称函数 $f$ 在 $Omega$ 上可积，并称该极限为函数 $f$ 在 $Omega$ 上的 $n$ 重积分，记作 $ integral.double_Omega f upright(d) V = integral.double_Omega f ( bold(x) ) upright(d) bold(x) upright(d) y = integral dots.h.c integral_Omega f ( x_1 , dots.h.c , x_n ) upright(d) x_1 dots.h.c upright(d) x_n $ 我们称 $f$ 是可积函数，$Omega$ 是积分区域，$x , y$ 是积分变量，$upright(d) V = upright(d) x upright(d) y$ 是面积元。

#statement("definition", title: [Fubini 定理])[

假设二元函数 $f$ 在闭矩形 $D = [ a , b ] times [ c , d ]$，且对固定的 $x$，一元函数 $f ( x , dot.op )$ 在 $[ c , d ]$ 上可积。若记 $ F ( x ) = integral_c^d f ( x , y ) upright(d) y $ 则 $F ( x )$ 在 $[ a , b ]$ 上可积且 $ integral.double_D f upright(d) x upright(d) y = integral_a^b F ( x ) upright(d) x = integral_a^b upright(d) x integral_c^d f upright(d) x upright(d) y $

]
一般的，我们对高维长方体和任意形状的 $D$，都可以转化 $n$ 重积分为逐次积分求解。

=== 曲面面积
<0008-曲面面积>
假设曲面为 $ Sigma : bold(r) ( u , v ) = ( x ( u , v ) , y ( u , v ) , z ( u , v ) ) $ 这里 $D$ 是具有光滑或分段光滑边界 $partial D$ 的有界闭区域，$bold(r) : D arrow.r Sigma$ 是单的，且 Jacobi 矩阵是满秩的。

仿照几何直观性，对任意 $( u_0 , v_0 ) in D$ 且取充分小的 $Delta u , Delta v$，考虑四个点 $ P_1 & = bold(r) ( u_0 , v_0 ) = bold(r)_0\
P_2 & = bold(r) ( u_0 + Delta u , v_0 ) approx bold(r)_0 + bold(r)_u ( u_0 , v_0 ) Delta u\
P_3 & = bold(r) ( u_0 , v_0 + Delta v ) approx bold(r)_0 + bold(r)_v ( u_0 , v_0 ) Delta v\
P_4 & = bold(r) ( u_0 + Delta u , v_0 + Delta v )\
 $ 则这四个点围城的面积 $ Delta S approx norm(accent(P_1 P_2, ⃗) times accent(P_2 P_4, ⃗)) = norm(bold(r)_u times bold(r)_v) ( u_0 , v_0 ) Delta u Delta v $ 故 $ upright(d) S = norm(bold(r)_u times bold(r)_v) upright(d) u upright(d) v $ 因此光滑曲线的面积为 $ integral.double_D upright(d) S = integral.double_D norm(bold(r)_u times bold(r)_v) upright(d) u upright(d) v $

在以上条件下 $ S = integral.double_D sqrt(E G - F^2) upright(d) u upright(d) v $ 其中 $ E & = bold(r)_u dot.op bold(r)_u = x_u^2 + y_u^2 + z_u^2\
F & = bold(r)_u dot.op bold(r)_v = x_u x_v + y_u y_v + z_u z_v\
G & = bold(r)_v dot.op bold(r)_v = x_v^2 + y_v^2 + z_v^2 $ 称为曲面的 Gauss 系数。

如果曲面的方程为 $z = f ( x , y )$，不难带入得到 $ E = 1 + f_x^2 , quad F = f_x f_y , quad G = 1 + f_y^2 $ 故 $ S = integral.double_D sqrt(1 + f_x^2 + f_y^2) upright(d) x upright(d) y = integral.double_D sqrt(1 + norm(nabla ( f ))^2) upright(d) x upright(d) y $

== 曲线和曲面积分
<0008-曲线和曲面积分>
=== 第一型曲线积分
<0008-第一型曲线积分>
设 $L subset R^3$ 是一条可求长的连续曲线，起点终点分别为 $A$ 和 $B$。$L$ 的分割 $norm(T)$ 是指 $L$ 上的有序有限点列 $ A = P_0 arrow.r P_1 arrow.r dots.h.c P_n = B $ 令 $ Delta_s = abs(accent(P_(i - 1) P_i, ̂)) , quad norm(T) = max_(i = 1)^n Delta s_i $

#statement("definition")[

给定的 $f$ 是定义在 $L$ 上的有界函数。任取 $(xi_i, eta_i, zeta_i) in accent(P_(i - 1) P_i, ̂)$ 并考虑有限和 $ S(f, bold(T), (bold(xi), bold(eta), bold(zeta))) = sum_(i = 1)^n f(xi_i, eta_i, zeta_i) Delta s_i $ 如果 $norm(bold(T)) arrow.r 0$ 时，$S(f, bold(T), (bold(xi), bold(eta), bold(zeta)))$ 存在极限且和分割 $bold(T)$ 及点 $(xi_i, eta_i, zeta_i)$ 无关，称该极限 $ integral_L f upright(d) s = integral_L f(x, y, z) upright(d) s = lim_(norm(T) arrow.r 0) sum_(i = 1)^n f(xi_i, eta_i, zeta_i) Delta s_i $ 为函数 $f$ 在曲线 $L$ 上的第一型曲线积分。此时称 $f$ 为被积函数而 $L$ 称为积分路径。

]
假如 $L$ 以参数的形式给出 $ bold(r) ( t ) = ( x ( t ) , y ( t ) ) $ 且函数 $f$ 在 $L$ 上连续，则 $f$ 在 $L$ 上的第一型曲线积分存在且 $ integral_L f upright(d) s = integral_alpha^beta f ( x ( t ) , y ( t ) ) sqrt(x' ( t )^2 + y' ( t )^2) upright(d) t = integral_alpha^beta f ( bold(r) ( t ) ) norm(bold(r)' ( t )) upright(d) t $ 如果 $L$ 以 $bold(r) ( x ) = ( x , y ( x ) )$ 的形式给出则 $ integral_L f upright(d) s = integral_a^b f ( x , y ( x ) ) sqrt(1 + (y')^2) upright(d) x $ 如果曲线 $L$ 以极坐标 $r = r ( theta )$ 给出，则 $ integral_L f upright(d) s = integral_a^b f ( r ( theta ) cos theta , r ( theta ) sin theta ) sqrt(( r ( theta ) )^2 + ( r' ( theta ) )^2) upright(d) theta $

=== 第一型曲面积分
<0008-第一型曲面积分>
假设 $Sigma$ 是可求面积的连续曲面，分割 $bold(T)$ 是用坐标曲线网将 $Sigma$ 分成的 $n$ 个小曲面。令 $ Delta S_i = abs(Sigma_i) , quad norm(bold(T)) = max_(i = 1)^n Delta S_i $

#statement("definition")[

给定的 $f$ 是定义在 $Sigma$ 上的有界函数。任取 $( xi_i , eta_i , zeta_i ) in Sigma_i$ 并考虑有限和 $ S ( f , bold(T) , ( bold(xi) , bold(eta) , bold(zeta) ) ) = sum_(i = 1)^n f ( xi_i , eta_i , zeta_i ) Delta S_i $ 如果 $norm(bold(T)) arrow.r 0$ 时，$S ( f , bold(T) , ( bold(xi) , bold(eta) , bold(zeta) ) )$ 存在极限且和分割 $bold(T)$ 及点 $( xi_i , eta_i , zeta_i )$ 无关，称该极限 $ integral.double_Sigma f upright(d) S = integral.double_Sigma f ( x , y , z ) upright(d) S = lim_(norm(T) arrow.r 0) sum_(i = 1)^n f ( xi_i , eta_i , zeta_i ) Delta S_i $ 为函数 $f$ 在曲线 $Sigma$ 上的第一型曲面积分。此时称 $f$ 为被积函数而 $Sigma$ 称为积分曲面。

]
=== 第二型曲线积分
<0008-第二型曲线积分>
假设 $L subset bb(R)^3$ 上定向的可求长的连续曲线，给定起点 $A$ 和终点 $B$。在每点上取单位切向量 $bold(tau) = ( cos alpha , cos beta , cos gamma )$，使得其与 $L$ 的定向一致。

#statement("definition")[

设 $bold(F) = ( P , Q , R )$ 是一向量值函数，定义其沿着曲线 $L$ 的第二型曲线积分为 $ integral_L bold(F) dot.op bold(tau) upright(d) s = integral_L ( P ( x , y , z ) cos alpha + Q ( x , y , z ) cos beta + R ( x , y , z ) cos gamma ) upright(d) s $ 其中 $upright(d) s$ 是 $L$ 的弧微元。定义弧微元向量 $ upright(d) bold(s) = bold(tau) upright(d) s = ( upright(d) x , upright(d) y , upright(d) z ) $ 从而可以记成 $ integral_L bold(F) dot.op upright(d) bold(s) = integral_L P upright(d) x + Q upright(d) y + R upright(d) z $

]
其物理意义是力 $bold(F)$ 沿着曲线 $L$ 所做的功。

考虑向量形式 $ bold(r) ( t ) = ( x ( t ) , y ( t ) , z ( t ) ) $ 其切向量为 $ bold(tau) = frac(bold(r)' ( t ), norm(bold(r)' ( t ))) $ 则 $ integral_L P upright(d) x + Q upright(d) y + R upright(d) z = integral_a^b bold(F) ( bold(r) ( t ) ) dot.op bold(r)' ( t ) upright(d) t $

=== 第二型曲面积分
<0008-第二型曲面积分>
对于光滑曲面上任意一点 $P$，可以做两条方向相反的法线，假如对其上经过 $P$ 的闭合曲线，法线是连续变化且回到原位的，是定向曲面。比如 Mobius 带就不行。

设定向曲面由参数方程给出 $ bold(r) ( u , v ) = ( x ( u , v ) , y ( u , v ) , z ( u , v ) ) $ 那么曲面的法向量可以表示为 $ plus.minus bold(r)_u times bold(r)_v = plus.minus (frac(partial ( y , z ), partial ( u , v )) , frac(partial ( z , x ), partial ( u , v )) , frac(partial ( x , y ), partial ( u , v ))) $ 那么可以得到法向量 $ bold(n) = plus.minus frac(bold(r)_u times bold(r)_v, norm(bold(r)_u times bold(r)_v)) $ 特别的，若 $z = z ( x , y )$，则 $ bold(n) = plus.minus 1 / sqrt(1 + z_x^2 + z_y^2) ( - z_x , z_y , 1 ) $

#statement("definition")[

对于曲面 $Sigma$ 和 $bold(n) = ( cos alpha , cos beta , cos gamma )$，$bold(F) = ( P , Q , R )$ 是其上的向量值函数 $ integral.double_Sigma bold(F) dot.op bold(n) upright(d) S = integral.double_Sigma ( P cos alpha + Q cos beta + R cos gamma ) upright(d) S $ 定义面积微元向量 $ upright(d) bold(S) = bold(n) upright(d) S = ( upright(d) y upright(d) z , upright(d) z upright(d) x , upright(d) x upright(d) y ) $ 从而可以记成 $ integral.double_Sigma bold(F) dot.op upright(d) bold(S) = integral.double_Sigma P upright(d) y upright(d) z + Q upright(d) z upright(d) x + R upright(d) x upright(d) y $

]
=== Green 公式
<0008-green-公式>
考虑定向闭区间 $[ a , b ]$ 的边界 $partial [ a , b ] = { a , b }$，我们可以定义其上的积分 $ integral_(partial [ a , b ]) f ( x ) = f ( b ) - f ( a ) $ 从而可以把一元函数 Newton - Leibniz 公式写为 $ integral_([ a , b ]) upright(d) f ( x ) = integral_([ a , b ]) f' ( x ) upright(d) x = integral_(partial [ a , b ]) f ( x ) $ Green 公式就是考虑 Newton - Leibniz 公式的高维推广，由边界得出积分值。

曲线 $L subset bb(R)^2$，其曲线方程为 $bold(r) ( t ) = ( x ( t ) , y ( t ) )$ 其中 $t in [ alpha , beta ]$。如果 $bold(r) ( alpha ) = bold(r) ( beta )$ 且 $bold(r) ( t_1 ) eq.not bold(r) ( t_2 )$ 对任何 $t_1 eq.not t_2$ 都成立，则称曲线为 Jordan 曲线。

给定区域 $D subset bb(R)^2$，它的边界 $partial Omega$ 是平面曲线从而有两个方向。定义 $partial D$ 的正向（诱导定向）如下：沿着 $partial D$ 走一圈 $D$ 总是在左边。即右手定则。

#statement("theorem", title: [Green 公式])[

假设 $D subset bb(R)^2$ 是由有限条光滑或分段光滑的 Jordan 曲线所围成的区域，并取 $partial D$ 的正向。对任何有一阶连续偏导数的 $P , Q$ 有 $ integral_(partial D) P upright(d) x + Q upright(d) y = integral.double_D (frac(partial Q, partial x) - frac(partial P, partial y)) upright(d) x upright(d) y = integral.double_D mat(delim: "|", frac(partial, partial x), frac(partial, partial y); P, Q) upright(d) x upright(d) y $

]
#statement("proof")[

假设区域是简单的可以按 $x , y$ 轴切片的，考虑区域 $ D_1 = { ( x , y ) mid(|) phi_1 ( y ) lt.eq x lt.eq psi_1 ( y ) , c lt.eq y lt.eq d } $ 计算得到 $ integral_(partial D) Q upright(d) y & = integral_c^d Q ( psi_1 ( y ) , y ) upright(d) y - integral_c^d Q ( phi_1 ( y ) , y ) upright(d) y\
 & = integral_c^d upright(d) y integral_(phi_1 ( y ))^(psi_1 ( y )) frac(partial Q, partial x) upright(d) x\
 & = integral.double_D frac(partial Q, partial x) upright(d) x upright(d) y $ 同理，我们对另一侧划分 $ D_2 = { ( x , y ) mid(|) phi_2 ( x ) lt.eq y lt.eq psi_2 ( x ) , a lt.eq x lt.eq b } $ 可以得到 $ integral_(partial D) P upright(d) x = - integral.double_D frac(partial P, partial y) upright(d) x upright(d) y $ 对于一般的区域，我们可以分割成多个可以切片的区域，综合即证。

]
假如重积分区域存在奇点呢？我们可以绕一圈。

#include "../figures/green-figure.typ"

#statement("theorem", title: [Green 定理])[

假设 $D subset bb(R)^2$ 是区域且 $P , Q$ 在 $D$ 上连续，则下列命题等价：

- 对 $D$ 内任意分段光滑曲线 $L$，曲线积分 $ integral_L P upright(d) x + Q upright(d) y $ 与路径 $L$ 无关，只与 $L$ 的起点和终点有关。

- 如果存在 $U$ 使得 $upright(d) U = P upright(d) x + Q upright(d) y$，即称 $P upright(d) x + Q upright(d) y$ 在 $D$ 上是正合的，称 $U$ 是其原函数。

- 沿着 $D$ 内任意分段光滑闭曲线 $L$，有 $ integral.cont_L P upright(d) x + Q upright(d) y = 0 $

]
如果进一步假设 $P , Q$ 在 $D$ 上一阶导数连续，则在 $D$ 内处处成立 $ frac(partial Q, partial x) = frac(partial P, partial y) $ 且和上面三条等价。

=== Gauss 公式
<0008-gauss-公式>
#statement("theorem", title: [Gauss 公式])[

设 $Omega subset bb(R)^3$ 是区域且边界 $partial Omega$ 是由分段光滑的定向曲面构成。设 $P , Q , R$ 是一阶导数连续的，则 $ integral.double_(partial Omega) P upright(d) y upright(d) z + Q upright(d) z upright(d) x + R upright(d) x upright(d) y = integral.triple_Omega (frac(partial P, partial x) + frac(partial Q, partial y) + frac(partial R, partial z)) upright(d) x upright(d) y upright(d) z $

]
#statement("proof")[

同理，假设对应区域是可以按照 $x , y , z$ 轴切片的。定义定向曲面 $ S_1 = { ( x , y , z ) mid(|) x = psi ( y , z ) }\
S_2 = { ( x , y , z ) mid(|) x = phi ( y , z ) } $ 考虑其中的一部分 $ integral.triple_Sigma frac(partial P, partial x) upright(d) x upright(d) y upright(d) z & = integral.double_D upright(d) y upright(d) z integral_(phi ( y , z ))^(psi ( y , z )) frac(partial P, partial x) upright(d) x\
 & = integral.double_D ( P ( psi , y , z ) - P ( phi , y , z ) ) upright(d) y upright(d) z\
 & = integral.double_(S_1) P upright(d) y upright(d) z + integral.double_(S_2) P upright(d) y upright(d) z\
 & = integral.double_(partial D) P upright(d) y upright(d) z $ 同理，对另外三个方向也可以累加。

]
=== Stokes 公式
<0008-stokes-公式>
#statement("theorem", title: [Stokes 公式])[

设 $Sigma$ 是光滑定向曲面且边界 $partial Sigma$ 为分段光滑闭曲线，取诱导定向。对其上具有一阶连续偏导数的函数 $P , Q , R$ 有 $ integral_(partial Sigma) P upright(d) x + Q upright(d) y + R upright(d) z = integral.double_Sigma mat(delim: "|", upright(d) y upright(d) z, upright(d) z upright(d) x, upright(d) x upright(d) y; frac(partial, partial x), frac(partial, partial y), frac(partial, partial z); P, Q, R) $

]
=== 旋转体
<0008-旋转体>
假设平面曲线 $y = f ( x )$ 绕 $x$ 轴进行旋转，则旋转体体积为 $ V = pi integral_a^b f^2 ( x ) upright(d) x $ 假如曲线绕直线 $y = tan theta x$ 进行旋转，则高度应当是 $ d = abs(x cos theta - y sin theta) $ 小矩形的宽度为增量在直线上的投影 $ ( upright(d) x , upright(d) y ) dot.op ( cos theta , sin theta ) = cos theta upright(d) x + sin theta upright(d) y $ 故 $ V = pi integral_a^b abs(x cos theta - y sin theta)^2 ( cos theta upright(d) x + sin theta upright(d) y ) = pi integral_a^b frac(abs(y k - x)^2, ( k^2 + 1 )^(3 / 2)) ( y' k + 1 ) upright(d) x $

== 场论
<0008-场论>
如果对于区域 $D$ 每点 $x$ 都指定一个对象 $bold(T) ( x )$，称为张量，我们就把映射 $ bold(T) : x mapsto bold(T) ( x ) $ 称为 $D$ 上的张量场。考研仅考虑 $bold(T)$ 是向量的情形。

=== 向量场
<0008-向量场>
向量场 $bold(T)$ 是对每个时间 $t$ 都指定了一个向量值映射 $bold(T)_t$。假设 $Omega subset.eq bb(R)^3$。

- 数量场：函数 $f ( x , y , z , t )$。

- 向量场：向量映射 $bold(f) ( x , y , z , t )$。

- 若场不随时间变化则称稳定场，否则称为不稳定场。一般来说稳定场都可以表示为 $ F ( x , y , z ) = ( P ( x , y , z ) , Q ( x , y , z ) , R ( x , y , z ) ) $

- 给定 $Omega$ 上的稳定向量场 $bold(F)$，$Omega$ 中的光滑曲线 $Gamma$ 称为 $bold(F)$ 的向量线或流线，如果 $Gamma$ 上每点出的切线方向都和 $bold(F)$ 一致。显然流线方程为 $ frac(x' ( t ), P ( bold(r) ( t ) )) = frac(y' ( t ), Q ( bold(r) ( t ) )) = frac(z' ( t ), R ( bold(r) ( t ) )) $ 这里 $bold(r) ( t ) = ( x ( t ) , y ( t ) , z ( t ) )$ 是 $Gamma$ 的向量表达式。如果进一步要求 $bold(r)' ( t ) = bold(F) ( bold(r) ( t ) )$，则称 $Gamma$ 是 $bold(F)$ 的积分曲线。

我们可以定义数量场的等值面 $ f^(- 1) ( c ) = { ( x , y , z ) in bb(R)^3 mid(|) f ( x , y , z ) = c } $ 若 $f$ 在 $Omega$ 上连续，可以定义其梯度 $ bold("grad") ( f ) = ( f_x , f_y , f_z ) $ 这个向量场称为 $f$ 的梯度场。函数沿着方向 $ bold(v) = ( cos ( bold(v) , x ) , cos ( bold(v) , y ) , cos ( bold(v) , z ) ) $ 的方向导数可以表示为 $ frac(partial f, partial bold(v)) = bold("grad") ( f ) dot.op bold(v) = norm(bold("grad") ( f )) cos theta $ 因此等值面上的法向量为 $ bold(n) = frac(1, norm(bold("grad") ( f ))) ( f_x , f_y , f_z ) $ 此时 $ frac(partial f, partial bold(n)) = norm(bold("grad") ( f )) gt.eq 0 , quad bold("grad") ( f ) = frac(partial f, partial bold(n)) bold(n) $ 即函数 $f$ 在一点的梯度和其等值面在该点的单位法向量是平行的，且这个方向是导数取得最大值的方向。

=== 向量场的散度
<0008-向量场的散度>
假设 $bold(F) = ( P , Q , R )$ 在 $Omega$ 上连续，且 $Sigma$ 是 $Omega$ 中的光滑定向曲面，则曲面积分 $ Phi ( bold(F) , Sigma ) = integral.double_Sigma bold(F) dot.op bold(n) upright(d) S $ 称为向量场 $bold(F)$ 沿着曲线 $Sigma$ 的通量。当 $bold(F)$ 导数连续时，称 $ bold("div") ( F ) = P_x + Q_y + R_z $ 为 $bold(F)$ 的散度。如果散度为 $0$ 则称 $bold(F)$ 是无源场.

用 Gauss 公式可以写成 $ integral.double_(partial Omega) bold(F) dot.op upright(d) bold(S) = integral.triple_Omega bold("div") ( bold(F) ) upright(d) V $

散度有性质 $ bold("div") ( lambda bold(F) + mu bold(G) ) = lambda bold("div") ( bold(F) ) + mu bold("div") ( bold(G) ) $ 和 $ bold("div") ( f bold(F) ) = f bold("div") ( bold(F) ) + bold("grad") ( f ) dot.op bold(F) $

=== 旋度
<0008-旋度>
假设 $bold(F) = ( P , Q , R )$ 在 $Omega$ 上连续，且 $Gamma$ 是 $Omega$ 中的光滑定向曲线，则曲线积分 $ integral_Gamma bold(F) dot.op bold(tau) upright(d) s = integral_Gamma bold(F) dot.op upright(d) bold(s) $ 为向量场 $bold(F)$ 沿着曲线 $Gamma$ 的环量。当 $bold(F)$ 在 $Omega$ 上可导时，称 $ bold("rot") ( bold(F) ) = mat(delim: "|", bold(i), bold(j), bold(k); frac(partial, partial x), frac(partial, partial y), frac(partial, partial z); P, Q, R) = ( R_y - Q_z , P_z - R_x , Q_x - P_y ) $ 为 $bold(F)$ 的旋度。如果旋度为 $0$ 则称 $bold(F)$ 为无旋场。此时 Stokes 公式可以写为 $ integral.double_Sigma bold("rot") ( bold(F) ) dot.op upright(d) bold(S) = integral_(partial Sigma) bold(F) dot.op upright(d) bold(s) $

旋度有性质 $ bold("rot") ( lambda bold(F) + mu bold(G) ) = lambda bold("rot") ( bold(F) ) + mu bold("rot") ( bold(G) ) $ 和 $ bold("rot") ( f bold(F) ) = f bold("rot") ( bold(F) ) + bold("grad") ( f ) times bold(F) $ 且 $ bold("rot") ( bold("grad") ( f ) ) = bold(0) $
