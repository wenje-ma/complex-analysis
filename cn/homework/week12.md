# 作业 12

> **定义 10.3.2** (Blaschke 因子)<br>$$\phi_{a}\left(z\right)=\frac{z-a}{1-\bar{a}z}$$ ($a\in\mathbb{D}$) 是 $\mathbb{D}$ 的自同构, $\phi_{a}\left(a\right)=0$, $\left|\phi_{a}\left(e^{i\theta}\right)\right|=1$.

> **定理 10.3.1** (施瓦茨引理)<br>若 $f:\mathbb{D}\to\mathbb{D}$ 全纯且 $f\left(0\right)=0$, 则 $\left|f\left(z\right)\right|\le\left|z\right|$ 且 $\left|f'\left(0\right)\right|\le1$; 等号当且仅当 $f\left(z\right)=e^{i\theta}z$.

> **定理 10.3.4** (施瓦茨-皮克)<br>对 $\mathbb{D}\to\mathbb{D}$ 的全纯 $f$, $$\left|\frac{f\left(z\right)-f\left(w\right)}{1-\overline{f\left(w\right)}f\left(z\right)}\right|\le\left|\frac{z-w}{1-\bar{w}z}\right|;$$ 微分形式为 $$\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\le\frac{1}{1-\left|z\right|^{2}},$$ 等号当且仅当 $f\in\operatorname{auto}\left(\mathbb{D}\right)$.

> **定理 11.2.2** (黎曼映射定理)<br>任意不为全平面的单连通区域都与开单位圆盘共形等价.

> **定义 11.2.6** (映射半径)<br>对单连通区域 $D$ 且 $\mathbb{C}\setminus D\ne\varnothing$ 及 $a\in D$, 称使存在唯一共形等价 $f:D\to\mathbb{D}_{\rho}:=\left\{\left|z\right|<\rho\right\}$, $f\left(a\right)=0$, $f'\left(a\right)=1$ 的正数 $\rho$ 为 $D$ 相对 $a$ 的映射半径 $\rho\left(D,a\right)$.

### 习题一

(习题 11.3-1) 令 $\gamma$ 是单位圆盘 $\mathbb{D}:=\left\{\left|z\right|<1\right\}$ 上的光滑道路. 定义 $\gamma$ 的双曲弧长为 $L_{h}\left(\gamma\right)=\int_{\gamma}\frac{1}{1-\left|z\right|^{2}}\left|dz\right|$. 令 $f:\mathbb{D}\to\mathbb{D}$ 是全纯函数, 证明: (i) $L_{h}\left(f\left(\gamma\right)\right)\le L_{h}\left(\gamma\right)$; (ii) $L_{h}\left(f\left(\gamma\right)\right)=L_{h}\left(\gamma\right)$ 当且仅当 $f\in\operatorname{auto}\left(\mathbb{D}\right)$.

### 解答 习题一

(i) 由变量代换 $\left|dz\right|$ 换成 $\left|f'\left(z\right)\right|\left|dz\right|$, 得

$$
L_{h}\left(f\left(\gamma\right)\right)=\int_{\gamma}\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\left|dz\right|.
$$

由**定理 10.3.4 (施瓦茨-皮克)** 的微分形式, $\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\le\frac{1}{1-\left|z\right|^{2}}$, $\forall z\in\mathbb{D}$, 故 $L_{h}\left(f\left(\gamma\right)\right)\le L_{h}\left(\gamma\right)$.

(ii) 若 $f\in\operatorname{auto}\left(\mathbb{D}\right)$, 则施瓦茨-皮克微分形式取等号, 故 $L_{h}\left(f\left(\gamma\right)\right)=L_{h}\left(\gamma\right)$. 反之, 若 $L_{h}\left(f\left(\gamma\right)\right)=L_{h}\left(\gamma\right)$, 则被积函数的不等式 $\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\le\frac{1}{1-\left|z\right|^{2}}$ 沿 $\gamma$ 处处取等号; 由**定理 10.3.4** 的等号条件, $f$ 在含 $\gamma$ 的某开集上是自同构, 故 $f\in\operatorname{auto}\left(\mathbb{D}\right)$. $\blacksquare$

### 习题二

