# 作业 3

> **定义 3.1.1** ($\mathbb{R}$-线性与 $\mathbb{C}$-线性)<br>称 $\ell:\mathbb{C}\to\mathbb{C}$ 为 $\mathbb{R}$-线性 (或 $\mathbb{C}$-线性), 若 $\ell(a+b)=\ell(a)+\ell(b)$, 且对 $\lambda\in\mathbb{R}$ (或 $\mathbb{C}$) 有 $\ell(\lambda z)=\lambda\ell(z)$; $\mathbb{C}$-线性函数必然是 $\mathbb{R}$-线性的.

> **定理 3.1.2** (线性函数的形式)<br>任意 $\mathbb{R}$-线性函数具有形式 $\ell(z)=az+b\bar{z}$, 其中 $$a=\frac{\ell(1)-i\ell(i)}{2},\quad b=\frac{\ell(1)+i\ell(i)}{2};$$ 任意 $\mathbb{C}$-线性函数具有形式 $\ell(z)=az$; $\mathbb{R}$-线性 $\ell$ 是 $\mathbb{C}$-线性的当且仅当 $\ell(iz)=i\ell(z)$.

> **定义 3.2.1** (可微性)<br>称 $f:U\to\mathbb{C}$ 在 $z$ 处 $\mathbb{R}$-可微 (或 $\mathbb{C}$-可微), 若 $\Delta f=f(z+\Delta z)-f(z)=\ell(\Delta z)+o(|\Delta z|)$, 其中 $\ell$ 为 $\mathbb{R}$-线性 (或 $\mathbb{C}$-线性) 函数; 称 $\ell(\Delta z)$ 为实 (复) 微分 $df(z)$.

> **定义 3.2.2** (形式导数)<br>形式导数算符 (Wirtinger 导数) 为 $$\frac{\partial f}{\partial z}=\frac{1}{2}\left(\frac{\partial f}{\partial x}-i\frac{\partial f}{\partial y}\right),\quad\frac{\partial f}{\partial\bar{z}}=\frac{1}{2}\left(\frac{\partial f}{\partial x}+i\frac{\partial f}{\partial y}\right),$$ 且有 $df(z)=\frac{\partial f}{\partial z}\,dz+\frac{\partial f}{\partial\bar{z}}\,d\bar{z}$.

> **定理 3.2.4**<br>$f=u(x,y)+iv(x,y)$ 在 $z=x+iy$ 处 $\mathbb{C}$-可微, 当且仅当 $f$ 在 $z$ 处 $\mathbb{R}$-可微且 $\frac{\partial f}{\partial\bar{z}}=0$, 这也等价于 $u,v$ 可微且满足柯西-黎曼方程 $$\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y},\quad\frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}.$$

> **定义 3.3.1** (可导性)<br>称 $f$ 在 $a$ 处可导, 若 $$\lim_{z\to a}\frac{f(z)-f(a)}{z-a}=A$$ 存在, 记 $A=f'(a)$.

> **定理 3.3.3**<br>$f$ 在 $a$ 处可导当且仅当 $f$ 在 $a$ 处 $\mathbb{C}$-可微, 此时 $f'(a)=\frac{\partial f}{\partial z}(a)$.

> **定理 4.1.5**<br>函数 $f$ 在 $z$ 处共形当且仅当 $f$ 在 $z$ 处 $\mathbb{C}$-可微且 $f'(z)\ne0$.

> **定理 10.2.4**<br>若 $f$ 在开集 $\Omega$ 上全纯且单叶, 则 $f(\Omega)$ 是开集且 $f^{-1}$ 在 $f(\Omega)$ 上全纯.

### 习题一

(习题 3.4-1) 令 $f$ 是复变函数且在 $z_{0}\in\mathbb{C}$ 处是 $\mathbb{R}$-可微的. 证明: 当 $z\to z_{0}$ 时, 点集

$$
\left\{\frac{f(z)-f(z_{0})}{z-z_{0}}\right\}
$$

的极限点的集合组成了以 $\frac{\partial f}{\partial z}(z_{0})$ 为圆心, 半径为 $\left|\frac{\partial f}{\partial\bar{z}}(z_{0})\right|$ 的圆.

### 解答 习题一

由 $f$ 在 $z_{0}$ 处 $\mathbb{R}$-可微 (**定义 3.2.1 (可微性)**), 记 $\Delta z=z-z_{0}$, 则

$$
\Delta f=f(z)-f(z_{0})=\ell(\Delta z)+o(|\Delta z|),
$$

