# week6

> **定理 9.3.2 (恒等定理)**
> 
> 若区域 $D$ 上的全纯函数零点在 $D$ 内有聚点, 则 $f\equiv0$.

> **定理 10.1.4 (开映射定理)**
> 
> 非常值的全纯函数把区域映成区域.

> **定理 10.3.1 (施瓦茨引理)**
> 
> 若 $f:\mathbb{D}\to\mathbb{D}$ 全纯且 $f\left(0\right)=0$, 则 $\left|f\left(z\right)\right|\le\left|z\right|$ 且 $\left|f'\left(0\right)\right|\le1$; 等号当且仅当 $f\left(z\right)=e^{i\theta}z$.

> **定义 10.3.2 (布拉施克因子)**
> 
> 对 $a\in\mathbb{D}$, 称 $\phi_{a}\left(z\right)=\frac{z-a}{1-\overline{a}z}$ 它是 $\mathbb{D}$ 的自同构, $\phi_{a}\left(a\right)=0$, 且 $\left|\phi_{a}\left(e^{i\theta}\right)\right|=1$.

> **定理 10.3.4 (施瓦茨-皮克引理)**
> 
> 对 $\mathbb{D}\to\mathbb{D}$ 的全纯 $f$, $\left|\frac{f\left(z\right)-f\left(w\right)}{1-\overline{f\left(w\right)}f\left(z\right)}\right|\le\left|\frac{z-w}{1-\overline{w}z}\right|$; 微分形式为 $\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\le\frac{1}{1-\left|z\right|^{2}}$, 等号当且仅当 $f\in\operatorname{auto}\left(\mathbb{D}\right)$.

> **定义 11.1.1 (内紧收敛)**
> 
> 称全纯函数列 $\left\{f_{n}\right\}$ 在区域 $\Omega$ 上内紧收敛到 $f$, 若它在 $\Omega$ 的任意紧子集上都一致收敛到 $f$.

> **定理 11.1.2 (魏尔斯特拉斯定理)**
> 
> 若 $\left\{f_{n}\right\}$ 在 $\Omega$ 上内紧一致收敛到连续函数 $f$, 则 $f$ 在 $\Omega$ 上全纯.

> **定理 11.1.3 (蒙泰尔定理)**
> 
> 若全纯函数列 $\left\{f_{n}\right\}$ 在区域 $D$ 的任意紧子集上一致有界, 则存在子列在 $D$ 上内紧一致收敛. ## 10.4-10 令 $\mathbb{D}=\left\{\left|z\right|<1\right\}$, $f:\mathbb{D}\to\mathbb{D}$ 是不为常值的全纯函数. 证明: $$\frac{\left|f\left(0\right)\right|-\left|z\right|}{1+\left|f\left(0\right)\right|\left|z\right|}\le\left|f\left(z\right)\right|\le\frac{\left|f\left(0\right)\right|+\left|z\right|}{1-\left|f\left(0\right)\right|\left|z\right|},\quad\forall\left|z\right|<1.$$ 记 $a=f\left(0\right)$, $t=\left|a\right|$. 由**定义 10.3.2 (布拉施克因子)**, $\phi_{a}\left(w\right)=\frac{w-a}{1-\overline{a}w}$ 是 $\mathbb{D}$ 的自同构且 $\phi_{a}\left(a\right)=0$. 于是 $\phi_{a}\circ{f}:\mathbb{D}\to\mathbb{D}$ 全纯, 且 $\left(\phi_{a}\circ{f}\right)\left(0\right)=0$. 由**定理 10.3.1 (施瓦茨引理)**: $$\left|\frac{f\left(z\right)-a}{1-\overline{a}f\left(z\right)}\right|\le\left|z\right|.$$ 令 $u=f\left(z\right)$, 则 $\left|u\right|<1$. 由 $\left|u-a\right|\le\left|z\right|\left|1-\overline{a}u\right|\le\left|z\right|\left(1+t\left|u\right|\right)$ 与 $\left|u-a\right|\ge\left|\right|u\left|-t\right|$, 得 $$\left|\right|u\left|-t\right|\le\left|z\right|\left(1+t\left|u\right|\right).$$ 分两种情形: 若 $\left|u\right|\le{t}$, 则 $t-\left|u\right|\le\left|z\right|\left(1+t\left|u\right|\right)$, 移项得 $\left|u\right|\left(1+t\left|z\right|\right)\ge{t}-\left|z\right|$, 即 $$\left|u\right|\ge\frac{t-\left|z\right|}{1+t\left|z\right|}.$$ 若 $\left|u\right|\ge{t}$, 则 $\left|u\right|-t\le\left|z\right|\left(1+t\left|u\right|\right)$, 移项得 $\left|u\right|\left(1-t\left|z\right|\right)\le{t}+\left|z\right|$, 即 $$\left|u\right|\le\frac{t+\left|z\right|}{1-t\left|z\right|}.$$ 合并即得 $$\frac{\left|f\left(0\right)\right|-\left|z\right|}{1+\left|f\left(0\right)\right|\left|z\right|}\le\left|f\left(z\right)\right|\le\frac{\left|f\left(0\right)\right|+\left|z\right|}{1-\left|f\left(0\right)\right|\left|z\right|}.$$ $\blacksquare$

