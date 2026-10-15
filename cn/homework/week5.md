# 作业 5

> **命题 5.3.1**<br>(i) 指数函数 $e^{z}$ 在 $\mathbb{C}$ 上全纯且不取零值; (iv) $e^{z}$ 以 $2\pi i$ 为最小周期; (v) $e^{z}$ 在某区域上单叶当且仅当该区域内任意不同两点之差不是 $2\pi i$ 的整数倍.

> **定义 5.4.1** (复正弦与余弦)<br>$$\cos z=\frac{e^{iz}+e^{-iz}}{2},\quad\sin z=\frac{e^{iz}-e^{-iz}}{2i},\quad z\in\mathbb{C}.$$

> **命题 5.4.2**<br>$\sin z,\cos z$ 在 $\mathbb{C}$ 上全纯, $\left(\sin z\right)'=\cos z$, $\left(\cos z\right)'=-\sin z$.

> **定理 5.1.2** (代数学基本定理)<br>任意 $n\ge1$ 次多项式在复数域 $\mathbb{C}$ 中至少有一个根.

### 习题一

(习题 5.5-1, 高斯-卢卡斯) 令 $P\left(z\right)$ 为多项式 (次数不小于 $1$). 证明: 它的导数 $P'\left(z\right)$ 的所有根都包含在 $P\left(z\right)$ 的根的凸包 (即包含 $P\left(z\right)$ 的所有根的最小的凸多边形) 内.

### 解答 习题一

设 $P$ 的根 (计重数) 为 $a_{1},\ldots,a_{n}$, $P\left(z\right)=c\prod_{j=1}^{n}\left(z-a_{j}\right)$. 若 $z_{0}$ 是 $P$ 的根, 显然 $z_{0}$ 在凸包内. 设 $z_{0}$ 是 $P'$ 的根但不是 $P$ 的根, 则 $P\left(z_{0}\right)\ne0$, 且

