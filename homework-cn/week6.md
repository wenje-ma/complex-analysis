# week6

> **定理 9.3.2 (恒等定理)**
> 
> 若区域 $D$ 上的全纯函数零点在 $D$ 内有聚点, 则 $f\equiv0$.

> **定理 10.1.1 (最大模原理)**
> 
> 若区域 $D$ 上的全纯函数 $f$ 的模 $\left|f\right|$ 在 $z_{0}\in{D}$ 处有局部极大值, 则 $f$ 在 $D$ 上为常值.

> **定理 10.1.4 (开映射定理)**
> 
> 非常值的全纯函数把区域映成区域.

> **定理 10.3.1 (施瓦茨引理)**
> 
> 若 $f:\mathbb{D}\to\mathbb{D}$ 全纯且 $f\left(0\right)=0$, 则 $\left|f\left(z\right)\right|\le\left|z\right|$ 且 $\left|f'\left(0\right)\right|\le1$; 等号当且仅当 $f\left(z\right)=e^{i\theta}z$.

> **定义 10.3.2 (布拉施克因子)**
> 
> 对 $a\in\mathbb{D}$, 称

$$
\phi_{a}\left(z\right)=\frac{z-a}{1-\overline{a}z}
$$
它是 $\mathbb{D}$ 的自同构, $\phi_{a}\left(a\right)=0$, 且 $\left|\phi_{a}\left(e^{i\theta}\right)\right|=1$.

> **定理 10.3.4 (施瓦茨-皮克引理)**
> 
> 对 $\mathbb{D}\to\mathbb{D}$ 的全纯 $f$,

$$
\left|\frac{f\left(z\right)-f\left(w\right)}{1-\overline{f\left(w\right)}f\left(z\right)}\right|\le\left|\frac{z-w}{1-\overline{w}z}\right|;
$$
微分形式为
$$
\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\le\frac{1}{1-\left|z\right|^{2}},
$$
等号当且仅当 $f\in\operatorname{auto}\left(\mathbb{D}\right)$.

> **定义 11.1.1 (内紧收敛)**
> 
> 称全纯函数列 $\left\{f_{n}\right\}$ 在区域 $\Omega$ 上内紧收敛到 $f$, 若它在 $\Omega$ 的任意紧子集上都一致收敛到 $f$.

> **定理 11.1.2 (魏尔斯特拉斯定理)**
> 
> 若 $\left\{f_{n}\right\}$ 在 $\Omega$ 上内紧一致收敛到连续函数 $f$, 则 $f$ 在 $\Omega$ 上全纯.

> **定理 11.1.3 (蒙泰尔定理)**
> 
> 若全纯函数列 $\left\{f_{n}\right\}$ 在区域 $D$ 的任意紧子集上一致有界, 则存在子列在 $D$ 上内紧一致收敛.

> **定理 11.2.2 (黎曼映射定理)**
> 
> 任意不为全平面的单连通区域都与开单位圆盘共形等价.

> **定义 11.2.6 (映射半径)**
> 
> 对单连通区域 $D$ 且 $\mathbb{C}\setminus{D}\ne\varnothing$ 及 $a\in{D}$, 称使存在唯一共形等价 $f:D\to\mathbb{D}_{\rho}:=\left\{\left|z\right|<\rho\right\}$, $f\left(a\right)=0$, $f'\left(a\right)=1$ 的正数 $\rho$ 为 $D$ 相对 $a$ 的映射半径 $\rho\left(D,a\right)$.

## 10.4-10

令 $\mathbb{D}=\left\{\left|z\right|<1\right\}$, $f:\mathbb{D}\to\mathbb{D}$ 是不为常值的全纯函数. 证明:

$$
\frac{\left|f\left(0\right)\right|-\left|z\right|}{1+\left|f\left(0\right)\right|\left|z\right|}\le\left|f\left(z\right)\right|\le\frac{\left|f\left(0\right)\right|+\left|z\right|}{1-\left|f\left(0\right)\right|\left|z\right|},\quad\forall\left|z\right|<1.
$$

### 解答 10.4-10

记 $a=f\left(0\right)$, $t=\left|a\right|$. 由**定义 10.3.2 (布拉施克因子)**, $\phi_{a}\left(w\right)=\frac{w-a}{1-\overline{a}w}$ 是 $\mathbb{D}$ 的自同构且 $\phi_{a}\left(a\right)=0$. 于是 $\phi_{a}\circ{f}:\mathbb{D}\to\mathbb{D}$ 全纯, 且 $\left(\phi_{a}\circ{f}\right)\left(0\right)=0$. 由**定理 10.3.1 (施瓦茨引理)**:

$$
\left|\frac{f\left(z\right)-a}{1-\overline{a}f\left(z\right)}\right|\le\left|z\right|.
$$

令 $u=f\left(z\right)$, 则 $\left|u\right|<1$. 由 $\left|u-a\right|\le\left|z\right|\left|1-\overline{a}u\right|\le\left|z\right|\left(1+t\left|u\right|\right)$ 与 $\left|u-a\right|\ge\left|\right|u\left|-t\right|$, 得

$$
\left|\right|u\left|-t\right|\le\left|z\right|\left(1+t\left|u\right|\right).
$$

分两种情形:

若 $\left|u\right|\le{t}$, 则 $t-\left|u\right|\le\left|z\right|\left(1+t\left|u\right|\right)$, 移项得 $\left|u\right|\left(1+t\left|z\right|\right)\ge{t}-\left|z\right|$, 即

$$
\left|u\right|\ge\frac{t-\left|z\right|}{1+t\left|z\right|}.
$$

若 $\left|u\right|\ge{t}$, 则 $\left|u\right|-t\le\left|z\right|\left(1+t\left|u\right|\right)$, 移项得 $\left|u\right|\left(1-t\left|z\right|\right)\le{t}+\left|z\right|$, 即

$$
\left|u\right|\le\frac{t+\left|z\right|}{1-t\left|z\right|}.
$$

合并即得

$$
\frac{\left|f\left(0\right)\right|-\left|z\right|}{1+\left|f\left(0\right)\right|\left|z\right|}\le\left|f\left(z\right)\right|\le\frac{\left|f\left(0\right)\right|+\left|z\right|}{1-\left|f\left(0\right)\right|\left|z\right|}.
$$

$\blacksquare$

## 11.3-3

令 $f$ 是单连通区域 $D\subset\mathbb{C}$ 到开单位圆盘 $\mathbb{D}:=\left\{\left|z\right|<1\right\}$ 的共形等价映射. 证明: 若 $D\ni{z}_{n}\to{z}\in\partial{D}$, 则 $\left|f\left(z_{n}\right)\right|\to1$.

### 解答 11.3-3

反设 $\left|f\left(z_{n}\right)\right|\not\to1$. 因 $\left|f\right|<1$, 存在子列 (仍记 $z_{n}$) 及 $\rho<1$ 使得 $\left|f\left(z_{n}\right)\right|\le\rho<1$. 于是 $\left\{f\left(z_{n}\right)\right\}$ 含于 $\mathbb{D}$ 的紧子集 $\left\{\left|w\right|\le\rho\right\}$, 存在收敛子列 $f\left(z_{n_{k}}\right)\to{w}_{0}\in\left\{\left|w\right|\le\rho\right\}\subset\mathbb{D}$.

$f$ 是 $D$ 到 $\mathbb{D}$ 的共形等价映射, 故 $f^{-1}:\mathbb{D}\to{D}$ 全纯连续. 由 $f\left(z_{n_{k}}\right)\to{w}_{0}\in\mathbb{D}$, 得

$$
z_{n_{k}}=f^{-1}\left(f\left(z_{n_{k}}\right)\right)\to{f}^{-1}\left(w_{0}\right)\in{D},
$$

与 $z_{n_{k}}\to{z}\in\partial{D}\notin{D}$ 矛盾. 故 $\left|f\left(z_{n}\right)\right|\to1$. $\blacksquare$

## 11.3-4

令 $\left\{g_{n}\right\}$ 是区域 $D\subset\mathbb{C}$ 上的全纯函数序列, 且 $g_{n}\left(D\right)\subset{D}$. 若 $g_{n}$ 在 $D$ 上内紧一致收敛到 $g$. 证明: $g\left(D\right)\subset{D}$ 或者 $g\equiv{z}_{0}\in\partial{D}$.

### 解答 11.3-4

由**定理 11.1.2 (魏尔斯特拉斯定理)**, $g$ 在 $D$ 上全纯. 因 $g_{n}\left(D\right)\subset{D}$ 且 $g_{n}\to{g}$, 对每个 $z\in{D}$, $g\left(z\right)\in\overline{D}$ (闭包). 故 $g\left(D\right)\subset\overline{D}$.

