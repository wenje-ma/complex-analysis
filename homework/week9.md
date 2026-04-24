# week9

> **定理 8.3.1 (柯西积分公式)**
> 
> 若 $f$ 在含若当闭曲线 $\gamma$ 及其内区域的区域上全纯, $z$ 在 $\gamma$ 的内区域, 则 $f\left(z\right)=\frac{1}{2\pi{i}}\oint_{\gamma}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta$.

> **定理 10.1.1 (最大模原理)**
> 
> 若区域 $D$ 上的全纯函数 $f$ 的模 $\left|f\right|$ 在 $z_{0}\in{D}$ 处有局部极大值, 则 $f$ 在 $D$ 上为常值.

> **定义 13.1.3 (洛朗级数)**
> 
> $f$ 在圆环 $A\left(a;r;R\right)$ 上的洛朗级数为 $\sum_{n=-\infty}^{+\infty}c_{n}\left(z-a\right)^{n}$, 其中正则部 $\sum_{n\ge0}c_{n}\left(z-a\right)^{n}$, 主部 $\sum_{n<0}c_{n}\left(z-a\right)^{n}$.

> **定义 13.2.2 (孤立奇点分类)**
> 
> $a$ 是 $f$ 的可去奇点若主部系数全为 $0$; 是 $m$-阶极点若 $c_{-m}\ne0$ 且 $n<-m$ 时 $c_{n}=0$; 是本性奇点若主部有无穷多项.

> **定理 13.2.4 (黎曼可去奇点定理)**
> 
> $a$ 是 $f$ 的可去奇点当且仅当 $f$ 在 $a$ 的去心邻域上有界.

> **定理 13.2.5**
> 
> $a$ 是 $f$ 的可去奇点当且仅当 $\lim_{z\to{a}}f\left(z\right)$ 存在且有限.

> **定义 14.1.1 (留数)**
> 
> $f$ 在孤立奇点 $a$ 的留数 $\operatorname{Res}_{a}f$ 等于其洛朗展开中 $\frac{1}{z-a}$ 项的系数 $c_{-1}$.

> **定理 14.1.3 (留数定理)**
> 
> 若 $f$ 在区域 $D$ 上除有限个孤立奇点外全纯, $\gamma$ 是 $D$ 内的若当闭曲线且这些奇点都在 $\gamma$ 内, 则 $\int_{\gamma}f\,dz=2\pi{i}\sum\operatorname{Res}f$.

> **定义 14.1.4 (无穷远处的留数)**
> 
> 取充分大的 $R$, $f$ 在圆环 $A\left(0;R;\infty\right)$ 上的洛朗级数为 $f\left(z\right)=\sum_{n=-\infty}^{+\infty}c_{n}z^{n}$, 则 $f$ 在 $\infty$ 处的留数为 $\operatorname{Res}_{\infty}f=-c_{-1}$, 也即 $\operatorname{Res}_{\infty}f=-\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right)$.

## 14.3-1

计算下述积分: (i) $\int_{\partial{B}\left(0,4\right)}\frac{z^{2}+1}{z^{3}+2z^{2}-3z}\,dz$; (ii) $\int_{\partial{B}\left(0,\pi\right)}z^{2}\sin\frac{1}{z}\,dz$; (iv) $\int_{0}^{2\pi}\frac{1}{4\sin^{2}x+1}\,dx$.

### 解答 14.3-1

(i) $z^{3}+2z^{2}-3z=z\left(z+3\right)\left(z-1\right)$, 奇点 $0,1,-3$ 均在 $\left|z\right|<4$ 内, 都是一阶极点. 由**定义 14.1.1 (留数)**, 各留数:

$$
\operatorname{Res}_{0}=\frac{1}{3\cdot\left(-1\right)}=-\frac13,\quad
\operatorname{Res}_{1}=\frac{1+1}{1\cdot4\cdot1}=\frac12,\quad
\operatorname{Res}_{-3}=\frac{9+1}{\left(-3\right)\cdot1\cdot\left(-4\right)}=\frac56.
$$

