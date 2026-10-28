#import "../../template/environments.typ": statement

= 二次型 · 矩阵的合同
<ga-6-二次型-矩阵的合同>
== 二次型及其标准型
<ga-6-二次型及其标准型>
#statement("definition", title: [二次型])[
数域 $K$ 上的一个 $n$ 元二次型是系数在 $K$ 中的 $n$ 个变量的齐次多项式，它的一般形式是 $ f ( x_1 , dots.h.c , x_n ) = sum_(i = 1)^n sum_(j = 1)^n a_(i j) x_i x_j $ 其中 $a_(i j) = a_(j i)$。

]
把二次型的系数按原来顺序排成一个 $n$ 级矩阵 $A$，则称 $A$ 是二次型 $f ( x_1 , dots.h.c , x_n )$ 的矩阵，它是对称矩阵。

再令 $bold(X) = ( x_1 , dots.h.c , x_n )^(sans(T))$，则二次型可以写作 $ f ( x_1 , dots.h.c , x_n ) = bold(X)^(sans(T)) A bold(X) $

令 $bold(Y) = ( y_1 , dots.h.c , y_n )^(sans(T))$，设 $C$ 是数域 $K$ 上的 $n$ 级可逆矩阵，则关系式 $ bold(X) = C bold(Y) $ 称为变量 $x_1 , dots.h.c , x_n$ 到变量 $y_1 , dots.h.c , y_n$ 的一个非退化线性替换。如果 $C$ 是正交矩阵，那么变量的替换 $bold(X) = C bold(Y)$ 称为正交替换。

#statement("definition", title: [])[
数域上两个 $n$ 元二次型 $bold(X)^(sans(T)) A bold(X)$ 与 $bold(Y)^(sans(T)) A bold(Y)$，如果存在一个非退化线性替换 $bold(X) = C bold(Y)$，把 $bold(X)^(sans(T)) A bold(X)$ 变成 $bold(Y)^(sans(T)) B bold(Y)$ 那么称二次型 $bold(X)^(sans(T)) A bold(X)$ 与 $bold(Y)^(sans(T)) B bold(Y)$ 等价，记作 $bold(X)^(sans(T)) A bold(X) tilde.equiv bold(Y)^(sans(T)) B bold(Y)$。

]
#statement("definition", title: [])[
数域 $K$ 上两个 $n$ 级矩阵 $A$ 与 $B$，如果存在 $K$ 上的一个 $n$ 级可逆矩阵 $C$，使得 $ C^(sans(T)) A C = B $ 那么称 $A$ 与 $B$ 合同，记作 $A tilde.eq B$。

]
带入 $bold(X)^(sans(T)) A bold(X)$ 可以发现 $ bold(X)^(sans(T)) A bold(X) = ( C bold(Y) )^(sans(T)) A ( C bold(Y) ) = bold(Y)^(sans(T)) ( C^(sans(T)) A C ) bold(Y) $ 即二次型 $bold(X)^(sans(T)) A bold(X)$ 和 $bold(Y)^(sans(T)) A bold(Y)$ 等价当且仅当 $A , B$ 合同。

如果二次型 $bold(X)^(sans(T)) A bold(X)$ 等价于一个只含平方项的二次型，那么这个只含平方项的二次型称为 $bold(X)^(sans(T)) A bold(X)$ 的一个标准形。如果 $A$ 合同于一个对角矩阵，则这个对角矩阵称为 $A$ 的一个合同标准型。

对于 $n$ 级实对称矩阵 $A$，存在 $n$ 级的正交矩阵 $T$ 使得 $ T^(- 1) A T = "diag" { lambda_1 , dots.h.c , lambda_n } $ 其中 $lambda_1 , dots.h.c , lambda_n$ 是 $A$ 的全部特征值，因此 $A$ 合同于 $T^(- 1) A T$。从而在 $bold(X) = T bold(Y)$ 的替换下，得到一个标准型 $ lambda_1 y_1^2 + lambda_2 y_2^2 + dots.h.c + lambda_n y_n^2 $

