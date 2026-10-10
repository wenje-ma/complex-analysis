# 作业 3

> **定义 3.1.1** ($\mathbb{R}$-线性与 $\mathbb{C}$-线性)<br>称 $\ell:\mathbb{C}\to\mathbb{C}$ 为 $\mathbb{R}$-线性 (或 $\mathbb{C}$-线性), 若 $\ell\left(a+b\right)=\ell\left(a\right)+\ell\left(b\right)$, 且对 $\lambda\in\mathbb{R}$ (或 $\mathbb{C}$) 有 $\ell\left(\lambda z\right)=\lambda\ell\left(z\right)$; $\mathbb{C}$-线性函数必然是 $\mathbb{R}$-线性的.

> **定理 3.1.2** (线性函数的形式)<br>任意 $\mathbb{R}$-线性函数具有形式 $\ell\left(z\right)=az+b\bar{z}$, 其中 $$a=\frac{\ell\left(1\right)-i\ell\left(i\right)}{2},\quad b=\frac{\ell\left(1\right)+i\ell\left(i\right)}{2};$$ 任意 $\mathbb{C}$-线性函数具有形式 $\ell\left(z\right)=az$; $\mathbb{R}$-线性 $\ell$ 是 $\mathbb{C}$-线性的当且仅当 $\ell\left(iz\right)=i\ell\left(z\right)$.

> **定义 3.2.1** (可微性)<br>称 $f:U\to\mathbb{C}$ 在 $z$ 处 $\mathbb{R}$-可微 (或 $\mathbb{C}$-可微), 若 $\Delta f=f\left(z+\Delta z\right)-f\left(z\right)=\ell\left(\Delta z\right)+o\left(\left|\Delta z\right|\right)$, 其中 $\ell$ 为 $\mathbb{R}$-线性 (或 $\mathbb{C}$-线性) 函数; 称 $\ell\left(\Delta z\right)$ 为实 (复) 微分 $df\left(z\right)$.

> **定义 3.2.2** (形式导数)<br>形式导数算符 (Wirtinger 导数) 为 $$\frac{\partial f}{\partial z}=\frac{1}{2}\left(\frac{\partial f}{\partial x}-i\frac{\partial f}{\partial y}\right),\quad\frac{\partial f}{\partial\bar{z}}=\frac{1}{2}\left(\frac{\partial f}{\partial x}+i\frac{\partial f}{\partial y}\right),$$ 且有 $df\left(z\right)=\frac{\partial f}{\partial z}\,dz+\frac{\partial f}{\partial\bar{z}}\,d\bar{z}$.

> **定理 3.2.4**<br>$f=u\left(x,y\right)+iv\left(x,y\right)$ 在 $z=x+iy$ 处 $\mathbb{C}$-可微, 当且仅当 $f$ 在 $z$ 处 $\mathbb{R}$-可微且 $\frac{\partial f}{\partial\bar{z}}=0$, 这也等价于 $u,v$ 可微且满足柯西-黎曼方程 $$\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y},\quad\frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}.$$

> **定义 3.3.1** (可导性)<br>称 $f$ 在 $a$ 处可导, 若 $$\lim_{z\to a}\frac{f\left(z\right)-f\left(a\right)}{z-a}=A$$ 存在, 记 $A=f'\left(a\right)$.

> **定理 3.3.3**<br>$f$ 在 $a$ 处可导当且仅当 $f$ 在 $a$ 处 $\mathbb{C}$-可微, 此时 $f'\left(a\right)=\frac{\partial f}{\partial z}\left(a\right)$.

> **定理 4.1.5**<br>函数 $f$ 在 $z$ 处共形当且仅当 $f$ 在 $z$ 处 $\mathbb{C}$-可微且 $f'\left(z\right)\ne0$.

> **定理 10.2.4**<br>若 $f$ 在开集 $\Omega$ 上全纯且单叶, 则 $f\left(\Omega\right)$ 是开集且 $f^{-1}$ 在 $f\left(\Omega\right)$ 上全纯.

### 习题一

(习题 3.4-1) 令 $f$ 是复变函数且在 $z_{0}\in\mathbb{C}$ 处是 $\mathbb{R}$-可微的. 证明: 当 $z\to z_{0}$ 时, 点集