$$
0=\frac{P'\left(z_{0}\right)}{P\left(z_{0}\right)}=\sum_{j=1}^{n}\frac{1}{z_{0}-a_{j}}.
$$

取共轭并利用 $\frac{1}{\overline{z_{0}-a_{j}}}=\frac{z_{0}-a_{j}}{\left|z_{0}-a_{j}\right|^{2}}$, 得

$$
\sum_{j=1}^{n}\frac{z_{0}-a_{j}}{\left|z_{0}-a_{j}\right|^{2}}=0,\quad\text{即}\quad
z_{0}\sum_{j=1}^{n}\frac{1}{\left|z_{0}-a_{j}\right|^{2}}=\sum_{j=1}^{n}\frac{a_{j}}{\left|z_{0}-a_{j}\right|^{2}}.
$$

于是

$$
z_{0}=\sum_{j=1}^{n}\lambda_{j}a_{j},\quad
\lambda_{j}:=\frac{\frac{1}{\left|z_{0}-a_{j}\right|^{2}}}{\sum_{k=1}^{n}\frac{1}{\left|z_{0}-a_{k}\right|^{2}}}.
$$

$\lambda_{j}>0$ 且 $\sum_{j}\lambda_{j}=1$, 故 $z_{0}$ 是 $a_{1},\ldots,a_{n}$ 的凸组合, 落在它们的凸包内. 得证. $\blacksquare$

### 习题二

(习题 5.5-3) 证明: 函数 $f\left(z\right)=\frac{\sin z}{z}$ ($z\ne0$), $f\left(0\right)=1$, 在 $\mathbb{C}$ 上是全纯的.

### 解答 习题二

由**定义 5.4.1**, $\sin z=\frac{e^{iz}-e^{-iz}}{2i}$, 其泰勒展开为 $\sin z=\sum_{n=0}^{+\infty}\frac{\left(-1\right)^{n}}{\left(2n+1\right)!}z^{2n+1}$, 收敛半径为 $+\infty$. 除以 $z$ (当 $z\ne0$) 得

$$
\frac{\sin z}{z}=\sum_{n=0}^{+\infty}\frac{\left(-1\right)^{n}}{\left(2n+1\right)!}z^{2n},\quad z\ne0.
$$

该幂级数在 $\mathbb{C}$ 上收敛, 故在整个 $\mathbb{C}$ 上全纯, 且其在 $z=0$ 处的值为 $1$. 因此 $f$ 在 $\mathbb{C}$ 上全纯. $\blacksquare$

### 习题三

(习题 5.5-5) 证明: $\cos z$ 和 $\sin z$ 在 $\mathbb{C}$ 上都是无界函数.

### 解答 习题三

取 $z=it$, $t\in\mathbb{R}$. 由**定义 5.4.1**,

$$
\cos\left(it\right)=\frac{e^{-t}+e^{t}}{2}=\cosh t,\quad
\sin\left(it\right)=\frac{e^{-t}-e^{t}}{2i}=i\sinh t.
$$

当 $t\to+\infty$ 时 $\cosh t\to+\infty$, $\left|\sinh t\right|\to+\infty$. 故 $\cos z$ 沿虚轴无界, $\sin z$ 沿虚轴也无界 ($\left|\sin\left(it\right)\right|=\sinh t\to+\infty$). 因此 $\cos z$ 与 $\sin z$ 在 $\mathbb{C}$ 上都是无界函数. $\blacksquare$

### 习题四

(习题 5.5-7) 找出复平面上所有使得函数 $2+\sin z$ 取零值的点.

### 解答 习题四

解方程 $\sin z=-2$. 由**定义 5.4.1**, $\frac{e^{iz}-e^{-iz}}{2i}=-2$, 即 $e^{iz}-e^{-iz}=-4i$. 令 $w=e^{iz}$, 得

$$
w-\frac{1}{w}=-4i,\quad w^{2}+4iw-1=0,\quad w=i\left(-2\pm\sqrt{3}\right).
$$

于是 $e^{iz}=i\left(-2+\sqrt3\right)$ 或 $e^{iz}=i\left(-2-\sqrt3\right)$, 两者均是非零复数 (在负虚轴上). 解 $e^{iz}=w$: $iz=\operatorname{Log}w+2k\pi i$, $z=-i\operatorname{Log}w+2k\pi$, $k\in\mathbb{Z}$.

对 $w=i\left(-2+\sqrt3\right)=-i\left(2-\sqrt3\right)$: $\left|w\right|=2-\sqrt3$, $\operatorname{Log}w=\ln\left(2-\sqrt3\right)-i\frac\pi2$, 故 $z=\left(2k-\frac12\right)\pi+i\ln\left(2+\sqrt3\right)$ (因 $\ln\left(2-\sqrt3\right)=-\ln\left(2+\sqrt3\right)$). 对 $w=i\left(-2-\sqrt3\right)=-i\left(2+\sqrt3\right)$: $\left|w\right|=2+\sqrt3$, 得 $z=\left(2k-\frac12\right)\pi-i\ln\left(2+\sqrt3\right)$.

故 $2+\sin z=0$ 的全部解为

$$
z=\left(2k-\frac12\right)\pi\pm i\ln\left(2+\sqrt3\right),\quad k\in\mathbb{Z}.
$$

$\blacksquare$

### 习题五

(习题 5.5-9) 证明等式 $\overline{e^{iz}}=e^{-i\bar z}$ 成立. (注: 原题两处共轭记号在 OCR 中缺失, 按指数函数的共轭恒等式补全.)

### 解答 习题五

由指数函数 $e^{z}=e^{x}\left(\cos y+i\sin y\right)$ (命题 5.3.1 及欧拉公式), 记 $z=x+iy$:

$$
e^{iz}=e^{i\left(x+iy\right)}=e^{ix-y}=e^{-y}\left(\cos x+i\sin x\right),
$$

取共轭得 $\overline{e^{iz}}=e^{-y}\left(\cos x-i\sin x\right)=e^{-y}e^{-ix}=e^{-\left(ix+y\right)}$. 而

$$
e^{-i\bar z}=e^{-i\left(x-iy\right)}=e^{-ix-y}=e^{-y}e^{-ix}=e^{-\left(ix+y\right)}.
$$

两者相等, 故 $\overline{e^{iz}}=e^{-i\bar z}$. $\blacksquare$
