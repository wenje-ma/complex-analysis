# 作业 10

> **定理 10.1.1** (最大模原理)<br>若区域 $D$ 上的全纯函数 $f$ 的模 $|f|$ 在 $z_{0}\in D$ 处有局部极大值, 则 $f$ 在 $D$ 上为常值.

> **定理 10.1.4** (开映射定理)<br>非常值的全纯函数把区域映成区域.

> **定理 10.3.1** (施瓦茨引理)<br>若 $f:\mathbb{D}\to\mathbb{D}$ 全纯且 $f(0)=0$, 则 $|f(z)|\le|z|$ 且 $|f'(0)|\le1$; 等号在某点成立 (或 $|f'(0)|=1$) 当且仅当 $f(z)=e^{i\theta}z$.

> **定义 10.3.2** (Blaschke 因子)<br>对 $a\in\mathbb{D}$, 称 $$\phi_{a}(z)=\frac{z-a}{1-\bar{a}z}$$ 为 Blaschke 因子; 它是 $\mathbb{D}$ 的自同构, 满足 $|\phi_{a}(e^{i\theta})|=1$ 且 $\phi_{a}(a)=0$.

### 习题一

(习题 10.4-2) 令 $f$ 和 $g$ 都是区域 $D\subset\mathbb{C}$ 上的全纯函数. 假设存在一点 $z_{0}\in D$ 和它的 $r$-邻域 $B(z_{0},r)\subset D$, $r>0$, 使得 $|f(z_{0})|+|g(z_{0})|\ge|f(z)|+|g(z)|$, $\forall z\in B(z_{0},r)$. 证明: $f$ 和 $g$ 均在 $D$ 上为常值.

### 解答 习题一

记 $M=|f(z_{0})|+|g(z_{0})|$. 取 $\theta_{1},\theta_{2}$ 使 $e^{i\theta_{1}}f(z_{0})=|f(z_{0})|$, $e^{i\theta_{2}}g(z_{0})=|g(z_{0})|$, 并令 $h(z)=e^{i\theta_{1}}f(z)+e^{i\theta_{2}}g(z)$. 则 $h$ 在 $D$ 上全纯, 且

$$
h(z_{0})=|f(z_{0})|+|g(z_{0})|=M,
$$

而 $|h(z)|\le|f(z)|+|g(z)|\le M$, $\forall z\in B(z_{0},r)$. 故 $|h|$ 在 $z_{0}$ 处有局部极大值, 由**定理 10.1.1 (最大模原理)**, $h$ 在 $D$ 上为常值 $h(z)\equiv M'$, 其中 $|M'|=M$.

于是 $M=|h(z)|\le|f(z)|+|g(z)|\le M$ 对所有 $z\in B(z_{0},r)$ (进而 $D$) 成立, 故 $|f(z)|+|g(z)|\equiv M$ 且三角形等号 $|e^{i\theta_{1}}f(z)+e^{i\theta_{2}}g(z)|=|f(z)|+|g(z)|$ 处处成立. 三角形等号条件要求 $e^{i\theta_{1}}f(z)$ 与 $e^{i\theta_{2}}g(z)$ 方向相同, 故 $e^{i(\theta_{1}-\theta_{2})}\frac{f(z)}{g(z)}\ge0$ 为实数 ($g(z)\ne0$ 处). 于是 $e^{i(\theta_{1}-\theta_{2})}\frac{f}{g}$ 是实值亚纯函数, 取虚部为零得 (由恒等定理) $e^{i(\theta_{1}-\theta_{2})}\frac{f}{g}\equiv c\in\mathbb{R}_{\ge0}$, 即 $f\equiv c'e^{i\theta}g$ 为 $g$ 的常数倍. 再由 $|f|+|g|\equiv M$ 得 $|g|\equiv\text{常数}$, 故 $g$ 常值 ($|g|$ 为常数且 $g$ 全纯, 由**定理 10.1.4 (开映射定理)** $g$ 必常值), 从而 $f$ 也常值. $\blacksquare$

### 习题二

