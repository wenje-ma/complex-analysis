# week1

> **定义 1.1.5 (实部,虚部,共轭,模)**
> 
> 对 $z=x+iy$, 称 $x$ 为实部, $y$ 为虚部, 记 $x=\operatorname{Re}z$, $y=\operatorname{Im}z$; $z$ 的共轭为 $\overline{z}=x-iy$; $z$ 的模为

$$
\left|z\right|=\sqrt{x^{2}+y^{2}}.
$$

> **定义 1.2.2 (复数的极坐标形式)**
> 
> 复数 $z=x+iy\ne0$ 的极坐标形式为 $z=re^{i\phi}$, 其中 $r=\left|z\right|$, $\phi$ 为幅角 $\operatorname{Arg}z$ (确定到差 $2\pi$ 的整数倍), $e^{i\phi}=\cos\phi+i\sin\phi$.

> **定义 1.3.1 (球极投影)**
> 
> 单位球面 $S:\xi^{2}+\eta^{2}+\zeta^{2}=1$ 上, 复平面点 $z=\left(x,y\right)$ 对应

$$
Z=\left(\xi,\eta,\zeta\right),\quad\xi=\frac{2x}{1+\left|z\right|^{2}},\ \eta=\frac{2y}{1+\left|z\right|^{2}},\ \zeta=\frac{\left|z\right|^{2}-1}{1+\left|z\right|^{2}},
$$
建立 $\mathbb{C}$ 与 $S\setminus\left\{N\right\}$ (去掉北极点) 的一一对应.

> **定义 1.4.2 (球弦度量)**
> 
> 对 $z,w\in\mathbb{C}$, 球弦距离

$$
\rho\left(z,w\right)=\frac{2\left|z-w\right|}{\sqrt{1+\left|z\right|^{2}}\sqrt{1+\left|w\right|^{2}}}.
$$

> **定义 2.1.2 (道路的重参数化)**
> 
> 称道路 $\gamma_{1}:\left[a_{1},b_{1}\right]\to\mathbb{C}$ 是道路 $\gamma_{2}:\left[a_{2},b_{2}\right]\to\mathbb{C}$ 的重参数化, 如果存在单调递增函数 $\tau:\left[a_{1},b_{1}\right]\to\left[a_{2},b_{2}\right]$ 满足 $\tau\left(a_{1}\right)=a_{2}$, $\tau\left(b_{1}\right)=b_{2}$, 使得对任意 $t\in\left[a_{1},b_{1}\right]$ 有 $\gamma_{1}\left(t\right)=\gamma_{2}\left(\tau\left(t\right)\right)$; 若 $\tau$ 在某点 $\overline{t}$ 处不连续, 即 $\tau\left(\overline{t}-0\right)< \tau\left(\overline{t}+0\right)$, 还要求 $\gamma_{2}$ 在区间 $\left[\tau\left(\overline{t}-0\right),\tau\left(\overline{t}+0\right)\right]$ 上为常值.

> **定义 2.1.4 (路径)**
> 
> 在道路重参数化意义下的一个道路等价类称为路径.

> **定义 2.2.4 (区域)**
> 
> 称具有以下两条性质的点集 $D\subset\mathbb{C}$ (或 $\overline{\mathbb{C}}$) 为区域: (i-1) $D$ 是开集; (i-2) 道路连通性, 即任意 $a,b\in D$ 都存在位于 $D$ 中的道路以 $a,b$ 为端点.

> **定理 2.2.6 (若当曲线定理)**
> 
> 复平面上的任一条若当闭曲线把整个平面分成两个没有公共点的区域: 一个有界的称为它的内区域, 一个无界的称为它的外区域.

> **定义 2.2.7 (单连通与多连通性)**
> 
> 设 $D$ 是复平面 $\mathbb{C}$ 上的区域, 称 $D$ 为单连通的, 如果 $D$ 内任意若当闭曲线的内区域都包含在 $D$ 内; 否则称它是多连通的.