## 10.4-2

令 $f$ 和 $g$ 都是区域 $D\subset\mathbb{C}$ 上的全纯函数. 假设存在一点 $z_{0}\in{D}$ 和它的 $r$-邻域 $B\left(z_{0},r\right)\subset{D}$, $r>0$, 使得 $\left|f\left(z_{0}\right)\right|+\left|g\left(z_{0}\right)\right|\ge\left|f\left(z\right)\right|+\left|g\left(z\right)\right|$, $\forall{z}\in{B}\left(z_{0},r\right)$. 证明: $f$ 和 $g$ 均在 $D$ 上为常值.

### 解答 10.4-2

记 $M=\left|f\left(z_{0}\right)\right|+\left|g\left(z_{0}\right)\right|$. 取 $\theta_{1},\theta_{2}$ 使 $e^{i\theta_{1}}f\left(z_{0}\right)=\left|f\left(z_{0}\right)\right|$, $e^{i\theta_{2}}g\left(z_{0}\right)=\left|g\left(z_{0}\right)\right|$, 并令 $h\left(z\right)=e^{i\theta_{1}}f\left(z\right)+e^{i\theta_{2}}g\left(z\right)$. 则 $h$ 在 $D$ 上全纯, 且

$$
h\left(z_{0}\right)=\left|f\left(z_{0}\right)\right|+\left|g\left(z_{0}\right)\right|=M,
$$

而 $\left|h\left(z\right)\right|\le\left|f\left(z\right)\right|+\left|g\left(z\right)\right|\le{M}$, $\forall{z}\in{B}\left(z_{0},r\right)$. 故 $\left|h\right|$ 在 $z_{0}$ 处有局部极大值, 由**定理 10.1.1 (最大模原理)**, $h$ 在 $D$ 上为常值 $h\left(z\right)\equiv{M}'$, 其中 $\left|M'\right|=M$.