和为 $-\frac13+\frac12+\frac56=1$. 由**定理 14.1.3 (留数定理)**, $\int_{\partial{B}\left(0,4\right)}=2\pi{i}\cdot1=2\pi{i}$.

(ii) 由**定义 13.1.3 (洛朗级数)**, $\sin\frac1z=\sum_{n=0}^{+\infty}\frac{\left(-1\right)^{n}}{\left(2n+1\right)!}\frac{1}{z^{2n+1}}$, 故 $z^{2}\sin\frac1z=\sum_{n=0}^{+\infty}\frac{\left(-1\right)^{n}}{\left(2n+1\right)!}z^{1-2n}$. 其中 $z^{-1}$ 项的系数 (留数) 来自 $1-2n=-1$, 即 $n=1$: $\operatorname{Res}_{0}z^{2}\sin\frac1z=\frac{\left(-1\right)^{1}}{3!}=-\frac16$. 故 $\int_{\partial{B}\left(0,\pi\right)}z^{2}\sin\frac1z\,dz=2\pi{i}\cdot\left(-\frac16\right)=-\frac{\pi{i}}{3}$.

(iv) 令 $z=e^{ix}$, 则 $\sin{x}=\frac{z-z^{-1}}{2i}$, $dz=iz\,dx$, 且 $\left|z\right|=1$ 逆时针. $4\sin^{2}x+1=4\cdot\left(-\frac{\left(z-z^{-1}\right)^{2}}{4}\right)+1=3-z^{2}-z^{-2}$, 于是

$$
\int_{0}^{2\pi}\frac{dx}{4\sin^{2}x+1}=\oint_{\left|z\right|=1}\frac{1}{3-z^{2}-z^{-2}}\frac{dz}{iz}=\oint_{\left|z\right|=1}\frac{z}{i\left(3z^{2}-z^{4}-1\right)}\,dz.
$$

$3z^{2}-z^{4}-1=-\left(z^{4}-3z^{2}+1\right)$, 而 $z^{4}-3z^{2}+1=0$ 给出 $z^{2}=\frac{3\pm\sqrt5}{2}$. 圆 $\left|z\right|=1$ 内只有 $z^{2}=\frac{3-\sqrt5}{2}$ 的两个根 $\pm\sqrt{\frac{3-\sqrt5}{2}}$ (另一对 $\left|z\right|>1$). 记 $a^{2}=u:=\frac{3-\sqrt5}{2}$, 在 $z=a$ 处

$$
\operatorname{Res}_{a}\frac{z}{i\left(3z^{2}-z^{4}-1\right)}=\frac{a}{i\left(-\left(4a^{3}-6a\right)\right)}=\frac{1}{i\left(-\left(4u-6\right)\right)}=\frac{1}{i\left(-\left(-2\sqrt5\right)\right)}=\frac{1}{2\sqrt5\,i},
$$

根 $-a$ 处留数相同. 两留数和为 $\frac{1}{\sqrt5\,i}$. 故

$$
\int_{0}^{2\pi}\frac{dx}{4\sin^{2}x+1}=2\pi{i}\cdot\frac{1}{\sqrt5\,i}=\frac{2\pi}{\sqrt5}.
$$

$\blacksquare$

## 14.3-2

令 $\gamma\subset\mathbb{C}$ 是一条若当闭曲线, $f$ 是 $\mathbb{C}\setminus\left\{a_{1},\ldots,a_{n}\right\}$ 上的全纯函数, 其中 $a_{1},\ldots,a_{n}$ 为 $\gamma$ 内区域的内点. 证明: $\frac{1}{2\pi{i}}\int_{\gamma}f\left(z\right)\,dz=\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right)$.

### 解答 14.3-2

$f$ 的孤立奇点为 $a_{1},\ldots,a_{n}$ (均在 $\gamma$ 内), 由**定理 14.1.3 (留数定理)**,

