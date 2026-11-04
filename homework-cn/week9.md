# week9

> **定理 14.1.3 (留数定理)**
> 
> 若 $f$ 在区域 $D$ 上除有限个孤立奇点外全纯, $\gamma$ 是 $D$ 内的若当闭曲线且这些奇点都在 $\gamma$ 内, 则

> **定义 15.1.1 (整函数与亚纯函数)**
> 
> 在复平面 $\mathbb{C}$ 上处处全纯的函数称为整函数; 除极点外处处全纯的函数称为亚纯函数.

> **定理 15.2.7 (幅角原理)**
> 
> 若 $f$ 在区域 $D$ 上亚纯, 零点 $a_{j}$ 的阶为 $r_{j}$, 极点 $p_{k}$ 的阶为 $s_{k}$, $\Gamma$ 是 $D$ 内的若当闭曲线且避开这些点, 则

$$
\frac{1}{2\pi i}\int_{\Gamma}\frac{f'}{f}\,dz=\sum r_{j}-\sum s_{k}.
$$

> **定义 16.1.1 (调和函数)**
> 
> 区域 $D$ 上的实值 $C^{2}$ 函数 $u$ 称为调和的, 若 $\Delta u=u_{xx}+u_{yy}=0$ 于 $D$.

> **命题 16.1.6 (均值性质)**
> 
> 调和函数 $u$ 于 $B\left(a,R\right)$ 有

$$
u\left(a\right)=\frac{1}{2\pi}\int_{0}^{2\pi}u\left(a+Re^{i\theta}\right)d\theta.
$$

> **定理 16.2.9 (泊松积分)**
> 
> 圆盘 $B\left(a,R\right)$ 上狄利克雷问题有解

$$
u\left(z\right)=\frac{R^{2}-\left|z-a\right|^{2}}{2\pi R}\int_{0}^{2\pi}\frac{f\left(a+Re^{i\theta}\right)}{\left|z-a-Re^{i\theta}\right|^{2}}d\theta.
$$

> **定理 16.2.10 (有界若当域上的狄利克雷问题)**
> 
> 有界若当域上的狄利克雷问题可解.

## 14.3-10

令 $\gamma\subset\mathbb{C}$ 是若当闭曲线, $D$ 是它的内区域, $f$ 是 $\overline{D}=D\cup\gamma$ 上的全纯函数, $z_{0}\in D$ 是 $f$ 在 $D$ 上的唯一零点. 证明: $z_{0}=\frac{1}{2\pi n i}\int_{\gamma}\frac{z f'\left(z\right)}{f\left(z\right)}\,dz$, 其中 $n$ 是 $z_{0}$ 的零点阶数.

### 解答 14.3-10

因 $z_{0}$ 是 $f$ 在 $D$ 上唯一的 $n$-阶零点, 记 $f\left(z\right)=\left(z-z_{0}\right)^{n}g\left(z\right)$, 其中 $g$ 在 $\overline{D}$ 上全纯且 $g\ne0$. 则

$$
\frac{f'\left(z\right)}{f\left(z\right)}=\frac{n}{z-z_{0}}+\frac{g'\left(z\right)}{g\left(z\right)}.
$$

$\frac{g'}{g}$ 在 $\overline{D}$ 上全纯, 沿闭曲线积分为零, 故

$$
\int_{\gamma}\frac{z f'\left(z\right)}{f\left(z\right)}\,dz=n\int_{\gamma}\frac{z}{z-z_{0}}\,dz=n\cdot2\pi i\cdot z_{0},
$$

末等式用柯西积分公式 ($z$ 在 $z=z_{0}$ 处的值). 于是 $\frac{1}{2\pi n i}\int_{\gamma}\frac{z f'\left(z\right)}{f\left(z\right)}dz=z_{0}$. $\blacksquare$

## 14.3-11

令 $f$ 是 $\mathbb{C}$ 上的全纯函数, $R> 0$, $a,b\in\mathbb{C}$ 且 $\left|a\right|,\left|b\right|< R$. (i) 计算积分 $\int_{\gamma}\frac{f\left(z\right)}{\left(z-a\right)\left(z-b\right)}\,dz$, 其中 $\gamma\left(t\right)=Re^{it}$, $t\in\left[0,2\pi\right]$; (ii) 利用 (i) 中的积分证明刘维尔定理: $\mathbb{C}$ 上的有界全纯函数都是常值的.

### 解答 14.3-11

(i) 部分分式 $\frac{1}{\left(z-a\right)\left(z-b\right)}=\frac{1}{a-b}\left(\frac{1}{z-a}-\frac{1}{z-b}\right)$. $a,b$ 都在圆 $\left|z\right|=R$ 内, 由柯西积分公式,

$$
\int_{\gamma}\frac{f\left(z\right)}{\left(z-a\right)\left(z-b\right)}\,dz=\frac{1}{a-b}\left(\int_{\gamma}\frac{f\left(z\right)}{z-a}dz-\int_{\gamma}\frac{f\left(z\right)}{z-b}dz\right)=\frac{2\pi i}{a-b}\left(f\left(a\right)-f\left(b\right)\right).
$$

(ii) 设 $f$ 有界: $\left|f\right|\le M$. 对 (i) 的积分估值: 在 $\left|z\right|=R$ 上 $\left|\left(z-a\right)\left(z-b\right)\right|\ge R^{2}$ (当 $R$ 充分大), 故

$$
\left|\int_{\gamma}\frac{f\left(z\right)}{\left(z-a\right)\left(z-b\right)}\,dz\right|\le\frac{M}{R^{2}}\cdot2\pi R=\frac{2\pi M}{R}\to0\quad\left(R\to\infty\right).
$$

由 (i), $\frac{2\pi i}{a-b}\left(f\left(a\right)-f\left(b\right)\right)\to0$, 故 $f\left(a\right)=f\left(b\right)$ 对任意 $a,b$ 成立, 即 $f$ 为常数. $\blacksquare$

## 14.3-16

令 $\beta=\sqrt\pi\,e^{i\frac{\pi}{4}}$ (即 $\beta^{2}=i\pi$), 考虑函数 $f\left(z\right)=\frac{e^{-z^{2}}}{1+e^{-2\beta z}}$. (i) 验证 $f$ 只在点集 $\mathcal{Z}:=\left\{z_{n}=\left(n+\frac12\right)\beta,\ n\in\mathbb{Z}\right\}$ 处有奇点, 且都为简单极点; (ii) 验证 $f\left(z\right)-f\left(z+\beta\right)=e^{-z^{2}}$, $\forall z\in\mathbb{C}\setminus\mathcal{Z}$; (iii) 对于 $R> 0$ 充分大, 考虑以 $-R,R,R+\beta,-R+\beta$ 为顶点的平行四边形 $\Omega$, 验证 $\int_{-\infty}^{+\infty}e^{-x^{2}}dx=2\pi i\operatorname{Res}_{z_{0}}f$, 其中 $z_{0}$ 如 (i); (iv) 利用上述结论, 验证 $\int_{-\infty}^{+\infty}e^{-\frac{x^{2}}{2}}dx=\sqrt{2\pi}$.

### 解答 14.3-16

(i) $f$ 的奇点是分母零点 $1+e^{-2\beta z}=0$, 即 $e^{-2\beta z}=-1$, 亦即 $-2\beta z=i\pi\left(1+2k\right)$, $z=-\frac{i\pi\left(1+2k\right)}{2\beta}$. 由 $\beta^{2}=i\pi$, 计算得 $z=\frac{\left(2k+1\right)\beta}{2}=\left(k+\frac12\right)\beta=z_{k}$, $k\in\mathbb{Z}$. 故奇点恰为 $\mathcal{Z}$. 在 $z_{n}$ 处 $\frac{d}{dz}\left(1+e^{-2\beta z}\right)=-2\beta e^{-2\beta z_{n}}=-2\beta\left(-1\right)=2\beta\ne0$, 故都是简单极点.

(ii) 记 $u=e^{-2\beta z}$. 由 $\beta^{2}=i\pi$, $e^{-\beta^{2}}=e^{-i\pi}=-1$, $e^{-2\beta^{2}}=1$. 于是

$$
f\left(z\right)-f\left(z+\beta\right)=\frac{e^{-z^{2}}}{1+u}-\frac{e^{-z^{2}-2\beta z-\beta^{2}}}{1+u}=e^{-z^{2}}\frac{1-\left(-1\right)u}{1+u}=e^{-z^{2}}\frac{1+u}{1+u}=e^{-z^{2}}.
$$

(iii) 平行四边形 $\Omega=\left\{x+t\beta:\ x\in\left[-R,R\right],\ t\in\left[0,1\right]\right\}$. 极点 $z_{n}=\left(n+\frac12\right)\beta$ 在 $\Omega$ 内当且仅当 $n+\frac12\in\left[0,1\right]$, 即 $n=0$, 故 $\Omega$ 内只有 $z_{0}=\frac\beta2$. 由**定理 14.1.3 (留数定理)**,

$$
\oint_{\partial\Omega}f\left(z\right)\,dz=2\pi i\operatorname{Res}_{z_{0}}f=2\pi i\frac{e^{-z_{0}^{2}}}{2\beta}=2\pi i\frac{e^{-\beta^{2}/4}}{2\beta}.
$$

沿两条竖边 ($x=\pm R$) 的积分因 $f$ 指数衰减而趋于 $0$; 顶边与底边之差由 (ii) 给出:

$$
\oint_{\partial\Omega}f\left(z\right)\,dz=\int_{-R}^{R}\left(f\left(x\right)-f\left(x+\beta\right)\right)dx=\int_{-R}^{R}e^{-x^{2}}dx.
$$

取 $R\to\infty$ 得 $\int_{-\infty}^{+\infty}e^{-x^{2}}dx=2\pi i\operatorname{Res}_{z_{0}}f$. 又 $e^{-\beta^{2}/4}=e^{-i\pi/4}$, $\frac{e^{-i\pi/4}}{\beta}=\frac{e^{-i\pi/4}}{\sqrt\pi e^{i\pi/4}}=\frac{e^{-i\pi/2}}{\sqrt\pi}=-\frac{i}{\sqrt\pi}$, 故

$$
\int_{-\infty}^{+\infty}e^{-x^{2}}dx=2\pi i\cdot\frac{e^{-i\pi/4}}{2\beta}=\pi i\cdot\left(-\frac{i}{\sqrt\pi}\right)=\sqrt\pi.
$$

(iv) 换元 $x=\sqrt2\,t$:

$$
\int_{-\infty}^{+\infty}e^{-\frac{x^{2}}{2}}dx=\sqrt2\int_{-\infty}^{+\infty}e^{-t^{2}}dt=\sqrt2\cdot\sqrt\pi=\sqrt{2\pi}.
$$

$\blacksquare$

## 15.4-5

证明: $\frac{1}{\sin^{2}z}=\sum_{n=-\infty}^{+\infty}\frac{1}{\left(z-n\pi\right)^{2}}$.

### 解答 15.4-5

$\frac{1}{\sin^{2}z}$ 以 $z=n\pi$ 为二阶极点, 且 $\frac{1}{\sin^{2}z}$ 在 $z=n\pi$ 附近的主部恰为 $\frac{1}{\left(z-n\pi\right)^{2}}$ (因 $\sin z\sim\left(-1\right)^{n}\left(z-n\pi\right)$, $\sin^{2}z\sim\left(z-n\pi\right)^{2}$). 记

$$
F\left(z\right):=\frac{1}{\sin^{2}z}-\sum_{n=-\infty}^{+\infty}\frac{1}{\left(z-n\pi\right)^{2}}.
$$

级数在 $\mathbb{C}$ 的紧集上局部一致收敛 (除极点的去心邻域), 且与 $\frac{1}{\sin^{2}z}$ 在各 $n\pi$ 处的主部相同, 故 $F$ 在 $\mathbb{C}$ 上全纯 (每个极点都被抵消), 是**定义 15.1.1 (整函数与亚纯函数)**中的整函数. 又 $\sin^{2}\left(z+\pi\right)=\sin^{2}z$ 且 $\sum_{n}\frac{1}{\left(z+\pi-n\pi\right)^{2}}=\sum_{n}\frac{1}{\left(z-n\pi\right)^{2}}$, 故 $F\left(z+\pi\right)=F\left(z\right)$, $F$ 以 $\pi$ 为周期. 在基本带 $\left|\operatorname{Re}z\right|\le\frac\pi2$ 上, 当 $\left|\operatorname{Im}z\right|\to+\infty$ 时 $\frac{1}{\sin^{2}z}\to0$ 且级数 $\to0$, 故 $F$ 在带内有界, 由周期性 $F$ 在 $\mathbb{C}$ 有界. 由刘维尔定理 $F$ 为常数; 又 $F\to0$ 于 $\operatorname{Im}z\to+\infty$, 故 $F\equiv0$, 即所证. $\blacksquare$

## 15.4-8

令 $P$ 和 $Q$ 为多项式且 $\deg Q\ge\deg P+2$, $g=\frac{P}{Q}$ 和 $f\left(z\right)=g\left(z\right)\cot\pi z$. 令 $Z\left(Q\right)$ 为 $Q$ 的零点所组成的集合. (i) 证明: 存在 $M> 0$ 和 $R> 0$ 使得 $\left|g\left(z\right)\right|\le\frac{M}{\left|z\right|^{2}}$, $\forall z\notin\left\{\left|z\right|\le R\right\}$; (ii) 令 $N\in\mathbb{N}$ 且 $N> R$, 取四条边分别落在直线 $\operatorname{Re}z=\pm\left(N+\frac12\right)$ 和 $\operatorname{Im}z=\pm N$ 上的长方形 $C_{N}$, 证明: $\lim_{N\to\infty}\int_{C_{N}}f\left(z\right)\,dz=0$; (iii) 证明: 任意 $n\in\mathbb{Z}\setminus Z\left(Q\right)$, $\operatorname{Res}_{z=n}f=\frac{g\left(n\right)}{\pi}$; (iv) 证明: $\sum_{n=-\infty}^{+\infty}\operatorname{Res}_{z=n}f=-\sum_{a\in Z\left(Q\right)\setminus\mathbb{Z}}\operatorname{Res}_{z=a}f$; (v) 取 $g\left(z\right)=\frac{1}{z^{2}+c^{2}}$, $c> 0$, 计算 $\sum_{n=1}^{+\infty}\frac{1}{n^{2}+c^{2}}$.

### 解答 15.4-8

(i) $\deg Q\ge\deg P+2$, 故 $g\left(z\right)=\frac{P\left(z\right)}{Q\left(z\right)}$ 在 $\left|z\right|\to+\infty$ 时满足 $\left|g\left(z\right)\right|\le\frac{C}{\left|z\right|^{2}}$, 即存在 $M,R> 0$ 使 $\left|g\left(z\right)\right|\le\frac{M}{\left|z\right|^{2}}$, $\forall \left|z\right|> R$.

(ii) 在 $C_{N}$ 上 $\left|z\right|\ge N$, 故 $\left|g\left(z\right)\right|\le\frac{M}{N^{2}}$. 在 $\operatorname{Im}z=\pm N$ 和 $\operatorname{Re}z=\pm\left(N+\frac12\right)$ 上, 极点 $z=n$ (整数) 被避开, 且 $\cot\pi z$ 在这些边上一致有界 (当 $\left|\operatorname{Im}z\right|\ge N$, 或 $\operatorname{Re}z$ 为半整数时 $\cot\pi z$ 有界), 记 $\left|\cot\pi z\right|\le K$. 于是 $\left|f\right|\le\frac{MK}{N^{2}}$, 而 $C_{N}$ 的周长 $\le C'N$, 故

$$
\left|\int_{C_{N}}f\left(z\right)\,dz\right|\le\frac{MK}{N^{2}}\cdot C'N=\frac{C''}{N}\to0.
$$

(iii) $n\in\mathbb{Z}\setminus Z\left(Q\right)$, 则 $g$ 在 $n$ 处全纯且 $g\left(n\right)\ne0$; $\cot\pi z$ 在 $z=n$ 处有简单极点, $\cot\pi z\sim\frac{1}{\pi\left(z-n\right)}$, $\operatorname{Res}_{z=n}\cot\pi z=\frac1\pi$. 故 $\operatorname{Res}_{z=n}f=g\left(n\right)\operatorname{Res}_{z=n}\cot\pi z=\frac{g\left(n\right)}{\pi}$.

(iv) 由留数定理于 $C_{N}$ (当 $N$ 充分大, $C_{N}$ 内含全部整数 $\left|n\right|\le N$ 与 $Z\left(Q\right)$ 在其中的极点):

$$
\int_{C_{N}}f\,dz=2\pi i\left[\sum_{\left|n\right|\le N}\operatorname{Res}_{z=n}f+\sum_{a\in Z\left(Q\right),\,a\text{ 在 }C_{N}\text{ 内}}\operatorname{Res}_{z=a}f\right].
$$

由 (ii) 取 $N\to\infty$ 得 $\sum_{n=-\infty}^{+\infty}\operatorname{Res}_{z=n}f+\sum_{a\in Z\left(Q\right)}\operatorname{Res}_{z=a}f=0$. 若 $Z\left(Q\right)\cap\mathbb{Z}=\emptyset$ (如 (v) 的情形), 则 $\sum_{a\in Z\left(Q\right)}\operatorname{Res}_{z=a}f=\sum_{a\in Z\left(Q\right)\setminus\mathbb{Z}}\operatorname{Res}_{z=a}f$, 即得所证.

(v) $g\left(z\right)=\frac{1}{z^{2}+c^{2}}$, $Z\left(Q\right)=\left\{ic,-ic\right\}$ 非整数. 由 (iii), $\operatorname{Res}_{z=n}f=\frac{1}{\pi\left(n^{2}+c^{2}\right)}$; 由 (iv),

$$
\sum_{n=-\infty}^{+\infty}\frac{1}{\pi\left(n^{2}+c^{2}\right)}=-\left(\operatorname{Res}_{z=ic}f+\operatorname{Res}_{z=-ic}f\right).
$$

$\operatorname{Res}_{z=ic}g=\frac{1}{2ic}$, $\operatorname{Res}_{z=-ic}g=-\frac{1}{2ic}$; $\cot\left(i\pi c\right)=-i\coth\left(\pi c\right)$, $\cot\left(-i\pi c\right)=i\coth\left(\pi c\right)$. 故

$$
\operatorname{Res}_{z=ic}f=\frac{1}{2ic}\cdot\left(-i\coth\left(\pi c\right)\right)=-\frac{\coth\left(\pi c\right)}{2c},\quad
\operatorname{Res}_{z=-ic}f=\left(-\frac{1}{2ic}\right)\cdot\left(i\coth\left(\pi c\right)\right)=-\frac{\coth\left(\pi c\right)}{2c}.
$$

于是 $\sum_{n=-\infty}^{+\infty}\frac{1}{n^{2}+c^{2}}=\frac{\pi\coth\left(\pi c\right)}{c}$. 因 $\sum_{n=-\infty}^{+\infty}=2\sum_{n=1}^{+\infty}+\frac1{c^{2}}$,

$$
\sum_{n=1}^{+\infty}\frac{1}{n^{2}+c^{2}}=\frac12\left(\frac{\pi\coth\left(\pi c\right)}{c}-\frac{1}{c^{2}}\right)=\frac{\pi}{2c}\coth\left(\pi c\right)-\frac{1}{2c^{2}}.
$$

$\blacksquare$

## 15.4-13

假设区域 $D\subset\mathbb{C}$ 的边界为分段光滑的若当闭道路 $\Gamma$, $g$ 为 $\overline{D}=D\cup\Gamma$ 上的全纯函数, $f$ 是 $D$ 上的亚纯函数且在 $D$ 上只有有限多的零点和极点. 证明: $\frac{1}{2\pi i}\int_{\Gamma}g\left(z\right)\frac{f'\left(z\right)}{f\left(z\right)}\,dz=\sum_{j=1}^{n}r_{j}g\left(a_{j}\right)-\sum_{k=1}^{m}s_{k}g\left(p_{k}\right)$, 其中 $a_{j}$ 是 $f$ 的 $r_{j}$ 阶零点, $j=1,\ldots,n$, $p_{k}$ 是 $f$ 的 $s_{k}$ 阶极点, $k=1,\ldots,n$.

### 解答 15.4-13

$f$ 在 $D$ 上亚纯, 在零点 $a_{j}$ (阶 $r_{j}$) 附近 $f\left(z\right)=\left(z-a_{j}\right)^{r_{j}}h\left(z\right)$, $h\left(a_{j}\right)\ne0$, 故

$$
\frac{f'\left(z\right)}{f\left(z\right)}=\frac{r_{j}}{z-a_{j}}+\frac{h'\left(z\right)}{h\left(z\right)},\quad\operatorname{Res}_{z=a_{j}}\frac{f'}{f}=r_{j};
$$

在极点 $p_{k}$ (阶 $s_{k}$) 附近 $f\left(z\right)=\left(z-p_{k}\right)^{-s_{k}}H\left(z\right)$, $H\left(p_{k}\right)\ne0$, $\frac{f'}{f}=-\frac{s_{k}}{z-p_{k}}+\frac{H'}{H}$, $\operatorname{Res}_{z=p_{k}}\frac{f'}{f}=-s_{k}$. 因 $g$ 全纯, 由留数定理于 $\Gamma$ 内:

$$
\frac{1}{2\pi i}\int_{\Gamma}g\left(z\right)\frac{f'\left(z\right)}{f\left(z\right)}\,dz
=\sum_{j=1}^{n}\operatorname{Res}_{z=a_{j}}\left(g\frac{f'}{f}\right)+\sum_{k=1}^{m}\operatorname{Res}_{z=p_{k}}\left(g\frac{f'}{f}\right)
=\sum_{j=1}^{n}r_{j}g\left(a_{j}\right)-\sum_{k=1}^{m}s_{k}g\left(p_{k}\right).
$$

$\blacksquare$

## 16.3-1

证明: (i) 在极坐标 $\left(r,\theta\right)$ 表示下, $\Delta u=\frac{\partial^{2}u}{\partial r^{2}}+\frac1r\frac{\partial u}{\partial r}+\frac{1}{r^{2}}\frac{\partial^{2}u}{\partial\theta^{2}}$; (ii) 直接利用**定义 16.1.1 (调和函数)** 和 (i) 中的等式验证**命题 16.1.6 (均值性质)**.

### 解答 16.3-1

(i) 由 $x=r\cos\theta$, $y=r\sin\theta$, 链式法则:

$$
\frac{\partial}{\partial x}=\cos\theta\frac{\partial}{\partial r}-\frac{\sin\theta}{r}\frac{\partial}{\partial\theta},\quad
\frac{\partial}{\partial y}=\sin\theta\frac{\partial}{\partial r}+\frac{\cos\theta}{r}\frac{\partial}{\partial\theta}.
$$

平方相加 (利用 $\frac{\partial}{\partial r}\circ\frac{\partial}{\partial\theta}=\frac{\partial}{\partial\theta}\circ\frac{\partial}{\partial r}$):

$$
\Delta u=\left(\frac{\partial^{2}}{\partial x^{2}}+\frac{\partial^{2}}{\partial y^{2}}\right)u=\frac{\partial^{2}u}{\partial r^{2}}+\frac1r\frac{\partial u}{\partial r}+\frac{1}{r^{2}}\frac{\partial^{2}u}{\partial\theta^{2}}.
$$

(ii) 固定 $a$, 记 $M\left(r\right):=\frac{1}{2\pi}\int_{0}^{2\pi}u\left(a+re^{i\theta}\right)d\theta$. 由 (i) 与 $\Delta u=0$: $u_{rr}+\frac1r u_r+\frac1{r^{2}}u_{\theta\theta}=0$, 乘 $r$ 得 $\frac{\partial}{\partial r}\left(r u_r\right)=-\frac1r u_{\theta\theta}$. 于是

$$
\frac{d}{dr}\left(rM'\left(r\right)\right)=\frac{1}{2\pi}\int_{0}^{2\pi}\frac{\partial}{\partial r}\left(r u_r\right)d\theta=-\frac{1}{2\pi r}\int_{0}^{2\pi}u_{\theta\theta}d\theta=0,
$$

故 $rM'\left(r\right)$ 为常数. 当 $r\to0$ 时 $M'\left(r\right)\to u_r\left(a\right)$ (光滑), $rM'\left(r\right)\to0$, 故常数 $=0$, $M'\left(r\right)\equiv0$, $M$ 为常数. 又 $\lim_{r\to0}M\left(r\right)=u\left(a\right)$, 故 $M\left(R\right)=u\left(a\right)$, 即 $u\left(a\right)=\frac{1}{2\pi}\int_{0}^{2\pi}u\left(a+Re^{i\theta}\right)d\theta$. $\blacksquare$