于是 $M=\left|h\left(z\right)\right|\le\left|f\left(z\right)\right|+\left|g\left(z\right)\right|\le{M}$ 对所有 $z\in{B}\left(z_{0},r\right)$ (进而 $D$) 成立, 故 $\left|f\left(z\right)\right|+\left|g\left(z\right)\right|\equiv{M}$ 且三角形等号 $\left|e^{i\theta_{1}}f\left(z\right)+e^{i\theta_{2}}g\left(z\right)\right|=\left|f\left(z\right)\right|+\left|g\left(z\right)\right|$ 处处成立. 三角形等号条件要求 $e^{i\theta_{1}}f\left(z\right)$ 与 $e^{i\theta_{2}}g\left(z\right)$ 方向相同, 故 $e^{i\left(\theta_{1}-\theta_{2}\right)}\frac{f\left(z\right)}{g\left(z\right)}\ge0$ 为实数 ($g\left(z\right)\ne0$ 处). 于是 $e^{i\left(\theta_{1}-\theta_{2}\right)}\frac{f}{g}$ 是实值亚纯函数, 取虚部为零得 (由恒等定理) $e^{i\left(\theta_{1}-\theta_{2}\right)}\frac{f}{g}\equiv{c}\in\mathbb{R}_{\ge0}$, 即 $f\equiv{c}'e^{i\theta}g$ 为 $g$ 的常数倍. 再由 $\left|f\right|+\left|g\right|\equiv{M}$ 得 $\left|g\right|\equiv\text{常数}$, 故 $g$ 常值 ($\left|g\right|$ 为常数且 $g$ 全纯, 由**定理 10.1.4 (开映射定理)** $g$ 必常值), 从而 $f$ 也常值.

$\blacksquare$

## 10.4-4

令 $f$ 为有界区域 $D\subset\mathbb{C}$ 上的全纯函数且 $f$ 在闭区域 $\overline{D}$ 上是连续的. 若 $\left|f\left(z\right)\right|=\alpha$, $\forall{z}\in\partial{D}$. 证明: 要么 $f$ 为常值的要么它在 $D$ 内有零点.

### 解答 10.4-4

反设 $f$ 在 $D$ 内无零点. 若 $\alpha=0$, 则 $\left|f\right|=0$ 在 $\partial{D}$, 由最大模原理 $f\equiv0$ 于 $D$, 常值, 得证. 下设 $\alpha>0$. 由 $\left|f\right|$ 在 $\overline{D}$ 上连续, 最大模原理 (在 $\overline{D}$ 上 $\left|f\right|$ 的最大值在边界取到) 给出 $\left|f\left(z\right)\right|\le\alpha$, $\forall{z}\in{D}$.

又 $\frac{1}{f}$ 在 $D$ 上全纯 (因 $f$ 无零点) 且在 $\overline{D}$ 上连续, 边界上 $\left|\frac{1}{f}\right|=\frac{1}{\alpha}$. 同理 $\left|\frac{1}{f\left(z\right)}\right|\le\frac{1}{\alpha}$, 即 $\left|f\left(z\right)\right|\ge\alpha$, $\forall{z}\in{D}$. 故 $\left|f\left(z\right)\right|\equiv\alpha$ 于 $D$, $\left|f\right|$ 为常数; 由**定理 10.1.4 (开映射定理)**, $f$ 为常值. 因此 $f$ 要么常值, 要么在 $D$ 内有零点.

$\blacksquare$

## 10.4-6

(阿达马三圆定理) 令 $0<{}r<{}R$, $f$ 是在闭圆环 $\left\{z\in\mathbb{C}:r\le\left|z\right|\le{R}\right\}$ 上的全纯函数. 令 $M\left(\rho\right)=\sup_{\theta\in\left[0,2\pi\right]}\left|f\left(\rho{e}^{i\theta}\right)\right|$, $\forall\rho\in\left[r,R\right]$. 证明: 对于任意 $s\in\left[0,1\right]$, 都有 $M\left(r^{s}R^{1-s}\right)\le{M}\left(r\right)^{s}M\left(R\right)^{1-s}$.

### 解答 10.4-6

记 $\rho=r^{s}R^{1-s}$. 若 $M\left(r\right)=0$ 或 $M\left(R\right)=0$, 由最大模原理 $f\equiv0$, 不等式显然. 下设 $M\left(r\right),M\left(R\right)>0$. 取实数

$$
\lambda=\frac{\log{M}\left(r\right)-\log{M}\left(R\right)}{\log{R}-\log{r}},
$$

