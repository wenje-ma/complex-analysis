# week2

> **定义 2.1.2 (道路的重参数化)**
> 
> 称道路 $\gamma_{1}:\left[a_{1},b_{1}\right]\to\mathbb{C}$ 是道路 $\gamma_{2}:\left[a_{2},b_{2}\right]\to\mathbb{C}$ 的重参数化, 如果存在单调递增函数 $\tau:\left[a_{1},b_{1}\right]\to\left[a_{2},b_{2}\right]$ 满足 $\tau\left(a_{1}\right)=a_{2}$, $\tau\left(b_{1}\right)=b_{2}$, 使得对任意 $t\in\left[a_{1},b_{1}\right]$ 有 $\gamma_{1}\left(t\right)=\gamma_{2}\left(\tau\left(t\right)\right)$; 若 $\tau$ 在某点 $\overline{t}$ 处不连续, 即 $\tau\left(\overline{t}-0\right)<\tau\left(\overline{t}+0\right)$, 还要求 $\gamma_{2}$ 在区间 $\left[\tau\left(\overline{t}-0\right),\tau\left(\overline{t}+0\right)\right]$ 上为常值.

> **定义 2.1.4 (路径)**
> 
> 在道路重参数化意义下的一个道路等价类称为路径.

> **定义 2.2.4 (区域)**
> 
> 称具有以下两条性质的点集 $D\subset\mathbb{C}$ (或 $\overline{\mathbb{C}}$) 为区域: (i-1) $D$ 是开集; (i-2) 道路连通性, 即任意 $a,b\in{D}$ 都存在位于 $D$ 中的道路以 $a,b$ 为端点.

> **定理 2.2.6 (若当曲线定理)**
> 
> 复平面上的任一条若当闭曲线把整个平面分成两个没有公共点的区域: 一个有界的称为它的内区域, 一个无界的称为它的外区域.

> **定义 2.2.7 (单连通与多连通性)**
> 
> 设 $D$ 是复平面 $\mathbb{C}$ 上的区域, 称 $D$ 为单连通的, 如果 $D$ 内任意若当闭曲线的内区域都包含在 $D$ 内; 否则称它是多连通的.

> **定义 2.4.1 (函数沿某集合的极限)**
> 
> 设函数 $f$ 在集合 $M\subset\overline{\mathbb{C}}$ 上有定义, 点 $a\in\overline{\mathbb{C}}$ 是 $M$ 的极限点. 称 $A\in\mathbb{C}$ 为 $f$ 当 $z$ 沿 $M$ 趋向 $a$ 时的极限, 记为 $\lim_{z\to{a},z\in{M}}f\left(z\right)=A$, 如果对任意 $\varepsilon>0$ 存在 $\delta>0$ 使对任意 $z\in{M}$, 若 $0<\rho\left(z,a\right)<\delta$ 则 $\rho\left(f\left(z\right),A\right)<\varepsilon$.

> **定义 2.4.2 (函数的有界性和连续性)**
> 
> 若存在 $C>0$ 使 $\forall{z}\in{M}$ 有 $\left|f\left(z\right)\right|\le{C}$, 则称 $f$ 在 $M$ 上有界; 若 $\lim_{z\to{a},z\in{M}}f\left(z\right)=f\left(a\right)$, 则称 $f$ 在点 $a$ 处 (沿 $M$) 连续; 若对 $\forall{a}\in{M}$ 均连续, 则称 $f$ 在 $M$ 上连续.

> **定义 3.1.1 ($\mathbb{R}$-线性与 $\mathbb{C}$-线性)**
> 
> 称 $\ell:\mathbb{C}\to\mathbb{C}$ 为 $\mathbb{R}$-线性 (或 $\mathbb{C}$-线性), 若 $\ell\left(a+b\right)=\ell\left(a\right)+\ell\left(b\right)$, 且对 $\lambda\in\mathbb{R}$ (或 $\mathbb{C}$) 有 $\ell\left(\lambda{z}\right)=\lambda\ell\left(z\right)$; $\mathbb{C}$-线性函数必然是 $\mathbb{R}$-线性的.

> **定理 3.1.2 (线性函数的形式)**
> 
> 任意 $\mathbb{R}$-线性函数具有形式 $\ell\left(z\right)=az+b\overline{z}$, 其中