$$
\frac{1}{2\pi{i}}\int_{\gamma}f\left(z\right)\,dz=\sum_{j=1}^{n}\operatorname{Res}_{a_{j}}f.
$$

对全复平面上的亚纯函数 $f$ 取充分大的 $R$ 使 $\gamma$ 与全部 $a_{j}$ 都在 $\left\{\left|z\right|<{}R\right\}$ 内. 在 $\left\{\left|z\right|\le{R}\right\}$ 上用留数定理, 并把 $\infty$ 视为奇点, 得 $\sum_{j}\operatorname{Res}_{a_{j}}f+\operatorname{Res}_{\infty}f=0$. 由**定义 14.1.4 (无穷远处的留数)**,

$$
\operatorname{Res}_{\infty}f=-\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right),
$$

故 $\sum_{j}\operatorname{Res}_{a_{j}}f=\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right)$, 即所证.

$\blacksquare$

## 14.3-3

证明: $\int_{\partial{B}\left(0,1\right)}e^{z+\frac{1}{z}}\,dz=2\pi{i}\sum_{n=0}^{+\infty}\frac{1}{n!\left(n+1\right)!}$.

### 解答 14.3-3

$e^{z+\frac1z}=e^{z}e^{\frac1z}=\left(\sum_{m=0}^{+\infty}\frac{z^{m}}{m!}\right)\left(\sum_{k=0}^{+\infty}\frac{1}{k!}\frac{1}{z^{k}}\right)$. 其中 $z^{-1}$ 项的系数满足 $m-k=-1$, 即 $m=k-1$, 故

$$
\operatorname{Res}_{0}e^{z+\frac1z}=\sum_{k=1}^{+\infty}\frac{1}{\left(k-1\right)!k!}=\sum_{n=0}^{+\infty}\frac{1}{n!\left(n+1\right)!}.
$$

由**定理 14.1.3 (留数定理)**,

$$
\int_{\partial{B}\left(0,1\right)}e^{z+\frac1z}\,dz=2\pi{i}\operatorname{Res}_{0}e^{z+\frac1z}=2\pi{i}\sum_{n=0}^{+\infty}\frac{1}{n!\left(n+1\right)!}.
$$

$\blacksquare$

## 14.3-6

计算积分 $\int_{0}^{+\infty}\frac{x^{1/n}}{x^{2}+a^{2}}\,dx$, 其中 $2\le{n}\in\mathbb{N}$, $a>0$.

### 解答 14.3-6

取 $z^{1/n}$ 的 $\operatorname{Log}$ 分支 (割正实轴), 用标准积分 $\int_{0}^{+\infty}\frac{x^{\alpha-1}}{x^{2}+a^{2}}dx=\frac{\pi{a}^{\alpha-2}}{2\sin\frac{\pi\alpha}{2}}$, 这里 $\alpha-1=\frac1n$, 即 $\alpha=1+\frac1n$. 则

$$
\int_{0}^{+\infty}\frac{x^{1/n}}{x^{2}+a^{2}}\,dx
=\frac{\pi{a}^{\frac1n-1}}{2\sin\left(\frac{\pi}{2}\left(1+\frac1n\right)\right)}
=\frac{\pi{a}^{\frac{1-n}{n}}}{2\cos\frac{\pi}{2n}}.
$$

(推导概述: 对 $f\left(z\right)=\frac{z^{1/n}}{z^{2}+a^{2}}$ 取角为 $\frac{2\pi}{n}$ 的楔形围道, 半径 $R\to\infty$, 两条边上的积分相减差因子 $e^{2\pi{i}/n}$, 加上两极点的留数, 即得上式.)

$\blacksquare$

## 14.3-7

计算积分 $\int_{0}^{+\infty}\frac{1}{\sqrt{x}\left(1+x\right)}\,dx$.

### 解答 14.3-7

