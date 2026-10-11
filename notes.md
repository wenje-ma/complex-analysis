# 复变函数

## 复平面与扩充复平面

**定义 1.1.5** (实部, 虚部, 共轭, 模)

对 $z=x+iy$, 称 $x$ 为实部, $y$ 为虚部, 记 $x=\operatorname{Re}z$, $y=\operatorname{Im}z$; $z$ 的共轭为 $\bar{z}=x-iy$; $z$ 的模为

$$
\left|z\right|=\sqrt{x^{2}+y^{2}}.
$$

**定义 1.2.2** (复数的极坐标形式)

复数 $z=x+iy\ne0$ 的极坐标形式为

$$
z=re^{i\phi},
$$

其中 $r=\left|z\right|$, $\phi$ 为幅角 $\operatorname{Arg}z$ (确定到差 $2\pi$ 的整数倍), $e^{i\phi}=\cos\phi+i\sin\phi$.

**定义 1.3.1** (球极投影)

单位球面 $S:\xi^{2}+\eta^{2}+\zeta^{2}=1$ 上, 复平面点 $z=\left(x,y\right)$ 对应 $Z=\left(\xi,\eta,\zeta\right)$, 其中

$$
\xi=\frac{2x}{1+\left|z\right|^{2}},\quad\eta=\frac{2y}{1+\left|z\right|^{2}},\quad\zeta=\frac{\left|z\right|^{2}-1}{1+\left|z\right|^{2}},
$$

建立 $\mathbb{C}$ 与 $S\setminus\left\{N\right\}$ (去掉北极点) 的一一对应.

![stereographic_projection.svg](figures/stereographic_projection.svg){width=100%}

**定义 1.4.2** (球弦度量)

对 $z,w\in\mathbb{C}$, 球弦距离

$$
\rho\left(z,w\right)=\frac{2\left|z-w\right|}{\sqrt{1+\left|z\right|^{2}}\sqrt{1+\left|w\right|^{2}}}.
$$

## 道路, 路径与区域

**定义 2.1.2** (道路的重参数化)

称道路 $\gamma_{1}:\left[a_{1},b_{1}\right]\to\mathbb{C}$ 是道路 $\gamma_{2}:\left[a_{2},b_{2}\right]\to\mathbb{C}$ 的重参数化, 如果存在单调递增函数 $\tau:\left[a_{1},b_{1}\right]\to\left[a_{2},b_{2}\right]$ 满足 $\tau\left(a_{1}\right)=a_{2}$, $\tau\left(b_{1}\right)=b_{2}$, 使得对任意 $t\in\left[a_{1},b_{1}\right]$ 有 $\gamma_{1}\left(t\right)=\gamma_{2}\left(\tau\left(t\right)\right)$; 若 $\tau$ 在某点 $\bar{t}$ 处不连续, 即 $\tau\left(\bar{t}-0\right)< \tau\left(\bar{t}+0\right)$, 还要求 $\gamma_{2}$ 在区间 $\left[\tau\left(\bar{t}-0\right),\tau\left(\bar{t}+0\right)\right]$ 上为常值.

**定义 2.1.4** (路径)

在道路重参数化意义下的一个道路等价类称为路径.

**定义 2.2.4** (区域)

称具有以下两条性质的点集 $D\subset\mathbb{C}$ (或 $\overline{\mathbb{C}}$) 为区域: (i-1) $D$ 是开集; (i-2) 道路连通性, 即任意 $a,b\in D$ 都存在位于 $D$ 中的道路以 $a,b$ 为端点.

![region_definition.svg](figures/region_definition.svg){width=100%}

**定理 2.2.6** (若当曲线定理)

复平面上的任一条若当闭曲线把整个平面分成两个没有公共点的区域: 一个有界的称为它的内区域, 一个无界的称为它的外区域.

![jordan_curve_theorem.svg](figures/jordan_curve_theorem.svg){width=50%}

**定义 2.2.7** (单, 多连通性)

设 $D$ 是复平面 $\mathbb{C}$ 上的区域, 称 $D$ 为单连通的, 如果 $D$ 内任意若当闭曲线的内区域都包含在 $D$ 内; 否则称它是多连通的.

![simply_vs_multiply_connected.svg](figures/simply_vs_multiply_connected.svg){width=100%}

**定义 2.4.1** (函数沿某集合的极限)