$$
a=\frac{\ell\left(1\right)-i\ell\left(i\right)}{2},\quad{b}=\frac{\ell\left(1\right)+i\ell\left(i\right)}{2};
$$
任意 $\mathbb{C}$-线性函数具有形式 $\ell\left(z\right)=az$; $\mathbb{R}$-线性 $\ell$ 是 $\mathbb{C}$-线性的当且仅当 $\ell\left(iz\right)=i\ell\left(z\right)$.

> **定义 3.2.1 (可微性)**
> 
> 称 $f$ 在 $z$ 处 $\mathbb{R}$-可微 (或 $\mathbb{C}$-可微), 若 $\Delta{f}=\ell\left(\Delta{z}\right)+o\left(\left|\Delta{z}\right|\right)$, 其中 $\ell$ 为 $\mathbb{R}$-线性 (或 $\mathbb{C}$-线性) 函数.

> **定义 3.2.2 (形式导数)**
> 
> 形式导数算符为

$$
\frac{\partial{f}}{\partial{z}}=\frac{1}{2}\left(\frac{\partial{f}}{\partial{x}}-i\frac{\partial{f}}{\partial{y}}\right),\quad\frac{\partial{f}}{\partial\overline{z}}=\frac{1}{2}\left(\frac{\partial{f}}{\partial{x}}+i\frac{\partial{f}}{\partial{y}}\right),
$$
且有 $df\left(z\right)=\frac{\partial{f}}{\partial{z}}\,dz+\frac{\partial{f}}{\partial\overline{z}}\,d\overline{z}$.

> **定理 3.2.4 (柯西-黎曼方程)**
> 
> $f$ 在 $z$ 处 $\mathbb{C}$-可微当且仅当 $f$ 在 $z$ 处 $\mathbb{R}$-可微且 $\frac{\partial{f}}{\partial\overline{z}}=0$; 这也等价于 $u,v$ 满足柯西-黎曼方程.

$$
\frac{\partial{u}}{\partial{x}}=\frac{\partial{v}}{\partial{y}},\quad\frac{\partial{u}}{\partial{y}}=-\frac{\partial{v}}{\partial{x}}.
$$

> **定义 3.3.1 (可导性)**
> 
> 称 $f$ 在 $a$ 处可导, 若

$$
\lim_{z\to{a}}\frac{f\left(z\right)-f\left(a\right)}{z-a}=A
$$
存在, 记 $A=f'\left(a\right)$.

> **定理 3.3.3**
> 
> $f$ 在 $a$ 处可导当且仅当 $f$ 在 $a$ 处 $\mathbb{C}$-可微, 此时 $f'\left(a\right)=\frac{\partial{f}}{\partial{z}}\left(a\right)$.

> **定义 4.1.2 (共形)**
> 
> 称 $f$ 在 $z$ 处共形, 若 $f$ 在 $z$ 的某邻域上全纯, 单叶且 $f'\left(z\right)\ne0$.

> **定理 4.1.5 (共形判别)**
> 
> $f$ 在 $z$ 处共形当且仅当 $f$ 在 $z$ 处 $\mathbb{C}$-可微且 $f'\left(z\right)\ne0$.

> **定义 4.2.1 (莫比乌斯变换)**
> 
> 形如

$$
f\left(z\right)=\frac{az+b}{cz+d}
$$
(其中 $a,b,c,d\in\mathbb{C}$ 且 $ad-bc\ne0$) 的函数称为莫比乌斯变换 (或分式线性变换), 它是扩充复平面到自身的双射, 逆变换也是莫比乌斯变换.

> **定理 4.3.4 (保圆性)**
> 
> 莫比乌斯变换把扩充复平面上的广义圆 (圆或直线) 映成广义圆, 并保持切角.

> **定义 4.4.1 (单叶)**
> 
> 称 $f$ 在区域 $D$ 上单叶, 若 $f$ 在 $D$ 上是单射.

> **定理 4.4.2**
> 
> 若 $f$ 在 $z_{0}$ 处全纯且 $f'\left(z_{0}\right)=0$, 则 $f$ 在 $z_{0}$ 的任意邻域上都不是单叶的.