令 $x=t^{2}$, $t>0$, 则 $\sqrt{x}=t$, $dx=2t\,dt$:

$$
\int_{0}^{+\infty}\frac{dx}{\sqrt{x}\left(1+x\right)}=\int_{0}^{+\infty}\frac{2t\,dt}{t\left(1+t^{2}\right)}=2\int_{0}^{+\infty}\frac{dt}{1+t^{2}}=2\cdot\frac{\pi}{2}=\pi.
$$

$\blacksquare$

## 14.3-11

令 $f$ 是 $\mathbb{C}$ 上的全纯函数, $R>0$, $a,b\in\mathbb{C}$ 且 $\left|a\right|,\left|b\right|<{}R$. (i) 计算积分 $\int_{\gamma}\frac{f\left(z\right)}{\left(z-a\right)\left(z-b\right)}\,dz$, 其中 $\gamma\left(t\right)=Re^{it}$, $t\in\left[0,2\pi\right]$; (ii) 利用 (i) 中的积分证明刘维尔定理: $\mathbb{C}$ 上的有界全纯函数都是常值的.

### 解答 14.3-11

(i) 部分分式 $\frac{1}{\left(z-a\right)\left(z-b\right)}=\frac{1}{a-b}\left(\frac{1}{z-a}-\frac{1}{z-b}\right)$. $a,b$ 都在圆 $\left|z\right|=R$ 内, 由柯西积分公式,

$$
\int_{\gamma}\frac{f\left(z\right)}{\left(z-a\right)\left(z-b\right)}\,dz=\frac{1}{a-b}\left(\int_{\gamma}\frac{f\left(z\right)}{z-a}dz-\int_{\gamma}\frac{f\left(z\right)}{z-b}dz\right)=\frac{2\pi{i}}{a-b}\left(f\left(a\right)-f\left(b\right)\right).
$$

(ii) 设 $f$ 有界: $\left|f\right|\le{M}$. 对 (i) 的积分估值: 在 $\left|z\right|=R$ 上 $\left|\left(z-a\right)\left(z-b\right)\right|\ge{R}^{2}$ (当 $R$ 充分大), 故

$$
\left|\int_{\gamma}\frac{f\left(z\right)}{\left(z-a\right)\left(z-b\right)}\,dz\right|\le\frac{M}{R^{2}}\cdot2\pi{R}=\frac{2\pi{M}}{R}\to0\quad\left(R\to\infty\right).
$$

由 (i), $\frac{2\pi{i}}{a-b}\left(f\left(a\right)-f\left(b\right)\right)\to0$, 故 $f\left(a\right)=f\left(b\right)$ 对任意 $a,b$ 成立, 即 $f$ 为常数.

$\blacksquare$

## 14.3-16

令 $\beta=\sqrt\pi\,e^{i\frac{\pi}{4}}$ (即 $\beta^{2}=i\pi$), 考虑函数 $f\left(z\right)=\frac{e^{-z^{2}}}{1+e^{-2\beta{z}}}$. (i) 验证 $f$ 只在点集 $\mathcal{Z}:=\left\{z_{n}=\left(n+\frac12\right)\beta,n\in\mathbb{Z}\right\}$ 处有奇点, 且都为简单极点; (ii) 验证 $f\left(z\right)-f\left(z+\beta\right)=e^{-z^{2}}$, $\forall{z}\in\mathbb{C}\setminus\mathcal{Z}$; (iii) 对于 $R>0$ 充分大, 考虑以 $-R,R,R+\beta,-R+\beta$ 为顶点的平行四边形 $\Omega$, 验证 $\int_{-\infty}^{+\infty}e^{-x^{2}}dx=2\pi{i}\operatorname{Res}_{z_{0}}f$, 其中 $z_{0}$ 如 (i); (iv) 利用上述结论, 验证 $\int_{-\infty}^{+\infty}e^{-\frac{x^{2}}{2}}dx=\sqrt{2\pi}$.