并令 $g\left(z\right)=z^{\lambda}f\left(z\right)$, 其中 $z^{\lambda}$ 在圆环内取定一个全纯分支 (沿一条半径将圆环切开成单连通区域后取主分支, 割线两侧 $\left|z^{\lambda}\right|$ 取值一致). 则 $g$ 在该 (带割线的) 圆环区域上全纯, 且在内边界 $\left|z\right|=r$ 与外边界 $\left|z\right|=R$ 上

$$
\left|g\left(z\right)\right|\le{r}^{\lambda}M\left(r\right)=R^{\lambda}M\left(R\right)=:K,
$$

(最后一个等式由 $\lambda$ 的选择保证). 由最大模原理, $\left|g\left(z\right)\right|\le{K}$ 在该区域上成立, 特别对 $\left|z\right|=\rho$ 有 $\left|g\left(\rho{e}^{i\theta}\right)\right|\le{K}$. 故

$$
M\left(\rho\right)\le{K}\rho^{-\lambda}=r^{\lambda}M\left(r\right)\rho^{-\lambda}=M\left(r\right)\left(\frac{r}{\rho}\right)^{\lambda}.
$$

由 $\frac{r}{\rho}=\left(r/R\right)^{1-s}$ 及 $\lambda\log\frac{r}{R}=\log{M}\left(R\right)-\log{M}\left(r\right)$, 取对数:

$$
\log{M}\left(\rho\right)\le\log{M}\left(r\right)+\left(1-s\right)\left(\log{M}\left(R\right)-\log{M}\left(r\right)\right)=s\log{M}\left(r\right)+\left(1-s\right)\log{M}\left(R\right).
$$

即 $M\left(\rho\right)\le{M}\left(r\right)^{s}M\left(R\right)^{1-s}$, 这正是 $M\left(r^{s}R^{1-s}\right)\le{M}\left(r\right)^{s}M\left(R\right)^{1-s}$.

$\blacksquare$

## 10.4-8

令 $f$ 是 $\mathbb{D}=\left\{\left|z\right|<1\right\}$ 上的全纯函数, $z_{1},\cdots,z_{k}\in\mathbb{D}$ 是 $f$ 在 $\mathbb{D}$ 内的所有零点 (计算重数). 证明: $\left|f\left(0\right)\right|\le\sup_{\left|z\right|<1}\left|f\left(z\right)\right|\prod_{j=1}^{k}\left|z_{j}\right|$.

### 解答 10.4-8

若 $f\equiv0$, 不等式显然. 设 $f$ 非常值, 记 $M=\sup_{\left|z\right|<1}\left|f\left(z\right)\right|$. 由**定义 10.3.2 (布拉施克因子)**, 构造

$$
B\left(z\right)=\prod_{j=1}^{k}\frac{z-z_{j}}{1-\overline{z}_{j}z},
$$

它在 $\mathbb{D}$ 上全纯 (分母 $1-\overline{z}_{j}z\ne0$), 其零点恰为 $z_{1},\cdots,z_{k}$ (计重数), 且在单位圆周上 $\left|B\left(e^{i\theta}\right)\right|=1$. 因 $f$ 的零点都被 $B$ 消去, $g\left(z\right)=\frac{f\left(z\right)}{B\left(z\right)}$ 在 $\mathbb{D}$ 上全纯且不取零值.

对 $0<{}r<1$, 在圆 $\left|z\right|=r$ 上由最大模原理 $\left|g\left(z\right)\right|\le\max_{\left|w\right|=r}\left|g\left(w\right)\right|=\frac{\max_{\left|w\right|=r}\left|f\left(w\right)\right|}{\min_{\left|w\right|=r}\left|B\left(w\right)\right|}$. 令 $r\to1^{-}$, 有 $\max_{\left|w\right|=r}\left|f\left(w\right)\right|\to{M}$ 且 $\min_{\left|w\right|=r}\left|B\left(w\right)\right|\to1$, 故 $\left|g\left(z\right)\right|\le{M}$, $\forall{z}\in\mathbb{D}$. 特别地