> **定理 10.2.4 (单叶全纯映射的逆)**
> 
> 若 $f$ 在开集 $\Omega$ 上全纯且单叶, 则 $f\left(\Omega\right)$ 是开集且 $f^{-1}$ 在 $f\left(\Omega\right)$ 上全纯.

## 2.5-10

试给出 $\mathbb{C}$ 上的一个区域 $D$ 使得 $\mathbb{C}\setminus{D}$ 是连通集但 $D$ 不是单连通的.

### 解答 2.5-10

取闭单位圆盘的外部区域

$$
D=\left\{z\in\mathbb{C}:\left|z\right|>1\right\}.
$$

先验证 $D$ 是区域 (**定义 2.2.4 (区域)**): $D$ 是开集 (开集 $\left\{\left|z\right|>1\right\}$); 且对任意 $a,b\in{D}$, 存在 $R>\max\left\{\left|a\right|,\left|b\right|\right\}$, 取圆弧 $\gamma_{1}$ 把 $a$ 连到模为 $R$ 的点, 沿圆周 $\left|z\right|=R$ 的弧 $\gamma_{2}$, 再取圆弧 $\gamma_{3}$ 连回 $b$, 三段均在 $D$ 内, 故 $D$ 道路连通. 因而 $D$ 是区域.

其次, $\mathbb{C}\setminus{D}=\left\{z\in\mathbb{C}:\left|z\right|\le1\right\}$ 是闭单位圆盘, 显然连通.

最后, $D$ 不是单连通的: 圆周 $\gamma\left(t\right)=2e^{it}$, $t\in\left[0,2\pi\right]$, 位于 $D$ 内且是若当闭曲线, 其内区域 $\left\{\left|z\right|<2\right\}$ 包含闭单位圆盘 $\left\{\left|z\right|\le1\right\}\subset\mathbb{C}\setminus{D}$, 故 $\left\{\left|z\right|<2\right\}\not\subset{D}$. 由**定义 2.2.7 (单连通与多连通性)**, $D$ 不是单连通的.

综上, $D=\left\{z:\left|z\right|>1\right\}$ 满足要求. $\blacksquare$

## 3.4-1

令 $f$ 是复变函数且在 $z_{0}\in\mathbb{C}$ 处是 $\mathbb{R}$-可微的. 证明: 当 $z\to{z}_{0}$ 时, 点集

$$
\left\{\frac{f\left(z\right)-f\left(z_{0}\right)}{z-z_{0}}\right\}
$$

的极限点的集合组成了以 $\frac{\partial{f}}{\partial{z}}\left(z_{0}\right)$ 为圆心, 半径为 $\left|\frac{\partial{f}}{\partial\overline{z}}\left(z_{0}\right)\right|$ 的圆.

### 解答 3.4-1

由 $f$ 在 $z_{0}$ 处 $\mathbb{R}$-可微 (**定义 3.2.1 (可微性)**), 记 $\Delta{z}=z-z_{0}$, 则

$$
\Delta{f}=f\left(z\right)-f\left(z_{0}\right)=\ell\left(\Delta{z}\right)+o\left(\left|\Delta{z}\right|\right),
$$

其中 $\ell$ 是 $\mathbb{R}$-线性函数. 由**定理 3.1.2 (线性函数的形式)**, $\ell\left(\Delta{z}\right)=a\Delta{z}+b\Delta\overline{z}$, 结合**定义 3.2.2 (形式导数)**, $a=\frac{\partial{f}}{\partial{z}}\left(z_{0}\right)$, $b=\frac{\partial{f}}{\partial\overline{z}}\left(z_{0}\right)$. 于是

$$
\frac{f\left(z\right)-f\left(z_{0}\right)}{z-z_{0}}=\frac{\partial{f}}{\partial{z}}\left(z_{0}\right)+\frac{\partial{f}}{\partial\overline{z}}\left(z_{0}\right)\frac{\Delta\overline{z}}{\Delta{z}}+\frac{o\left(\left|\Delta{z}\right|\right)}{\Delta{z}}.
$$