> **定义 2.4.1 (函数沿某集合的极限)**
> 
> 设函数 $f$ 在集合 $M\subset\overline{\mathbb{C}}$ 上有定义, 点 $a\in\overline{\mathbb{C}}$ 是 $M$ 的极限点. 称 $A\in\mathbb{C}$ 为 $f$ 当 $z$ 沿 $M$ 趋向 $a$ 时的极限, 记为 $\lim_{z\to a,\ z\in M}f\left(z\right)=A$, 如果对任意 $\varepsilon> 0$ 存在 $\delta> 0$ 使对任意 $z\in M$, 若 $0< \rho\left(z,a\right)< \delta$ 则 $\rho\left(f\left(z\right),A\right)< \varepsilon$.

> **定义 2.4.2 (函数的有界性和连续性)**
> 
> 若存在 $C> 0$ 使 $\forall z\in M$ 有 $\left|f\left(z\right)\right|\le C$, 则称 $f$ 在 $M$ 上有界; 若 $\lim_{z\to a,\ z\in M}f\left(z\right)=f\left(a\right)$, 则称 $f$ 在点 $a$ 处 (沿 $M$) 连续; 若对 $\forall a\in M$ 均连续, 则称 $f$ 在 $M$ 上连续.

## 1.5-1

证明: 若 $\left|z\right|=1$ 且 $z\ne\pm1$, 则

$$
\operatorname{Arg}\frac{z-1}{z+1}=\frac{\pi}{2}\ \text{或}\ \frac{3\pi}{2}\quad\left(\bmod 2\pi\right).
$$

### 解答 1.5-1

设 $z=e^{i\theta}$, 则 $z\ne\pm1$ 等价于 $\theta\ne0,\pi\ \left(\bmod 2\pi\right)$. 由**定义 1.2.2 (复数的极坐标形式)**, 得

$$
\frac{z-1}{z+1}=\frac{e^{i\theta}-1}{e^{i\theta}+1}=\frac{e^{i\theta/2}\left(e^{i\theta/2}-e^{-i\theta/2}\right)}{e^{i\theta/2}\left(e^{i\theta/2}+e^{-i\theta/2}\right)}=\frac{2i\sin\frac{\theta}{2}}{2\cos\frac{\theta}{2}}=i\tan\frac{\theta}{2}.
$$

因 $z\ne\pm1$, 有 $\sin\frac{\theta}{2}\ne0$ 且 $\cos\frac{\theta}{2}\ne0$, 故 $\tan\frac{\theta}{2}\ne0$, 从而 $\frac{z-1}{z+1}=i\tan\frac{\theta}{2}$ 是非零纯虚数. 其辐角当 $\tan\frac{\theta}{2}> 0$ 时为 $\frac{\pi}{2}$, 当 $\tan\frac{\theta}{2}< 0$ 时为 $\frac{3\pi}{2}$ (均模 $2\pi$). 命题得证. $\blacksquare$

## 1.5-3

证明: 若 $z_{1},\cdots,z_{n}$ 是非零复数且 $\sum_{k=1}^{n}\frac{1}{z_{k}}=0$, 则对任意一条通过原点 $z=0$ 的直线, 这些点不可能都落在该直线的一侧.

### 解答 1.5-3

反证. 假设存在一条通过原点的直线 $L$ 使所有 $z_{1},\cdots,z_{n}$ 都落在 $L$ 的严格一侧 (即 $L$ 的某一开半平面). 经旋转坐标, 可设 $L$ 为实轴且所有 $z_{k}$ 都位于上半平面: $\operatorname{Im}z_{k}> 0$, $k=1,\cdots,n$.

由 $z_{k}=x_{k}+iy_{k}\ne0$ 及 $y_{k}=\operatorname{Im}z_{k}> 0$, 结合**定义 1.1.5 (实部,虚部,共轭,模)** 中 $\frac{1}{z_{k}}=\frac{\overline{z}_{k}}{\left|z_{k}\right|^{2}}$, 得

$$
\operatorname{Im}\frac{1}{z_{k}}=\operatorname{Im}\frac{x_{k}-iy_{k}}{x_{k}^{2}+y_{k}^{2}}=-\frac{y_{k}}{x_{k}^{2}+y_{k}^{2}}< 0.
$$