(习题 11.3-2) 假设区域 $G\subset\mathbb{C}\setminus\left\{0\right\}$ 上任意没有零点的全纯函数 $f$ 都存在 $G$ 上的全纯函数 $g$ 使得 $e^{g\left(z\right)}=f\left(z\right)$, $\forall z\in G$. 证明: $G$ 是单连通的.

### 解答 习题二

反设 $G$ 不是单连通的, 则 $\hat{\mathbb{C}}\setminus G$ 有一个有界连通分支 $K$. 取 $a\in K$. 因 $G\subset\mathbb{C}\setminus\left\{0\right\}$ 且 $a\notin G$, $f\left(z\right)=z-a$ 在 $G$ 上全纯且无零点. 由假设, 存在 $G$ 上全纯的 $g$ 使 $e^{g\left(z\right)}=z-a$, 故 $g'\left(z\right)=\frac{1}{z-a}$ 在 $G$ 上有原函数 $g$.

但 $K$ 是 $G$ 的一个洞, 存在闭曲线 $\gamma\subset G$ 绕过 $a$ 一次, 由例 7.1.2, $\int_{\gamma}\frac{dz}{z-a}=2\pi i\ne0$; 而 $g'$ 有原函数 $g$, 则 $\int_{\gamma}g'\left(z\right)\,dz=0$, 矛盾. 故 $G$ 单连通. $\blacksquare$

### 习题三

(习题 11.3-9) 令 $\Omega\subset\mathbb{C}$ 是区域, $H\left(\Omega\right)$ 是 $\Omega$ 到开单位圆盘 $\mathbb{D}:=\left\{\left|z\right|<1\right\}$ 上的所有全纯函数组成的集合, 取定 $z_{0}\in\Omega$, 对于任意 $f\in H\left(\Omega\right)$, 令 $g_{f}\left(z\right)=\frac{f\left(z\right)-f\left(z_{0}\right)}{1-\overline{f\left(z_{0}\right)}f\left(z\right)}$. 证明:

(i) $g_{f}'\left(z_{0}\right)=f'\left(z_{0}\right)\left(1-\left|f\left(z_{0}\right)\right|^{2}\right)^{-1}$;

(ii) $\sup\left\{\left|f'\left(z_{0}\right)\right|:f\in H\left(\Omega\right),\ f\left(z_{0}\right)=0\right\}=\sup\left\{\left|f'\left(z_{0}\right)\right|:f\in H\left(\Omega\right)\right\}$;

(iii) 若 $h\in H\left(\Omega\right)$ 满足 $h'\left(z_{0}\right)=\sup\left\{\left|f'\left(z_{0}\right)\right|:f\in H\left(\Omega\right)\right\}$, 则 $h\left(z_{0}\right)=0$;

(iv) $\sup\left\{\operatorname{Re}f'\left(0\right):f\in H\left(\mathbb{D}\right)\right\}=\sup\left\{\left|f'\left(0\right)\right|:f\in H\left(\mathbb{D}\right)\right\}=1$;

(v) $h\in H\left(\mathbb{D}\right)$ 满足 $\operatorname{Re}h'\left(0\right)=1$ 当且仅当 $h\left(z\right)=z$.

### 解答 习题三

(i) $g_{f}=\phi_{f\left(z_{0}\right)}\circ f$, 其中 $\phi_{a}\left(w\right)=\frac{w-a}{1-\bar{a}w}$. 由 $\phi_{a}'\left(w\right)=\frac{1-\left|a\right|^{2}}{\left(1-\bar{a}w\right)^{2}}$, 链式法则得