### 解答 14.3-16

(i) $f$ 的奇点是分母零点 $1+e^{-2\beta{z}}=0$, 即 $e^{-2\beta{z}}=-1$, 亦即 $-2\beta{z}=i\pi\left(1+2k\right)$, $z=-\frac{i\pi\left(1+2k\right)}{2\beta}$. 由 $\beta^{2}=i\pi$, 计算得 $z=\frac{\left(2k+1\right)\beta}{2}=\left(k+\frac12\right)\beta=z_{k}$, $k\in\mathbb{Z}$. 故奇点恰为 $\mathcal{Z}$. 在 $z_{n}$ 处 $\frac{d}{dz}\left(1+e^{-2\beta{z}}\right)=-2\beta{e}^{-2\beta{z}_{n}}=-2\beta\left(-1\right)=2\beta\ne0$, 故都是简单极点.

(ii) 记 $u=e^{-2\beta{z}}$. 由 $\beta^{2}=i\pi$, $e^{-\beta^{2}}=e^{-i\pi}=-1$, $e^{-2\beta^{2}}=1$. 于是

$$
f\left(z\right)-f\left(z+\beta\right)=\frac{e^{-z^{2}}}{1+u}-\frac{e^{-z^{2}-2\beta{z}-\beta^{2}}}{1+u}=e^{-z^{2}}\frac{1-\left(-1\right)u}{1+u}=e^{-z^{2}}\frac{1+u}{1+u}=e^{-z^{2}}.
$$

(iii) 平行四边形 $\Omega=\left\{x+t\beta:\,x\in\left[-R,R\right],t\in\left[0,1\right]\right\}$. 极点 $z_{n}=\left(n+\frac12\right)\beta$ 在 $\Omega$ 内当且仅当 $n+\frac12\in\left[0,1\right]$, 即 $n=0$, 故 $\Omega$ 内只有 $z_{0}=\frac\beta2$. 由**定理 14.1.3 (留数定理)**,

$$
\oint_{\partial\Omega}f\left(z\right)\,dz=2\pi{i}\operatorname{Res}_{z_{0}}f=2\pi{i}\frac{e^{-z_{0}^{2}}}{2\beta}=2\pi{i}\frac{e^{-\beta^{2}/4}}{2\beta}.
$$

沿两条竖边 ($x=\pm{R}$) 的积分因 $f$ 指数衰减而趋于 $0$; 顶边与底边之差由 (ii) 给出:

$$
\oint_{\partial\Omega}f\left(z\right)\,dz=\int_{-R}^{R}\left(f\left(x\right)-f\left(x+\beta\right)\right)dx=\int_{-R}^{R}e^{-x^{2}}dx.
$$

取 $R\to\infty$ 得 $\int_{-\infty}^{+\infty}e^{-x^{2}}dx=2\pi{i}\operatorname{Res}_{z_{0}}f$. 又 $e^{-\beta^{2}/4}=e^{-i\pi/4}$, $\frac{e^{-i\pi/4}}{\beta}=\frac{e^{-i\pi/4}}{\sqrt\pi{e}^{i\pi/4}}=\frac{e^{-i\pi/2}}{\sqrt\pi}=-\frac{i}{\sqrt\pi}$, 故

$$
\int_{-\infty}^{+\infty}e^{-x^{2}}dx=2\pi{i}\cdot\frac{e^{-i\pi/4}}{2\beta}=\pi{i}\cdot\left(-\frac{i}{\sqrt\pi}\right)=\sqrt\pi.
$$

(iv) 换元 $x=\sqrt2\,t$:

$$
\int_{-\infty}^{+\infty}e^{-\frac{x^{2}}{2}}dx=\sqrt2\int_{-\infty}^{+\infty}e^{-t^{2}}dt=\sqrt2\cdot\sqrt\pi=\sqrt{2\pi}.
$$

$\blacksquare$

## 15.4-5