于是

$$
\operatorname{Im}\sum_{k=1}^{n}\frac{1}{z_{k}}=\sum_{k=1}^{n}\operatorname{Im}\frac{1}{z_{k}}< 0,
$$

这与 $\sum_{k=1}^{n}\frac{1}{z_{k}}=0$ (其虚部为 $0$) 矛盾. 故这些点不可能都落在通过原点的直线的同一侧. $\blacksquare$

## 1.5-5

令 $z_{1},\cdots,z_{n},w_{1},\cdots,w_{n}$ 为复数. 证明下述 (拉格朗日) 等式成立:

$$
\left|\sum_{j=1}^{n}z_{j}\overline{w}_{j}\right|^{2}=\left(\sum_{j=1}^{n}\left|z_{j}\right|^{2}\right)\left(\sum_{j=1}^{n}\left|w_{j}\right|^{2}\right)-\sum_{1\le j< k\le n}\left|z_{j}\overline{w}_{k}-z_{k}\overline{w}_{j}\right|^{2}.
$$

### 解答 1.5-5

记 $A=\sum_{j=1}^{n}z_{j}\overline{w}_{j}$. 由共轭与模的性质 (**定义 1.1.5 (实部,虚部,共轭,模)**),

$$
\left|A\right|^{2}=A\overline{A}=\sum_{j=1}^{n}\sum_{k=1}^{n}z_{j}\overline{w}_{j}\overline{z_{k}\overline{w}_{k}}=\sum_{j=1}^{n}\sum_{k=1}^{n}z_{j}\overline{z}_{k}\overline{w}_{j}w_{k}.
$$

分离 $j=k$ 的项:

$$
\left|A\right|^{2}=\sum_{j=1}^{n}\left|z_{j}\right|^{2}\left|w_{j}\right|^{2}+\sum_{j\ne k}z_{j}\overline{z}_{k}\overline{w}_{j}w_{k}.
$$

另一方面,

$$
\sum_{1\le j< k\le n}\left|z_{j}\overline{w}_{k}-z_{k}\overline{w}_{j}\right|^{2}=\sum_{j< k}\left(\left|z_{j}\right|^{2}\left|w_{k}\right|^{2}+\left|z_{k}\right|^{2}\left|w_{j}\right|^{2}-z_{j}\overline{w}_{k}\overline{z}_{k}w_{j}-\overline{z}_{j}w_{k}z_{k}\overline{w}_{j}\right),
$$

且

$$
\left(\sum_{j=1}^{n}\left|z_{j}\right|^{2}\right)\left(\sum_{k=1}^{n}\left|w_{k}\right|^{2}\right)=\sum_{j=1}^{n}\left|z_{j}\right|^{2}\left|w_{j}\right|^{2}+\sum_{j< k}\left(\left|z_{j}\right|^{2}\left|w_{k}\right|^{2}+\left|z_{k}\right|^{2}\left|w_{j}\right|^{2}\right).
$$

两式相减得

$$
\left(\sum_{j=1}^{n}\left|z_{j}\right|^{2}\right)\left(\sum_{j=1}^{n}\left|w_{j}\right|^{2}\right)-\sum_{1\le j< k\le n}\left|z_{j}\overline{w}_{k}-z_{k}\overline{w}_{j}\right|^{2}=\sum_{j=1}^{n}\left|z_{j}\right|^{2}\left|w_{j}\right|^{2}+\sum_{j< k}\left(z_{j}\overline{w}_{k}\overline{z}_{k}w_{j}+\overline{z}_{j}w_{k}z_{k}\overline{w}_{j}\right)=\sum_{j=1}^{n}\left|z_{j}\right|^{2}\left|w_{j}\right|^{2}+\sum_{j< k}\left(z_{j}\overline{z}_{k}\overline{w}_{j}w_{k}+\overline{z}_{j}z_{k}w_{k}\overline{w}_{j}\right).
$$