$$
\left|g\left(0\right)\right|=\frac{\left|f\left(0\right)\right|}{\left|B\left(0\right)\right|}\le{M},
$$

而 $\left|B\left(0\right)\right|=\prod_{j=1}^{k}\left|z_{j}\right|$, 故 $\left|f\left(0\right)\right|\le{M}\prod_{j=1}^{k}\left|z_{j}\right|=\sup_{\left|z\right|<1}\left|f\left(z\right)\right|\prod_{j=1}^{k}\left|z_{j}\right|$.

$\blacksquare$

## 11.3-3

令 $f$ 是单连通区域 $D\subset\mathbb{C}$ 到开单位圆盘 $\mathbb{D}:=\left\{\left|z\right|<1\right\}$ 的共形等价映射. 证明: 若 $D\ni{z}_{n}\to{z}\in\partial{D}$, 则 $\left|f\left(z_{n}\right)\right|\to1$.

### 解答 11.3-3

反设 $\left|f\left(z_{n}\right)\right|\not\to1$. 因 $\left|f\right|<1$, 存在子列 (仍记 $z_{n}$) 及 $\rho<1$ 使得 $\left|f\left(z_{n}\right)\right|\le\rho<1$. 于是 $\left\{f\left(z_{n}\right)\right\}$ 含于 $\mathbb{D}$ 的紧子集 $\left\{\left|w\right|\le\rho\right\}$, 存在收敛子列 $f\left(z_{n_{k}}\right)\to{w}_{0}\in\left\{\left|w\right|\le\rho\right\}\subset\mathbb{D}$.

$f$ 是 $D$ 到 $\mathbb{D}$ 的共形等价映射, 故 $f^{-1}:\mathbb{D}\to{D}$ 全纯连续. 由 $f\left(z_{n_{k}}\right)\to{w}_{0}\in\mathbb{D}$, 得

$$
z_{n_{k}}=f^{-1}\left(f\left(z_{n_{k}}\right)\right)\to{f}^{-1}\left(w_{0}\right)\in{D},
$$

与 $z_{n_{k}}\to{z}\in\partial{D}\notin{D}$ 矛盾. 故 $\left|f\left(z_{n}\right)\right|\to1$.

$\blacksquare$

## 11.3-4

令 $\left\{g_{n}\right\}$ 是区域 $D\subset\mathbb{C}$ 上的全纯函数序列, 且 $g_{n}\left(D\right)\subset{D}$. 若 $g_{n}$ 在 $D$ 上内紧一致收敛到 $g$. 证明: $g\left(D\right)\subset{D}$ 或者 $g\equiv{z}_{0}\in\partial{D}$.

### 解答 11.3-4

由**定理 11.1.2 (魏尔斯特拉斯定理)**, $g$ 在 $D$ 上全纯. 因 $g_{n}\left(D\right)\subset{D}$ 且 $g_{n}\to{g}$, 对每个 $z\in{D}$, $g\left(z\right)\in\overline{D}$ (闭包). 故 $g\left(D\right)\subset\overline{D}$.

若 $g$ 不是常值, 由**定理 10.1.4 (开映射定理)**, $g\left(D\right)$ 是开集. 又 $g\left(D\right)\subset\overline{D}$ 且 $g\left(D\right)$ 非空开, 若 $g\left(D\right)$ 含有 $\partial{D}$ 的点, 则 $g\left(D\right)$ 不可能是开集 (因 $g\left(D\right)$ 中的点应被 $g\left(D\right)$ 内的小邻域包含, 但 $\partial{D}$ 附近的小邻域不全含于 $\overline{D}$). 故 $g\left(D\right)\subset{D}$.