当 $z\to{z}_{0}$ (即 $\Delta{z}\to0$) 时, 末项 $\frac{o\left(\left|\Delta{z}\right|\right)}{\Delta{z}}\to0$. 令 $\Delta{z}=re^{i\theta}$ ($r>0$), 则 $\frac{\Delta\overline{z}}{\Delta{z}}=e^{-2i\theta}$, 其取值遍及整个单位圆周. 故差商的极限点集合恰为

$$
\left\{\frac{\partial{f}}{\partial{z}}\left(z_{0}\right)+\frac{\partial{f}}{\partial\overline{z}}\left(z_{0}\right)e^{-2i\theta}:\theta\in\left[0,2\pi\right)\right\},
$$

即以 $\frac{\partial{f}}{\partial{z}}\left(z_{0}\right)$ 为圆心, 半径为 $\left|\frac{\partial{f}}{\partial\overline{z}}\left(z_{0}\right)\right|$ 的圆周. $\blacksquare$

## 3.4-3

函数 $f$ 在 $z_{0}\in\mathbb{C}$ 处是 $\mathbb{C}$-可微的且 $f'\left(z_{0}\right)\ne0$. 假设 $f$ 在以 $z_{0}$ 为圆心, $r>0$ 为半径的圆盘 $B\left(z_{0},r\right)$ 上有定义, $l$ 为通过 $f\left(z_{0}\right)$ 点的任意一条直线. 证明: $B\left(z_{0},r\right)$ 的像 $f\left(B\left(z_{0},r\right)\right)$ 不可能全部落在 $l$ 的某一侧上.

### 解答 3.4-3

反证. 假设 $f\left(B\left(z_{0},r\right)\right)$ 全部落在过 $f\left(z_{0}\right)$ 的某条直线 $l$ 的某一侧. 经平移与旋转, 可设 $f\left(z_{0}\right)=0$ 且 $l$ 为实轴, 于是 $\operatorname{Im}f\left(z\right)\ge0$ (或 $\le0$) 对一切 $z\in{B}\left(z_{0},r\right)$ 成立, 即 $f\left(z_{0}\right)=0$ 是 $f\left(B\left(z_{0},r\right)\right)$ 的边界点.

由 $f$ 在 $z_{0}$ 处 $\mathbb{C}$-可微且 $f'\left(z_{0}\right)\ne0$, 结合**定理 4.1.5 (共形判别)**, $f$ 在 $z_{0}$ 处共形. 因 $f'\left(z_{0}\right)\ne0$, $f$ 在 $z_{0}$ 的某个开邻域 $U\subset{B}\left(z_{0},r\right)$ 上局部单叶 (故局部单叶全纯), 由**定理 10.2.4 (单叶全纯映射的逆)**, $f\left(U\right)$ 是开集且以 $f\left(z_{0}\right)=0$ 为内点. 于是存在 $\delta>0$ 使 $f\left(U\right)$ 含以 $0$ 为圆心的开圆盘 $\left\{w:\left|w\right|<\delta\right\}$, 而该圆盘包含实轴上, 下两侧的点, 与"$f\left(B\left(z_{0},r\right)\right)$ 全部落在实轴某一侧"矛盾.

故 $f\left(B\left(z_{0},r\right)\right)$ 不可能全部落在直线 $l$ 的某一侧. $\blacksquare$

## 3.4-5

考虑函数 $f=u+iv$. 证明: 在极坐标 $\left(r,\phi\right)$ 表示下, 柯西-黎曼方程的形式为

$$
\frac{\partial{u}}{\partial{r}}=\frac{1}{r}\frac{\partial{v}}{\partial\phi},\quad
\frac{\partial{v}}{\partial{r}}=-\frac{1}{r}\frac{\partial{u}}{\partial\phi};
$$

而且若 $f$ 在 $z_{0}=r_{0}e^{i\phi_{0}}\ne0$ 处可导, 则

$$
f'\left(z_{0}\right)=e^{-i\phi_{0}}\left(\frac{\partial{u}}{\partial{r}}\left(r_{0},\phi_{0}\right)+i\frac{\partial{v}}{\partial{r}}\left(r_{0},\phi_{0}\right)\right).
$$

### 解答 3.4-5

由 $x=r\cos\phi$, $y=r\sin\phi$ 及链式法则,