(习题 10.4-4) 令 $f$ 为有界区域 $D\subset\mathbb{C}$ 上的全纯函数且 $f$ 在闭区域 $\bar{D}$ 上是连续的. 若 $|f(z)|=\alpha$, $\forall z\in\partial D$. 证明: 要么 $f$ 为常值的要么它在 $D$ 内有零点.

### 解答 习题二

反设 $f$ 在 $D$ 内无零点. 若 $\alpha=0$, 则 $|f|=0$ 在 $\partial D$, 由最大模原理 $f\equiv0$ 于 $D$, 常值, 得证. 下设 $\alpha>0$. 由 $|f|$ 在 $\bar{D}$ 上连续, 最大模原理 (在 $\bar{D}$ 上 $|f|$ 的最大值在边界取到) 给出 $|f(z)|\le\alpha$, $\forall z\in D$.

又 $\frac{1}{f}$ 在 $D$ 上全纯 (因 $f$ 无零点) 且在 $\bar{D}$ 上连续, 边界上 $|\frac{1}{f}|=\frac{1}{\alpha}$. 同理 $\left|\frac{1}{f(z)}\right|\le\frac{1}{\alpha}$, 即 $|f(z)|\ge\alpha$, $\forall z\in D$. 故 $|f(z)|\equiv\alpha$ 于 $D$, $|f|$ 为常数; 由**定理 10.1.4 (开映射定理)**, $f$ 为常值. 因此 $f$ 要么常值, 要么在 $D$ 内有零点. $\blacksquare$

### 习题三

(习题 10.4-6) (阿达马的三圆定理) 令 $0<r<R$, $f$ 是在闭圆环 $\{z\in\mathbb{C}:r\le|z|\le R\}$ 上的全纯函数. 令 $M(\rho)=\sup_{\theta\in[0,2\pi]}|f(\rho e^{i\theta})|$, $\forall\rho\in[r,R]$. 证明: 对于任意 $s\in[0,1]$, 都有 $M(r^{s}R^{1-s})\le M(r)^{s}M(R)^{1-s}$.

### 解答 习题三

记 $\rho=r^{s}R^{1-s}$. 若 $M(r)=0$ 或 $M(R)=0$, 由最大模原理 $f\equiv0$, 不等式显然. 下设 $M(r),M(R)>0$. 取实数

$$
\lambda=\frac{\log M(r)-\log M(R)}{\log R-\log r},
$$

并令 $g(z)=z^{\lambda}f(z)$, 其中 $z^{\lambda}$ 在圆环内取定一个全纯分支 (沿一条半径将圆环切开成单连通区域后取主分支, 割线两侧 $|z^{\lambda}|$ 取值一致). 则 $g$ 在该 (带割线的) 圆环区域上全纯, 且在内边界 $|z|=r$ 与外边界 $|z|=R$ 上

$$
|g(z)|\le r^{\lambda}M(r)=R^{\lambda}M(R)=:K,
$$

(最后一个等式由 $\lambda$ 的选择保证). 由最大模原理, $|g(z)|\le K$ 在该区域上成立, 特别对 $|z|=\rho$ 有 $|g(\rho e^{i\theta})|\le K$. 故

$$
M(\rho)\le K\rho^{-\lambda}=r^{\lambda}M(r)\rho^{-\lambda}=M(r)\left(\frac{r}{\rho}\right)^{\lambda}.
$$

由 $\frac{r}{\rho}=(r/R)^{1-s}$ 及 $\lambda\log\frac{r}{R}=\log M(R)-\log M(r)$, 取对数:

$$
\log M(\rho)\le\log M(r)+(1-s)\left(\log M(R)-\log M(r)\right)=s\log M(r)+(1-s)\log M(R).
$$

即 $M(\rho)\le M(r)^{s}M(R)^{1-s}$, 这正是 $M(r^{s}R^{1-s})\le M(r)^{s}M(R)^{1-s}$. $\blacksquare$

### 习题四