上式中 $\sum_{j< k}\left(z_{j}\overline{z}_{k}\overline{w}_{j}w_{k}+\overline{z}_{j}z_{k}w_{k}\overline{w}_{j}\right)=\sum_{j\ne k}z_{j}\overline{z}_{k}\overline{w}_{j}w_{k}$ (其中 $j< k$ 与 $k< j$ 的项成对), 故右边等于 $\left|A\right|^{2}$. 拉格朗日等式成立. $\blacksquare$

## 1.5-7

令 $\left\langle\cdot,\cdot\right\rangle$ 是 $\mathbb{R}^{2}$ 上的标准内积, 即 $\left\langle X,Y\right\rangle=x_{1}y_{1}+x_{2}y_{2}$ ($X=\left(x_{1},x_{2}\right)\in\mathbb{R}^{2}$, $Y=\left(y_{1},y_{2}\right)\in\mathbb{R}^{2}$); 令 $\left(z,w\right)=z\overline{w}$, $z,w\in\mathbb{C}$, 为 $\mathbb{C}$ 上的厄米特内积. 证明:

$$
\left\langle z,w\right\rangle=\frac{1}{2}\left(\left(z,w\right)+\left(w,z\right)\right)=\operatorname{Re}\left(z,w\right).
$$

### 解答 1.5-7

把 $z=x_{1}+ix_{2}$, $w=y_{1}+iy_{2}$ 看作 $\mathbb{R}^{2}$ 中的向量 $X=\left(x_{1},x_{2}\right)$, $Y=\left(y_{1},y_{2}\right)$. 由标准内积定义,

$$
\left\langle z,w\right\rangle=\left\langle X,Y\right\rangle=x_{1}y_{1}+x_{2}y_{2}.
$$

另一方面, $\left(z,w\right)=z\overline{w}=\left(x_{1}+ix_{2}\right)\left(y_{1}-iy_{2}\right)=x_{1}y_{1}+x_{2}y_{2}+i\left(x_{2}y_{1}-x_{1}y_{2}\right)$, 故

$$
\operatorname{Re}\left(z,w\right)=x_{1}y_{1}+x_{2}y_{2}=\left\langle z,w\right\rangle.
$$

又因 $\overline{\left(z,w\right)}=\overline{z\overline{w}}=\overline{z}w=\left(w,z\right)$, 得

$$
\frac{1}{2}\left(\left(z,w\right)+\left(w,z\right)\right)=\frac{1}{2}\left(\left(z,w\right)+\overline{\left(z,w\right)}\right)=\operatorname{Re}\left(z,w\right).
$$

故 $\left\langle z,w\right\rangle=\frac{1}{2}\left(\left(z,w\right)+\left(w,z\right)\right)=\operatorname{Re}\left(z,w\right)$. $\blacksquare$

## 1.5-9

(球面度量) 对任意 $a,b\in\mathbb{C}$, 设 $A,B$ 为其对应的球极投影, 令

$$
\operatorname{dist}_{\sigma}\left(a,b\right)=\text{单位球面 }S\text{ 上 }A,B\text{ 两点间最短大圆弧长}.
$$

证明: (i) $\operatorname{dist}_{\sigma}\left(a,b\right)=2\arctan\left|\frac{a-b}{1+\overline{a}b}\right|$; (ii) $\rho\left(a,b\right)=2\sin\frac{1}{2}\operatorname{dist}_{\sigma}\left(a,b\right)$; (iii) $\frac{2}{\pi}\operatorname{dist}_{\sigma}\left(a,b\right)\le\rho\left(a,b\right)\le\operatorname{dist}_{\sigma}\left(a,b\right)$, 其中 $\rho$ 为球弦度量.

### 解答 1.5-9

设 $d=\operatorname{dist}_{\sigma}\left(a,b\right)$. 单位球面半径为 $1$, 故 $d$ 等于球心角 $\angle AOB$ ($O$ 为球心), 从而弦长 $\left|AB\right|=2\sin\frac{d}{2}$. 由球极投影与球弦度量的关系 (**定义 1.4.2 (球弦度量)**), $\left|AB\right|=\rho\left(a,b\right)$, 故