$$
\frac{\partial{u}}{\partial{r}}=\frac{\partial{u}}{\partial{x}}\cos\phi+\frac{\partial{u}}{\partial{y}}\sin\phi,\quad
\frac{\partial{u}}{\partial\phi}=-\frac{\partial{u}}{\partial{x}}r\sin\phi+\frac{\partial{u}}{\partial{y}}r\cos\phi,
$$

$v$ 同理. 由柯西-黎曼方程 (**定理 3.2.4 (柯西-黎曼方程)**) $\frac{\partial{u}}{\partial{x}}=\frac{\partial{v}}{\partial{y}}$, $\frac{\partial{u}}{\partial{y}}=-\frac{\partial{v}}{\partial{x}}$, 得

$$
\frac{\partial{u}}{\partial{r}}=\frac{\partial{v}}{\partial{y}}\cos\phi-\frac{\partial{v}}{\partial{x}}\sin\phi=\frac{1}{r}\left(-\frac{\partial{v}}{\partial{x}}r\sin\phi+\frac{\partial{v}}{\partial{y}}r\cos\phi\right)=\frac{1}{r}\frac{\partial{v}}{\partial\phi}.
$$

同理,

$$
\frac{\partial{v}}{\partial{r}}=\frac{\partial{v}}{\partial{x}}\cos\phi+\frac{\partial{v}}{\partial{y}}\sin\phi=-\frac{\partial{u}}{\partial{y}}\cos\phi+\frac{\partial{u}}{\partial{x}}\sin\phi=-\frac{1}{r}\left(-\frac{\partial{u}}{\partial{x}}r\sin\phi+\frac{\partial{u}}{\partial{y}}r\cos\phi\right)=-\frac{1}{r}\frac{\partial{u}}{\partial\phi}.
$$

极坐标下的柯西-黎曼方程得证.

第二问: 由**定理 3.3.3**, $f'\left(z_{0}\right)=\frac{\partial{f}}{\partial{z}}\left(z_{0}\right)$. 在全纯点处 $\frac{\partial{f}}{\partial\overline{z}}=0$, 故由 $\frac{\partial{z}}{\partial{r}}=e^{i\phi}$ 及链式法则, $\frac{\partial{f}}{\partial{r}}\left(z_{0}\right)=\frac{\partial{f}}{\partial{z}}\left(z_{0}\right)e^{i\phi_{0}}$, 即

$$
f'\left(z_{0}\right)=e^{-i\phi_{0}}\frac{\partial{f}}{\partial{r}}\left(z_{0}\right)=e^{-i\phi_{0}}\left(\frac{\partial{u}}{\partial{r}}\left(r_{0},\phi_{0}\right)+i\frac{\partial{v}}{\partial{r}}\left(r_{0},\phi_{0}\right)\right).
$$

命题得证. $\blacksquare$

## 3.4-7

令 $a,b,c\in\mathbb{C}$ 和函数 $f:\mathbb{C}\to\mathbb{C}$ 为 $f\left(z\right)=az^{2}+b\left|z\right|^{2}+c\overline{z}^{2}$. 证明: $f$ 在 $z\in\mathbb{C}$ 处可导当且仅当 $bz+2c\overline{z}=0$.

### 解答 3.4-7

由 $\left|z\right|^{2}=z\overline{z}$, 得 $f\left(z\right)=az^{2}+bz\overline{z}+c\overline{z}^{2}$. 计算形式导数 (**定义 3.2.2 (形式导数)**): 因 $az^{2}$ 关于 $\overline{z}$ 的偏导为 $0$, $\frac{\partial\left(z\overline{z}\right)}{\partial\overline{z}}=z$, $\frac{\partial\left(\overline{z}^{2}\right)}{\partial\overline{z}}=2\overline{z}$, 故

$$
\frac{\partial{f}}{\partial\overline{z}}\left(z\right)=bz+2c\overline{z}.
$$

由**定理 3.2.4 (柯西-黎曼方程)**, $f$ 在 $z$ 处 $\mathbb{C}$-可微当且仅当 $\frac{\partial{f}}{\partial\overline{z}}\left(z\right)=0$, 即 $bz+2c\overline{z}=0$; 再由**定理 3.3.3**, $\mathbb{C}$-可微与可导等价. 故 $f$ 在 $z$ 处可导当且仅当 $bz+2c\overline{z}=0$. $\blacksquare$