证明: $\frac{1}{\sin^{2}z}=\sum_{n=-\infty}^{+\infty}\frac{1}{\left(z-n\pi\right)^{2}}$.

### 解答 15.4-5

$\frac{1}{\sin^{2}z}$ 以 $z=n\pi$ 为二阶极点, 且 $\frac{1}{\sin^{2}z}$ 在 $z=n\pi$ 附近的主部恰为 $\frac{1}{\left(z-n\pi\right)^{2}}$ (因 $\sin{z}\sim\left(-1\right)^{n}\left(z-n\pi\right)$, $\sin^{2}z\sim\left(z-n\pi\right)^{2}$). 记

$$
F\left(z\right):=\frac{1}{\sin^{2}z}-\sum_{n=-\infty}^{+\infty}\frac{1}{\left(z-n\pi\right)^{2}}.
$$

级数在 $\mathbb{C}$ 的紧集上局部一致收敛 (除极点的去心邻域), 且与 $\frac{1}{\sin^{2}z}$ 在各 $n\pi$ 处的主部相同, 故 $F$ 在 $\mathbb{C}$ 上全纯 (每个极点都被抵消), 是**定义 15.1.1 (整函数与亚纯函数)**中的整函数. 又 $\sin^{2}\left(z+\pi\right)=\sin^{2}z$ 且 $\sum_{n}\frac{1}{\left(z+\pi-n\pi\right)^{2}}=\sum_{n}\frac{1}{\left(z-n\pi\right)^{2}}$, 故 $F\left(z+\pi\right)=F\left(z\right)$, $F$ 以 $\pi$ 为周期. 在基本带 $\left|\operatorname{Re}z\right|\le\frac\pi2$ 上, 当 $\left|\operatorname{Im}z\right|\to+\infty$ 时 $\frac{1}{\sin^{2}z}\to0$ 且级数 $\to0$, 故 $F$ 在带内有界, 由周期性 $F$ 在 $\mathbb{C}$ 有界. 由刘维尔定理 $F$ 为常数; 又 $F\to0$ 于 $\operatorname{Im}z\to+\infty$, 故 $F\equiv0$, 即所证.

$\blacksquare$

## 15.4-8

令 $P$ 和 $Q$ 为多项式且 $\deg{Q}\ge\deg{P}+2$, $g=\frac{P}{Q}$ 和 $f\left(z\right)=g\left(z\right)\cot\pi{z}$. 令 $Z\left(Q\right)$ 为 $Q$ 的零点所组成的集合. (i) 证明: 存在 $M>0$ 和 $R>0$ 使得 $\left|g\left(z\right)\right|\le\frac{M}{\left|z\right|^{2}}$, $\forall{z}\notin\left\{\left|z\right|\le{R}\right\}$; (ii) 令 $N\in\mathbb{N}$ 且 $N>R$, 取四条边分别落在直线 $\operatorname{Re}z=\pm\left(N+\frac12\right)$ 和 $\operatorname{Im}z=\pm{N}$ 上的长方形 $C_{N}$, 证明: $\lim_{N\to\infty}\int_{C_{N}}f\left(z\right)\,dz=0$; (iii) 证明: 任意 $n\in\mathbb{Z}\setminus{Z}\left(Q\right)$, $\operatorname{Res}_{z=n}f=\frac{g\left(n\right)}{\pi}$; (iv) 证明: $\sum_{n=-\infty}^{+\infty}\operatorname{Res}_{z=n}f=-\sum_{a\in{Z}\left(Q\right)\setminus\mathbb{Z}}\operatorname{Res}_{z=a}f$; (v) 取 $g\left(z\right)=\frac{1}{z^{2}+c^{2}}$, $c>0$, 计算 $\sum_{n=1}^{+\infty}\frac{1}{n^{2}+c^{2}}$.

### 解答 15.4-8