$$
\rho\left(a,b\right)=\frac{2\left|a-b\right|}{\sqrt{1+\left|a\right|^{2}}\sqrt{1+\left|b\right|^{2}}}=2\sin\frac{d}{2}.
$$

由此即得 (ii).

现证 (i). 由上式,

$$
\sin\frac{d}{2}=\frac{\left|a-b\right|}{\sqrt{\left(1+\left|a\right|^{2}\right)\left(1+\left|b\right|^{2}\right)}}.
$$

展开验证恒等式

$$
\left(1+\left|a\right|^{2}\right)\left(1+\left|b\right|^{2}\right)=\left|1+\overline{a}b\right|^{2}+\left|a-b\right|^{2},
$$

于是

$$
\sin\frac{d}{2}=\frac{\left|a-b\right|}{\sqrt{\left|1+\overline{a}b\right|^{2}+\left|a-b\right|^{2}}}=\frac{\left|\frac{a-b}{1+\overline{a}b}\right|}{\sqrt{1+\left|\frac{a-b}{1+\overline{a}b}\right|^{2}}}.
$$

令 $\phi=\arctan\left|\frac{a-b}{1+\overline{a}b}\right|\in\left[0,\frac{\pi}{2}\right)$, 则

$$
\frac{\left|\frac{a-b}{1+\overline{a}b}\right|}{\sqrt{1+\left|\frac{a-b}{1+\overline{a}b}\right|^{2}}}=\frac{\tan\phi}{\sqrt{1+\tan^{2}\phi}}=\sin\phi.
$$

故 $\sin\frac{d}{2}=\sin\phi$, 其中 $\frac{d}{2},\phi\in\left[0,\frac{\pi}{2}\right]$, 正弦在此区间上严格递增, 从而 $\frac{d}{2}=\phi$, 即 $d=2\arctan\left|\frac{a-b}{1+\overline{a}b}\right|$. (i) 得证.

最后证 (iii). 令 $t=\frac{d}{2}\in\left[0,\frac{\pi}{2}\right]$, 则 $\rho\left(a,b\right)=2\sin t$. 右端不等式: 由 $\sin t\le t$ 得 $\rho\left(a,b\right)=2\sin t\le2t=d=\operatorname{dist}_{\sigma}\left(a,b\right)$. 左端不等式: 函数 $\frac{\sin t}{t}$ 在 $\left(0,\frac{\pi}{2}\right]$ 上递减 (其导数 $\frac{t\cos t-\sin t}{t^{2}}< 0$), 故对 $t\in\left(0,\frac{\pi}{2}\right]$,

$$
\frac{\sin t}{t}\ge\frac{\sin\frac{\pi}{2}}{\frac{\pi}{2}}=\frac{2}{\pi},
$$

即 $\sin t\ge\frac{2t}{\pi}$, 得 $\rho\left(a,b\right)=2\sin t\ge\frac{4t}{\pi}=\frac{2}{\pi}d=\frac{2}{\pi}\operatorname{dist}_{\sigma}\left(a,b\right)$. 三式合并即 (iii). $\blacksquare$

## 2.5-2

令函数 $f$ 在区域 $D$ 上一致连续. 证明: 对于 $\forall z_{0}\in\partial D$, 极限 $\lim_{z\to z_{0},\ z\in D}f\left(z\right)$ 都存在.

### 解答 2.5-2

先证 $D$ 中收敛于 $z_{0}$ 的任意序列的像收敛. 任取 $D$ 中序列 $\left\{z_{n}\right\}$ 使 $z_{n}\to z_{0}$. 因 $f$ 在 $D$ 上一致连续, 对任意 $\varepsilon> 0$ 存在 $\delta> 0$, 使当 $z,w\in D$ 且 $\left|z-w\right|< \delta$ 时有 $\left|f\left(z\right)-f\left(w\right)\right|< \varepsilon$. 又 $\left\{z_{n}\right\}$ 是柯西列, 故存在 $N$ 使当 $m,n\ge N$ 时 $\left|z_{m}-z_{n}\right|< \delta$, 从而 $\left|f\left(z_{m}\right)-f\left(z_{n}\right)\right|< \varepsilon$. 因此 $\left\{f\left(z_{n}\right)\right\}$ 是柯西列, 在 $\mathbb{C}$ 中收敛.