若 $g$ 为常值 $g\equiv{z}_{0}$, 则 $z_{0}\in\overline{D}$. 若 $z_{0}\in{D}$, 则 $g\left(D\right)=\left\{z_{0}\right\}\subset{D}$, 属第一种情形; 若 $z_{0}\in\partial{D}$, 则 $g\equiv{z}_{0}\in\partial{D}$, 属第二种情形. 命题得证.

$\blacksquare$

## 11.3-5

(维塔利-波特定理) 令 $\left\{f_{n}\right\}$ 是区域 $D\subset\mathbb{C}$ 上的全纯函数序列且在 $D$ 上的任意紧子集上都是一致有界的. 给定序列 $z_{m}\in{D}$ 且 $z_{m}\to{z}_{\infty}\in{D}$. 假设 $\lim_{n\to\infty}f_{n}\left(z_{m}\right)=w_{m}$, $\forall{m}\in\mathbb{N}$. 证明: 存在 $D$ 上的全纯函数 $f$ 使得 $f_{n}$ 在 $D$ 上内紧一致收敛到 $f$.

### 解答 11.3-5

按**定义 11.1.1 (内紧收敛)**, **定理 11.1.3 (蒙泰尔定理)**, $\left\{f_{n}\right\}$ 在 $D$ 上正规: 任意子列含有在 $D$ 上内紧一致收敛的子列. 设 $f_{n_{k}}\to{f}$ 内紧一致, 由**定理 11.1.2 (魏尔斯特拉斯定理)** $f$ 在 $D$ 上全纯. 对每个 $m$, 由 $f_{n_{k}}\to{f}$ 一致于 $\left\{z_{m}\right\}$ 附近及条件 $\lim_{n}f_{n}\left(z_{m}\right)=w_{m}$, 得 $f\left(z_{m}\right)=w_{m}$.