(i) $\deg{Q}\ge\deg{P}+2$, 故 $g\left(z\right)=\frac{P\left(z\right)}{Q\left(z\right)}$ 在 $\left|z\right|\to+\infty$ 时满足 $\left|g\left(z\right)\right|\le\frac{C}{\left|z\right|^{2}}$, 即存在 $M,R>0$ 使 $\left|g\left(z\right)\right|\le\frac{M}{\left|z\right|^{2}}$, $\forall\left|z\right|>R$.

(ii) 在 $C_{N}$ 上 $\left|z\right|\ge{N}$, 故 $\left|g\left(z\right)\right|\le\frac{M}{N^{2}}$. 在 $\operatorname{Im}z=\pm{N}$ 和 $\operatorname{Re}z=\pm\left(N+\frac12\right)$ 上, 极点 $z=n$ (整数) 被避开, 且 $\cot\pi{z}$ 在这些边上一致有界 (当 $\left|\operatorname{Im}z\right|\ge{N}$, 或 $\operatorname{Re}z$ 为半整数时 $\cot\pi{z}$ 有界), 记 $\left|\cot\pi{z}\right|\le{K}$. 于是 $\left|f\right|\le\frac{MK}{N^{2}}$, 而 $C_{N}$ 的周长 $\le{C}'N$, 故

$$
\left|\int_{C_{N}}f\left(z\right)\,dz\right|\le\frac{MK}{N^{2}}\cdot{C}'N=\frac{C''}{N}\to0.
$$

(iii) $n\in\mathbb{Z}\setminus{Z}\left(Q\right)$, 则 $g$ 在 $n$ 处全纯且 $g\left(n\right)\ne0$; $\cot\pi{z}$ 在 $z=n$ 处有简单极点, $\cot\pi{z}\sim\frac{1}{\pi\left(z-n\right)}$, $\operatorname{Res}_{z=n}\cot\pi{z}=\frac1\pi$. 故 $\operatorname{Res}_{z=n}f=g\left(n\right)\operatorname{Res}_{z=n}\cot\pi{z}=\frac{g\left(n\right)}{\pi}$.

(iv) 由留数定理于 $C_{N}$ (当 $N$ 充分大, $C_{N}$ 内含全部整数 $\left|n\right|\le{N}$ 与 $Z\left(Q\right)$ 在其中的极点):

$$
\int_{C_{N}}f\,dz=2\pi{i}\left[\sum_{\left|n\right|\le{N}}\operatorname{Res}_{z=n}f+\sum_{a\in{Z}\left(Q\right),a\text{~在~}C_{N}\text{~内}}\operatorname{Res}_{z=a}f\right].
$$

由 (ii) 取 $N\to\infty$ 得 $\sum_{n=-\infty}^{+\infty}\operatorname{Res}_{z=n}f+\sum_{a\in{Z}\left(Q\right)}\operatorname{Res}_{z=a}f=0$. 若 $Z\left(Q\right)\cap\mathbb{Z}=\emptyset$ (如 (v) 的情形), 则 $\sum_{a\in{Z}\left(Q\right)}\operatorname{Res}_{z=a}f=\sum_{a\in{Z}\left(Q\right)\setminus\mathbb{Z}}\operatorname{Res}_{z=a}f$, 即得所证.

(v) $g\left(z\right)=\frac{1}{z^{2}+c^{2}}$, $Z\left(Q\right)=\left\{ic,-ic\right\}$ 非整数. 由 (iii), $\operatorname{Res}_{z=n}f=\frac{1}{\pi\left(n^{2}+c^{2}\right)}$; 由 (iv),

$$
\sum_{n=-\infty}^{+\infty}\frac{1}{\pi\left(n^{2}+c^{2}\right)}=-\left(\operatorname{Res}_{z=ic}f+\operatorname{Res}_{z=-ic}f\right).
$$

$\operatorname{Res}_{z=ic}g=\frac{1}{2ic}$, $\operatorname{Res}_{z=-ic}g=-\frac{1}{2ic}$; $\cot\left(i\pi{c}\right)=-i\coth\left(\pi{c}\right)$, $\cot\left(-i\pi{c}\right)=i\coth\left(\pi{c}\right)$. 故

