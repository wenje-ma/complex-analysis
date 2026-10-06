# 作业 19

> **定义 16.1.1** (调和函数)<br>区域 $D$ 上的实值 $C^{2}$ 函数 $u$ 称为调和的, 若 $\Delta u=u_{xx}+u_{yy}=0$ 于 $D$.

> **命题 16.1.6** (均值性质)<br>调和函数 $u$ 于 $B(a,R)$ 有 $$u(a)=\frac{1}{2\pi}\int_{0}^{2\pi}u(a+Re^{i\theta})d\theta.$$

> **定理 16.2.9** (泊松积分)<br>圆盘 $B(a,R)$ 上狄利克雷问题有解 $$u(z)=\frac{R^{2}-|z-a|^{2}}{2\pi R}\int_{0}^{2\pi}\frac{f(a+Re^{i\theta})}{|z-a-Re^{i\theta}|^{2}}d\theta.$$

> **定理 16.2.10**<br>有界若当域上的狄利克雷问题可解.

### 习题一

(习题 16.3-1) 证明: (i) 在极坐标 $(r,\theta)$ 表示下, $\Delta u=\frac{\partial^{2}u}{\partial r^{2}}+\frac1r\frac{\partial u}{\partial r}+\frac{1}{r^{2}}\frac{\partial^{2}u}{\partial\theta^{2}}$; (ii) 直接利用调和函数的定义和 (i) 中的等式验证均值性质 (**命题 16.1.6**).

### 解答 习题一

(i) 由 $x=r\cos\theta$, $y=r\sin\theta$, 链式法则:

$$
\frac{\partial}{\partial x}=\cos\theta\frac{\partial}{\partial r}-\frac{\sin\theta}{r}\frac{\partial}{\partial\theta},\quad
\frac{\partial}{\partial y}=\sin\theta\frac{\partial}{\partial r}+\frac{\cos\theta}{r}\frac{\partial}{\partial\theta}.
$$

平方相加 (利用 $\frac{\partial}{\partial r}\circ\frac{\partial}{\partial\theta}=\frac{\partial}{\partial\theta}\circ\frac{\partial}{\partial r}$):

$$
\Delta u=\left(\frac{\partial^{2}}{\partial x^{2}}+\frac{\partial^{2}}{\partial y^{2}}\right)u=\frac{\partial^{2}u}{\partial r^{2}}+\frac1r\frac{\partial u}{\partial r}+\frac{1}{r^{2}}\frac{\partial^{2}u}{\partial\theta^{2}}.
$$

(ii) 固定 $a$, 记 $M(r):=\frac{1}{2\pi}\int_{0}^{2\pi}u(a+re^{i\theta})d\theta$. 由 (i) 与 $\Delta u=0$: $u_{rr}+\frac1r u_r+\frac1{r^{2}}u_{\theta\theta}=0$, 乘 $r$ 得 $\frac{\partial}{\partial r}(r u_r)=-\frac1r u_{\theta\theta}$. 于是

