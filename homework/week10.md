# 作业 10

> **定理 10.1.1** (最大模原理)<br>若区域 $D$ 上的全纯函数 $f$ 的模 $\left|f\right|$ 在 $z_{0}\in D$ 处有局部极大值, 则 $f$ 在 $D$ 上为常值.

> **定理 10.1.4** (开映射定理)<br>非常值的全纯函数把区域映成区域.

> **定理 10.3.1** (施瓦茨引理)<br>若 $f:\mathbb{D}\to\mathbb{D}$ 全纯且 $f\left(0\right)=0$, 则 $\left|f\left(z\right)\right|\le\left|z\right|$ 且 $\left|f'\left(0\right)\right|\le1$; 等号在某点成立 (或 $\left|f'\left(0\right)\right|=1$) 当且仅当 $f\left(z\right)=e^{i\theta}z$.

> **定义 10.3.2** (Blaschke 因子)<br>对 $a\in\mathbb{D}$, 称 $$\phi_{a}\left(z\right)=\frac{z-a}{1-\bar{a}z}$$ 为 Blaschke 因子; 它是 $\mathbb{D}$ 的自同构, 满足 $\left|\phi_{a}\left(e^{i\theta}\right)\right|=1$ 且 $\phi_{a}\left(a\right)=0$.

### 习题一

(习题 10.4-2) 令 $f$ 和 $g$ 都是区域 $D\subset\mathbb{C}$ 上的全纯函数. 假设存在一点 $z_{0}\in D$ 和它的 $r$-邻域 $B\left(z_{0},r\right)\subset D$, $r>0$, 使得 $\left|f\left(z_{0}\right)\right|+\left|g\left(z_{0}\right)\right|\ge\left|f\left(z\right)\right|+\left|g\left(z\right)\right|$, $\forall z\in B\left(z_{0},r\right)$. 证明: $f$ 和 $g$ 均在 $D$ 上为常值.

### 解答 习题一

记 $M=\left|f\left(z_{0}\right)\right|+\left|g\left(z_{0}\right)\right|$. 取 $\theta_{1},\theta_{2}$ 使 $e^{i\theta_{1}}f\left(z_{0}\right)=\left|f\left(z_{0}\right)\right|$, $e^{i\theta_{2}}g\left(z_{0}\right)=\left|g\left(z_{0}\right)\right|$, 并令 $h\left(z\right)=e^{i\theta_{1}}f\left(z\right)+e^{i\theta_{2}}g\left(z\right)$. 则 $h$ 在 $D$ 上全纯, 且

$$
h\left(z_{0}\right)=\left|f\left(z_{0}\right)\right|+\left|g\left(z_{0}\right)\right|=M,
$$

而 $\left|h\left(z\right)\right|\le\left|f\left(z\right)\right|+\left|g\left(z\right)\right|\le M$, $\forall z\in B\left(z_{0},r\right)$. 故 $\left|h\right|$ 在 $z_{0}$ 处有局部极大值, 由**定理 10.1.1 (最大模原理)**, $h$ 在 $D$ 上为常值 $h\left(z\right)\equiv M'$, 其中 $\left|M'\right|=M$.

于是 $M=\left|h\left(z\right)\right|\le\left|f\left(z\right)\right|+\left|g\left(z\right)\right|\le M$ 对所有 $z\in B\left(z_{0},r\right)$ (进而 $D$) 成立, 故 $\left|f\left(z\right)\right|+\left|g\left(z\right)\right|\equiv M$ 且三角形等号 $\left|e^{i\theta_{1}}f\left(z\right)+e^{i\theta_{2}}g\left(z\right)\right|=\left|f\left(z\right)\right|+\left|g\left(z\right)\right|$ 处处成立. 三角形等号条件要求 $e^{i\theta_{1}}f\left(z\right)$ 与 $e^{i\theta_{2}}g\left(z\right)$ 方向相同, 故 $e^{i\left(\theta_{1}-\theta_{2}\right)}\frac{f\left(z\right)}{g\left(z\right)}\ge0$ 为实数 ($g\left(z\right)\ne0$ 处). 于是 $e^{i\left(\theta_{1}-\theta_{2}\right)}\frac{f}{g}$ 是实值亚纯函数, 取虚部为零得 (由恒等定理) $e^{i\left(\theta_{1}-\theta_{2}\right)}\frac{f}{g}\equiv c\in\mathbb{R}_{\ge0}$, 即 $f\equiv c'e^{i\theta}g$ 为 $g$ 的常数倍. 再由 $\left|f\right|+\left|g\right|\equiv M$ 得 $\left|g\right|\equiv\text{常数}$, 故 $g$ 常值 ($\left|g\right|$ 为常数且 $g$ 全纯, 由**定理 10.1.4 (开映射定理)** $g$ 必常值), 从而 $f$ 也常值. $\blacksquare$

### 习题二