其中 $\ell$ 是 $\mathbb{R}$-线性函数. 由**定理 3.1.2 (线性函数的形式)**, $\ell(\Delta z)=a\Delta z+b\Delta\bar{z}$, 结合**定义 3.2.2 (形式导数)**, $a=\frac{\partial f}{\partial z}(z_{0})$, $b=\frac{\partial f}{\partial\bar{z}}(z_{0})$. 于是

$$
\begin{aligned}
&\quad\;\frac{f(z)-f(z_{0})}{z-z_{0}}\\
&=\frac{\partial f}{\partial z}(z_{0})+\frac{\partial f}{\partial\bar{z}}(z_{0})\frac{\Delta\bar{z}}{\Delta z}+\frac{o(|\Delta z|)}{\Delta z}.
\end{aligned}
$$

当 $z\to z_{0}$ (即 $\Delta z\to0$) 时, 末项 $\frac{o(|\Delta z|)}{\Delta z}\to0$. 令 $\Delta z=re^{i\theta}$ ($r>0$), 则 $\frac{\Delta\bar{z}}{\Delta z}=e^{-2i\theta}$, 其取值遍及整个单位圆周. 故差商的极限点集合恰为

$$
\left\{\frac{\partial f}{\partial z}(z_{0})+\frac{\partial f}{\partial\bar{z}}(z_{0})e^{-2i\theta}:\theta\in[0,2\pi)\right\},
$$

即以 $\frac{\partial f}{\partial z}(z_{0})$ 为圆心、半径为 $\left|\frac{\partial f}{\partial\bar{z}}(z_{0})\right|$ 的圆周. $\blacksquare$

### 习题二

(习题 3.4-3) 函数 $f$ 在 $z_{0}\in\mathbb{C}$ 处是 $\mathbb{C}$-可微的且 $f'(z_{0})\ne0$. 假设 $f$ 在以 $z_{0}$ 为圆心、$r>0$ 为半径的圆盘 $B(z_{0},r)$ 上有定义, $l$ 为通过 $f(z_{0})$ 点的任意一条直线. 证明: $B(z_{0},r)$ 的像 $f(B(z_{0},r))$ 不可能全部落在 $l$ 的某一侧上.

### 解答 习题二

反证. 假设 $f(B(z_{0},r))$ 全部落在过 $f(z_{0})$ 的某条直线 $l$ 的某一侧. 经平移与旋转, 可设 $f(z_{0})=0$ 且 $l$ 为实轴, 于是 $\operatorname{Im}f(z)\ge0$ (或 $\le0$) 对一切 $z\in B(z_{0},r)$ 成立, 即 $f(z_{0})=0$ 是 $f(B(z_{0},r))$ 的边界点.

由 $f$ 在 $z_{0}$ 处 $\mathbb{C}$-可微且 $f'(z_{0})\ne0$, 结合**定理 4.1.5**, $f$ 在 $z_{0}$ 处共形. 因 $f'(z_{0})\ne0$, $f$ 在 $z_{0}$ 的某个开邻域 $U\subset B(z_{0},r)$ 上局部单叶 (故局部单叶全纯), 由**定理 10.2.4**, $f(U)$ 是开集且以 $f(z_{0})=0$ 为内点. 于是存在 $\delta>0$ 使 $f(U)$ 含以 $0$ 为圆心的开圆盘 $\{w:|w|<\delta\}$, 而该圆盘包含实轴上、下两侧的点, 与"$f(B(z_{0},r))$ 全部落在实轴某一侧"矛盾.

故 $f(B(z_{0},r))$ 不可能全部落在直线 $l$ 的某一侧. $\blacksquare$

### 习题三

(习题 3.4-5) 考虑函数 $f=u+iv$. 证明: 在极坐标 $(r,\phi)$ 表示下, 柯西-黎曼方程的形式为

$$
\frac{\partial u}{\partial r}=\frac{1}{r}\frac{\partial v}{\partial\phi},\quad
\frac{\partial v}{\partial r}=-\frac{1}{r}\frac{\partial u}{\partial\phi};
$$

而且若 $f$ 在 $z_{0}=r_{0}e^{i\phi_{0}}\ne0$ 处可导, 则

$$
f'(z_{0})=e^{-i\phi_{0}}\left(\frac{\partial u}{\partial r}(r_{0},\phi_{0})+i\frac{\partial v}{\partial r}(r_{0},\phi_{0})\right).
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

第二问: 由**定理 3.3.3**, $f'(z_{0})=\frac{\partial f}{\partial z}(z_{0})$. 在全纯点处 $\frac{\partial f}{\partial\bar{z}}=0$, 故由 $\frac{\partial z}{\partial r}=e^{i\phi}$ 及链式法则, $\frac{\partial f}{\partial r}(z_{0})=\frac{\partial f}{\partial z}(z_{0})e^{i\phi_{0}}$, 即