## 3.4-9

寻找 $\mathbb{C}$ 上全纯且 $\operatorname{Re}f\left(z\right)=e^{x}\left(x\cos{y}-y\sin{y}\right)$, $z=x+iy$ 的函数.

### 解答 3.4-9

设 $f=u+iv$, $u\left(x,y\right)=e^{x}\left(x\cos{y}-y\sin{y}\right)$. 由 $f$ 全纯, $u,v$ 满足柯西-黎曼方程 (**定理 3.2.4 (柯西-黎曼方程)**): $v_{y}=u_{x}$, $v_{x}=-u_{y}$. 计算

$$
u_{x}=e^{x}\left(x\cos{y}-y\sin{y}\right)+e^{x}\cos{y}=e^{x}\left(\cos{y}+x\cos{y}-y\sin{y}\right),
$$

$$
u_{y}=e^{x}\left(-x\sin{y}-\sin{y}-y\cos{y}\right)=-e^{x}\left(\sin{y}+x\sin{y}+y\cos{y}\right).
$$

由 $v_{y}=u_{x}$, 对 $y$ 积分:

$$
v\left(x,y\right)=\int{e}^{x}\left(\cos{y}+x\cos{y}-y\sin{y}\right)\,dy=e^{x}\left(\sin{y}+x\sin{y}+\int\left(-y\sin{y}\right)\,dy\right)+C\left(x\right).
$$

利用 $\int\left(-y\sin{y}\right)\,dy=y\cos{y}-\sin{y}$, 得

$$
v\left(x,y\right)=e^{x}\left(\sin{y}+x\sin{y}+y\cos{y}-\sin{y}\right)+C\left(x\right)=e^{x}\left(x\sin{y}+y\cos{y}\right)+C\left(x\right).
$$

再由 $v_{x}=-u_{y}$: $v_{x}=e^{x}\left(x\sin{y}+y\cos{y}\right)+e^{x}\sin{y}+C'\left(x\right)=e^{x}\left(x\sin{y}+\sin{y}+y\cos{y}\right)+C'\left(x\right)$, 而 $-u_{y}=e^{x}\left(\sin{y}+x\sin{y}+y\cos{y}\right)$. 两者相等, 得 $C'\left(x\right)=0$, 即 $C\left(x\right)$ 为常数. 因此

$$
f\left(z\right)=e^{x}\left(x\cos{y}-y\sin{y}\right)+ie^{x}\left(x\sin{y}+y\cos{y}\right)+iC,\quad{C}\in\mathbb{R}.
$$

注意到 $ze^{z}=\left(x+iy\right)e^{x}\left(\cos{y}+i\sin{y}\right)$, 其实部恰为 $e^{x}\left(x\cos{y}-y\sin{y}\right)$, 虚部恰为 $e^{x}\left(x\sin{y}+y\cos{y}\right)$. 故

$$
f\left(z\right)=ze^{z}+iC,\quad{C}\in\mathbb{R}.
$$

验证: $f'\left(z\right)=\left(z+1\right)e^{z}$ 在 $\mathbb{C}$ 上全纯, 且 $\operatorname{Re}f=e^{x}\left(x\cos{y}-y\sin{y}\right)$, 满足要求. $\blacksquare$

## 4.5-1

证明: 任意一个莫比乌斯变换 $\lambda$ 在扩充复平面上至少有一个不动点, 即至少存在一个 $z_{0}\in\widehat{\mathbb{C}}$ 使得 $\lambda\left(z_{0}\right)=z_{0}$; 若它有三个不动点, 那么它只能是恒同映射.

### 解答 4.5-1

设 $\lambda\left(z\right)=\frac{az+b}{cz+d}$, $ad-bc\ne0$. 不动点 $z$ 满足 $\frac{az+b}{cz+d}=z$, 即

$$
cz^{2}+\left(d-a\right)z-b=0.\tag{1}
$$

分两种情形.

若 $c\ne0$, 则 (1) 是真正的二次方程, 由代数基本定理它在 $\mathbb{C}$ 中至少有一个解 (计重数), 故 $\lambda$ 至少有一个有限不动点. 此时 $\lambda\left(\infty\right)=\frac{a}{c}\in\mathbb{C}$, $\infty$ 不是不动点.

