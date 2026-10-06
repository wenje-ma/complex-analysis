# 作业 14

> **定理 8.3.1** (柯西积分公式)<br>若 $f$ 在含若当闭曲线 $\gamma$ 及其内区域的区域上全纯, $z$ 在 $\gamma$ 的内区域, 则 $$f(z)=\frac{1}{2\pi i}\int_{\gamma}\frac{f(\zeta)}{\zeta-z}\,d\zeta.$$

> **定理 8.3.2** (高阶导数公式)<br>$$f^{(n)}(z)=\frac{n!}{2\pi i}\int_{\gamma}\frac{f(\zeta)}{(\zeta-z)^{n+1}}\,d\zeta.$$

> **定理 10.1.1** (最大模原理)<br>若区域 $D$ 上的全纯函数 $f$ 的模 $|f|$ 在 $D$ 内有局部极大值, 则 $f$ 在 $D$ 上为常值; 特别地 $|f|$ 在紧闭区域上的最大值在边界取到.

### 习题一

(习题 13.4-8) 令 $D\subset\mathbb{C}$ 是由若当闭曲线 $\gamma_{1}$ 和 $\gamma_{2}$ 围成的区域, 其中 $\gamma_{1}$ 包含于 $\gamma_{2}$ 的内区域, $f$ 是闭区域 $\bar{D}$ 上的全纯函数. 证明:

$$
f(z)=f_{1}(z)+f_{2}(z),\quad\forall z\in D,
$$

其中 $f_{1}$ 在 $\gamma_{1}$ 的外区域上全纯而 $f_{2}$ 在 $\gamma_{2}$ 的内区域上全纯.

### 解答 习题一

对 $z\in D$ (位于 $\gamma_{1}$ 与 $\gamma_{2}$ 之间), 由**定理 8.3.1 (柯西积分公式)** 对环形区域 ($\gamma_{1},\gamma_{2}$ 均取逆时针):

$$
f(z)=\frac{1}{2\pi i}\int_{\gamma_{2}}\frac{f(\zeta)}{\zeta-z}\,d\zeta-\frac{1}{2\pi i}\int_{\gamma_{1}}\frac{f(\zeta)}{\zeta-z}\,d\zeta.
$$

定义

$$
f_{2}(z):=\frac{1}{2\pi i}\int_{\gamma_{2}}\frac{f(\zeta)}{\zeta-z}\,d\zeta,\quad
f_{1}(z):=-\frac{1}{2\pi i}\int_{\gamma_{1}}\frac{f(\zeta)}{\zeta-z}\,d\zeta.
$$

对 $\gamma_{2}$ 的内区域中的点 $z$, 被积函数 $\frac{f(\zeta)}{\zeta-z}$ 关于 $z$ 在 $\gamma_{2}$ 内全纯 (参数积分), 故 $f_{2}$ 在 $\gamma_{2}$ 的内区域上全纯; 同理 $f_{1}$ 在 $\gamma_{1}$ 的外区域上全纯. 而 $z\in D$ 既在 $\gamma_{2}$ 的内区域又在 $\gamma_{1}$ 的外区域, 故 $f(z)=f_{1}(z)+f_{2}(z)$, $\forall z\in D$. $\blacksquare$

### 习题二

(习题 13.4-18) 令 $f$ 是区域 $D$ 上的全纯函数, $\gamma$ 是 $D$ 上的若当闭曲线且 $\gamma$ 的内区域全都包含在 $D$ 中. 证明: 对于 $\gamma$ 内区域中的任意一点 $z$, 都存在 $\gamma$ 上的一点 $w$ 使得

$$
\left|\frac{f(z)-f(w)}{z-w}\right|\ge|f'(z)|.
$$

### 解答 习题二

记 $G$ 为 $\gamma$ 的内区域, 固定 $z\in G$. 定义

$$
g(w)=\frac{f(w)-f(z)}{w-z},\quad w\in G\setminus\{z\}.
$$

因 $f$ 在 $G$ 上全纯, $z$ 是 $g$ 的可去奇点, 且 $g(z)=f'(z)$; 故 $g$ 在 $\bar{G}$ 上全纯 (连续延拓到 $\partial G=\gamma$).

由**定理 10.1.1 (最大模原理)**, $|g|$ 在紧闭区域 $\bar{G}$ 上的最大值在边界 $\gamma$ 上取到, 特别地

$$
|g(z)|=|f'(z)|\le\max_{w\in\gamma}|g(w)|=\max_{w\in\gamma}\left|\frac{f(w)-f(z)}{w-z}\right|.
$$

因此存在 $w\in\gamma$ 使得

$$
\left|\frac{f(w)-f(z)}{w-z}\right|\ge|f'(z)|,
$$

即 $\left|\frac{f(z)-f(w)}{z-w}\right|\ge|f'(z)|$. $\blacksquare$