若 $g$ 不是常值, 由**定理 10.1.4 (开映射定理)**, $g\left(D\right)$ 是开集. 又 $g\left(D\right)\subset\overline{D}$ 且 $g\left(D\right)$ 非空开, 若 $g\left(D\right)$ 含有 $\partial{D}$ 的点, 则 $g\left(D\right)$ 不可能是开集 (因 $g\left(D\right)$ 中的点应被 $g\left(D\right)$ 内的小邻域包含, 但 $\partial{D}$ 附近的小邻域不全含于 $\overline{D}$). 故 $g\left(D\right)\subset{D}$.

若 $g$ 为常值 $g\equiv{z}_{0}$, 则 $z_{0}\in\overline{D}$. 若 $z_{0}\in{D}$, 则 $g\left(D\right)=\left\{z_{0}\right\}\subset{D}$, 属第一种情形; 若 $z_{0}\in\partial{D}$, 则 $g\equiv{z}_{0}\in\partial{D}$, 属第二种情形. 命题得证. $\blacksquare$

## 11.3-5

(维塔利-波特定理) 令 $\left\{f_{n}\right\}$ 是区域 $D\subset\mathbb{C}$ 上的全纯函数序列且在 $D$ 上的任意紧子集上都是一致有界的. 给定序列 $z_{m}\in{D}$ 且 $z_{m}\to{z}_{\infty}\in{D}$. 假设 $\lim_{n\to\infty}f_{n}\left(z_{m}\right)=w_{m}$, $\forall{m}\in\mathbb{N}$. 证明: 存在 $D$ 上的全纯函数 $f$ 使得 $f_{n}$ 在 $D$ 上内紧一致收敛到 $f$.

### 解答 11.3-5

由**定理 11.1.3 (蒙泰尔定理)**, $\left\{f_{n}\right\}$ 在 $D$ 上正规: 任意子列含有在 $D$ 上内紧一致收敛的子列. 设 $f_{n_{k}}\to{f}$ 内紧一致, 由**定理 11.1.2 (魏尔斯特拉斯定理)** $f$ 在 $D$ 上全纯. 对每个 $m$, 由 $f_{n_{k}}\to{f}$ 一致于 $\left\{z_{m}\right\}$ 附近及条件 $\lim_{n}f_{n}\left(z_{m}\right)=w_{m}$, 得 $f\left(z_{m}\right)=w_{m}$.