若 $c=0$, 则 $ad\ne0$, $\lambda$ 是整线性变换 $\lambda\left(z\right)=\alpha{z}+\beta$ ($\alpha=\frac{a}{d}\ne0$, $\beta=\frac{b}{d}$), 且 $\lambda\left(\infty\right)=\infty$, 故 $\infty$ 是不动点. 若 $\alpha\ne1$, 还有有限不动点 $z=\frac{\beta}{1-\alpha}$; 若 $\alpha=1$, 则 $\lambda\left(z\right)=z+\beta$ 为平移 ($\beta\ne0$ 时仅 $\infty$ 为不动点; $\beta=0$ 时即恒同映射).

综上, 任意莫比乌斯变换在扩充复平面上至少有一个不动点.

若 $\lambda$ 有三个不动点: 若 $c\ne0$, 有限不动点至多两个 (二次方程 (1) 至多两个解, 除非恒为零, 但 $c\ne0$), 而 $\infty$ 又不是不动点, 矛盾. 故 $c=0$, $\lambda\left(z\right)=\alpha{z}+\beta$. 此时有限不动点至多一个 ($\alpha\ne1$) 或无 ($\alpha=1,\beta\ne0$), 要凑齐三个不动点只能是 $\alpha=1$, $\beta=0$, 即 $\lambda$ 为恒同映射. $\blacksquare$

## 4.5-3

描述半平面 $\left\{z\in\mathbb{C}:\operatorname{Re}z<1\right\}$ 在下述莫比乌斯变换下的像:

(i) $z\mapsto\left(1+i\right)z+1$; (ii) $z\mapsto\frac{z}{z-2}$; (iii) $z\mapsto\frac{4z}{z+1}$.

### 解答 4.5-3

边界 $\operatorname{Re}z=1$ (直线 $x=1$) 由**定理 4.3.4 (保圆性)** 被莫比乌斯变换映成广义圆, 半平面映成的区域以该广义圆为边界; 用一点确定所在侧.

(i) 对 $\lambda\left(z\right)=\left(1+i\right)z+1$, 取边界点 $z=1+iy$: $\lambda\left(1+iy\right)=\left(1+i\right)\left(1+iy\right)+1=\left(2-y\right)+i\left(1+y\right)$. 令 $u=2-y$, $v=1+y$, 消去 $y$ 得 $u+v=3$, 故边界映成直线 $u+v=3$. 取内点 $z=0\in\left\{\operatorname{Re}z<1\right\}$, $\lambda\left(0\right)=1$, $1+0=1<3$. 故像集为

$$
\left\{w:\operatorname{Re}w+\operatorname{Im}w<3\right\}.
$$

(ii) 对 $\lambda\left(z\right)=\frac{z}{z-2}$, 极点 $z=2$ 不在边界 $x=1$ 上, 故边界映成圆. $\lambda\left(\infty\right)=1$, $\lambda\left(1\right)=-1$, $\lambda\left(1+i\right)=\frac{1+i}{-1+i}=-i$, 故边界映成过 $1,-1,-i$ 的圆, 即单位圆 $\left|w\right|=1$. 取 $z=0$: $\lambda\left(0\right)=0$, $\left|0\right|=0<1$. 故像集为开单位圆盘

$$
\left\{w:\left|w\right|<1\right\}.
$$

(iii) 对 $\lambda\left(z\right)=\frac{4z}{z+1}$, 极点 $z=-1$ 不在边界 $x=1$ 上, 故边界映成圆. $\lambda\left(\infty\right)=4$, $\lambda\left(1\right)=2$, $\lambda\left(1+i\right)=\frac{4\left(1+i\right)}{2+i}=\frac{12+4i}{5}$, 故边界映成过 $4,2,\frac{12+4i}{5}$ 的圆. 设圆为 $x^{2}+y^{2}+ax+by+c=0$, 代入 $\left(4,0\right),\left(2,0\right),\left(2.4,0.8\right)$ 得 $a=-6$, $b=0$, $c=8$, 即 $\left(x-3\right)^{2}+y^{2}=1$, 圆心 $3$ 半径 $1$. 取 $z=0$: $\lambda\left(0\right)=0$, $\left|0-3\right|=3>1$, 在圆外; 又 $-1\in\left\{\operatorname{Re}z<1\right\}$ 且 $\lambda\left(-1\right)=\infty$. 故像集为圆外区域