设函数 $f$ 在集合 $M\subset\overline{\mathbb{C}}$ 上有定义, 点 $a\in\overline{\mathbb{C}}$ 是 $M$ 的极限点. 称 $A\in\mathbb{C}$ 为 $f$ 当 $z$ 沿 $M$ 趋向 $a$ 时的极限, 记为 $\lim_{z\to a,\ z\in M}f\left(z\right)=A$, 如果对任意 $\epsilon> 0$ 存在 $\delta> 0$ 使对任意 $z\in M$, 若 $0< \rho\left(z,a\right)< \delta$ 则 $\rho\left(f\left(z\right),A\right)< \epsilon$.

**定义 2.4.2** (函数的有界性和连续性)

若存在 $C> 0$ 使 $\forall z\in M$ 有 $\left|f\left(z\right)\right|\le C$, 则称 $f$ 在 $M$ 上有界; 若 $\lim_{z\to a,\ z\in M}f\left(z\right)=f\left(a\right)$, 则称 $f$ 在点 $a$ 处 (沿 $M$) 连续; 若对 $\forall a\in M$ 均连续, 则称 $f$ 在 $M$ 上连续.

## 全纯性与可微性

**定义 3.1.1** ($\mathbb{R}$-线性与 $\mathbb{C}$-线性)

称 $\ell:\mathbb{C}\to\mathbb{C}$ 为 $\mathbb{R}$-线性 (或 $\mathbb{C}$-线性), 若 $\ell\left(a+b\right)=\ell\left(a\right)+\ell\left(b\right)$, 且对 $\lambda\in\mathbb{R}$ (或 $\mathbb{C}$) 有 $\ell\left(\lambda z\right)=\lambda\ell\left(z\right)$; $\mathbb{C}$-线性函数必然是 $\mathbb{R}$-线性的.

**定理 3.1.2** (线性函数的形式)

任意 $\mathbb{R}$-线性函数具有形式 $\ell\left(z\right)=az+b\bar{z}$, 其中

$$
a=\frac{\ell\left(1\right)-i\ell\left(i\right)}{2},\quad b=\frac{\ell\left(1\right)+i\ell\left(i\right)}{2};
$$

任意 $\mathbb{C}$-线性函数具有形式 $\ell\left(z\right)=az$; $\mathbb{R}$-线性 $\ell$ 是 $\mathbb{C}$-线性的当且仅当 $\ell\left(iz\right)=i\ell\left(z\right)$.

**定义 3.2.1** (可微性)

称 $f:U\to\mathbb{C}$ 在 $z$ 处 $\mathbb{R}$-可微 (或 $\mathbb{C}$-可微), 若

$$
\Delta f=f\left(z+\Delta z\right)-f\left(z\right)=\ell\left(\Delta z\right)+o\left(\left|\Delta z\right|\right),
$$

其中 $\ell$ 为 $\mathbb{R}$-线性 (或 $\mathbb{C}$-线性) 函数; 称 $\ell\left(\Delta z\right)$ 为实 (复) 微分 $df\left(z\right)$.

**定义 3.2.2** (形式导数)

形式导数算符 (Wirtinger 导数) 为

$$
\frac{\partial f}{\partial z}=\frac{1}{2}\left(\frac{\partial f}{\partial x}-i\frac{\partial f}{\partial y}\right),\quad\frac{\partial f}{\partial\bar{z}}=\frac{1}{2}\left(\frac{\partial f}{\partial x}+i\frac{\partial f}{\partial y}\right),
$$

且有 $df\left(z\right)=\frac{\partial f}{\partial z}\,dz+\frac{\partial f}{\partial\bar{z}}\,d\bar{z}$.

**定理 3.2.4**

$f=u\left(x,y\right)+iv\left(x,y\right)$ 在 $z=x+iy$ 处 $\mathbb{C}$-可微, 当且仅当 $f$ 在 $z$ 处 $\mathbb{R}$-可微且 $\frac{\partial f}{\partial\bar{z}}=0$, 这也等价于 $u,v$ 可微且满足柯西-黎曼方程

$$
\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y},\quad\frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}.
$$

**定义 3.3.1** (可导性)

称 $f$ 在 $a$ 处可导, 若

$$
\lim_{z\to a}\frac{f\left(z\right)-f\left(a\right)}{z-a}=A
$$

存在, 记 $A=f'\left(a\right)$.

**定理 3.3.3**