(习题 10.4-8) 令 $f$ 是 $\mathbb{D}=\{|z|<1\}$ 上的全纯函数, $z_{1},\cdots,z_{k}\in\mathbb{D}$ 是 $f$ 在 $\mathbb{D}$ 内的所有零点 (计算重数). 证明: $|f(0)|\le\sup_{|z|<1}|f(z)|\prod_{j=1}^{k}|z_{j}|$.

### 解答 习题四

若 $f\equiv0$, 不等式显然. 设 $f$ 非常值, 记 $M=\sup_{|z|<1}|f(z)|$. 由 Blaschke 因子 (**定义 10.3.2**), 构造

$$
B(z)=\prod_{j=1}^{k}\frac{z-z_{j}}{1-\bar{z}_{j}z},
$$

它在 $\mathbb{D}$ 上全纯 (分母 $1-\bar{z}_{j}z\ne0$), 其零点恰为 $z_{1},\cdots,z_{k}$ (计重数), 且在单位圆周上 $|B(e^{i\theta})|=1$. 因 $f$ 的零点都被 $B$ 消去, $g(z)=\frac{f(z)}{B(z)}$ 在 $\mathbb{D}$ 上全纯且不取零值.

对 $0<r<1$, 在圆 $|z|=r$ 上由最大模原理 $|g(z)|\le\max_{|w|=r}|g(w)|=\frac{\max_{|w|=r}|f(w)|}{\min_{|w|=r}|B(w)|}$. 令 $r\to1^{-}$, 有 $\max_{|w|=r}|f(w)|\to M$ 且 $\min_{|w|=r}|B(w)|\to1$, 故 $|g(z)|\le M$, $\forall z\in\mathbb{D}$. 特别地

$$
|g(0)|=\frac{|f(0)|}{|B(0)|}\le M,
$$

而 $|B(0)|=\prod_{j=1}^{k}|z_{j}|$, 故 $|f(0)|\le M\prod_{j=1}^{k}|z_{j}|=\sup_{|z|<1}|f(z)|\prod_{j=1}^{k}|z_{j}|$. $\blacksquare$

### 习题五

(习题 10.4-10) 令 $\mathbb{D}=\{|z|<1\}$, $f:\mathbb{D}\to\mathbb{D}$ 是不为常值的全纯函数. 证明:

$$
\frac{|f(0)|-|z|}{1+|f(0)||z|}\le|f(z)|\le\frac{|f(0)|+|z|}{1-|f(0)||z|},\quad\forall|z|<1.
$$

### 解答 习题五

记 $a=f(0)$, $t=|a|$. 由**定义 10.3.2 (Blaschke 因子)**, $\phi_{a}(w)=\frac{w-a}{1-\bar{a}w}$ 是 $\mathbb{D}$ 的自同构且 $\phi_{a}(a)=0$. 于是 $\phi_{a}\circ f:\mathbb{D}\to\mathbb{D}$ 全纯, 且 $(\phi_{a}\circ f)(0)=0$. 由**定理 10.3.1 (施瓦茨引理)**:

$$
\left|\frac{f(z)-a}{1-\bar{a}f(z)}\right|\le|z|.
$$

令 $u=f(z)$, 则 $|u|<1$. 由 $|u-a|\le|z||1-\bar{a}u|\le|z|(1+t|u|)$ 与 $|u-a|\ge||u|-t|$, 得

$$
||u|-t|\le|z|(1+t|u|).
$$

分两种情形:

若 $|u|\le t$, 则 $t-|u|\le|z|(1+t|u|)$, 移项得 $|u|(1+t|z|)\ge t-|z|$, 即

$$
|u|\ge\frac{t-|z|}{1+t|z|}.
$$

若 $|u|\ge t$, 则 $|u|-t\le|z|(1+t|u|)$, 移项得 $|u|(1-t|z|)\le t+|z|$, 即

$$
|u|\le\frac{t+|z|}{1-t|z|}.
$$

合并即得

$$
\frac{|f(0)|-|z|}{1+|f(0)||z|}\le|f(z)|\le\frac{|f(0)|+|z|}{1-|f(0)||z|}.
$$

$\blacksquare$