$$
\left\{w:\left|w-3\right|>1\right\}\cup\left\{\infty\right\}.
$$

$\blacksquare$

## 4.5-5

令函数 $f:\mathbb{C}\to\mathbb{C}$ 定义为 $f\left(z\right)=z^{2}-2z+2$.

(i) 找出所有 $w\in\mathbb{C}$ 使得 $f'\left(w\right)=0$;

(ii) 证明函数 $f$ 在 (i) 中的 $w$ 点的任意邻域上都不可能是单叶的;

(iii) 证明函数 $f$ 在 (i) 中的 $w$ 点处不可能具有保角性.

### 解答 4.5-5

(i) $f'\left(z\right)=2z-2$, 故 $f'\left(w\right)=0$ 当且仅当 $w=1$. 即唯一 $w=1$.

(ii) 因 $f'\left(1\right)=0$, 由**定理 4.4.2**, $f$ 在 $1$ 的任意邻域上都不是单叶的. (更直接地, $f\left(z\right)=\left(z-1\right)^{2}+1$, 对任意 $\delta\ne0$ 有 $f\left(1+\delta\right)=f\left(1-\delta\right)$, 而 $1+\delta\ne1-\delta$, 故任一含 $1$ 的邻域内都不单叶.)

(iii) 由**定理 4.1.5 (共形判别)**, $f$ 在 $z$ 处共形当且仅当 $f'\left(z\right)\ne0$; 现 $f'\left(1\right)=0$, 故 $f$ 在 $1$ 处不具保角性. $\blacksquare$

## 4.5-14

考虑莫比乌斯变换 $w\left(z\right)=\frac{az+b}{cz+d}$ 和矩阵 $M=\begin{bmatrix}a&b\\c&d\end{bmatrix}$. 证明: 向量 $\binom{z_{1}}{z_{2}}\in\mathbb{C}^{2}$ 是 $M$ 的特征向量当且仅当 $\zeta=\frac{z_{1}}{z_{2}}$ 是 $w$ 的不动点, 其中若 $z_{2}=0$, 则 $\zeta=\infty$.

### 解答 4.5-14

设 $\binom{z_{1}}{z_{2}}$ 非零. 若 $z_{2}\ne0$, 记 $\zeta=\frac{z_{1}}{z_{2}}$. $\binom{z_{1}}{z_{2}}$ 是 $M$ 的特征向量当且仅当存在 $\lambda$ 使得

$$
\begin{bmatrix}a&b\\c&d\end{bmatrix}\binom{z_{1}}{z_{2}}=\lambda\binom{z_{1}}{z_{2}},
$$

即 $az_{1}+bz_{2}=\lambda{z}_{1}$ 且 $cz_{1}+dz_{2}=\lambda{z}_{2}$. 两式分别除以 $z_{2}$: $a\zeta+b=\lambda\zeta$, $c\zeta+d=\lambda$. 消去 $\lambda$:

$$
a\zeta+b=\zeta\left(c\zeta+d\right),
$$

即 $c\zeta^{2}+\left(d-a\right)\zeta-b=0$, 这正是 $w\left(\zeta\right)=\frac{a\zeta+b}{c\zeta+d}=\zeta$ 的不动点方程. 故 $z_{2}\ne0$ 时命题成立.

若 $z_{2}=0$, 则 $\zeta=\infty$, 且 $z_{1}\ne0$. $M\binom{z_{1}}{0}=\binom{az_{1}}{cz_{1}}$ 是 $\binom{z_{1}}{0}$ 的标量倍当且仅当 $c=0$. 另一方面 $w\left(\infty\right)=\lim_{z\to\infty}\frac{az+b}{cz+d}=\frac{a}{c}$ (当 $c\ne0$) 或 $\infty$ (当 $c=0$), 即 $w\left(\infty\right)=\infty$ 当且仅当 $c=0$. 故 $z_{2}=0$ 时命题也成立. $\blacksquare$