$f$ 在 $a$ 处可导当且仅当 $f$ 在 $a$ 处 $\mathbb{C}$-可微, 此时 $f'\left(a\right)=\frac{\partial f}{\partial z}\left(a\right)$.

## 共形映射与莫比乌斯变换

**定义 4.1.2** (共形)

称 $f$ 在 $z$ 处共形, 若 $f$ 在 $z$ 的某邻域上全纯, 单叶且 $f'\left(z\right)\ne0$.

**定理 4.1.5**

$f$ 在 $z$ 处共形当且仅当 $f$ 在 $z$ 处 $\mathbb{C}$-可微且 $f'\left(z\right)\ne0$.

**定义 4.2.1** (莫比乌斯变换)

形如

$$
f\left(z\right)=\frac{az+b}{cz+d}
$$

(其中 $a,b,c,d\in\mathbb{C}$ 且 $ad-bc\ne0$) 的函数称为莫比乌斯变换 (或分式线性变换), 它是扩充复平面到自身的双射, 逆变换也是莫比乌斯变换.

**定理 4.3.4** (保圆性)

莫比乌斯变换把扩充复平面上的圆 (广义圆, 即圆或直线) 映成扩充复平面上的圆, 并保持切角.

![mobius_transformation.svg](figures/mobius_transformation.svg){width=100%}

**定义 4.4.1** (单叶)

称 $f$ 在区域 $D$ 上单叶, 若 $f$ 在 $D$ 上是单射.

**定理 4.4.2**

若 $f$ 在 $z_{0}$ 处全纯且 $f'\left(z_{0}\right)=0$, 则 $f$ 在 $z_{0}$ 的任意邻域上都不是单叶的.

## 指数函数与三角函数

**命题 5.3.1**

(i) 指数函数 $e^{z}$ 在 $\mathbb{C}$ 上全纯且不取零值; (iv) $e^{z}$ 以 $2\pi i$ 为最小周期; (v) $e^{z}$ 在某区域上单叶当且仅当该区域内任意不同两点之差不是 $2\pi i$ 的整数倍.

**定义 5.4.1** (复正弦与余弦)

$$
\cos z=\frac{e^{iz}+e^{-iz}}{2},\quad\sin z=\frac{e^{iz}-e^{-iz}}{2i},\quad z\in\mathbb{C}.
$$

**命题 5.4.2**

$\sin z,\cos z$ 在 $\mathbb{C}$ 上全纯, $\left(\sin z\right)'=\cos z$, $\left(\cos z\right)'=-\sin z$.

![exponential_mapping.svg](figures/exponential_mapping.svg){width=100%}

## 多值函数

**定义 6.1.1** (幅角函数的连续分支)

称区域 $D\subset\mathbb{C}\setminus\left\{0\right\}$ 上的单值连续函数为 $\operatorname{Arg}z$ 的连续分支, 若 $\forall z\in D$ 存在 $k\in\mathbb{Z}$ 使 $f\left(z\right)=\arg z+2k\pi$.

**定义 6.2.1** (复变对数函数)

满足 $e^{w}=z$ 的复数 $w$ 称为 $z$ 的对数, 记为 $\operatorname{Ln}z$; 它是无穷多值的.

**命题 6.2.5** (对数的全纯分支)

区域 $D\subset\mathbb{C}\setminus\left\{0\right\}$ 上的连续对数分支必全纯, 故对数函数的单值连续分支即全纯分支.

**定义 6.2.7** (分支点)

多值函数 $\operatorname{Ln}z$ (或幂函数) 的分支点是 $0$ 与 $\infty$, 沿连接它们的任意割线可定义单值分支.

**定义 6.3.1** (幂函数)

$$
z^{\alpha}=e^{\alpha\operatorname{Ln}z};
$$

在 $\mathbb{C}\setminus\left(-\infty,0\right]$ 上取主分支, 即 $z^{\alpha}=e^{\alpha\operatorname{Log}z}$.

## 路径积分与原函数

**定义 7.1.1** (路径积分)

$f$ 沿分段光滑道路 $\gamma:\left[a,b\right]\to\mathbb{C}$ 的积分为

$$
\int_{\gamma}f\,dz=\int_{a}^{b}f\left(\gamma\left(t\right)\right)\gamma'\left(t\right)\,dt.
$$

**定义 7.2.1** (原函数)

区域 $D$ 上的全纯函数 $F$ 称为 $f$ 的原函数, 若 $F'=f$ 于 $D$; $f$ 有原函数当且仅当 $f$ 沿 $D$ 内任意闭道路的积分为零.