$$
\left\{\frac{f\left(z\right)-f\left(z_{0}\right)}{z-z_{0}}\right\}
$$

的极限点的集合组成了以 $\frac{\partial f}{\partial z}\left(z_{0}\right)$ 为圆心, 半径为 $\left|\frac{\partial f}{\partial\bar{z}}\left(z_{0}\right)\right|$ 的圆.

### 解答 习题一

由 $f$ 在 $z_{0}$ 处 $\mathbb{R}$-可微 (**定义 3.2.1 (可微性)**), 记 $\Delta z=z-z_{0}$, 则

$$
\Delta f=f\left(z\right)-f\left(z_{0}\right)=\ell\left(\Delta z\right)+o\left(\left|\Delta z\right|\right),
$$

其中 $\ell$ 是 $\mathbb{R}$-线性函数. 由**定理 3.1.2 (线性函数的形式)**, $\ell\left(\Delta z\right)=a\Delta z+b\Delta\bar{z}$, 结合**定义 3.2.2 (形式导数)**, $a=\frac{\partial f}{\partial z}\left(z_{0}\right)$, $b=\frac{\partial f}{\partial\bar{z}}\left(z_{0}\right)$. 于是

$$
\begin{aligned}
&\quad\;\frac{f\left(z\right)-f\left(z_{0}\right)}{z-z_{0}}\\
&=\frac{\partial f}{\partial z}\left(z_{0}\right)+\frac{\partial f}{\partial\bar{z}}\left(z_{0}\right)\frac{\Delta\bar{z}}{\Delta z}+\frac{o\left(\left|\Delta z\right|\right)}{\Delta z}.
\end{aligned}
$$

当 $z\to z_{0}$ (即 $\Delta z\to0$) 时, 末项 $\frac{o\left(\left|\Delta z\right|\right)}{\Delta z}\to0$. 令 $\Delta z=re^{i\theta}$ ($r>0$), 则 $\frac{\Delta\bar{z}}{\Delta z}=e^{-2i\theta}$, 其取值遍及整个单位圆周. 故差商的极限点集合恰为

$$
\left\{\frac{\partial f}{\partial z}\left(z_{0}\right)+\frac{\partial f}{\partial\bar{z}}\left(z_{0}\right)e^{-2i\theta}:\theta\in\left[0,2\pi\right)\right\},
$$

即以 $\frac{\partial f}{\partial z}\left(z_{0}\right)$ 为圆心、半径为 $\left|\frac{\partial f}{\partial\bar{z}}\left(z_{0}\right)\right|$ 的圆周. $\blacksquare$

### 习题二

(习题 3.4-3) 函数 $f$ 在 $z_{0}\in\mathbb{C}$ 处是 $\mathbb{C}$-可微的且 $f'\left(z_{0}\right)\ne0$. 假设 $f$ 在以 $z_{0}$ 为圆心、$r>0$ 为半径的圆盘 $B\left(z_{0},r\right)$ 上有定义, $l$ 为通过 $f\left(z_{0}\right)$ 点的任意一条直线. 证明: $B\left(z_{0},r\right)$ 的像 $f\left(B\left(z_{0},r\right)\right)$ 不可能全部落在 $l$ 的某一侧上.

### 解答 习题二

反证. 假设 $f\left(B\left(z_{0},r\right)\right)$ 全部落在过 $f\left(z_{0}\right)$ 的某条直线 $l$ 的某一侧. 经平移与旋转, 可设 $f\left(z_{0}\right)=0$ 且 $l$ 为实轴, 于是 $\operatorname{Im}f\left(z\right)\ge0$ (或 $\le0$) 对一切 $z\in B\left(z_{0},r\right)$ 成立, 即 $f\left(z_{0}\right)=0$ 是 $f\left(B\left(z_{0},r\right)\right)$ 的边界点.

由 $f$ 在 $z_{0}$ 处 $\mathbb{C}$-可微且 $f'\left(z_{0}\right)\ne0$, 结合**定理 4.1.5**, $f$ 在 $z_{0}$ 处共形. 因 $f'\left(z_{0}\right)\ne0$, $f$ 在 $z_{0}$ 的某个开邻域 $U\subset B\left(z_{0},r\right)$ 上局部单叶 (故局部单叶全纯), 由**定理 10.2.4**, $f\left(U\right)$ 是开集且以 $f\left(z_{0}\right)=0$ 为内点. 于是存在 $\delta>0$ 使 $f\left(U\right)$ 含以 $0$ 为圆心的开圆盘 $\left\{w:\left|w\right|<\delta\right\}$, 而该圆盘包含实轴上、下两侧的点, 与"$f\left(B\left(z_{0},r\right)\right)$ 全部落在实轴某一侧"矛盾.