$$
g_{f}'\left(z_{0}\right)=\phi_{f\left(z_{0}\right)}'\left(f\left(z_{0}\right)\right)f'\left(z_{0}\right)=\frac{1-\left|f\left(z_{0}\right)\right|^{2}}{\left(1-\left|f\left(z_{0}\right)\right|^{2}\right)^{2}}f'\left(z_{0}\right)=\frac{f'\left(z_{0}\right)}{1-\left|f\left(z_{0}\right)\right|^{2}}.
$$

(ii) 左边 $\le$ 右边显然 (左边集合是右边的子集). 反之, 对任意 $f\in H\left(\Omega\right)$, $g_{f}\in H\left(\Omega\right)$ 且 $g_{f}\left(z_{0}\right)=0$, 由 (i) $\left|g_{f}'\left(z_{0}\right)\right|=\left|f'\left(z_{0}\right)\right|\left(1-\left|f\left(z_{0}\right)\right|^{2}\right)^{-1}\ge\left|f'\left(z_{0}\right)\right|$. 故 $\left|f'\left(z_{0}\right)\right|\le\sup\left\{\left|h'\left(z_{0}\right)\right|:h\in H\left(\Omega\right),h\left(z_{0}\right)=0\right\}$, 取上确界得右边 $\le$ 左边. 两向相等.

(iii) 设 $a=h\left(z_{0}\right)$. 若 $a\ne0$, 则 $g_{h}\in H\left(\Omega\right)$, $g_{h}\left(z_{0}\right)=0$, 且 $\left|g_{h}'\left(z_{0}\right)\right|=\left|h'\left(z_{0}\right)\right|\left(1-\left|a\right|^{2}\right)^{-1}>\left|h'\left(z_{0}\right)\right|=\sup$, 矛盾. 故 $h\left(z_{0}\right)=0$.

(iv) 由**定理 10.3.1 (施瓦茨引理)**, 对 $f\in H\left(\mathbb{D}\right)$, $f\left(0\right)=0$ 时 $\left|f'\left(0\right)\right|\le1$, 且 $f\left(z\right)=z$ 达到 $\left|f'\left(0\right)\right|=1$. 由 (ii), $\sup\left|f'\left(0\right)\right|=1$. 又 $\operatorname{Re}f'\left(0\right)\le\left|f'\left(0\right)\right|\le1$, 且 $f\left(z\right)=z$ 使 $\operatorname{Re}f'\left(0\right)=1$, 故 $\sup\operatorname{Re}f'\left(0\right)=1$. 于是两上确界均为 $1$.

(v) 若 $h\left(z\right)=z$, 则 $\operatorname{Re}h'\left(0\right)=1$. 反之若 $\operatorname{Re}h'\left(0\right)=1$, 则 $\left|h'\left(0\right)\right|\ge1$, 而施瓦茨引理给出 $\left|h'\left(0\right)\right|\le1$, 故 $\left|h'\left(0\right)\right|=1$. 施瓦茨引理等号条件: $h\left(z\right)=e^{i\theta}z$. 又 $\operatorname{Re}h'\left(0\right)=\cos\theta=1$, 故 $\theta=0$, 即 $h\left(z\right)=z$. $\blacksquare$

### 习题四

(习题 11.3-11) 令 $U\subset\mathbb{C}$ 是连通开集, $U\ne\mathbb{C}$, 且 $U$ 上的任意全纯函数都有原函数. 证明: $U$ 与开单位圆盘共形等价.

### 解答 习题四

$U$ 上任意全纯函数都有原函数, 这等价于 $U$ 内任意闭道路的积分为零, 即 $U$ 是单连通的 (单连通区域上全纯函数必有原函数, 且原函数存在性蕴涵单连通). 又 $U\ne\mathbb{C}$, 故 $U$ 是不为全平面的单连通区域. 由**定理 11.2.2 (黎曼映射定理)**, $U$ 与开单位圆盘共形等价. $\blacksquare$

### 习题五

(习题 11.3-14) 令 $D\subset\mathbb{C}$ 是单连通区域且 $\mathbb{C}\setminus D\ne\varnothing$. 证明:

(i) 对于每一点 $a\in D$ 都存在唯一的 $\rho>0$ 使得区域 $D$ 与开圆盘 $\mathbb{D}_{\rho}:=\left\{\left|z\right|<\rho\right\}$ 之间存在唯一的共形等价映射 $f:D\to\mathbb{D}_{\rho}$ 满足 $f\left(a\right)=0$, $f'\left(a\right)=1$; 称 $\rho$ 为 $D$ 相对于 $a$ 点的映射半径, 记作 $\rho\left(D,a\right)$;

(ii) 若 $D'\subset D$ 也是单连通区域, 则 $\rho\left(D',a\right)\le\rho\left(D,a\right)$, $\forall a\in D'$; 若存在 $b\in D'$ 使得等号成立, 则 $D'=D$;

(iii) 若 $g:D\to\mathbb{C}$ 是单叶全纯函数, 则 $\rho\left(g\left(D\right),g\left(a\right)\right)=\left|g'\left(a\right)\right|\rho\left(D,a\right)$, $\forall a\in D$.

### 解答 习题五

(i) 存在性: 由**定理 11.2.2 (黎曼映射定理)**, 存在共形等价 $F:D\to\mathbb{D}$, 调整自同构使 $F\left(a\right)=0$. 设 $c=F'\left(a\right)\ne0$, 令 $f\left(z\right)=\frac{F\left(z\right)}{c}$, 则 $f:D\to\left\{\left|w\right|<\frac{1}{\left|c\right|}\right\}=\mathbb{D}_{\rho}$ ($\rho=\frac{1}{\left|c\right|}$), 且 $f\left(a\right)=0$, $f'\left(a\right)=1$.

唯一性: 设 $f_{1}:D\to\mathbb{D}_{\rho_{1}}$, $f_{2}:D\to\mathbb{D}_{\rho_{2}}$ 均共形等价, $f_{i}\left(a\right)=0$, $f_{i}'\left(a\right)=1$. 则 $h=f_{2}\circ f_{1}^{-1}:\mathbb{D}_{\rho_{1}}\to\mathbb{D}_{\rho_{2}}$ 共形等价, $h\left(0\right)=0$, $h'\left(0\right)=\frac{f_{2}'\left(a\right)}{f_{1}'\left(a\right)}=1$. 令 $\psi\left(w\right)=\frac{\rho_{1}}{\rho_{2}}h\left(\rho_{1}w\right):\mathbb{D}\to\mathbb{D}$, 则 $\psi\left(0\right)=0$, $\psi'\left(0\right)=\frac{\rho_{1}}{\rho_{2}}\cdot1$. 由施瓦茨引理 $\left|\psi'\left(0\right)\right|\le1$, 即 $\rho_{1}\le\rho_{2}$; 对称地 $\rho_{2}\le\rho_{1}$, 故 $\rho_{1}=\rho_{2}$, 且 $\left|\psi'\left(0\right)\right|=1$, 施瓦茨等号给 $\psi\left(w\right)=e^{i\theta}w$, 再由 $\psi'\left(0\right)=1$ 得 $\theta=0$, $\psi=\text{id}$, $h=\text{id}$, $f_{1}=f_{2}$. 唯一性得证.

(ii) 记 $\rho=\rho\left(D,a\right)$, 取 $f:D\to\mathbb{D}_{\rho}$, $f\left(a\right)=0$, $f'\left(a\right)=1$. 由 $D'\subset D$, $f|_{D'}$ 单叶全纯. 由 (i), 存在共形等价 $F:D'\to\mathbb{D}_{\rho\left(D',a\right)}$, $F\left(a\right)=0$, $F'\left(a\right)=1$. 若 $\rho\left(D',a\right)>\rho$, 则 $f\circ F^{-1}:\mathbb{D}_{\rho\left(D',a\right)}\to\mathbb{D}_{\rho}$, 限制到 $\mathbb{D}_{\rho}$ 上得 $\mathbb{D}_{\rho}\to\mathbb{D}_{\rho}$ 共形等价, 在 $0$ 处导数 $=\frac{f'\left(a\right)}{F'\left(a\right)}=1$, 由施瓦茨引理它为恒同, 从而 $F^{-1}\left(\mathbb{D}_{\rho}\right)=D'$ 且 $f\left(D'\right)=\mathbb{D}_{\rho}$, 这与 $D'\subsetneq D$ 时 $f\left(D'\right)\subsetneq\mathbb{D}_{\rho}$ 矛盾. 故 $\rho\left(D',a\right)\le\rho\left(D,a\right)$. 若等号在某 $b$ 成立, 同一论证 (复合为恒同) 给出 $f\left(D'\right)=\mathbb{D}_{\rho}$, 即 $D'=D$.

(iii) 设 $f:D\to\mathbb{D}_{\rho\left(D,a\right)}$, $f\left(a\right)=0$, $f'\left(a\right)=1$. 因 $g$ 单叶, $g\left(D\right)$ 是单连通区域, 且 $\tilde f\left(z\right):=g'\left(a\right)\,f\left(g^{-1}\left(z\right)\right)$ 把 $g\left(D\right)$ 共形地映成 $\mathbb{D}_{\left|g'\left(a\right)\right|\rho\left(D,a\right)}$, 且 $\tilde f\left(g\left(a\right)\right)=0$, $\tilde f'\left(g\left(a\right)\right)=g'\left(a\right)f'\left(a\right)\cdot\frac{1}{g'\left(a\right)}=1$. 由 (i) 的唯一性, $\rho\left(g\left(D\right),g\left(a\right)\right)\le\left|g'\left(a\right)\right|\rho\left(D,a\right)$. 对 $g^{-1}$ 应用同一论证得反向不等式, 故 $\rho\left(g\left(D\right),g\left(a\right)\right)=\left|g'\left(a\right)\right|\rho\left(D,a\right)$. $\blacksquare$

### 习题六

(习题 11.3-19) 设 $D\subset\mathbb{C}$ 是以若当闭曲线为边界的单连通区域. 若 $f$ 和 $g$ 都是 $D$ 上的全纯函数而且满足: (i) $f$ 和 $g$ 均可连续延拓到边界 $\partial D$; (ii) $f$ 和 $g$ 均是 $D$ 到某一区域的共形等价映射; (iii) 存在三个不同的点 $z_{1},z_{2},z_{3}\in\partial D$ 使得 $f\left(z_{j}\right)=g\left(z_{j}\right)$, $j=1,2,3$. 证明: $f$ 和 $g$ 在 $D$ 上恒等并举例说明上述条件 (iii) 中的三个点不能减少成两个点.

### 解答 习题六

因 $f,g$ 共形等价且连续延拓到边界, 它们把 $\partial D$ 同胚地映成 $f\left(\partial D\right)$, $g\left(\partial D\right)$. 考虑 $h=g\circ f^{-1}:f\left(D\right)\to g\left(D\right)$ 共形等价, 它连续延拓到 $\overline{f\left(D\right)}$ 的边界. 在 $f\left(\partial D\right)$ 的三个点 $f\left(z_{1}\right),f\left(z_{2}\right),f\left(z_{3}\right)$ 处,

$$
h\left(f\left(z_{j}\right)\right)=g\left(f^{-1}\left(f\left(z_{j}\right)\right)\right)=g\left(z_{j}\right)=f\left(z_{j}\right),
$$

即 $h$ 在 $f\left(\partial D\right)$ 的三个不同点处保持不动.

$f\left(D\right)$ 也是以若当闭曲线为边界的区域. 取共形等价 $\Psi:f\left(D\right)\to\mathbb{D}$, 则 $\tilde h=\Psi\circ h\circ\Psi^{-1}:\mathbb{D}\to\mathbb{D}$ 是全纯自同构, 且它在 $\partial\mathbb{D}$ 的三个不同点 $\Psi\left(f\left(z_{1}\right)\right),\Psi\left(f\left(z_{2}\right)\right),\Psi\left(f\left(z_{3}\right)\right)$ 处等于恒同. $\mathbb{D}$ 的自同构都是莫比乌斯变换, 而莫比乌斯变换由三对对应点唯一确定, 故 $\tilde h=\text{id}$, 从而 $h=\text{id}$, $g=f$.

反例 (两点不够): 取 $D=\mathbb{D}$, $f\left(z\right)=z$, $g\left(z\right)=\phi_{a}\left(z\right)=\frac{z-a}{1-az}$, 其中 $0<a<1$ 为实数. 二者都是 $\mathbb{D}$ 的自同构且连续延拓到边界. 在 $z=1$ 处 $\phi_{a}\left(1\right)=1=f\left(1\right)$, 在 $z=-1$ 处 $\phi_{a}\left(-1\right)=-1=f\left(-1\right)$, 即 $f,g$ 在两个边界点相等; 但 $a\ne0$ 时 $f\ne g$. 故三个点不能减少为两个点. $\blacksquare$