**定理 7.2.3**

$\frac{1}{z}$ 在区域 $D\subset\mathbb{C}\setminus\left\{0\right\}$ 上有原函数当且仅当 $D$ 上存在 $\operatorname{Ln}z$ 的全纯分支; 特别地, 单连通区域上的全纯函数都有原函数, 且

$$
\int_{\gamma}f\,dz=F\left(\gamma\left(b\right)\right)-F\left(\gamma\left(a\right)\right).
$$

## 柯西定理与积分公式

**定理 8.1.4** (柯西定理)

若 $f$ 在区域 $D$ 上全纯且 $\gamma_{0},\gamma_{1}$ 是 $D$ 内具有相同端点的同伦道路 (或同伦闭道路), 则 $\int_{\gamma_{0}}f\,dz=\int_{\gamma_{1}}f\,dz$; 特别地 $f$ 沿 $D$ 内闭道路积分为零.

**定理 8.3.1** (柯西积分公式)

若 $f$ 在单连通区域 $D$ 上全纯, $\gamma$ 是 $D$ 内的分段光滑若当闭曲线, $z$ 在其内区域, 则

$$
f\left(z\right)=\frac{1}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.
$$

**定理 8.3.2** (高阶导数公式)

$$
f^{\left(n\right)}\left(z\right)=\frac{n!}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\left(\zeta-z\right)^{n+1}}\,d\zeta,\quad n\ge1.
$$

## 全纯函数的基本定理

**定理 5.1.2** (代数学基本定理)

任意 $n\ge1$ 次多项式在复数域 $\mathbb{C}$ 中至少有一个根.

**定理 9.1.3** (刘威尔)

$\mathbb{C}$ 上的有界整函数必为常值函数.

**定理 9.3.2** (恒等定理)

若区域 $D$ 上的全纯函数 $f$ 的零点在 $D$ 内有聚点, 则 $f\equiv0$.

**定理 9.3.3** (唯一性定理)

若区域 $D$ 上的两个全纯函数 $f,g$ 在 $D$ 内有聚点的点集上相等, 则 $f\equiv g$.

**定理 10.1.4** (开映射定理)

非常值的全纯函数把区域映成区域 (开集).

**定理 10.2.4**

若 $f$ 在开集 $\Omega$ 上全纯且单叶, 则 $f\left(\Omega\right)$ 是开集且 $f^{-1}$ 在 $f\left(\Omega\right)$ 上全纯.

## 最大模原理与施瓦茨引理

**定理 10.1.1** (最大模原理)

若区域 $D$ 上的全纯函数 $f$ 的模 $\left|f\right|$ 在 $z_{0}\in D$ 处有局部极大值, 则 $f$ 在 $D$ 上为常值; 特别地 $\left|f\right|$ 在紧闭区域上的最大值在边界取到.

**定理 10.3.1** (施瓦茨引理)

若 $f:\mathbb{D}\to\mathbb{D}$ 全纯且 $f\left(0\right)=0$, 则 $\left|f\left(z\right)\right|\le\left|z\right|$ 且 $\left|f'\left(0\right)\right|\le1$; 等号在某点成立 (或 $\left|f'\left(0\right)\right|=1$) 当且仅当

$$
f\left(z\right)=e^{i\theta}z.
$$

**定义 10.3.2** (布拉施克因子)

对 $a\in\mathbb{D}$, 称

$$
\phi_{a}\left(z\right)=\frac{z-a}{1-\bar{a}z}
$$

为布拉施克因子; 它是 $\mathbb{D}$ 的自同构, 满足 $\left|\phi_{a}\left(e^{i\theta}\right)\right|=1$ 且 $\phi_{a}\left(a\right)=0$.

**定理 10.3.4** (施瓦茨-皮克)

对 $\mathbb{D}\to\mathbb{D}$ 的全纯 $f$,

$$
\left|\frac{f\left(z\right)-f\left(w\right)}{1-\overline{f\left(w\right)}f\left(z\right)}\right|\le\left|\frac{z-w}{1-\bar{w}z}\right|;
$$

微分形式为

$$
\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\le\frac{1}{1-\left|z\right|^{2}},
$$

等号当且仅当 $f\in\operatorname{auto}\left(\mathbb{D}\right)$.

## 内紧收敛与黎曼映射定理