现在证明整个序列收敛到 $f$. 若不然, 存在紧集 $K\subset{D}$, $\varepsilon>0$ 及子列 $f_{n'_{j}}$ 使得 $\sup_{K}\left|f_{n'_{j}}-f\right|\ge\varepsilon$. 由蒙泰尔, $f_{n'_{j}}$ 有子列内紧收敛到某全纯 $\widetilde{f}$. 则 $\widetilde{f}\left(z_{m}\right)=w_{m}=f\left(z_{m}\right)$ 对一切 $m$ 成立; 因 $z_{m}\to{z}_{\infty}\in{D}$ 有聚点, 由**定理 9.3.2 (恒等定理)** $\widetilde{f}=f$. 这与 $\sup_{K}\left|f_{n'_{j}}-f\right|\ge\varepsilon$ 且 $f_{n'_{j}}\to{f}$ 于 $K$ 矛盾. 故 $f_{n}\to{f}$ 在 $D$ 上内紧一致收敛. $\blacksquare$

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

故 $\operatorname{Area}\left(f\left(D\right)\right)=\iint_{D}\left|f'\left(z\right)\right|^{2}\,dx\,dy$. $\blacksquare$

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

(ii) 取 $N_{0}$ 充分大使 $\sum_{n>{}N_{0}}c_{n}<\frac{1}{2}$. 对 $n>{}N_{0}$, $\left|f_{n}\left(z\right)-1\right|\le{c}_{n}$, 取 $c_{n}$ 充分小 (由收敛性) 使 $f_{n}\left(z\right)\ne0$; 且 $\left|P_{n}\left(z\right)\right|\ge\prod_{k=1}^{n}\left(1-c_{k}\right)>0$ 局部, 故 $f$ 在 $\Omega$ 上不取零值. 因 $P_{n}\to{f}$ 内紧一致且局部 $P_{n}\ne0$, 对数导数 $\frac{P_{n}'}{P_{n}}\to\frac{f'}{f}$ 内紧一致. 而对有限乘积,

$$
\frac{P_{n}'\left(z\right)}{P_{n}\left(z\right)}=\sum_{k=1}^{n}\frac{f_{k}'\left(z\right)}{f_{k}\left(z\right)},
$$

令 $n\to\infty$ 得 $\frac{f'\left(z\right)}{f\left(z\right)}=\sum_{n=1}^{+\infty}\frac{f_{n}'\left(z\right)}{f_{n}\left(z\right)}$. $\blacksquare$

## 11.3-1

令 $\gamma$ 是单位圆盘 $\mathbb{D}:=\left\{\left|z\right|<1\right\}$ 上的光滑道路. 定义 $\gamma$ 的双曲弧长为 $L_{h}\left(\gamma\right)=\int_{\gamma}\frac{1}{1-\left|z\right|^{2}}\left|dz\right|$. 令 $f:\mathbb{D}\to\mathbb{D}$ 是全纯函数, 证明: (i) $L_{h}\left(f\left(\gamma\right)\right)\le{L}_{h}\left(\gamma\right)$; (ii) $L_{h}\left(f\left(\gamma\right)\right)=L_{h}\left(\gamma\right)$ 当且仅当 $f\in\operatorname{auto}\left(\mathbb{D}\right)$.

### 解答 11.3-1

(i) 由变量代换 $\left|dz\right|$ 换成 $\left|f'\left(z\right)\right|\left|dz\right|$, 得

$$
L_{h}\left(f\left(\gamma\right)\right)=\int_{\gamma}\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\left|dz\right|.
$$

由**定理 10.3.4 (施瓦茨-皮克引理)** 的微分形式, $\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\le\frac{1}{1-\left|z\right|^{2}}$, $\forall{z}\in\mathbb{D}$, 故 $L_{h}\left(f\left(\gamma\right)\right)\le{L}_{h}\left(\gamma\right)$.

(ii) 若 $f\in\operatorname{auto}\left(\mathbb{D}\right)$, 则施瓦茨-皮克微分形式取等号, 故 $L_{h}\left(f\left(\gamma\right)\right)=L_{h}\left(\gamma\right)$. 反之, 若 $L_{h}\left(f\left(\gamma\right)\right)=L_{h}\left(\gamma\right)$, 则被积函数的不等式 $\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\le\frac{1}{1-\left|z\right|^{2}}$ 沿 $\gamma$ 处处取等号; 由**定理 10.3.4 (施瓦茨-皮克引理)** 的等号条件, $f$ 在含 $\gamma$ 的某开集上是自同构, 故 $f\in\operatorname{auto}\left(\mathbb{D}\right)$. $\blacksquare$

## 11.3-2

假设区域 $G\subset\mathbb{C}\setminus\left\{0\right\}$ 上任意没有零点的全纯函数 $f$ 都存在 $G$ 上的全纯函数 $g$ 使得 $e^{g\left(z\right)}=f\left(z\right)$, $\forall{z}\in{G}$. 证明: $G$ 是单连通的.

### 解答 11.3-2

反设 $G$ 不是单连通的, 则 $\widehat{\mathbb{C}}\setminus{G}$ 有一个有界连通分支 $K$. 取 $a\in{K}$. 因 $G\subset\mathbb{C}\setminus\left\{0\right\}$ 且 $a\notin{G}$, $f\left(z\right)=z-a$ 在 $G$ 上全纯且无零点. 由假设, 存在 $G$ 上全纯的 $g$ 使 $e^{g\left(z\right)}=z-a$, 故 $g'\left(z\right)=\frac{1}{z-a}$ 在 $G$ 上有原函数 $g$.

但 $K$ 是 $G$ 的一个洞, 存在闭曲线 $\gamma\subset{G}$ 绕过 $a$ 一次, 由例 7.1.2, $\int_{\gamma}\frac{dz}{z-a}=2\pi{i}\ne0$; 而 $g'$ 有原函数 $g$, 则 $\int_{\gamma}g'\left(z\right)\,dz=0$, 矛盾. 故 $G$ 单连通. $\blacksquare$

## 11.3-9

令 $\Omega\subset\mathbb{C}$ 是区域, $H\left(\Omega\right)$ 是 $\Omega$ 到开单位圆盘 $\mathbb{D}:=\left\{\left|z\right|<1\right\}$ 上的所有全纯函数组成的集合, 取定 $z_{0}\in\Omega$, 对于任意 $f\in{H}\left(\Omega\right)$, 令 $g_{f}\left(z\right)=\frac{f\left(z\right)-f\left(z_{0}\right)}{1-\overline{f\left(z_{0}\right)}f\left(z\right)}$. 证明:

(i) $g_{f}'\left(z_{0}\right)=f'\left(z_{0}\right)\left(1-\left|f\left(z_{0}\right)\right|^{2}\right)^{-1}$;

(ii) $\sup\left\{\left|f'\left(z_{0}\right)\right|:f\in{H}\left(\Omega\right),\,f\left(z_{0}\right)=0\right\}=\sup\left\{\left|f'\left(z_{0}\right)\right|:f\in{H}\left(\Omega\right)\right\}$;

(iii) 若 $h\in{H}\left(\Omega\right)$ 满足 $h'\left(z_{0}\right)=\sup\left\{\left|f'\left(z_{0}\right)\right|:f\in{H}\left(\Omega\right)\right\}$, 则 $h\left(z_{0}\right)=0$;