故 $f\left(B\left(z_{0},r\right)\right)$ 不可能全部落在直线 $l$ 的某一侧. $\blacksquare$

### 习题三

(习题 3.4-5) 考虑函数 $f=u+iv$. 证明: 在极坐标 $\left(r,\phi\right)$ 表示下, 柯西-黎曼方程的形式为

$$
\frac{\partial u}{\partial r}=\frac{1}{r}\frac{\partial v}{\partial\phi},\quad
\frac{\partial v}{\partial r}=-\frac{1}{r}\frac{\partial u}{\partial\phi};
$$

而且若 $f$ 在 $z_{0}=r_{0}e^{i\phi_{0}}\ne0$ 处可导, 则

$$
f'\left(z_{0}\right)=e^{-i\phi_{0}}\left(\frac{\partial u}{\partial r}\left(r_{0},\phi_{0}\right)+i\frac{\partial v}{\partial r}\left(r_{0},\phi_{0}\right)\right).
$$

### 解答 习题三

由 $x=r\cos\phi$, $y=r\sin\phi$ 及链式法则,

$$
\frac{\partial u}{\partial r}=\frac{\partial u}{\partial x}\cos\phi+\frac{\partial u}{\partial y}\sin\phi,\quad
\frac{\partial u}{\partial\phi}=-\frac{\partial u}{\partial x}r\sin\phi+\frac{\partial u}{\partial y}r\cos\phi,
$$

$v$ 同理. 由柯西-黎曼方程 (**定理 3.2.4**) $\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y}$, $\frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}$, 得

$$
\begin{aligned}
&\quad\;\frac{\partial u}{\partial r}\\
&=\frac{\partial v}{\partial y}\cos\phi-\frac{\partial v}{\partial x}\sin\phi\\
&=\frac{1}{r}\left(-\frac{\partial v}{\partial x}r\sin\phi+\frac{\partial v}{\partial y}r\cos\phi\right)\\
&=\frac{1}{r}\frac{\partial v}{\partial\phi}.
\end{aligned}
$$

同理,

$$
\begin{aligned}
&\quad\;\frac{\partial v}{\partial r}\\
&=\frac{\partial v}{\partial x}\cos\phi+\frac{\partial v}{\partial y}\sin\phi\\
&=-\frac{\partial u}{\partial y}\cos\phi+\frac{\partial u}{\partial x}\sin\phi\\
&=-\frac{1}{r}\left(-\frac{\partial u}{\partial x}r\sin\phi+\frac{\partial u}{\partial y}r\cos\phi\right)\\
&=-\frac{1}{r}\frac{\partial u}{\partial\phi}.
\end{aligned}
$$

极坐标下的柯西-黎曼方程得证.

第二问: 由**定理 3.3.3**, $f'\left(z_{0}\right)=\frac{\partial f}{\partial z}\left(z_{0}\right)$. 在全纯点处 $\frac{\partial f}{\partial\bar{z}}=0$, 故由 $\frac{\partial z}{\partial r}=e^{i\phi}$ 及链式法则, $\frac{\partial f}{\partial r}\left(z_{0}\right)=\frac{\partial f}{\partial z}\left(z_{0}\right)e^{i\phi_{0}}$, 即

$$
f'\left(z_{0}\right)=e^{-i\phi_{0}}\frac{\partial f}{\partial r}\left(z_{0}\right)=e^{-i\phi_{0}}\left(\frac{\partial u}{\partial r}\left(r_{0},\phi_{0}\right)+i\frac{\partial v}{\partial r}\left(r_{0},\phi_{0}\right)\right).
$$

命题得证. $\blacksquare$

### 习题四

(习题 3.4-7) 令 $a,b,c\in\mathbb{C}$ 和函数 $f:\mathbb{C}\to\mathbb{C}$ 为 $f\left(z\right)=az^{2}+b\left|z\right|^{2}+c\bar{z}^{2}$. 证明: $f$ 在 $z\in\mathbb{C}$ 处可导当且仅当 $bz+2c\bar{z}=0$.