(习题 10.4-4) 令 $f$ 为有界区域 $D\subset\mathbb{C}$ 上的全纯函数且 $f$ 在闭区域 $\bar{D}$ 上是连续的. 若 $\left|f\left(z\right)\right|=\alpha$, $\forall z\in\partial D$. 证明: 要么 $f$ 为常值的要么它在 $D$ 内有零点.

### 解答 习题二

反设 $f$ 在 $D$ 内无零点. 若 $\alpha=0$, 则 $\left|f\right|=0$ 在 $\partial D$, 由最大模原理 $f\equiv0$ 于 $D$, 常值, 得证. 下设 $\alpha>0$. 由 $\left|f\right|$ 在 $\bar{D}$ 上连续, 最大模原理 (在 $\bar{D}$ 上 $\left|f\right|$ 的最大值在边界取到) 给出 $\left|f\left(z\right)\right|\le\alpha$, $\forall z\in D$.

又 $\frac{1}{f}$ 在 $D$ 上全纯 (因 $f$ 无零点) 且在 $\bar{D}$ 上连续, 边界上 $\left|\frac{1}{f}\right|=\frac{1}{\alpha}$. 同理 $\left|\frac{1}{f\left(z\right)}\right|\le\frac{1}{\alpha}$, 即 $\left|f\left(z\right)\right|\ge\alpha$, $\forall z\in D$. 故 $\left|f\left(z\right)\right|\equiv\alpha$ 于 $D$, $\left|f\right|$ 为常数; 由**定理 10.1.4 (开映射定理)**, $f$ 为常值. 因此 $f$ 要么常值, 要么在 $D$ 内有零点. $\blacksquare$

### 习题三

(习题 10.4-6) (阿达马的三圆定理) 令 $0<r<R$, $f$ 是在闭圆环 $\left\{z\in\mathbb{C}:r\le\left|z\right|\le R\right\}$ 上的全纯函数. 令 $M\left(\rho\right)=\sup_{\theta\in\left[0,2\pi\right]}\left|f\left(\rho e^{i\theta}\right)\right|$, $\forall\rho\in\left[r,R\right]$. 证明: 对于任意 $s\in\left[0,1\right]$, 都有 $M\left(r^{s}R^{1-s}\right)\le M\left(r\right)^{s}M\left(R\right)^{1-s}$.

### 解答 习题三

记 $\rho=r^{s}R^{1-s}$. 若 $M\left(r\right)=0$ 或 $M\left(R\right)=0$, 由最大模原理 $f\equiv0$, 不等式显然. 下设 $M\left(r\right),M\left(R\right)>0$. 取实数

$$
\lambda=\frac{\log M\left(r\right)-\log M\left(R\right)}{\log R-\log r},
$$

并令 $g\left(z\right)=z^{\lambda}f\left(z\right)$, 其中 $z^{\lambda}$ 在圆环内取定一个全纯分支 (沿一条半径将圆环切开成单连通区域后取主分支, 割线两侧 $\left|z^{\lambda}\right|$ 取值一致). 则 $g$ 在该 (带割线的) 圆环区域上全纯, 且在内边界 $\left|z\right|=r$ 与外边界 $\left|z\right|=R$ 上

$$
\left|g\left(z\right)\right|\le r^{\lambda}M\left(r\right)=R^{\lambda}M\left(R\right)=:K,
$$

(最后一个等式由 $\lambda$ 的选择保证). 由最大模原理, $\left|g\left(z\right)\right|\le K$ 在该区域上成立, 特别对 $\left|z\right|=\rho$ 有 $\left|g\left(\rho e^{i\theta}\right)\right|\le K$. 故

$$
M\left(\rho\right)\le K\rho^{-\lambda}=r^{\lambda}M\left(r\right)\rho^{-\lambda}=M\left(r\right)\left(\frac{r}{\rho}\right)^{\lambda}.
$$

由 $\frac{r}{\rho}=\left(r/R\right)^{1-s}$ 及 $\lambda\log\frac{r}{R}=\log M\left(R\right)-\log M\left(r\right)$, 取对数:

$$
\log M\left(\rho\right)\le\log M\left(r\right)+\left(1-s\right)\left(\log M\left(R\right)-\log M\left(r\right)\right)=s\log M\left(r\right)+\left(1-s\right)\log M\left(R\right).
$$

即 $M\left(\rho\right)\le M\left(r\right)^{s}M\left(R\right)^{1-s}$, 这正是 $M\left(r^{s}R^{1-s}\right)\le M\left(r\right)^{s}M\left(R\right)^{1-s}$. $\blacksquare$

### 习题四

(习题 10.4-8) 令 $f$ 是 $\mathbb{D}=\left\{\left|z\right|<1\right\}$ 上的全纯函数, $z_{1},\cdots,z_{k}\in\mathbb{D}$ 是 $f$ 在 $\mathbb{D}$ 内的所有零点 (计算重数). 证明: $\left|f\left(0\right)\right|\le\sup_{\left|z\right|<1}\left|f\left(z\right)\right|\prod_{j=1}^{k}\left|z_{j}\right|$.

### 解答 习题四

