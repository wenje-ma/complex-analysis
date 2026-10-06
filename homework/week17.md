# 作业 17

> **定理 14.1.3** (留数定理)<br>若 $f$ 在区域 $D$ 上除有限个孤立奇点外全纯, $\gamma$ 是 $D$ 内的若当闭曲线且这些奇点都在 $\gamma$ 内, 则 $$\int_{\gamma}f\,dz=2\pi i\sum\operatorname{Res}f.$$

> **柯西积分公式**<br>$f$ 在 $\overline{B(a,r)}$ 全纯, 则 $$f(a)=\frac{1}{2\pi i}\oint_{|z-a|=r}\frac{f(z)}{z-a}\,dz.$$

> **标准积分**<br>对 $0<\alpha<2$, $a>0$, $$\int_{0}^{+\infty}\frac{x^{\alpha-1}}{x^{2}+a^{2}}\,dx=\frac{\pi a^{\alpha-2}}{2\sin\frac{\pi\alpha}{2}}.$$

### 习题一

(习题 14.3-6) 计算积分 $\int_{0}^{+\infty}\frac{x^{1/n}}{x^{2}+a^{2}}\,dx$, 其中 $2\le n\in\mathbb{N}$, $a>0$.

### 解答 习题一

取 $z^{1/n}$ 的 $\operatorname{Log}$ 分支 (割正实轴), 用标准公式 $\int_{0}^{+\infty}\frac{x^{\alpha-1}}{x^{2}+a^{2}}dx=\frac{\pi a^{\alpha-2}}{2\sin\frac{\pi\alpha}{2}}$, 这里 $\alpha-1=\frac1n$, 即 $\alpha=1+\frac1n$. 则

$$
\int_{0}^{+\infty}\frac{x^{1/n}}{x^{2}+a^{2}}\,dx
=\frac{\pi a^{\frac1n-1}}{2\sin\left(\frac{\pi}{2}\left(1+\frac1n\right)\right)}
=\frac{\pi a^{\frac{1-n}{n}}}{2\cos\frac{\pi}{2n}}.
$$

(推导概述: 对 $f(z)=\frac{z^{1/n}}{z^{2}+a^{2}}$ 取角为 $\frac{2\pi}{n}$ 的楔形围道, 半径 $R\to\infty$, 两条边上的积分相减差因子 $e^{2\pi i/n}$, 加上两极点的留数, 即得上式.) $\blacksquare$

### 习题二

(习题 14.3-7) 计算积分 $\int_{0}^{+\infty}\frac{1}{\sqrt{x}(1+x)}\,dx$. (注: 原题 OCR 显示为 $\int_{0}^{+\infty}\frac{dx}{x(1+x)}$, 该积分在 $0$ 处发散; 按与第 6 题同型的 $\int_{0}^{+\infty}\frac{dx}{\sqrt{x}(1+x)}$ 理解, 其值为 $\pi$.)

### 解答 习题二

令 $x=t^{2}$, $t>0$, 则 $\sqrt{x}=t$, $dx=2t\,dt$:

$$
\int_{0}^{+\infty}\frac{dx}{\sqrt{x}(1+x)}=\int_{0}^{+\infty}\frac{2t\,dt}{t(1+t^{2})}=2\int_{0}^{+\infty}\frac{dt}{1+t^{2}}=2\cdot\frac{\pi}{2}=\pi.
$$

$\blacksquare$

### 习题三