再证极限不依赖序列的选取. 设 $z_{n},z_{n}'\in D$, $z_{n}\to z_{0}$, $z_{n}'\to z_{0}$, 且 $f\left(z_{n}\right)\to L$, $f\left(z_{n}'\right)\to L'$. 构造交错序列 $z_{1},z_{1}',z_{2},z_{2}',\cdots$, 它仍收敛于 $z_{0}$, 故其像收敛, 但它的两个子列分别收敛于 $L$ 与 $L'$, 从而 $L=L'$.

综上, 极限 $\lim_{z\to z_{0},\ z\in D}f\left(z\right)$ 存在. $\blacksquare$

## 2.5-4

将下述道路分成道路重参数化等价类:

(i) $e^{2\pi it}$, $t\in\left[0,1\right]$; (ii) $e^{4\pi it}$, $t\in\left[0,1\right]$; (iii) $e^{-2\pi it}$, $t\in\left[0,1\right]$; (iv) $e^{2\pi i\sin t}$, $t\in\left[0,\frac{\pi}{6}\right]$; (v) $e^{\pi i\sin t}$, $t\in\left[0,2\pi\right]$.

### 解答 2.5-4

依据**定义 2.1.2 (道路的重参数化)** 与**定义 2.1.4 (路径)**, 两条道路重参数化等价, 当且仅当在单调递增参数变换下像相同, 起点终点相同且行进顺序一致 (定向与绕行圈数不变). 逐条分析:

(i) 起点 $1$, 终点 $1$, 逆时针绕单位圆一圈;

(ii) 起点 $1$, 终点 $1$, 逆时针绕单位圆两圈;

(iii) 起点 $1$, 终点 $1$, 顺时针绕单位圆一圈;

(iv) 起点 $1$, 终点 $e^{2\pi i\cdot\frac{1}{2}}=e^{\pi i}=-1$; 因 $\sin t$ 在 $\left[0,\frac{\pi}{6}\right]$ 上单调递增, 该道路逆时针沿单位圆从 $1$ 走到 $-1$, 即走了半圈;

(v) 起点 $1$, 终点 $1$. 在 $\left[0,\pi\right]$ 上 $\sin t$ 从 $0$ 增到 $1$ 再减到 $0$, 点从 $1$ 逆时针到 $-1$ 再回到 $1$; 在 $\left[\pi,2\pi\right]$ 上 $\sin t$ 从 $0$ 减到 $-1$ 再增到 $0$, 点从 $1$ 顺时针到 $-1$ 再回到 $1$. 故它是往返摆动的闭道路.

比较等价性: (i) 与 (iii) 定向相反, 不等价; (i) 与 (ii) 圈数不同, 不等价; (iv) 非闭道路 (起 $1$ 终 $-1$), 与任何闭道路不等价; (v) 的轨迹是往返摆动, 不同于 (i)(ii)(iii) 的整圈, 也不同于 (iv) 的半圈. 故五条道路分属五个互不相同的重参数化等价类. $\blacksquare$

## 2.5-6

考虑映射 $f\left(z\right)=z^{3}$, 将它表示成 (1) 长方形表示和 (2) 极坐标表示的形式; 试画出椭圆 $\left\{z=x+iy:\frac{x^{2}}{2}+y^{2}=1\right\}$ 在该映射下的图像.

### 解答 2.5-6

(1) 长方形表示: 设 $z=x+iy$, 由二项展开,

$$
f\left(z\right)=\left(x+iy\right)^{3}=x^{3}+3x^{2}\left(iy\right)+3x\left(iy\right)^{2}+\left(iy\right)^{3}=x^{3}-3xy^{2}+i\left(3x^{2}y-y^{3}\right).
$$

(2) 极坐标表示: 设 $z=re^{i\theta}$, 则

$$
f\left(z\right)=r^{3}e^{3i\theta}=r^{3}\left(\cos3\theta+i\sin3\theta\right).
$$

椭圆 $\frac{x^{2}}{2}+y^{2}=1$ 可参数化为 $x=\sqrt{2}\cos\theta$, $y=\sin\theta$, $\theta\in\left[0,2\pi\right]$, 即 $z\left(\theta\right)=\sqrt{2}\cos\theta+i\sin\theta$. 其像为 $f\left(z\left(\theta\right)\right)=\left(\sqrt{2}\cos\theta+i\sin\theta\right)^{3}$. 记 $c=\cos\theta$, $s=\sin\theta$, 展开得

$$
f\left(z\left(\theta\right)\right)=\left(2\sqrt{2}c^{3}-3\sqrt{2}cs^{2}\right)+i\left(6c^{2}s-s^{3}\right)=\left(2\sqrt{2}\cos^{3}\theta-3\sqrt{2}\cos\theta\sin^{2}\theta\right)+i\left(6\cos^{2}\theta\sin\theta-\sin^{3}\theta\right).
$$

由极坐标表示, $z^{3}$ 的辐角是 $z$ 辐角的 $3$ 倍; 当 $\theta$ 扫过 $\left[0,2\pi\right]$ 时, 像点辐角扫过 $\left[0,6\pi\right]$, 故像是一条绕原点转三圈, 关于原点对称的闭曲线. $\blacksquare$

## 2.5-8

令 $K\subset\mathbb{C}$ 是有界连通闭集. 证明: 对于任意 $\varepsilon> 0$, 都存在若当闭曲线 $\gamma$ 使得 $K$ 包含在 $\gamma$ 的内部区域而且 $\operatorname{dist}\left(K,\gamma\right)< \varepsilon$.

### 解答 2.5-8

$K$ 有界闭, 故紧. 取 $\eta> 0$ 待定, 令 $K_{\eta}=\left\{z\in\mathbb{C}:\operatorname{dist}\left(z,K\right)\le\eta\right\}$ 为 $K$ 的闭 $\eta$-邻域. $K_{\eta}$ 仍是紧集, 且 $K\subset K_{\eta}^{\circ}$ (即 $K$ 含于 $K_{\eta}$ 的内部), 因为对每个 $k\in K$ 都存在以 $k$ 为中心的开圆盘含于 $K_{\eta}$.

将复平面用边长 $\delta$ 的方格网覆盖, 取所有与 $K_{\eta}$ 相交的闭方格并成集合 $P$. 因 $K_{\eta}$ 紧, 与它相交的方格至多有限个, 故 $P$ 是有限个闭方格的并. 又 $K_{\eta}$ 连通 (由 $K$ 连通, 其 $\eta$-管状邻域连通), 当 $\delta$ 充分小时, 这些方格沿 $K_{\eta}$ 依次相接, 故 $P$ 连通. 取 $P$ 的外边界 $\gamma=\partial_{\text{外}}P$ (由最外层的方格边组成的简单闭折线), 则 $\gamma$ 是一条若当闭曲线 (**定理 2.2.6 (若当曲线定理)**).

因 $P\supset K_{\eta}\supset K$ 且 $K_{\eta}\subset P^{\circ}$, 故 $K$ 包含在 $\gamma$ 的内部区域. 对 $P$ 中任一方格, 因它包含 $K_{\eta}$ 的某点, 其上任意点到 $K_{\eta}$ 的距离不超过方格对角长 $\sqrt{2}\,\delta$, 从而到 $K$ 的距离不超过 $\sqrt{2}\,\delta+\eta$. 特别地, 对任意 $z\in\gamma\subset P$,

$$
\operatorname{dist}\left(z,K\right)\le\sqrt{2}\,\delta+\eta,
$$

故 $\operatorname{dist}\left(K,\gamma\right)\le\sqrt{2}\,\delta+\eta$. 取 $\delta< \frac{\varepsilon}{2\sqrt{2}}$, $\eta< \frac{\varepsilon}{2}$, 得 $\operatorname{dist}\left(K,\gamma\right)< \varepsilon$. $\blacksquare$
