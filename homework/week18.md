# 作业 18

> **定义 15.1.1**<br>在复平面 $\mathbb{C}$ 上处处全纯的函数称为整函数; 除极点外处处全纯的函数称为亚纯函数.

> **定理 15.2.7** (幅角原理)<br>若 $f$ 在区域 $D$ 上亚纯, 零点 $a_{j}$ 的阶为 $r_{j}$, 极点 $p_{k}$ 的阶为 $s_{k}$, $\Gamma$ 是 $D$ 内的若当闭曲线且避开这些点, 则 $$\frac{1}{2\pi i}\int_{\Gamma}\frac{f'}{f}\,dz=\sum r_{j}-\sum s_{k}.$$

> **留数之和公式**<br>全平面上的亚纯函数沿"绕尽所有奇点"的大围道积分为零, 即全体留数之和为零.

### 习题一

(习题 15.4-5) 证明: $\frac{1}{\sin^{2}z}=\sum_{n=-\infty}^{+\infty}\frac{1}{(z-n\pi)^{2}}$.

### 解答 习题一

$\frac{1}{\sin^{2}z}$ 以 $z=n\pi$ 为二阶极点, 且 $\frac{1}{\sin^{2}z}$ 在 $z=n\pi$ 附近的主部恰为 $\frac{1}{(z-n\pi)^{2}}$ (因 $\sin z\sim(-1)^{n}(z-n\pi)$, $\sin^{2}z\sim(z-n\pi)^{2}$). 记

$$
F(z):=\frac{1}{\sin^{2}z}-\sum_{n=-\infty}^{+\infty}\frac{1}{(z-n\pi)^{2}}.
$$

级数在 $\mathbb{C}$ 的紧集上局部一致收敛 (除极点的去心邻域), 且与 $\frac{1}{\sin^{2}z}$ 在各 $n\pi$ 处的主部相同, 故 $F$ 在 $\mathbb{C}$ 上全纯 (每个极点都被抵消), 是整函数. 又 $\sin^{2}(z+\pi)=\sin^{2}z$ 且 $\sum_{n}\frac{1}{(z+\pi-n\pi)^{2}}=\sum_{n}\frac{1}{(z-n\pi)^{2}}$, 故 $F(z+\pi)=F(z)$, $F$ 以 $\pi$ 为周期. 在基本带 $|\operatorname{Re}z|\le\frac\pi2$ 上, 当 $|\operatorname{Im}z|\to+\infty$ 时 $\frac{1}{\sin^{2}z}\to0$ 且级数 $\to0$, 故 $F$ 在带内有界, 由周期性 $F$ 在 $\mathbb{C}$ 有界. 由刘维尔定理 $F$ 为常数; 又 $F\to0$ 于 $\operatorname{Im}z\to+\infty$, 故 $F\equiv0$, 即所证. $\blacksquare$

### 习题二

(习题 15.4-8) 令 $P$ 和 $Q$ 为多项式且 $\deg Q\ge\deg P+2$, $g=\frac{P}{Q}$ 和 $f(z)=g(z)\cot\pi z$. 令 $Z(Q)$ 为 $Q$ 的零点所组成的集合. (i) 证明: 存在 $M>0$ 和 $R>0$ 使得 $|g(z)|\le\frac{M}{|z|^{2}}$, $\forall z\notin\{|z|\le R\}$; (ii) 令 $N\in\mathbb{N}$ 且 $N>R$, 取四条边分别落在直线 $\operatorname{Re}z=\pm(N+\frac12)$ 和 $\operatorname{Im}z=\pm N$ 上的长方形 $C_{N}$, 证明: $\lim_{N\to\infty}\int_{C_{N}}f(z)\,dz=0$; (iii) 证明: 任意 $n\in\mathbb{Z}\setminus Z(Q)$, $\operatorname{Res}_{z=n}f=\frac{g(n)}{\pi}$; (iv) 证明: $\sum_{n=-\infty}^{+\infty}\operatorname{Res}_{z=n}f=-\sum_{a\in Z(Q)\setminus\mathbb{Z}}\operatorname{Res}_{z=a}f$; (v) 取 $g(z)=\frac{1}{z^{2}+c^{2}}$, $c>0$, 计算 $\sum_{n=1}^{+\infty}\frac{1}{n^{2}+c^{2}}$.

### 解答 习题二

(i) $\deg Q\ge\deg P+2$, 故 $g(z)=\frac{P(z)}{Q(z)}$ 在 $|z|\to+\infty$ 时满足 $|g(z)|\le\frac{C}{|z|^{2}}$, 即存在 $M,R>0$ 使 $|g(z)|\le\frac{M}{|z|^{2}}$, $\forall |z|>R$.

(ii) 在 $C_{N}$ 上 $|z|\ge N$, 故 $|g(z)|\le\frac{M}{N^{2}}$. 在 $\operatorname{Im}z=\pm N$ 和 $\operatorname{Re}z=\pm(N+\frac12)$ 上, 极点 $z=n$ (整数) 被避开, 且 $\cot\pi z$ 在这些边上一致有界 (当 $|\operatorname{Im}z|\ge N$, 或 $\operatorname{Re}z$ 为半整数时 $\cot\pi z$ 有界), 记 $|\cot\pi z|\le K$. 于是 $|f|\le\frac{MK}{N^{2}}$, 而 $C_{N}$ 的周长 $\le C'N$, 故

$$
\left|\int_{C_{N}}f(z)\,dz\right|\le\frac{MK}{N^{2}}\cdot C'N=\frac{C''}{N}\to0.
$$

(iii) $n\in\mathbb{Z}\setminus Z(Q)$, 则 $g$ 在 $n$ 处全纯且 $g(n)\ne0$; $\cot\pi z$ 在 $z=n$ 处有简单极点, $\cot\pi z\sim\frac{1}{\pi(z-n)}$, $\operatorname{Res}_{z=n}\cot\pi z=\frac1\pi$. 故 $\operatorname{Res}_{z=n}f=g(n)\operatorname{Res}_{z=n}\cot\pi z=\frac{g(n)}{\pi}$.

(iv) 由留数定理于 $C_{N}$ (当 $N$ 充分大, $C_{N}$ 内含全部整数 $|n|\le N$ 与 $Z(Q)$ 在其中的极点):

$$
\int_{C_{N}}f\,dz=2\pi i\left[\sum_{|n|\le N}\operatorname{Res}_{z=n}f+\sum_{a\in Z(Q),\,a\text{ 在 }C_{N}\text{ 内}}\operatorname{Res}_{z=a}f\right].
$$

由 (ii) 取 $N\to\infty$ 得 $\sum_{n=-\infty}^{+\infty}\operatorname{Res}_{z=n}f+\sum_{a\in Z(Q)}\operatorname{Res}_{z=a}f=0$. 若 $Z(Q)\cap\mathbb{Z}=\emptyset$ (如 (v) 的情形), 则 $\sum_{a\in Z(Q)}\operatorname{Res}_{z=a}f=\sum_{a\in Z(Q)\setminus\mathbb{Z}}\operatorname{Res}_{z=a}f$, 即得所证.

(v) $g(z)=\frac{1}{z^{2}+c^{2}}$, $Z(Q)=\{ic,-ic\}$ 非整数. 由 (iii), $\operatorname{Res}_{z=n}f=\frac{1}{\pi(n^{2}+c^{2})}$; 由 (iv),

$$
\sum_{n=-\infty}^{+\infty}\frac{1}{\pi(n^{2}+c^{2})}=-\left(\operatorname{Res}_{z=ic}f+\operatorname{Res}_{z=-ic}f\right).
$$

$\operatorname{Res}_{z=ic}g=\frac{1}{2ic}$, $\operatorname{Res}_{z=-ic}g=-\frac{1}{2ic}$; $\cot(i\pi c)=-i\coth(\pi c)$, $\cot(-i\pi c)=i\coth(\pi c)$. 故

$$
\operatorname{Res}_{z=ic}f=\frac{1}{2ic}\cdot(-i\coth(\pi c))=-\frac{\coth(\pi c)}{2c},\quad
\operatorname{Res}_{z=-ic}f=\left(-\frac{1}{2ic}\right)\cdot(i\coth(\pi c))=-\frac{\coth(\pi c)}{2c}.
$$

于是 $\sum_{n=-\infty}^{+\infty}\frac{1}{n^{2}+c^{2}}=\frac{\pi\coth(\pi c)}{c}$. 因 $\sum_{n=-\infty}^{+\infty}=2\sum_{n=1}^{+\infty}+\frac1{c^{2}}$,

$$
\sum_{n=1}^{+\infty}\frac{1}{n^{2}+c^{2}}=\frac12\left(\frac{\pi\coth(\pi c)}{c}-\frac{1}{c^{2}}\right)=\frac{\pi}{2c}\coth(\pi c)-\frac{1}{2c^{2}}.
$$

$\blacksquare$

### 习题三

(习题 15.4-13) 假设区域 $D\subset\mathbb{C}$ 的边界为分段光滑的若当闭道路 $\Gamma$, $g$ 为 $\overline{D}=D\cup\Gamma$ 上的全纯函数, $f$ 是 $D$ 上的亚纯函数且在 $D$ 上只有有限多的零点和极点. 证明: $\frac{1}{2\pi i}\int_{\Gamma}g(z)\frac{f'(z)}{f(z)}\,dz=\sum_{j=1}^{n}r_{j}g(a_{j})-\sum_{k=1}^{m}s_{k}g(p_{k})$, 其中 $a_{j}$ 是 $f$ 的 $r_{j}$ 阶零点, $j=1,\ldots,n$, $p_{k}$ 是 $f$ 的 $s_{k}$ 阶极点, $k=1,\ldots,n$.

### 解答 习题三

$f$ 在 $D$ 上亚纯, 在零点 $a_{j}$ (阶 $r_{j}$) 附近 $f(z)=(z-a_{j})^{r_{j}}h(z)$, $h(a_{j})\ne0$, 故

$$
\frac{f'(z)}{f(z)}=\frac{r_{j}}{z-a_{j}}+\frac{h'(z)}{h(z)},\quad\operatorname{Res}_{z=a_{j}}\frac{f'}{f}=r_{j};
$$

在极点 $p_{k}$ (阶 $s_{k}$) 附近 $f(z)=(z-p_{k})^{-s_{k}}H(z)$, $H(p_{k})\ne0$, $\frac{f'}{f}=-\frac{s_{k}}{z-p_{k}}+\frac{H'}{H}$, $\operatorname{Res}_{z=p_{k}}\frac{f'}{f}=-s_{k}$. 因 $g$ 全纯, 由留数定理于 $\Gamma$ 内:

$$
\frac{1}{2\pi i}\int_{\Gamma}g(z)\frac{f'(z)}{f(z)}\,dz
=\sum_{j=1}^{n}\operatorname{Res}_{z=a_{j}}\left(g\frac{f'}{f}\right)+\sum_{k=1}^{m}\operatorname{Res}_{z=p_{k}}\left(g\frac{f'}{f}\right)
=\sum_{j=1}^{n}r_{j}g(a_{j})-\sum_{k=1}^{m}s_{k}g(p_{k}).
$$

$\blacksquare$