#statement("theorem", title: [])[
数域 $K$ 上的任一对称矩阵都合同于一个对角矩阵。

]
这意味着数域 $K$ 上任一 $n$ 元二次型都等价于一个只含平方项的二次型。有一个新方法来求得基本型：对于 $bold(X)^(sans(T)) A bold(X)$，对 $A$ 做初等行列变换，仅对 $E$ 做其中的初等列变换 $ vec(A, E) arrow.r vec(D, C) $ 得到对角矩阵 $D = "diag" d_1 , dots.h.c , d_n$，则 $ C^(sans(T)) A C = D $ 令 $bold(X) = C bold(Y)$，则得到 $bold(X)^(sans(T)) A bold(X)$ 的一个标准型。

二次型 $bold(X)^(sans(T)) A bold(X)$ 的矩阵 $A$ 的秩就称为二次型 $bold(X)^(sans(T)) A bold(X)$ 的秩。

#statement("example", title: [])[
用正交替换把下述实二次型化为标准型 $ f ( x , y , z ) = x^2 + 2 y^2 + 3 z^3 - 4 x y - 4 y z $

]
#statement("solution", title: [])[
首先得到矩阵 $ A = mat(delim: "(", 1, - 2, 0; - 2, 2, - 2; 0, - 2, 3) $ 计算其特征值 $ det(lambda E - A) = ( lambda - 2 ) ( lambda - 5 ) ( lambda + 1 ) $ 即 $A$ 的全部特征值为 $lambda = 2 , 5 , - 1$，对应的基础解系单位化得到 $ bold(eta)_1 = (- 2 / 3 , 1 / 3 , 2 / 3)^(sans(T)) , bold(eta)_2 = (1 / 3 , - 2 / 3 , 2 / 3)^(sans(T)) , bold(eta)_3 = (2 / 3 , 2 / 3 , 1 / 3)^(sans(T)) $ 令 $ T = mat(delim: "(", - 2 / 3, 1 / 3, 2 / 3; 1 / 3, - 2 / 3, 2 / 3; 2 / 3, 2 / 3, 1 / 3) $ 此处 $T$ 即是正交矩阵，且 $T^(- 1) A T = "diag" { 2 , 5 , - 1 }$。令 $ (x , y , z)^(sans(T)) = T (a , b , c)^(sans(T)) $ 则 $ f ( x , y , z ) = 2 a^2 + 5 y^2 - z^2 $

]
== 实二次型的规范形
<ga-6-实二次型的规范形>
实数域上的二次型简称为实二次型，$n$ 元实二次型 $bold(X)^(sans(T)) A bold(X)$ 经过一个适当的非退化线性替换 $bold(X) = C bold(Y)$ 可以化成下述形式的标准形 $ d_1 y_1^2 + dots.h.c + d_p y_p^2 - d_(p + 1) y_(p + 1)^2 - dots.h.c - d_r y_r^2 $ 其中 $d_i > 0 , i = 1 , dots.h.c , r$。再做一次非退化线性替换可以变成 $ z_1^2 + dots.h.c + z_p^2 - z_(p + 1)^2 - dots.h.c - z_r^2 $

#statement("theorem", title: [])[
$n$ 元实二次型 $bold(X)^(sans(T)) A bold(X)$ 的规范形是唯一的。

]
#statement("definition", title: [])[
在实二次型 $bold(X)^(sans(T)) A bold(X)$ 的规范形中，系数为 $+ 1$ 的平方项个数 $p$ 称为 $bold(X)^(sans(T)) A bold(X)$ 的正惯性指数，系数为 $- 1$ 的平方项个数 $r - p$ 称为 $bold(X)^(sans(T)) A bold(X)$ 的负惯性指数；正惯性指数减去负惯性指数所得的差 $2 p - r$ 称为 $bold(X)^(sans(T)) A bold(X)$ 的符号差。

]
任一 $n$ 级实对称矩阵合同于对角矩阵 $"diag" { 1 , dots.h.c , 1 , - 1 , dots.h.c , - 1 , 0 , dots.h.c , 0 }$，其中 $0$ 的个数等于 $bold(X)^(sans(T)) A bold(X)$ 的正惯性指数，$- 1$ 的个数等于 $bold(X)^(sans(T)) A bold(X)$ 的负惯性指数（也分别称作 $A$ 的惯性指数），这个对角举着称为 $A$ 的合同规范形。