### 解答 习题四

由 $\left|z\right|^{2}=z\bar{z}$, 得 $f\left(z\right)=az^{2}+bz\bar{z}+c\bar{z}^{2}$. 计算形式导数 (**定义 3.2.2 (形式导数)**): 因 $az^{2}$ 关于 $\bar{z}$ 的偏导为 $0$, $\frac{\partial\left(z\bar{z}\right)}{\partial\bar{z}}=z$, $\frac{\partial\left(\bar{z}^{2}\right)}{\partial\bar{z}}=2\bar{z}$, 故

$$
\frac{\partial f}{\partial\bar{z}}\left(z\right)=bz+2c\bar{z}.
$$

由**定理 3.2.4**, $f$ 在 $z$ 处 $\mathbb{C}$-可微当且仅当 $\frac{\partial f}{\partial\bar{z}}\left(z\right)=0$, 即 $bz+2c\bar{z}=0$; 再由**定理 3.3.3**, $\mathbb{C}$-可微与可导等价. 故 $f$ 在 $z$ 处可导当且仅当 $bz+2c\bar{z}=0$. $\blacksquare$

### 习题五

(习题 3.4-9) 寻找 $\mathbb{C}$ 上全纯且 $\operatorname{Re}f\left(z\right)=e^{x}\left(x\cos y-y\sin y\right)$, $z=x+iy$ 的函数.

### 解答 习题五

设 $f=u+iv$, $u\left(x,y\right)=e^{x}\left(x\cos y-y\sin y\right)$. 由 $f$ 全纯, $u,v$ 满足柯西-黎曼方程 (**定理 3.2.4**): $v_{y}=u_{x}$, $v_{x}=-u_{y}$. 计算

$$
\begin{aligned}
u_{x}&=e^{x}\left(x\cos y-y\sin y\right)+e^{x}\cos y=e^{x}\left(\cos y+x\cos y-y\sin y\right),\\
u_{y}&=e^{x}\left(-x\sin y-\sin y-y\cos y\right)=-e^{x}\left(\sin y+x\sin y+y\cos y\right).
\end{aligned}
$$

由 $v_{y}=u_{x}$, 对 $y$ 积分:

$$
v\left(x,y\right)=\int e^{x}\left(\cos y+x\cos y-y\sin y\right)\,dy=e^{x}\left(\sin y+x\sin y+\int\left(-y\sin y\right)\,dy\right)+C\left(x\right).
$$

利用 $\int\left(-y\sin y\right)\,dy=y\cos y-\sin y$, 得

$$
v\left(x,y\right)=e^{x}\left(\sin y+x\sin y+y\cos y-\sin y\right)+C\left(x\right)=e^{x}\left(x\sin y+y\cos y\right)+C\left(x\right).
$$

再由 $v_{x}=-u_{y}$: $v_{x}=e^{x}\left(x\sin y+y\cos y\right)+e^{x}\sin y+C'\left(x\right)=e^{x}\left(x\sin y+\sin y+y\cos y\right)+C'\left(x\right)$, 而 $-u_{y}=e^{x}\left(\sin y+x\sin y+y\cos y\right)$. 两者相等, 得 $C'\left(x\right)=0$, 即 $C\left(x\right)$ 为常数. 因此

$$
f\left(z\right)=e^{x}\left(x\cos y-y\sin y\right)+ie^{x}\left(x\sin y+y\cos y\right)+iC,\quad C\in\mathbb{R}.
$$

注意到 $ze^{z}=\left(x+iy\right)e^{x}\left(\cos y+i\sin y\right)$, 其实部恰为 $e^{x}\left(x\cos y-y\sin y\right)$, 虚部恰为 $e^{x}\left(x\sin y+y\cos y\right)$. 故

$$
f\left(z\right)=ze^{z}+iC,\quad C\in\mathbb{R}.
$$

验证: $f'\left(z\right)=\left(z+1\right)e^{z}$ 在 $\mathbb{C}$ 上全纯, 且 $\operatorname{Re}f=e^{x}\left(x\cos y-y\sin y\right)$, 满足要求. $\blacksquare$