若 $f\equiv0$, 不等式显然. 设 $f$ 非常值, 记 $M=\sup_{\left|z\right|<1}\left|f\left(z\right)\right|$. 由 Blaschke 因子 (**定义 10.3.2**), 构造

$$
B\left(z\right)=\prod_{j=1}^{k}\frac{z-z_{j}}{1-\bar{z}_{j}z},
$$

它在 $\mathbb{D}$ 上全纯 (分母 $1-\bar{z}_{j}z\ne0$), 其零点恰为 $z_{1},\cdots,z_{k}$ (计重数), 且在单位圆周上 $\left|B\left(e^{i\theta}\right)\right|=1$. 因 $f$ 的零点都被 $B$ 消去, $g\left(z\right)=\frac{f\left(z\right)}{B\left(z\right)}$ 在 $\mathbb{D}$ 上全纯且不取零值.

对 $0<r<1$, 在圆 $\left|z\right|=r$ 上由最大模原理 $\left|g\left(z\right)\right|\le\max_{\left|w\right|=r}\left|g\left(w\right)\right|=\frac{\max_{\left|w\right|=r}\left|f\left(w\right)\right|}{\min_{\left|w\right|=r}\left|B\left(w\right)\right|}$. 令 $r\to1^{-}$, 有 $\max_{\left|w\right|=r}\left|f\left(w\right)\right|\to M$ 且 $\min_{\left|w\right|=r}\left|B\left(w\right)\right|\to1$, 故 $\left|g\left(z\right)\right|\le M$, $\forall z\in\mathbb{D}$. 特别地

$$
\left|g\left(0\right)\right|=\frac{\left|f\left(0\right)\right|}{\left|B\left(0\right)\right|}\le M,
$$

而 $\left|B\left(0\right)\right|=\prod_{j=1}^{k}\left|z_{j}\right|$, 故 $\left|f\left(0\right)\right|\le M\prod_{j=1}^{k}\left|z_{j}\right|=\sup_{\left|z\right|<1}\left|f\left(z\right)\right|\prod_{j=1}^{k}\left|z_{j}\right|$. $\blacksquare$

### 习题五

(习题 10.4-10) 令 $\mathbb{D}=\left\{\left|z\right|<1\right\}$, $f:\mathbb{D}\to\mathbb{D}$ 是不为常值的全纯函数. 证明:

$$
\frac{\left|f\left(0\right)\right|-\left|z\right|}{1+\left|f\left(0\right)\right|\left|z\right|}\le\left|f\left(z\right)\right|\le\frac{\left|f\left(0\right)\right|+\left|z\right|}{1-\left|f\left(0\right)\right|\left|z\right|},\quad\forall\left|z\right|<1.
$$

### 解答 习题五

记 $a=f\left(0\right)$, $t=\left|a\right|$. 由**定义 10.3.2 (Blaschke 因子)**, $\phi_{a}\left(w\right)=\frac{w-a}{1-\bar{a}w}$ 是 $\mathbb{D}$ 的自同构且 $\phi_{a}\left(a\right)=0$. 于是 $\phi_{a}\circ f:\mathbb{D}\to\mathbb{D}$ 全纯, 且 $\left(\phi_{a}\circ f\right)\left(0\right)=0$. 由**定理 10.3.1 (施瓦茨引理)**:

$$
\left|\frac{f\left(z\right)-a}{1-\bar{a}f\left(z\right)}\right|\le\left|z\right|.
$$

令 $u=f\left(z\right)$, 则 $\left|u\right|<1$. 由 $\left|u-a\right|\le\left|z\right|\left|1-\bar{a}u\right|\le\left|z\right|\left(1+t\left|u\right|\right)$ 与 $\left|u-a\right|\ge\left|\right|u\left|-t\right|$, 得

$$
\left|\right|u\left|-t\right|\le\left|z\right|\left(1+t\left|u\right|\right).
$$

分两种情形:

若 $\left|u\right|\le t$, 则 $t-\left|u\right|\le\left|z\right|\left(1+t\left|u\right|\right)$, 移项得 $\left|u\right|\left(1+t\left|z\right|\right)\ge t-\left|z\right|$, 即

$$
\left|u\right|\ge\frac{t-\left|z\right|}{1+t\left|z\right|}.
$$

若 $\left|u\right|\ge t$, 则 $\left|u\right|-t\le\left|z\right|\left(1+t\left|u\right|\right)$, 移项得 $\left|u\right|\left(1-t\left|z\right|\right)\le t+\left|z\right|$, 即

$$
\left|u\right|\le\frac{t+\left|z\right|}{1-t\left|z\right|}.
$$

合并即得

$$
\frac{\left|f\left(0\right)\right|-\left|z\right|}{1+\left|f\left(0\right)\right|\left|z\right|}\le\left|f\left(z\right)\right|\le\frac{\left|f\left(0\right)\right|+\left|z\right|}{1-\left|f\left(0\right)\right|\left|z\right|}.
$$

$\blacksquare$