$$
\frac{d}{dr}\bigl(rM'(r)\bigr)=\frac{1}{2\pi}\int_{0}^{2\pi}\frac{\partial}{\partial r}(r u_r)d\theta=-\frac{1}{2\pi r}\int_{0}^{2\pi}u_{\theta\theta}d\theta=0,
$$

故 $rM'(r)$ 为常数. 当 $r\to0$ 时 $M'(r)\to u_r(a)$ (光滑), $rM'(r)\to0$, 故常数 $=0$, $M'(r)\equiv0$, $M$ 为常数. 又 $\lim_{r\to0}M(r)=u(a)$, 故 $M(R)=u(a)$, 即 $u(a)=\frac{1}{2\pi}\int_{0}^{2\pi}u(a+Re^{i\theta})d\theta$. $\blacksquare$

### 习题二

(习题 16.3-2) 令 $u=\frac{1}{2\pi}\log|z|$, $z\in A(0;0;1):=\{0<|z|<1\}$. 证明: (i) $u$ 是圆环 $A(0;0;1)$ 上的调和函数; (ii) 不存在 $A(0;0;1)$ 上的全纯函数 $f$ 使得 $\operatorname{Re}f=u$; (iii) 令 $f$ 是开圆盘 $\mathbb{D}$ 上具有紧支撑的光滑 (实) 函数, 则 $\int_{\mathbb{D}}u(z)\Delta f(z)\,dx\,dy=f(0)$.

### 解答 习题二

(i) 在极坐标下 $u=\frac{1}{2\pi}\ln r$. $u_{r}=\frac{1}{2\pi r}$, $u_{rr}=-\frac{1}{2\pi r^{2}}$, $u_{\theta\theta}=0$. 由**习题一 (i)**,

$$
\Delta u=u_{rr}+\frac1r u_{r}+\frac1{r^{2}}u_{\theta\theta}=-\frac1{2\pi r^{2}}+\frac{1}{2\pi r^{2}}+0=0,
$$

故 $u$ 调和于 $A(0;0;1)$.

(ii) 反设存在全纯 $f=f_{1}+if_{2}$ 使 $f_{1}=u$. 则由柯西-黎曼方程 (极坐标), 共轭调和函数 $f_{2}$ 满足 $r\frac{\partial f_{2}}{\partial r}=\frac{\partial u}{\partial\theta}=0$, $\frac{\partial f_{2}}{\partial\theta}=r\frac{\partial u}{\partial r}=\frac{1}{2\pi}$. 故 $f_{2}$ 与 $r$ 无关且 $\frac{\partial f_{2}}{\partial\theta}=\frac{1}{2\pi}$, 即 $f_{2}=\frac{\theta}{2\pi}+c$. 沿 $A$ 内绕原点 $0$ 一圈的闭曲线, $\theta$ 增加 $2\pi$, $f_{2}$ 增加 $1$, 不能回到原值, 与 $f_{2}$ 是单值函数矛盾. 故不存在这样的全纯 $f$.

(iii) $f$ 具紧支撑于 $\mathbb{D}$, 边界上 $f=\frac{\partial f}{\partial n}=0$. 取小圆 $B(0,\epsilon)$ 挖掉原点, 在 $\mathbb{D}\setminus B(0,\epsilon)$ 上 $u$ 调和, 由格林第二恒等式:

$$
\int_{\mathbb{D}\setminus B(0,\epsilon)}u\Delta f\,dx\,dy=\int_{\partial B(0,\epsilon)}\left(u\frac{\partial f}{\partial n}-f\frac{\partial u}{\partial n}\right)ds,
$$

(边界 $\partial\mathbb{D}$ 上积分为 $0$). 在小圆上 $u=\frac{1}{2\pi}\ln\epsilon$, $\frac{\partial u}{\partial n}=\frac{1}{2\pi\epsilon}$, 故

$$
\int_{\partial B(0,\epsilon)}u\frac{\partial f}{\partial n}ds=\frac{1}{2\pi}\ln\epsilon\int_{\partial B(0,\epsilon)}\frac{\partial f}{\partial n}ds\to0,
$$

且 $-\int_{\partial B(0,\epsilon)}f\frac{\partial u}{\partial n}ds=-\frac{1}{2\pi\epsilon}\int_{\partial B(0,\epsilon)}f\,ds\to-f(0)$. 取 $\epsilon\to0$ 得 $\int_{\mathbb{D}}u\Delta f\,dx\,dy=f(0)$. $\blacksquare$

### 习题三

(习题 16.3-7) 令 $\mathbb{H}:=\{\operatorname{Im}z>0\}$, 在 $\partial\mathbb{H}$ 上给定一个连续函数 $f$ 且 $\lim_{z\to\infty,\,z\in\partial\mathbb{H}}f(z)$ 存在且有限. 试求 $\mathbb{H}$ 上的狄利克雷问题的解 $u$ 使得 $u|_{\partial\mathbb{H}}=f$.

### 解答 习题三

解由上半平面的泊松积分给出:

$$
u(x+iy)=\frac{y}{\pi}\int_{-\infty}^{+\infty}\frac{f(t)}{(t-x)^{2}+y^{2}}\,dt,\quad y>0.
$$

验证: 泊松核 $P_{y}(t-x):=\frac{y}{\pi((t-x)^{2}+y^{2})}$ 关于 $(x,y)$ 是调和的 (它是 $\frac1\pi\operatorname{Im}\frac{1}{t-z}$), 故 $u$ 调和于 $\mathbb{H}$. 又 $\int_{-\infty}^{+\infty}P_{y}(t-x)dt=1$, 且对 $x_{0}$ 的邻域内 $x$ 一致地有 $P_{y}(t-x)\to0$ ($t$ 远离 $x_{0}$), 故

$$
\lim_{y\to0^{+}}u(x_{0}+iy)=\lim_{y\to0^{+}}\int f(t)P_{y}(t-x_{0})dt=f(x_{0}),
$$

即 $u|_{\partial\mathbb{H}}=f$ (逼近性质). 由 $f$ 在 $\infty$ 有有限极限 $L$, $u(x+iy)\to L$ 当 $|z|\to\infty$, 与边界条件一致. 故所求即上式. $\blacksquare$

### 习题四

(习题 16.3-8) 令 $u$ 是区域 $D\subset\mathbb{C}$ 上的调和函数. 证明: $\forall(x_{0},y_{0})\in D$, 都存在 $(x_{0},y_{0})$ 的一个邻域 $B_{0}\subset D$ 使得 $u$ 在 $B_{0}$ 上可以表示成泰勒级数的形式, 即 $u(x,y)=\sum_{n\in\mathbb{N}}\sum_{m+k=n}\frac{1}{m!k!}\partial_{x}^{m}\partial_{y}^{k}u(x_{0},y_{0})(x-x_{0})^{m}(y-y_{0})^{k}$, $\forall(x,y)\in B_{0}$.

### 解答 习题四

调和函数局部是某全纯函数的实部: 在 $(x_{0},y_{0})$ 的圆盘 $B_{0}\subset D$ 内存在全纯 $F$ 使 $u=\operatorname{Re}F$ (局部可找共轭调和函数). 记 $z_{0}=x_{0}+iy_{0}$, $F$ 在 $B_{0}$ 内泰勒展开 $F(z)=\sum_{n=0}^{+\infty}c_{n}(z-z_{0})^{n}$. 于是 $u(x,y)=\operatorname{Re}F(z)$, 而

$$
F(z)=\sum_{n=0}^{+\infty}c_{n}\bigl((x-x_{0})+i(y-y_{0})\bigr)^{n}
$$

是一关于 $(x-x_{0}),(y-y_{0})$ 的幂级数, 在 $B_{0}$ 内绝对一致收敛, 逐项展开得实幂级数 $u(x,y)=\sum_{m,k}\frac{1}{m!k!}\partial_{x}^{m}\partial_{y}^{k}u(x_{0},y_{0})(x-x_{0})^{m}(y-y_{0})^{k}$ (实解析函数的泰勒系数公式). 这正是所证. $\blacksquare$

### 习题五

(习题 16.3-10) (i) 验证 $u(x+iy)=\frac{1}{\pi}\arctan\frac{y}{x}$ 是上半平面 $\mathbb{H}:=\{(x,y):y>0\}$ 上的调和函数且可以连续延拓到除原点外的实轴上, 在正实轴上恒等于 $0$, 在负实轴上恒等于 $1$ (注: 原题 OCR 此处正负实轴上的取值互换了, 按 $u=\frac1\pi\arg z$ 于上半平面取值在 $(0,\pi)$ 理解); (ii) 考虑莫比乌斯变换 $\phi(z):\mathbb{H}\to\mathbb{D}$, $z\mapsto\frac{i-z}{i+z}$, 验证 $\tilde u:=u\circ\phi^{-1}$ 是 $\mathbb{D}$ 上的调和函数而且可连续延拓到除 $\pm1$ 外的边界 $\partial\mathbb{D}$ 上, 在半圆弧 $\{e^{i\theta}:0<\theta<\pi\}$ 上等于 $0$, 在半圆弧 $\{e^{i\theta}:-\pi<\theta<0\}$ 上等于 $1$; (iii) 验证 $\tilde u$ 是它的限定在边界上的函数的泊松积分; (iv) 验证对于任意 $a\in(0,1)$, 都存在序列 $z_{n}\in\mathbb{D}$, $z_{n}\to1$ (或 $-1$) 使得 $\tilde u(z_{n})\to a$.

### 解答 习题五

(i) 于 $\mathbb{H}$, $\frac1\pi\arctan\frac yx=\frac1\pi\arg(x+iy)$, 而 $\arg(x+iy)=\operatorname{Im}\operatorname{Log}z$ 是调和的, 故 $u$ 调和于 $\mathbb{H}$. 当 $y\to0^{+}$: 若 $x>0$, $\arg(x+iy)\to0$, $u\to0$; 若 $x<0$, $\arg(x+iy)\to\pi$, $u\to1$. 故 $u$ 连续延拓到除原点外的实轴, 正实轴取 $0$, 负实轴取 $1$.

(ii) $\phi^{-1}(w)=i\frac{1-w}{1+w}$. 对 $w=e^{i\theta}\in\partial\mathbb{D}$ ($w\ne\pm1$),

$$
\phi^{-1}(e^{i\theta})=i\frac{1-e^{i\theta}}{1+e^{i\theta}}=i\cdot(-i)\tan\frac{\theta}{2}=\tan\frac{\theta}{2}\in\mathbb{R}.
$$

$\tan\frac{\theta}{2}>0$ 当 $0<\theta<\pi$ (正实轴, $u=0$), $\tan\frac{\theta}{2}<0$ 当 $-\pi<\theta<0$ (负实轴, $u=1$). 因 $\phi$ 是共形等价, $\tilde u=u\circ\phi^{-1}$ 调和于 $\mathbb{D}$ 并连续延拓到 $\partial\mathbb{D}\setminus\{\pm1\}$, 上半圆弧取 $0$, 下半圆弧取 $1$.

(iii) $\tilde u$ 在 $\partial\mathbb{D}$ 上的边界函数 $g(e^{i\theta})$ 为: $0$ 于上半圆弧, $1$ 于下半圆弧 (除 $\pm1$). 由**定理 16.2.9 (泊松积分)**, 圆盘 $\mathbb{D}$ 上以 $g$ 为边界值的调和函数唯一, 而 $\tilde u$ 正是这个解, 故 $\tilde u$ 等于 $g$ 的泊松积分.

(iv) $\tilde u$ 在 $\mathbb{D}$ 上调和且不恒等, 在 $\partial\mathbb{D}$ 上 (除 $\pm1$) 取值于 $\{0,1\}$. 沿从 $\phi(0)$ 附近到边界点 $1$ (或 $-1$) 的路径, 边界极限在 $1$ 处介于上半圆弧 ($0$) 与下半圆弧 ($1$) 之间. 由连续性, 对任意 $a\in(0,1)$ 存在该路径上一点, 故可取序列 $z_{n}\to1$ (或 $-1$) 使 $\tilde u(z_{n})\to a$. $\blacksquare$