**定义 11.1.1** (内紧收敛)

称全纯函数列 $\left\{f_{n}\right\}$ 在区域 $\Omega$ 上内紧收敛到 $f$, 若它在 $\Omega$ 的任意紧子集上都一致收敛到 $f$.

**定理 11.1.2**

若 $\left\{f_{n}\right\}$ 在 $\Omega$ 上内紧一致收敛到连续函数 $f$, 则 $f$ 在 $\Omega$ 上全纯.

**定理 11.1.3** (蒙泰尔)

若全纯函数列 $\left\{f_{n}\right\}$ 在区域 $D$ 的任意紧子集上一致有界, 则存在子列在 $D$ 上内紧一致收敛.

**定理 11.2.2** (黎曼映射定理)

任意不为全平面的单连通区域都与开单位圆盘共形等价.

![riemann_mapping_theorem.svg](figures/riemann_mapping_theorem.svg){width=100%}

**定义 11.2.6** (映射半径)

对单连通区域 $D$ 且 $\mathbb{C}\setminus D\ne\varnothing$ 及 $a\in D$, 称使存在唯一共形等价 $f:D\to\mathbb{D}_{\rho}:=\left\{\left|z\right|< \rho\right\}$, $f\left(a\right)=0$, $f'\left(a\right)=1$ 的正数 $\rho$ 为 $D$ 相对 $a$ 的映射半径 $\rho\left(D,a\right)$.

## 共形映射到标准区域

**命题 5.2.2** (指数映射带区域)

$z\mapsto e^{z}$ 把水平带 $\left\{0< \operatorname{Im}z< 2\pi\right\}$ 共形地映成 $\mathbb{C}\setminus\left[0,+\infty\right)$.

**命题 5.2.3**

莫比乌斯变换 $z\mapsto\frac{z-\alpha}{z-\beta}$ ($\alpha,\beta\in\mathbb{C}$) 把不含 $\alpha,\beta$ 的圆映成圆, 且 $\left|z-\alpha\right|/\left|z-\beta\right|$ 在阿波罗尼奥斯圆上为常数.

**命题 4.3.7**

莫比乌斯变换把两交点映射到 $0$ 与 $\infty$ 时, 相交两圆被映成过原点的两条直线, 区域映成角域.

**定义 6.2.4** (幂函数)

$z^{\alpha}=e^{\alpha\log z}$ 把角域 $\left\{0< \arg z< \beta\right\}$ 共形地映成角域 $\left\{0< \arg w< \alpha\beta\right\}$ (取合适的全纯分支).

## 洛朗级数与孤立奇点

**定义 13.1.3** (洛朗级数)

$f$ 在圆环 $A\left(a;r;R\right)$ 上的洛朗级数为

$$
\sum_{n=-\infty}^{+\infty}c_{n}\left(z-a\right)^{n},
$$

其中正则部 $\sum_{n\ge0}c_{n}\left(z-a\right)^{n}$, 主部 $\sum_{n< 0}c_{n}\left(z-a\right)^{n}$.

**定义 13.2.2** (孤立奇点分类)

$a$ 是 $f$ 的可去奇点若主部系数全为 $0$; 是 $m$-阶极点若 $c_{-m}\ne0$ 且 $n< -m$ 时 $c_{n}=0$; 是本性奇点若主部有无穷多项.

**定理 13.2.4** (黎曼)

$a$ 是 $f$ 的可去奇点当且仅当 $f$ 在 $a$ 的去心邻域上有界.

**定理 13.2.5**

$a$ 是 $f$ 的可去奇点当且仅当 $\lim_{z\to a}f\left(z\right)$ 存在且有限.

## 留数与留数定理

**定义 14.1.1** (留数)

$f$ 在孤立奇点 $a$ 的留数 $\operatorname{Res}_{a}f$ 等于其洛朗展开中 $\frac{1}{z-a}$ 项的系数 $c_{-1}$.

**定理 14.1.3** (留数定理)

若 $f$ 在区域 $D$ 上除有限个孤立奇点外全纯, $\gamma$ 是 $D$ 内的若当闭曲线且这些奇点都在 $\gamma$ 内, 则

$$
\int_{\gamma}f\,dz=2\pi i\sum\operatorname{Res}f.
$$

**留数之和公式**

全复平面上的亚纯函数 $f$ 的全体有限留数与 $\infty$ 处留数之和为零, 且