(习题 14.3-10) 令 $\gamma\subset\mathbb{C}$ 是若当闭曲线, $D$ 是它的内区域, $f$ 是 $\overline{D}=D\cup\gamma$ 上的全纯函数, $z_{0}\in D$ 是 $f$ 在 $D$ 上的唯一零点. 证明: $z_{0}=\frac{1}{2\pi n i}\int_{\gamma}\frac{z f'(z)}{f(z)}\,dz$, 其中 $n$ 是 $z_{0}$ 的零点阶数.

### 解答 习题三

因 $z_{0}$ 是 $f$ 在 $D$ 上唯一的 $n$-阶零点, 记 $f(z)=(z-z_{0})^{n}g(z)$, 其中 $g$ 在 $\overline{D}$ 上全纯且 $g\ne0$. 则

$$
\frac{f'(z)}{f(z)}=\frac{n}{z-z_{0}}+\frac{g'(z)}{g(z)}.
$$

$\frac{g'}{g}$ 在 $\overline{D}$ 上全纯, 沿闭曲线积分为零, 故

$$
\int_{\gamma}\frac{z f'(z)}{f(z)}\,dz=n\int_{\gamma}\frac{z}{z-z_{0}}\,dz=n\cdot2\pi i\cdot z_{0},
$$

末等式用柯西积分公式 ($z$ 在 $z=z_{0}$ 处的值). 于是 $\frac{1}{2\pi n i}\int_{\gamma}\frac{z f'(z)}{f(z)}dz=z_{0}$. $\blacksquare$

### 习题四

(习题 14.3-11) 令 $f$ 是 $\mathbb{C}$ 上的全纯函数, $R>0$, $a,b\in\mathbb{C}$ 且 $|a|,|b|<R$. (i) 计算积分 $\int_{\gamma}\frac{f(z)}{(z-a)(z-b)}\,dz$, 其中 $\gamma(t)=Re^{it}$, $t\in[0,2\pi]$; (ii) 利用 (i) 中的积分证明刘维尔定理: $\mathbb{C}$ 上的有界全纯函数都是常值的.

### 解答 习题四

(i) 部分分式 $\frac{1}{(z-a)(z-b)}=\frac{1}{a-b}\left(\frac{1}{z-a}-\frac{1}{z-b}\right)$. $a,b$ 都在圆 $|z|=R$ 内, 由柯西积分公式,

$$
\int_{\gamma}\frac{f(z)}{(z-a)(z-b)}\,dz=\frac{1}{a-b}\left(\int_{\gamma}\frac{f(z)}{z-a}dz-\int_{\gamma}\frac{f(z)}{z-b}dz\right)=\frac{2\pi i}{a-b}(f(a)-f(b)).
$$

(ii) 设 $f$ 有界: $|f|\le M$. 对 (i) 的积分估值: 在 $|z|=R$ 上 $|(z-a)(z-b)|\ge R^{2}$ (当 $R$ 充分大), 故

$$
\left|\int_{\gamma}\frac{f(z)}{(z-a)(z-b)}\,dz\right|\le\frac{M}{R^{2}}\cdot2\pi R=\frac{2\pi M}{R}\to0\quad(R\to\infty).
$$

由 (i), $\frac{2\pi i}{a-b}(f(a)-f(b))\to0$, 故 $f(a)=f(b)$ 对任意 $a,b$ 成立, 即 $f$ 为常数. $\blacksquare$

### 习题五

(习题 14.3-16, 高斯积分) 令 $\beta=\sqrt\pi\,e^{i\frac{\pi}{4}}$ (即 $\beta^{2}=i\pi$), 考虑函数 $f(z)=\frac{e^{-z^{2}}}{1+e^{-2\beta z}}$. (i) 验证 $f$ 只在点集 $\mathcal{Z}:=\{z_{n}=(n+\frac12)\beta,\ n\in\mathbb{Z}\}$ 处有奇点, 且都为简单极点; (ii) 验证 $f(z)-f(z+\beta)=e^{-z^{2}}$, $\forall z\in\mathbb{C}\setminus\mathcal{Z}$; (iii) 对于 $R>0$ 充分大, 考虑以 $-R,R,R+\beta,-R+\beta$ 为顶点的平行四边形 $\Omega$, 验证 $\int_{-\infty}^{+\infty}e^{-x^{2}}dx=2\pi i\operatorname{Res}_{z_{0}}f$, 其中 $z_{0}$ 如 (i); (iv) 利用上述结论, 验证 $\int_{-\infty}^{+\infty}e^{-\frac{x^{2}}{2}}dx=\sqrt{2\pi}$.

### 解答 习题五

(i) $f$ 的奇点是分母零点 $1+e^{-2\beta z}=0$, 即 $e^{-2\beta z}=-1$, 亦即 $-2\beta z=i\pi(1+2k)$, $z=-\frac{i\pi(1+2k)}{2\beta}$. 由 $\beta^{2}=i\pi$, 计算得 $z=\frac{(2k+1)\beta}{2}=(k+\tfrac12)\beta=z_{k}$, $k\in\mathbb{Z}$. 故奇点恰为 $\mathcal{Z}$. 在 $z_{n}$ 处 $\frac{d}{dz}(1+e^{-2\beta z})=-2\beta e^{-2\beta z_{n}}=-2\beta(-1)=2\beta\ne0$, 故都是简单极点.

(ii) 记 $u=e^{-2\beta z}$. 由 $\beta^{2}=i\pi$, $e^{-\beta^{2}}=e^{-i\pi}=-1$, $e^{-2\beta^{2}}=1$. 于是

$$
f(z)-f(z+\beta)=\frac{e^{-z^{2}}}{1+u}-\frac{e^{-z^{2}-2\beta z-\beta^{2}}}{1+u}=e^{-z^{2}}\frac{1-(-1)u}{1+u}=e^{-z^{2}}\frac{1+u}{1+u}=e^{-z^{2}}.
$$

(iii) 平行四边形 $\Omega=\{x+t\beta:\ x\in[-R,R],\ t\in[0,1]\}$. 极点 $z_{n}=(n+\frac12)\beta$ 在 $\Omega$ 内当且仅当 $n+\frac12\in[0,1]$, 即 $n=0$, 故 $\Omega$ 内只有 $z_{0}=\frac\beta2$. 由留数定理,

$$
\oint_{\partial\Omega}f(z)\,dz=2\pi i\operatorname{Res}_{z_{0}}f=2\pi i\frac{e^{-z_{0}^{2}}}{2\beta}=2\pi i\frac{e^{-\beta^{2}/4}}{2\beta}.
$$

沿两条竖边 ($x=\pm R$) 的积分因 $f$ 指数衰减而趋于 $0$; 顶边与底边之差由 (ii) 给出:

$$
\oint_{\partial\Omega}f(z)\,dz=\int_{-R}^{R}\bigl(f(x)-f(x+\beta)\bigr)dx=\int_{-R}^{R}e^{-x^{2}}dx.
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