(iv) $\sup\left\{\operatorname{Re}f'\left(0\right):f\in{H}\left(\mathbb{D}\right)\right\}=\sup\left\{\left|f'\left(0\right)\right|:f\in{H}\left(\mathbb{D}\right)\right\}=1$;

(v) $h\in{H}\left(\mathbb{D}\right)$ 满足 $\operatorname{Re}h'\left(0\right)=1$ 当且仅当 $h\left(z\right)=z$.

### 解答 11.3-9

(i) $g_{f}=\phi_{f\left(z_{0}\right)}\circ{f}$, 其中 $\phi_{a}\left(w\right)=\frac{w-a}{1-\overline{a}w}$. 由 $\phi_{a}'\left(w\right)=\frac{1-\left|a\right|^{2}}{\left(1-\overline{a}w\right)^{2}}$, 链式法则得

$$
g_{f}'\left(z_{0}\right)=\phi_{f\left(z_{0}\right)}'\left(f\left(z_{0}\right)\right)f'\left(z_{0}\right)=\frac{1-\left|f\left(z_{0}\right)\right|^{2}}{\left(1-\left|f\left(z_{0}\right)\right|^{2}\right)^{2}}f'\left(z_{0}\right)=\frac{f'\left(z_{0}\right)}{1-\left|f\left(z_{0}\right)\right|^{2}}.
$$

(ii) 左边 $\le$ 右边显然 (左边集合是右边的子集). 反之, 对任意 $f\in{H}\left(\Omega\right)$, $g_{f}\in{H}\left(\Omega\right)$ 且 $g_{f}\left(z_{0}\right)=0$, 由 (i) $\left|g_{f}'\left(z_{0}\right)\right|=\left|f'\left(z_{0}\right)\right|\left(1-\left|f\left(z_{0}\right)\right|^{2}\right)^{-1}\ge\left|f'\left(z_{0}\right)\right|$. 故 $\left|f'\left(z_{0}\right)\right|\le\sup\left\{\left|h'\left(z_{0}\right)\right|:h\in{H}\left(\Omega\right),h\left(z_{0}\right)=0\right\}$, 取上确界得右边 $\le$ 左边. 两向相等.

(iii) 设 $a=h\left(z_{0}\right)$. 若 $a\ne0$, 则 $g_{h}\in{H}\left(\Omega\right)$, $g_{h}\left(z_{0}\right)=0$, 且 $\left|g_{h}'\left(z_{0}\right)\right|=\left|h'\left(z_{0}\right)\right|\left(1-\left|a\right|^{2}\right)^{-1}>\left|h'\left(z_{0}\right)\right|=\sup$, 矛盾. 故 $h\left(z_{0}\right)=0$.

(iv) 由**定理 10.3.1 (施瓦茨引理)**, 对 $f\in{H}\left(\mathbb{D}\right)$, $f\left(0\right)=0$ 时 $\left|f'\left(0\right)\right|\le1$, 且 $f\left(z\right)=z$ 达到 $\left|f'\left(0\right)\right|=1$. 由 (ii), $\sup\left|f'\left(0\right)\right|=1$. 又 $\operatorname{Re}f'\left(0\right)\le\left|f'\left(0\right)\right|\le1$, 且 $f\left(z\right)=z$ 使 $\operatorname{Re}f'\left(0\right)=1$, 故 $\sup\operatorname{Re}f'\left(0\right)=1$. 于是两上确界均为 $1$.

(v) 若 $h\left(z\right)=z$, 则 $\operatorname{Re}h'\left(0\right)=1$. 反之若 $\operatorname{Re}h'\left(0\right)=1$, 则 $\left|h'\left(0\right)\right|\ge1$, 而**定理 10.3.1 (施瓦茨引理)** 给出 $\left|h'\left(0\right)\right|\le1$, 故 $\left|h'\left(0\right)\right|=1$. 施瓦茨引理等号条件: $h\left(z\right)=e^{i\theta}z$. 又 $\operatorname{Re}h'\left(0\right)=\cos\theta=1$, 故 $\theta=0$, 即 $h\left(z\right)=z$. $\blacksquare$