现在证明整个序列收敛到 $f$. 若不然, 存在紧集 $K\subset{D}$, $\varepsilon>0$ 及子列 $f_{n'_{j}}$ 使得 $\sup_{K}\left|f_{n'_{j}}-f\right|\ge\varepsilon$. 由蒙泰尔, $f_{n'_{j}}$ 有子列内紧收敛到某全纯 $\widetilde{f}$. 则 $\widetilde{f}\left(z_{m}\right)=w_{m}=f\left(z_{m}\right)$ 对一切 $m$ 成立; 因 $z_{m}\to{z}_{\infty}\in{D}$ 有聚点, 由**定理 9.3.2 (恒等定理)** $\widetilde{f}=f$. 这与 $\sup_{K}\left|f_{n'_{j}}-f\right|\ge\varepsilon$ 且 $f_{n'_{j}}\to{f}$ 于 $K$ 矛盾. 故 $f_{n}\to{f}$ 在 $D$ 上内紧一致收敛.

$\blacksquare$

## 11.3-6

令 $D\subset\mathbb{C}$ 是区域, $f$ 是 $D$ 上的全纯函数且 $f:D\to{f}\left(D\right)$ 是共形映射. 证明: 区域 $f\left(D\right)$ 的面积等于 $\iint_{D}\left|f'\left(z\right)\right|^{2}\,dx\,dy$.

### 解答 11.3-6

记 $f\left(z\right)=u\left(x,y\right)+iv\left(x,y\right)$. 因 $f:D\to{f}\left(D\right)$ 共形, $f$ 单叶且 $f'\ne0$, 故 $f$ 是 $D$ 到 $f\left(D\right)$ 的 $C^{1}$ 微分同胚. 由二重积分的变量代换公式,

$$
\operatorname{Area}\left(f\left(D\right)\right)=\iint_{D}\left|\det{J}_{f}\left(x,y\right)\right|\,dx\,dy,
$$

其中 $J_{f}=\begin{bmatrix}u_{x}&u_{y}\\v_{x}&v_{y}\end{bmatrix}$ 为雅可比矩阵. 由柯西-黎曼方程 $u_{x}=v_{y}$, $u_{y}=-v_{x}$,

$$
\det{J}_{f}=u_{x}v_{y}-u_{y}v_{x}=u_{x}^{2}+u_{y}^{2}=\left|f'\left(z\right)\right|^{2}.
$$

故 $\operatorname{Area}\left(f\left(D\right)\right)=\iint_{D}\left|f'\left(z\right)\right|^{2}\,dx\,dy$.

$\blacksquare$

## 11.3-15

令 $\left\{f_{n}\right\}$ 是开集 $\Omega\subset\mathbb{C}$ 上的一列全纯函数. 假设存在正实数序列 $c_{n}>0$ 使得 $\sum_{n=1}^{+\infty}c_{n}<+\infty$ 而且 $\left|f_{n}\left(z\right)-1\right|\le{c}_{n}$, $\forall{z}\in\Omega$. 证明:

(i) 无穷乘积 $\prod_{n=1}^{+\infty}f_{n}\left(z\right)$ 在 $\Omega$ 上一致收敛到一个 $\Omega$ 上的全纯函数 $f$;

(ii) 若所有的 $f_{n}\left(z\right)$ 都不在 $\Omega$ 上取零值, 则 $\frac{f'\left(z\right)}{f\left(z\right)}=\sum_{n=1}^{+\infty}\frac{f_{n}'\left(z\right)}{f_{n}\left(z\right)}$.

### 解答 11.3-15

(i) 记 $P_{n}\left(z\right)=\prod_{k=1}^{n}f_{k}\left(z\right)$. 由 $\left|f_{k}\left(z\right)-1\right|\le{c}_{k}$, 有 $\left|f_{k}\left(z\right)\right|\le1+c_{k}$, 故

$$
\left|P_{n}\left(z\right)\right|\le\prod_{k=1}^{n}\left(1+c_{k}\right)\le\exp\left(\sum_{k=1}^{n}c_{k}\right)\le{e}^{C},
$$

其中 $C=\sum_{k=1}^{+\infty}c_{k}<+\infty$. 于是

$$
\left|P_{n}\left(z\right)-P_{n-1}\left(z\right)\right|=\left|P_{n-1}\left(z\right)\right|\left|f_{n}\left(z\right)-1\right|\le{e}^{C}c_{n}.
$$

因 $\sum{c}_{n}$ 收敛, $\sum\left|P_{n}-P_{n-1}\right|$ 在 $\Omega$ 上一致收敛, 故 $P_{n}\to{f}$ 在 $\Omega$ 上一致. 由**定理 11.1.2 (魏尔斯特拉斯定理)**, $f$ 在 $\Omega$ 上全纯.

(ii) 取 $N_{0}$ 充分大使 $\sum_{n>N_{0}}c_{n}<\frac{1}{2}$. 对 $n>N_{0}$, $\left|f_{n}\left(z\right)-1\right|\le{c}_{n}$, 取 $c_{n}$ 充分小 (由收敛性) 使 $f_{n}\left(z\right)\ne0$; 且 $\left|P_{n}\left(z\right)\right|\ge\prod_{k=1}^{n}\left(1-c_{k}\right)>0$ 局部, 故 $f$ 在 $\Omega$ 上不取零值. 因 $P_{n}\to{f}$ 内紧一致且局部 $P_{n}\ne0$, 对数导数 $\frac{P_{n}'}{P_{n}}\to\frac{f'}{f}$ 内紧一致. 而对有限乘积,

$$
\frac{P_{n}'\left(z\right)}{P_{n}\left(z\right)}=\sum_{k=1}^{n}\frac{f_{k}'\left(z\right)}{f_{k}\left(z\right)},
$$

令 $n\to\infty$ 得 $\frac{f'\left(z\right)}{f\left(z\right)}=\sum_{n=1}^{+\infty}\frac{f_{n}'\left(z\right)}{f_{n}\left(z\right)}$.

$\blacksquare$