$$
\operatorname{Res}_{\infty}f=-\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right).
$$

## 整函数, 亚纯函数与幅角原理

**定义 15.1.1**

在复平面 $\mathbb{C}$ 上处处全纯的函数称为整函数; 除极点外处处全纯的函数称为亚纯函数.

**定理 15.2.7** (幅角原理)

若 $f$ 在区域 $D$ 上亚纯, 零点 $a_{j}$ 的阶为 $r_{j}$, 极点 $p_{k}$ 的阶为 $s_{k}$, $\Gamma$ 是 $D$ 内的若当闭曲线且避开这些点, 则

$$
\frac{1}{2\pi i}\int_{\Gamma}\frac{f'}{f}\,dz=\sum r_{j}-\sum s_{k}.
$$

## 调和函数与狄利克雷问题

**定义 16.1.1** (调和函数)

区域 $D$ 上的实值 $C^{2}$ 函数 $u$ 称为调和的, 若 $\Delta u=u_{xx}+u_{yy}=0$ 于 $D$.

**命题 16.1.6** (均值性质)

调和函数 $u$ 于 $B\left(a,R\right)$ 有

$$
u\left(a\right)=\frac{1}{2\pi}\int_{0}^{2\pi}u\left(a+Re^{i\theta}\right)d\theta.
$$

**定理 16.2.9** (泊松积分)

圆盘 $B\left(a,R\right)$ 上狄利克雷问题有解

$$
u\left(z\right)=\frac{R^{2}-\left|z-a\right|^{2}}{2\pi R}\int_{0}^{2\pi}\frac{f\left(a+Re^{i\theta}\right)}{\left|z-a-Re^{i\theta}\right|^{2}}d\theta.
$$

**定理 16.2.10**

有界若当域上的狄利克雷问题可解.

## 全纯延拓

**定义 17.2.1** (典范元)

称 $\left(f,U\right)$ 为典范元, 若 $U$ 是 $\mathbb{C}$ 的非空开集且 $f$ 在 $U$ 上全纯.

**定义 17.2.2** (直接全纯延拓)

典范元 $\left(f_{1},U_{1}\right)$ 是 $\left(f_{0},U_{0}\right)$ 的直接全纯延拓, 若 $U_{0}\cap U_{1}\ne\emptyset$ 且 $f_{0}=f_{1}$ 于 $U_{0}\cap U_{1}$.

**定义 17.2.3** (全纯延拓)

$\left(f_{0},U_{0}\right)$ 沿道路 $\gamma$ 全纯延拓到 $\left(f_{1},U_{1}\right)$, 若存在一族典范元 $\left(f_{t},U_{t}\right)_{t\in\left[0,1\right]}$ 使每步为直接延拓且 $f_{0},f_{1}$ 为首末元.

**定理 17.3.6** (单值性定理)

若 $D$ 是单连通区域且 $\left(f,U\right)$ 沿 $D$ 内每条道路都可全纯延拓, 则 $f$ 延拓为 $D$ 上的单值全纯函数.

## 施瓦茨对称原理

**引理 18.1.1** (拼接引理)

区域 $D_{1},D_{2}$ 不相交且有公共边界线段 $\gamma$, $f_{1},f_{2}$ 分别在其上全纯并连续到 $\gamma$, 若 $f_{1}=f_{2}$ 于 $\gamma$, 则拼接的函数在 $D_{1}\cup\gamma\cup D_{2}$ 上全纯.

**定理 18.1.2** (施瓦茨对称原理 I)

$D$ 关于实轴对称, $f$ 在 $D^{+}:=D\cap\left\{\operatorname{Im}z> 0\right\}$ 全纯, 连续到 $D^{+}\cap\mathbb{R}$ 且在其上取实值, 则 $f$ 延拓为 $D$ 上全纯函数.

**定理 18.1.3** (施瓦茨对称原理 II)

$f$ 在 $D^{+}$ 全纯, 连续到边界线段 $I\subset\mathbb{R}$ 且在其上取实值, 则 $f$ 延拓到 $D^{+}\cup I\cup D^{-}$ 上, 其中 $D^{-}$ 是 $D^{+}$ 关于实轴的对称, 延拓满足 $f\left(z\right)=\overline{f\left(\bar z\right)}$.

## 伽玛函数

**定义 19.1.1** (伽玛函数)

$$
\Gamma\left(s\right)=\int_{0}^{+\infty}e^{-t}t^{s-1}dt,\quad s> 0.
$$

**命题 19.1.3**

若 $\operatorname{Re}z> 0$, 则 $\Gamma\left(z+1\right)=z\Gamma\left(z\right)$; 它可延拓为 $\mathbb{C}$ 上的亚纯函数, 只在 $0,-1,-2,\ldots$ 有简单极点.

**定理 19.2.1** (反射公式)

$$
\Gamma\left(z\right)\Gamma\left(1-z\right)=\frac{\pi}{\sin\pi z},\quad z\in\mathbb{C}\setminus\mathbb{Z}.
$$

**定理 19.2.3** (魏尔斯特拉斯)

$$
\frac{1}{\Gamma\left(z\right)}=ze^{\gamma z}\prod_{n=1}^{+\infty}\left(1+\frac{z}{n}\right)e^{-\frac{z}{n}}.
$$

**定理 19.2.4** (欧拉-高斯)

$$
\Gamma\left(z\right)=\lim_{n\to+\infty}\frac{n!\,n^{z}}{z\left(z+1\right)\cdots\left(z+n\right)}.
$$

## 黎曼 zeta 函数

**定义 20.1.1** (黎曼 $\zeta$-函数)

$$
\zeta\left(z\right)=\sum_{n=1}^{+\infty}\frac1{n^{z}},\quad\operatorname{Re}z> 1;
$$

由欧拉乘积

$$
\zeta\left(z\right)=\prod_{p}\left(1-p^{-z}\right)^{-1}
$$

知其无零点.

**定理 20.1.6** (亚纯延拓)

$\zeta$ 亚纯延拓到 $\mathbb{C}$, 只在 $z=1$ 有简单极点, 且

$$
\lim_{z\to1}\left(\zeta\left(z\right)-\frac1{z-1}\right)=\gamma
$$

(欧拉常数).

**定理 20.2.2** (函数方程)

$$
\zeta\left(z\right)=2^{z}\pi^{z-1}\sin\frac{\pi z}{2}\,\Gamma\left(1-z\right)\zeta\left(1-z\right).
$$

**推论 20.2.3**

$\zeta$ 的平凡零点恰为 $-2,-4,-6,\ldots$; 非平凡零点全落在临界带 $0< \operatorname{Re}z< 1$ 内.

## 毕卡定理

**定理 21.1.3** (布洛克)

存在常数 $B> 0$: 若 $f$ 在单位圆盘上全纯且 $f'\left(0\right)=1$, 则 $f\left(\mathbb{D}\right)$ 含一个半径至少 $B$ 的圆盘.

**定理 21.2.3** (毕卡小定理)

非常值整函数取 $\mathbb{C}$ 中每个值或除一个值外的所有值.

**定理 21.2.4** (毕卡小定理, 亚纯形式)

非常值亚纯函数至多漏掉两个值.

**定理 21.4** (毕卡大定理)

全纯函数在本性奇点的任意去心邻域内取每个值无穷多次 (至多漏一个值).

## 正规族

**定义 22.1.5** (正规族)

称区域 $D$ 上的亚纯函数族 $\mathcal{F}$ 在 $D$ 上是正规的, 若 $\mathcal{F}$ 的每个序列在 $\mathfrak{C}\left(D,\hat{\mathbb{C}}\right)$ 上有收敛子列 (在 $D$ 的紧子集上按球弦度量一致收敛到亚纯函数或 $\infty$).

**定理 22.1.7** (马蒂)

$\mathcal{F}$ 在 $D$ 上正规当且仅当对 $D$ 的每个紧子集 $K$, 球面导数

$$
f^{\#}\left(z\right)=\frac{2\left|f'\left(z\right)\right|}{1+\left|f\left(z\right)\right|^{2}}
$$

在 $K$ 上一致有界 ($f\in\mathcal{F}$).

**定理 22.2.1** (扎尔克曼)

$\mathcal{F}$ 不正规当且仅当存在 $f_{n}\in\mathcal{F}$, $z_{n}\to z_{0}\in D$, $\rho_{n}\to0^{+}$ 使 $g_{n}\left(w\right):=f_{n}\left(z_{n}+\rho_{n}w\right)$ 内紧一致收敛到非常值整函数或亚纯函数.

**定理 22.2.3** (蒙泰尔)

区域 $D$ 上一致漏掉三个不同值 (扩充复平面上的点) 的亚纯函数族是正规的.
