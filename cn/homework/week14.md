# 作业 14

> **定理 8.3.1** (柯西积分公式)<br>若 $f$ 在含若当闭曲线 $\gamma$ 及其内区域的区域上全纯, $z$ 在 $\gamma$ 的内区域, 则 $$f\left(z\right)=\frac{1}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.$$

> **定理 8.3.2** (高阶导数公式)<br>$$f^{\left(n\right)}\left(z\right)=\frac{n!}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\left(\zeta-z\right)^{n+1}}\,d\zeta.$$

> **定理 10.1.1** (最大模原理)<br>若区域 $D$ 上的全纯函数 $f$ 的模 $\left|f\right|$ 在 $D$ 内有局部极大值, 则 $f$ 在 $D$ 上为常值; 特别地 $\left|f\right|$ 在紧闭区域上的最大值在边界取到.

### 习题一

(习题 13.4-8) 令 $D\subset\mathbb{C}$ 是由若当闭曲线 $\gamma_{1}$ 和 $\gamma_{2}$ 围成的区域, 其中 $\gamma_{1}$ 包含于 $\gamma_{2}$ 的内区域, $f$ 是闭区域 $\bar{D}$ 上的全纯函数. 证明:

$$
f\left(z\right)=f_{1}\left(z\right)+f_{2}\left(z\right),\quad\forall z\in D,
$$

其中 $f_{1}$ 在 $\gamma_{1}$ 的外区域上全纯而 $f_{2}$ 在 $\gamma_{2}$ 的内区域上全纯.

### 解答 习题一

对 $z\in D$ (位于 $\gamma_{1}$ 与 $\gamma_{2}$ 之间), 由**定理 8.3.1 (柯西积分公式)** 对环形区域 ($\gamma_{1},\gamma_{2}$ 均取逆时针):

$$
f\left(z\right)=\frac{1}{2\pi i}\int_{\gamma_{2}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta-\frac{1}{2\pi i}\int_{\gamma_{1}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.
$$

定义

$$
f_{2}\left(z\right):=\frac{1}{2\pi i}\int_{\gamma_{2}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta,\quad
f_{1}\left(z\right):=-\frac{1}{2\pi i}\int_{\gamma_{1}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.
$$

对 $\gamma_{2}$ 的内区域中的点 $z$, 被积函数 $\frac{f\left(\zeta\right)}{\zeta-z}$ 关于 $z$ 在 $\gamma_{2}$ 内全纯 (参数积分), 故 $f_{2}$ 在 $\gamma_{2}$ 的内区域上全纯; 同理 $f_{1}$ 在 $\gamma_{1}$ 的外区域上全纯. 而 $z\in D$ 既在 $\gamma_{2}$ 的内区域又在 $\gamma_{1}$ 的外区域, 故 $f\left(z\right)=f_{1}\left(z\right)+f_{2}\left(z\right)$, $\forall z\in D$. $\blacksquare$

### 习题二

(习题 13.4-18) 令 $f$ 是区域 $D$ 上的全纯函数, $\gamma$ 是 $D$ 上的若当闭曲线且 $\gamma$ 的内区域全都包含在 $D$ 中. 证明: 对于 $\gamma$ 内区域中的任意一点 $z$, 都存在 $\gamma$ 上的一点 $w$ 使得

$$
\left|\frac{f\left(z\right)-f\left(w\right)}{z-w}\right|\ge\left|f'\left(z\right)\right|.
$$

### 解答 习题二

记 $G$ 为 $\gamma$ 的内区域, 固定 $z\in G$. 定义

$$
g\left(w\right)=\frac{f\left(w\right)-f\left(z\right)}{w-z},\quad w\in G\setminus\left\{z\right\}.
$$

因 $f$ 在 $G$ 上全纯, $z$ 是 $g$ 的可去奇点, 且 $g\left(z\right)=f'\left(z\right)$; 故 $g$ 在 $\bar{G}$ 上全纯 (连续延拓到 $\partial G=\gamma$).

由**定理 10.1.1 (最大模原理)**, $\left|g\right|$ 在紧闭区域 $\bar{G}$ 上的最大值在边界 $\gamma$ 上取到, 特别地

$$
\left|g\left(z\right)\right|=\left|f'\left(z\right)\right|\le\max_{w\in\gamma}\left|g\left(w\right)\right|=\max_{w\in\gamma}\left|\frac{f\left(w\right)-f\left(z\right)}{w-z}\right|.
$$

因此存在 $w\in\gamma$ 使得

$$
\left|\frac{f\left(w\right)-f\left(z\right)}{w-z}\right|\ge\left|f'\left(z\right)\right|,
$$

即 $\left|\frac{f\left(z\right)-f\left(w\right)}{z-w}\right|\ge\left|f'\left(z\right)\right|$. $\blacksquare$