现讨论复数域上的二次型，简称为复二次型。设 $n$ 元复二次型 $bold(X)^(sans(T)) A bold(X)$ 经过一个适当的非退化线性替换 $bold(X) = C bold(Y)$ 变成下述形式的标准形 $ d_1 y_1^2 + dots.h.c + d_r y_r^2 $ 其中 $d_i eq.not 0 , i = 1 , dots.h.c , n$，$r$ 是这个二次型的秩。再做一个非退化线性替换可得 $ z_1^2 + dots.h.c + z_r^2 $ 把这个标准形叫做复二次型 $bold(X)^(sans(T)) A bold(X)$ 的规范形，显然其完全由其秩决定，故只有一种形式。

== 正定二次型与正定矩阵
<ga-6-正定二次型与正定矩阵>
#statement("definition", title: [])[
$n$ 元实二次型 $bold(X)^(sans(T)) A bold(X)$ 称为正定的，如果对于 $bb(R)^n$ 中任一非零列向量 $alpha$，都由 $alpha^(sans(T)) A alpha > 0$。

]
#statement("theorem", title: [])[
$n$ 元实二次型 $bold(X)^(sans(T)) A bold(X)$ 是正定的当且仅当它的正惯性系数等于 $n$。

]
#statement("definition", title: [])[
实对称矩阵 $A$ 称为正定的，如果实二次型 $bold(X)^(sans(T)) A bold(X)$ 是正定的 。

]
正定的实对称矩阵简称为正定矩阵。

#statement("theorem", title: [])[
实对称矩阵 $A$ 是正定的充分必要条件是 $A$ 的说有顺序主子式全大于 $0$。

]
#statement("definition", title: [])[
实对称矩阵 $A$ 称为半正定（负定，半负定，不定）的，如果实二次型对于 $bb(R)^n$ 中任一非零列向量 $alpha$，都有 $ alpha^(sans(T)) A alpha gt.eq 0 quad ( alpha^(sans(T)) A alpha < 0 , alpha^(sans(T)) A alpha lt.eq 0 ) $ 如果 $bold(X)^(sans(T)) A bold(X)$ 既不是半正定的，又不是半负定的，那么称它是不定的。

]
#statement("definition", title: [])[
实对称矩阵 $A$ 称为半正定（负定，半负定，不定）的，如果实二次型 $bold(X)^(sans(T)) A bold(X)$ 是半正定（负定，半负定，不定）的。

]
#statement("theorem", title: [])[
$n$ 级实对称矩阵 $A$ 是半正定的，当且仅当 $A$ 的所有主子式全非负。

]
#statement("theorem", title: [])[
实对称矩阵 $A$ 负定的充分必要条件是：它的奇数阶顺序主子式全小于 $0$，偶数阶顺序主子式全大于 $0$。

]
#statement("theorem", title: [])[
设二元实值函数 $F ( x , y )$ 有一个稳定点 $alpha = ( x_0 , y_0 )$ （即 $F ( x , y )$ 在 $( x_0 , y_0 )$ 处的一阶偏导数全为 $0$）。设 $F ( x , y )$ 在 $( x_0 , y_0 )$ 的一个邻域内有 3 阶连续偏导数。令 $ H = mat(delim: "(", F''_(x x) ( x_0 , y_0 ), F''_(x y) ( x_0 , y_0 ); F''_(y x) ( x_0 , y_0 ), F''_(y y) ( x_0 , y_0 )) $ 称 $H$ 是 $F ( x , y )$ 在 $( x_0 , y_0 )$ 处的黑塞（Hesse）矩阵。如果 $H$ 是正定的，那么 $F ( x , y )$ 在 $( x_0 , y_0 )$ 处达到极小值。如果 $H$ 是负定的，那么 $F ( x , y )$ 在 $( x_0 , y_0 )$ 处达到极大值。

]
其可推广到 $n$ 元函数的情形：设 $F ( x_1 , dots.h.c , x_n )$ 有一个稳定点 $alpha = ( a_1 , dots.h.c , a_n )$，设 $F ( x_1 , dots.h.c , x_n )$ 在 $alpha$ 的一个邻域内有 3 阶连续偏导数，令 $ H = ( F''_(x_i x_j) ( alpha ) ) $ 称 $H$ 是 $F ( x_1 , dots.h.c , x_n )$ 在 $alpha$ 处的黑塞矩阵。如果 $H$ 是正定的，那么 $F$ 在 $( x_0 , y_0 )$ 处达到极小值。如果 $H$ 是负定的，那么 $F$ 在 $( x_0 , y_0 )$ 处达到极大值。