$$
\operatorname{Res}_{z=ic}f=\frac{1}{2ic}\cdot\left(-i\coth\left(\pi{c}\right)\right)=-\frac{\coth\left(\pi{c}\right)}{2c},\quad
\operatorname{Res}_{z=-ic}f=\left(-\frac{1}{2ic}\right)\cdot\left(i\coth\left(\pi{c}\right)\right)=-\frac{\coth\left(\pi{c}\right)}{2c}.
$$

于是 $\sum_{n=-\infty}^{+\infty}\frac{1}{n^{2}+c^{2}}=\frac{\pi\coth\left(\pi{c}\right)}{c}$. 因 $\sum_{n=-\infty}^{+\infty}=2\sum_{n=1}^{+\infty}+\frac1{c^{2}}$,

$$
\sum_{n=1}^{+\infty}\frac{1}{n^{2}+c^{2}}=\frac12\left(\frac{\pi\coth\left(\pi{c}\right)}{c}-\frac{1}{c^{2}}\right)=\frac{\pi}{2c}\coth\left(\pi{c}\right)-\frac{1}{2c^{2}}.
$$

$\blacksquare$

## 15.4-13

假设区域 $D\subset\mathbb{C}$ 的边界为分段光滑的若当闭道路 $\Gamma$, $g$ 为 $\overline{D}=D\cup\Gamma$ 上的全纯函数, $f$ 是 $D$ 上的亚纯函数且在 $D$ 上只有有限多的零点和极点. 证明: $\frac{1}{2\pi{i}}\int_{\Gamma}g\left(z\right)\frac{f'\left(z\right)}{f\left(z\right)}\,dz=\sum_{j=1}^{n}r_{j}g\left(a_{j}\right)-\sum_{k=1}^{m}s_{k}g\left(p_{k}\right)$, 其中 $a_{j}$ 是 $f$ 的 $r_{j}$ 阶零点, $j=1,\ldots,n$, $p_{k}$ 是 $f$ 的 $s_{k}$ 阶极点, $k=1,\ldots,n$.

### 解答 15.4-13

$f$ 在 $D$ 上亚纯, 在零点 $a_{j}$ (阶 $r_{j}$) 附近 $f\left(z\right)=\left(z-a_{j}\right)^{r_{j}}h\left(z\right)$, $h\left(a_{j}\right)\ne0$, 故

$$
\frac{f'\left(z\right)}{f\left(z\right)}=\frac{r_{j}}{z-a_{j}}+\frac{h'\left(z\right)}{h\left(z\right)},\quad\operatorname{Res}_{z=a_{j}}\frac{f'}{f}=r_{j};
$$

在极点 $p_{k}$ (阶 $s_{k}$) 附近 $f\left(z\right)=\left(z-p_{k}\right)^{-s_{k}}H\left(z\right)$, $H\left(p_{k}\right)\ne0$, $\frac{f'}{f}=-\frac{s_{k}}{z-p_{k}}+\frac{H'}{H}$, $\operatorname{Res}_{z=p_{k}}\frac{f'}{f}=-s_{k}$. 因 $g$ 全纯, 由留数定理于 $\Gamma$ 内:

$$
\frac{1}{2\pi{i}}\int_{\Gamma}g\left(z\right)\frac{f'\left(z\right)}{f\left(z\right)}\,dz
=\sum_{j=1}^{n}\operatorname{Res}_{z=a_{j}}\left(g\frac{f'}{f}\right)+\sum_{k=1}^{m}\operatorname{Res}_{z=p_{k}}\left(g\frac{f'}{f}\right)
=\sum_{j=1}^{n}r_{j}g\left(a_{j}\right)-\sum_{k=1}^{m}s_{k}g\left(p_{k}\right).
$$

$\blacksquare$
