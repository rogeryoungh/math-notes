#import "../../template/environments.typ": statement

= 初等数论

注意我们的理论基础是整数，尽量通过分类讨论的方式得到结论。而且也要把握脉络，抓住重点，不要迷失于无谓的细节中。

自然数 $NN$ 、正整数 $NN^+$ 和整数 $ZZ$ 我们是熟知的。

== 整除

=== 整数公理

整数的公理

我们熟知一些整数的代数算律

结合律：$(a+b)+c = (a+b)+c$。

交换律：$a+b = b+a$。

消去律：

#statement("definition")[
  对于整数 $a,b$，其中 $a != 0$，若存在整数 $c$，它使得
  $ b=a c $
  则 $b$ 叫做 $a$ 的倍数，$a$ 叫做 $b$ 的因数，记作 $a divides b$。
]

有时也称作 $a$ 能整除 $b$，或 $b$ 能被 $a$ 整除，或 $a$ 能除尽 $b$，或 $b$ 能被 $a$ 除尽。

若 $a$ 不能整除 $b$，我们就记作 $a divides.not b$。

#statement("lemma")[
  如果对于整数 $a,b$ 满足 $a divides b$，则有
  $ (-a) divides b, quad a divides (-b), quad (-a) divides (-b), quad abs(a) divides abs(b) $
]

这个比较显然，由定义知存在 $c$ 使得 $b=a c$，再构造验证即可。

#statement("lemma")[
  对于整数 $a,b,c$ 有 $a divides b,b divides c$，则有 $a divides c$。
]

#statement("proof")[
  因为 $a divides b,b divides c$，故存在整数 $d,e$ 使得 $b=a d,c=b e$。

  因此存在整数 $f=d e$ 使得 $c=a f=a d e$，故 $a divides c$。
]

#statement("lemma")[
  对于整数 $a,b$ 有 $abs(a) divides abs(b)$，若 $abs(a)<abs(b)$ 则有 $a=0$。
]

#statement("proof")[
  因为 $abs(a) divides abs(b)$，则存在整数 $c$ 使得 $abs(a)=abs(b) c$。那么有
  $ 0 <= abs(a)=abs(b) c<abs(b) $
  即 $0 <= c<1$，又 $c$ 为整数，故 $c=a=0$。
]

#statement("theorem")[
  对于整数 $a,b$，若 $b != 0$ 则一定存在唯一一对 $q,r$ 使得
  $ a=b q+r, quad 0 <= r< abs(b) $
]

#statement("proof")[
  先证明存在性。

  （1） 若恰 $b divides a$，则必存在 $c$ 使得 $a=b c$，此时有 $q=c,r=0$。

  （2） 否则一定存在 $n$ 使得 $n abs(b)<a<(n+1) abs(b)$，即存在 $0<r<abs(b)$ 使得 $a=abs(b) n+r$。

  当 $b>0$ 时，令 $q=n$；当 $b<0$ 时，令 $q=-n$ 则有
  $ a=b q+r, quad 0 <= r< abs(b) $

  再证明唯一性。设存在两对 $q_1,r_1$ 和 $q_2,r_2$ 使得
  $ a=b q_1+r_1=b q_2+r_2, quad 0 <= r_1,r_2< abs(b) $
  相减有
  $ a-a=b(q_1-q_2)+r_1-r_2=0 $
  即 $r_1-r_2=-b(q_1-q_2)$，因此有 $b divides (r_1-r_2)$。而 $abs(r_1-r_2)<abs(b)$，又引理知有 $abs(r_1-r_2)=0$。故
  $ r_1=r_2,q_1=r_2 $
  即两对相同。
]

#statement("definition", title: [素数])[
  设整数 $p != 0, plus.minus 1$，若它除了 $plus.minus 1, plus.minus p$ 外没有其他的因数，则称 $p$ 是素数；否则称 $p$ 是合数。
]

我们讲到素数时，一般指正的。把素数的集合记作 $bb(P)$。

#statement("theorem")[
  若 $a$ 是合数，则必存在素数 $p$ 使得 $p divides a$。
]

此时称该素数为 $a$ 的素因数。

#statement("theorem")[
  设整数 $a >= 2$，那么 $a$ 一定可以分解为素数的乘积，即
  $ a = p_1 p_2 dots.c p_s $
  其中 $p_j in bb(P)$。
]

OI 中，经常会求符合命题 $P(k)$ 的数 $k$ 有多少个，此时我们有记号 $[P(k)]$，当命题成立时其值为 $1$，命题为假时值为 $0$。

=== 公因数与公倍数

#statement("definition", title: [公因数])[
  设 $a_1,a_2$ 是两个整数，若 $d divides a_1$ 且 $d divides a_2$，则称 $d$ 是 $a_1,a_2$ 的公因数。一般的，若对于一组整数 $a_1,dots.c,a_k$，有 $d divides a_i$，则称 $d$ 是 $a_1,dots.c,a_k$ 的公因数。
]

把 $a_1,a_2$ 的正的公因数中最大的，称作最大公因数，记作 $(a_1,a_2)$ 或 $gcd(a_1,a_2)$。

由定义易知，若 $(a_1,a_2) = d$，则 $(a_1 slash d, a_2 slash d) = 1$。

#statement("definition", title: [互素])[
  若 $(a_1,a_2) = 1$，则称 $a_1,a_2$ 是互素的。
]

类似的，对于多个数也类似的有最大公因数和互素等概念。

#statement("definition", title: [公倍数])[
  设 $a_1,a_2$ 是两个整数，多 $a_1 divides l$ 且 $a_2 divides l$，则称 $l$ 是 $a_1,a_2$ 的公倍数。一般的，若对于一组整数 $a_1,dots.c,a_k$，有 $a_j divides l$，则称 $l$ 是 $a_1,dots.c,a_k$ 的公倍数。
]

把 $a_1,a_2$ 的正的公倍数中最小的，称作最小公因数，记作 $[a_1,a_2]$ 或 $op("lcm")(a_1,a_2)$。

由定义易知，对于 $m > 0$ 有 $[m a_1,m a_2] = m[a_1,a_2]$。

=== 带余除法

#statement("theorem")[
  设整数 $a,b$ 且 $a != 0$，则一定存在唯一的一对整数 $q,r$ 使得
  $ b = q a + r, 0 <= r < abs(a) $
]

更一般的，对于任意的 $d$ 总存在一对 $q,r$ 使得
$ b = q a + r, d <= r < abs(a) + d $

当 $d = 0$ 时，称 $r$ 为最小非负余数，$d = 1$ 时称 $r$ 为最小正余数。计算机一般是 $d = 0$。

#statement("lemma")[
  设 $a > 0$，则任意整数被 $a$ 除后所得的最小非负余数只可能是 $0,dots.c,a-1$ 中的一个。
]

于是我们可以按余数对整数进行分类。