$$
f'(z_{0})=e^{-i\phi_{0}}\frac{\partial f}{\partial r}(z_{0})=e^{-i\phi_{0}}\left(\frac{\partial u}{\partial r}(r_{0},\phi_{0})+i\frac{\partial v}{\partial r}(r_{0},\phi_{0})\right).
$$

命题得证. $\blacksquare$

### 习题四

(习题 3.4-7) 令 $a,b,c\in\mathbb{C}$ 和函数 $f:\mathbb{C}\to\mathbb{C}$ 为 $f(z)=az^{2}+b|z|^{2}+c\bar{z}^{2}$. 证明: $f$ 在 $z\in\mathbb{C}$ 处可导当且仅当 $bz+2c\bar{z}=0$.

### 解答 习题四

由 $|z|^{2}=z\bar{z}$, 得 $f(z)=az^{2}+bz\bar{z}+c\bar{z}^{2}$. 计算形式导数 (**定义 3.2.2 (形式导数)**): 因 $az^{2}$ 关于 $\bar{z}$ 的偏导为 $0$, $\frac{\partial(z\bar{z})}{\partial\bar{z}}=z$, $\frac{\partial(\bar{z}^{2})}{\partial\bar{z}}=2\bar{z}$, 故

$$
\frac{\partial f}{\partial\bar{z}}(z)=bz+2c\bar{z}.
$$

由**定理 3.2.4**, $f$ 在 $z$ 处 $\mathbb{C}$-可微当且仅当 $\frac{\partial f}{\partial\bar{z}}(z)=0$, 即 $bz+2c\bar{z}=0$; 再由**定理 3.3.3**, $\mathbb{C}$-可微与可导等价. 故 $f$ 在 $z$ 处可导当且仅当 $bz+2c\bar{z}=0$. $\blacksquare$

### 习题五

(习题 3.4-9) 寻找 $\mathbb{C}$ 上全纯且 $\operatorname{Re}f(z)=e^{x}(x\cos y-y\sin y)$, $z=x+iy$ 的函数.

### 解答 习题五

设 $f=u+iv$, $u(x,y)=e^{x}(x\cos y-y\sin y)$. 由 $f$ 全纯, $u,v$ 满足柯西-黎曼方程 (**定理 3.2.4**): $v_{y}=u_{x}$, $v_{x}=-u_{y}$. 计算

$$
\begin{aligned}
u_{x}&=e^{x}(x\cos y-y\sin y)+e^{x}\cos y=e^{x}(\cos y+x\cos y-y\sin y),\\
u_{y}&=e^{x}(-x\sin y-\sin y-y\cos y)=-e^{x}(\sin y+x\sin y+y\cos y).
\end{aligned}
$$

由 $v_{y}=u_{x}$, 对 $y$ 积分:

$$
v(x,y)=\int e^{x}(\cos y+x\cos y-y\sin y)\,dy=e^{x}\left(\sin y+x\sin y+\int(-y\sin y)\,dy\right)+C(x).
$$

利用 $\int(-y\sin y)\,dy=y\cos y-\sin y$, 得

$$
v(x,y)=e^{x}(\sin y+x\sin y+y\cos y-\sin y)+C(x)=e^{x}(x\sin y+y\cos y)+C(x).
$$

再由 $v_{x}=-u_{y}$: $v_{x}=e^{x}(x\sin y+y\cos y)+e^{x}\sin y+C'(x)=e^{x}(x\sin y+\sin y+y\cos y)+C'(x)$, 而 $-u_{y}=e^{x}(\sin y+x\sin y+y\cos y)$. 两者相等, 得 $C'(x)=0$, 即 $C(x)$ 为常数. 因此

$$
f(z)=e^{x}(x\cos y-y\sin y)+ie^{x}(x\sin y+y\cos y)+iC,\quad C\in\mathbb{R}.
$$

注意到 $ze^{z}=(x+iy)e^{x}(\cos y+i\sin y)$, 其实部恰为 $e^{x}(x\cos y-y\sin y)$, 虚部恰为 $e^{x}(x\sin y+y\cos y)$. 故

$$
f(z)=ze^{z}+iC,\quad C\in\mathbb{R}.
$$

验证: $f'(z)=(z+1)e^{z}$ 在 $\mathbb{C}$ 上全纯, 且 $\operatorname{Re}f=e^{x}(x\cos y-y\sin y)$, 满足要求. $\blacksquare$
