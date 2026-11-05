# week7

> **定理 4.3.4 (保圆性)**
> 
> 莫比乌斯变换把扩充复平面上的广义圆 (圆或直线) 映成广义圆, 并保持切角.

> **命题 4.3.7**
> 
> 莫比乌斯变换把两交点映射到 $0$ 与 $\infty$ 时, 相交两圆被映成过原点的两条直线, 区域映成角域.

> **命题 5.2.2 (指数映射的带区域)**
> 
> $z\mapsto{e}^{z}$ 把水平带 $\left\{0<\operatorname{Im}z<2\pi\right\}$ 共形地映成 $\mathbb{C}\setminus\left[0,+\infty\right)$.

> **命题 5.2.3 (阿波罗尼奥斯圆)**
> 
> 莫比乌斯变换

$$
z\mapsto\frac{z-\alpha}{z-\beta}
$$
($\alpha,\beta\in\mathbb{C}$) 把不含 $\alpha,\beta$ 的圆映成圆, 且 $\left|z-\alpha\right|/\left|z-\beta\right|$ 在阿波罗尼奥斯圆上为常数.

> **定义 6.2.4 (幂函数)**
> 
> $z^{\alpha}=e^{\alpha\log{z}}$ 把角域 $\left\{0<\arg{z}<\beta\right\}$ 共形地映成角域 $\left\{0<\arg{w}<\alpha\beta\right\}$ (取合适的全纯分支).

> **定理 8.3.1 (柯西积分公式)**
> 
> 若 $f$ 在含若当闭曲线 $\gamma$ 及其内区域的区域上全纯, $z$ 在 $\gamma$ 的内区域, 则

$$
f\left(z\right)=\frac{1}{2\pi{i}}\int_{\gamma}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.
$$

> **定理 8.3.2 (高阶导数公式)**
> 
> 若 $f$ 在单连通区域 $D$ 上全纯, $\gamma$ 是 $D$ 内的分段光滑若当闭曲线, $z$ 在其内区域, 则 $f$ 在 $z$ 处有任意阶导数且

$$
f^{\left(n\right)}\left(z\right)=\frac{n!}{2\pi{i}}\int_{\gamma}\frac{f\left(\zeta\right)}{\left(\zeta-z\right)^{n+1}}\,d\zeta.
$$

> **定理 10.1.1 (最大模原理)**
> 
> 若区域 $D$ 上的全纯函数 $f$ 的模 $\left|f\right|$ 在 $z_{0}\in{D}$ 处有局部极大值, 则 $f$ 在 $D$ 上为常值.

> **定理 10.3.1 (施瓦茨引理)**
> 
> 若 $f:\mathbb{D}\to\mathbb{D}$ 全纯且 $f\left(0\right)=0$, 则 $\left|f\left(z\right)\right|\le\left|z\right|$ 且 $\left|f'\left(0\right)\right|\le1$; 等号当且仅当 $f\left(z\right)=e^{i\theta}z$.

> **定义 10.3.2 (布拉施克因子)**
> 
> 对 $a\in\mathbb{D}$, 称

> **定理 10.3.4 (施瓦茨-皮克引理)**
> 
> 对 $\mathbb{D}\to\mathbb{D}$ 的全纯 $f$,

> **定理 11.2.2 (黎曼映射定理)**
> 
> 任意不为全平面的单连通区域都与开单位圆盘共形等价.

> **定义 11.2.6 (映射半径)**
> 
> 对单连通区域 $D$ 且 $\mathbb{C}\setminus{D}\ne\varnothing$ 及 $a\in{D}$, 称使存在唯一共形等价 $f:D\to\mathbb{D}_{\rho}:=\left\{\left|z\right|<\rho\right\}$, $f\left(a\right)=0$, $f'\left(a\right)=1$ 的正数 $\rho$ 为 $D$ 相对 $a$ 的映射半径 $\rho\left(D,a\right)$.

## 11.3-11

令 $U\subset\mathbb{C}$ 是连通开集, $U\ne\mathbb{C}$, 且 $U$ 上的任意全纯函数都有原函数. 证明: $U$ 与开单位圆盘共形等价.

### 解答 11.3-11

$U$ 上任意全纯函数都有原函数, 这等价于 $U$ 内任意闭道路的积分为零, 即 $U$ 是单连通的 (单连通区域上全纯函数必有原函数, 且原函数存在性蕴含单连通). 又 $U\ne\mathbb{C}$, 故 $U$ 是不为全平面的单连通区域. 由**定理 11.2.2 (黎曼映射定理)**, $U$ 与开单位圆盘共形等价. $\blacksquare$

## 11.3-14

令 $D\subset\mathbb{C}$ 是单连通区域且 $\mathbb{C}\setminus{D}\ne\varnothing$. 证明:

(i) 对于每一点 $a\in{D}$ 都存在唯一的 $\rho>0$ 使得区域 $D$ 与开圆盘 $\mathbb{D}_{\rho}:=\left\{\left|z\right|<\rho\right\}$ 之间存在唯一的共形等价映射 $f:D\to\mathbb{D}_{\rho}$ 满足 $f\left(a\right)=0$, $f'\left(a\right)=1$; 称 $\rho$ 为 $D$ 相对于 $a$ 点的映射半径, 记作 $\rho\left(D,a\right)$;

(ii) 若 $D'\subset{D}$ 也是单连通区域, 则 $\rho\left(D',a\right)\le\rho\left(D,a\right)$, $\forall{a}\in{D}'$; 若存在 $b\in{D}'$ 使得等号成立, 则 $D'=D$;

(iii) 若 $g:D\to\mathbb{C}$ 是单叶全纯函数, 则 $\rho\left(g\left(D\right),g\left(a\right)\right)=\left|g'\left(a\right)\right|\rho\left(D,a\right)$, $\forall{a}\in{D}$.

### 解答 11.3-14

(i) 存在性: 由**定理 11.2.2 (黎曼映射定理)**, 存在共形等价 $F:D\to\mathbb{D}$, 调整自同构使 $F\left(a\right)=0$. 设 $c=F'\left(a\right)\ne0$, 令 $f\left(z\right)=\frac{F\left(z\right)}{c}$, 则 $f:D\to\left\{\left|w\right|<\frac{1}{\left|c\right|}\right\}=\mathbb{D}_{\rho}$ ($\rho=\frac{1}{\left|c\right|}$), 且 $f\left(a\right)=0$, $f'\left(a\right)=1$.

唯一性: 设 $f_{1}:D\to\mathbb{D}_{\rho_{1}}$, $f_{2}:D\to\mathbb{D}_{\rho_{2}}$ 均共形等价, $f_{i}\left(a\right)=0$, $f_{i}'\left(a\right)=1$. 则 $h=f_{2}\circ{f}_{1}^{-1}:\mathbb{D}_{\rho_{1}}\to\mathbb{D}_{\rho_{2}}$ 共形等价, $h\left(0\right)=0$, $h'\left(0\right)=\frac{f_{2}'\left(a\right)}{f_{1}'\left(a\right)}=1$. 令 $\psi\left(w\right)=\frac{\rho_{1}}{\rho_{2}}h\left(\rho_{1}w\right):\mathbb{D}\to\mathbb{D}$, 则 $\psi\left(0\right)=0$, $\psi'\left(0\right)=\frac{\rho_{1}}{\rho_{2}}\cdot1$. 由**定理 10.3.1 (施瓦茨引理)** $\left|\psi'\left(0\right)\right|\le1$, 即 $\rho_{1}\le\rho_{2}$; 对称地 $\rho_{2}\le\rho_{1}$, 故 $\rho_{1}=\rho_{2}$, 且 $\left|\psi'\left(0\right)\right|=1$, 施瓦茨等号给 $\psi\left(w\right)=e^{i\theta}w$, 再由 $\psi'\left(0\right)=1$ 得 $\theta=0$, $\psi=\text{id}$, $h=\text{id}$, $f_{1}=f_{2}$. 唯一性得证.

(ii) 记 $\rho=\rho\left(D,a\right)$, 取 $f:D\to\mathbb{D}_{\rho}$, $f\left(a\right)=0$, $f'\left(a\right)=1$. 由 $D'\subset{D}$, $f|_{D'}$ 单叶全纯. 由 (i), 存在共形等价 $F:D'\to\mathbb{D}_{\rho\left(D',a\right)}$, $F\left(a\right)=0$, $F'\left(a\right)=1$. 若 $\rho\left(D',a\right)>\rho$, 则 $f\circ{F}^{-1}:\mathbb{D}_{\rho\left(D',a\right)}\to\mathbb{D}_{\rho}$, 限制到 $\mathbb{D}_{\rho}$ 上得 $\mathbb{D}_{\rho}\to\mathbb{D}_{\rho}$ 共形等价, 在 $0$ 处导数 $=\frac{f'\left(a\right)}{F'\left(a\right)}=1$, 由施瓦茨引理它为恒同, 从而 $F^{-1}\left(\mathbb{D}_{\rho}\right)=D'$ 且 $f\left(D'\right)=\mathbb{D}_{\rho}$, 这与 $D'\subsetneq{D}$ 时 $f\left(D'\right)\subsetneq\mathbb{D}_{\rho}$ 矛盾. 故 $\rho\left(D',a\right)\le\rho\left(D,a\right)$. 若等号在某 $b$ 成立, 同一论证 (复合为恒同) 给出 $f\left(D'\right)=\mathbb{D}_{\rho}$, 即 $D'=D$.

(iii) 设 $f:D\to\mathbb{D}_{\rho\left(D,a\right)}$, $f\left(a\right)=0$, $f'\left(a\right)=1$. 因 $g$ 单叶, $g\left(D\right)$ 是单连通区域, 且 $\widetilde{f}\left(z\right):=g'\left(a\right)\,f\left(g^{-1}\left(z\right)\right)$ 把 $g\left(D\right)$ 共形地映成 $\mathbb{D}_{\left|g'\left(a\right)\right|\rho\left(D,a\right)}$, 且 $\widetilde{f}\left(g\left(a\right)\right)=0$, $\widetilde{f}'\left(g\left(a\right)\right)=g'\left(a\right)f'\left(a\right)\cdot\frac{1}{g'\left(a\right)}=1$. 由 (i) 的唯一性, $\rho\left(g\left(D\right),g\left(a\right)\right)\le\left|g'\left(a\right)\right|\rho\left(D,a\right)$. 对 $g^{-1}$ 应用同一论证得反向不等式, 故 $\rho\left(g\left(D\right),g\left(a\right)\right)=\left|g'\left(a\right)\right|\rho\left(D,a\right)$. $\blacksquare$

## 11.3-19

设 $D\subset\mathbb{C}$ 是以若当闭曲线为边界的单连通区域. 若 $f$ 和 $g$ 都是 $D$ 上的全纯函数而且满足: (i) $f$ 和 $g$ 均可连续延拓到边界 $\partial{D}$; (ii) $f$ 和 $g$ 均是 $D$ 到某一区域的共形等价映射; (iii) 存在三个不同的点 $z_{1},z_{2},z_{3}\in\partial{D}$ 使得 $f\left(z_{j}\right)=g\left(z_{j}\right)$, $j=1,2,3$. 证明: $f$ 和 $g$ 在 $D$ 上恒等并举例说明上述条件 (iii) 中的三个点不能减少成两个点.

### 解答 11.3-19

因 $f,g$ 共形等价且连续延拓到边界, 它们把 $\partial{D}$ 同胚地映成 $f\left(\partial{D}\right)$, $g\left(\partial{D}\right)$. 考虑 $h=g\circ{f}^{-1}:f\left(D\right)\to{g}\left(D\right)$ 共形等价, 它连续延拓到 $\overline{f\left(D\right)}$ 的边界. 在 $f\left(\partial{D}\right)$ 的三个点 $f\left(z_{1}\right),f\left(z_{2}\right),f\left(z_{3}\right)$ 处,

$$
h\left(f\left(z_{j}\right)\right)=g\left(f^{-1}\left(f\left(z_{j}\right)\right)\right)=g\left(z_{j}\right)=f\left(z_{j}\right),
$$

即 $h$ 在 $f\left(\partial{D}\right)$ 的三个不同点处保持不动.

$f\left(D\right)$ 也是以若当闭曲线为边界的区域. 取共形等价 $\Psi:f\left(D\right)\to\mathbb{D}$, 则 $\widetilde{h}=\Psi\circ{h}\circ\Psi^{-1}:\mathbb{D}\to\mathbb{D}$ 是全纯自同构, 且它在 $\partial\mathbb{D}$ 的三个不同点 $\Psi\left(f\left(z_{1}\right)\right),\Psi\left(f\left(z_{2}\right)\right),\Psi\left(f\left(z_{3}\right)\right)$ 处等于恒同. $\mathbb{D}$ 的自同构都是莫比乌斯变换, 而莫比乌斯变换由三对对应点唯一确定, 故 $\widetilde{h}=\text{id}$, 从而 $h=\text{id}$, $g=f$.

反例 (两点不够): 取 $D=\mathbb{D}$, $f\left(z\right)=z$, $g\left(z\right)=\phi_{a}\left(z\right)=\frac{z-a}{1-az}$, 其中 $0<{}a<1$ 为实数. 二者都是 $\mathbb{D}$ 的自同构且连续延拓到边界. 在 $z=1$ 处 $\phi_{a}\left(1\right)=1=f\left(1\right)$, 在 $z=-1$ 处 $\phi_{a}\left(-1\right)=-1=f\left(-1\right)$, 即 $f,g$ 在两个边界点相等; 但 $a\ne0$ 时 $f\ne{g}$. 故三个点不能减少为两个点. $\blacksquare$

## 12.3-1

寻找将区域 $\left\{0<\operatorname{Im}z<\pi\right\}\setminus\left\{x+\frac{\pi}{2}i:x\le0\right\}$ 映成开单位圆盘的共形等价映射.

### 解答 12.3-1

记 $D=\left\{z:0<\operatorname{Im}z<\pi\right\}\setminus\left\{x+\frac{\pi}{2}i:x\le0\right\}$.

第一步 $w=e^{z}$: 把水平带 $\left\{0<\operatorname{Im}z<\pi\right\}$ 映成上半平面 $\mathbb{H}=\left\{\operatorname{Im}w>0\right\}$; 射线 $z=x+\frac{\pi}{2}i$ ($x\le0$) 映成 $w=e^{x}e^{i\pi/2}=ie^{x}$, $x\le0$, 即虚轴线段 $\left\{iy:0<{}y\le1\right\}$. 故 $w=e^{z}$ 把 $D$ 映成 $D_{1}:=\mathbb{H}\setminus\left(0,i\right]$.

第二步 $u=w^{2}$: 把 $\mathbb{H}$ 映成 $\mathbb{C}\setminus\left[0,+\infty\right)$, 而线段 $\left(0,i\right]$ 映成 $\left\{u=-y^{2}:0<{}y\le1\right\}=\left[-1,0\right)$. 故 $u$ 把 $D_{1}$ 映成 $D_{2}:=\mathbb{C}\setminus\left[-1,+\infty\right)$.

第三步 $t=\sqrt{u+1}$ (在 $\mathbb{C}\setminus\left[0,+\infty\right)$ 上取主分支): 因 $u+1\in\mathbb{C}\setminus\left[0,+\infty\right)$, 主平方根把 $\mathbb{C}\setminus\left[0,+\infty\right)$ 映成右半平面 $\left\{\operatorname{Re}t>0\right\}$.

第四步莫比乌斯 $s\mapsto\frac{s-1}{s+1}$ 把右半平面映成开单位圆盘. 综上, 所求映射为

$$
F\left(z\right)=\frac{\sqrt{e^{2z}+1}-1}{\sqrt{e^{2z}+1}+1},
$$

其中根式取主分支 (由上述构造, $e^{2z}+1\in\mathbb{C}\setminus\left[0,+\infty\right)$, 分支良定义). $\blacksquare$

## 12.3-2

寻找共形等价映射将圆周 $\left\{\left|z\right|=1\right\}$ 和圆周 $\left\{\left|z-1\right|=\frac{5}{2}\right\}$ 所围成的区域映成标准圆环 (即内外边界为同心圆).

### 解答 12.3-2

两圆 $C_{1}:\left|z\right|=1$ 与 $C_{2}:\left|z-1\right|=\frac{5}{2}$ 不相交 (圆心都在实轴), $C_{1}$ 含于 $C_{2}$ 的内区域, 围成区域 $D=\left\{1<\left|z\right|<3.5\,\text{近似的环形}\right\}$ (即 $\left|z\right|>1$ 且 $\left|z-1\right|<2.5$).

用分式线性变换 $T\left(z\right)=\frac{z-\alpha}{z-\beta}$ ($\alpha,\beta\in\mathbb{R}$) 使两圆映成以原点为圆心的同心圆, 即要求 $\frac{\left|z-\alpha\right|}{\left|z-\beta\right|}$ 在 $C_{1}$ 与 $C_{2}$ 上分别取常数 $r_{1}$ 与 $r_{2}$.

对 $C_{1}$: $\left|z-\alpha\right|^{2}=r_{1}^{2}\left|z-\beta\right|^{2}$ 在 $\left|z\right|=1$ 上恒等, 展开得 $\alpha=r_{1}^{2}\beta$ 且 $1+\alpha^{2}=r_{1}^{2}\left(1+\beta^{2}\right)$. 对 $C_{2}$: $\left|z-\alpha\right|^{2}=r_{2}^{2}\left|z-\beta\right|^{2}$ 在 $\left|z-1\right|=\frac{5}{2}$ 上恒等, 展开得 $1-\alpha=r_{2}^{2}\left(1-\beta\right)$ 且 $\frac{25}{4}+\left(1-\alpha\right)^{2}=r_{2}^{2}\left(\frac{25}{4}+\left(1-\beta\right)^{2}\right)$. 由第一组解得 $\alpha\beta=-1$; 由第二组结合 $\beta=-\frac{1}{\alpha}$ 得 $\frac{25}{4}=\left(1-\alpha\right)\left(1-\beta\right)=\frac{1}{\alpha}-\alpha$, 即

$$
\alpha^{2}+\frac{25}{4}\alpha-1=0,\quad\alpha=\frac{-25\pm\sqrt{689}}{8}.
$$

取 $\alpha=\frac{-25+\sqrt{689}}{8}$, $\beta=-\frac{1}{\alpha}$. 则 $T$ 把 $C_{1},C_{2}$ 映成同心圆 $\left|w\right|=r_{1}$, $\left|w\right|=r_{2}$, 其中 $r_{1}^{2}=\frac{1+\alpha^{2}}{1+\beta^{2}}$, 区域 $D$ 映成圆环 $\left\{r_{1}<\left|w\right|<{}r_{2}\right\}$. 最后缩放, 所求标准圆环映射为

$$
F\left(z\right)=\frac{1}{r_{1}}\cdot\frac{z-\alpha}{z-\beta},
$$

它把 $D$ 映成标准圆环 $\left\{1<\left|w\right|<\frac{r_{2}}{r_{1}}\right\}$. $\blacksquare$

## 12.3-3

寻找将区域 $\left\{\operatorname{Re}z>0\right\}\setminus\left\{\left|z-0.5\right|\le1\right\}$ 映成开单位圆盘的共形等价映射.

### 解答 12.3-3

记 $D=\left\{\operatorname{Re}z>0\right\}\setminus\left\{\left|z-\frac{1}{2}\right|\le1\right\}$. 其边界为虚轴与圆 $\left|z-\frac{1}{2}\right|=1$, 两曲线交于 $z=\pm\frac{\sqrt{3}}{2}i$. 这是两个广义圆围成的单连通区域.

第一步: 用莫比乌斯变换把两交点映到 $0$ 与 $\infty$:

$$
w\left(z\right)=\frac{z-\frac{\sqrt{3}}{2}i}{z+\frac{\sqrt{3}}{2}i}.
$$

由**命题 4.3.7**, $w$ 把两圆映成过原点的两条直线, 区域 $D$ 映成顶点在原点的角域. 虚轴与圆 $\left|z-\frac{1}{2}\right|=1$ 在交点 $\frac{\sqrt{3}}{2}i$ 处的夹角: 圆在该点的切线方向角为 $\frac{\pi}{6}$ (圆心 $\frac12$ 到该点的半径方向角为 $\frac{2\pi}{3}$), 虚轴切线方向角为 $\frac{\pi}{2}$, 故夹角为 $\frac{\pi}{3}$. 于是 $D$ 映成角域 $\left\{0<\arg{w}<\frac{\pi}{3}\right\}$.

第二步: 幂函数 $w\mapsto{w}^{3}$ 把角域 $\left\{0<\arg{w}<\frac{\pi}{3}\right\}$ 映成上半平面 $\left\{\operatorname{Im}u>0\right\}$.

第三步: 莫比乌斯变换 $u\mapsto\frac{u-i}{u+i}$ 把上半平面映成开单位圆盘. 故所求映射为

$$
F\left(z\right)=\frac{\left(\frac{z-\frac{\sqrt{3}}{2}i}{z+\frac{\sqrt{3}}{2}i}\right)^{3}-i}{\left(\frac{z-\frac{\sqrt{3}}{2}i}{z+\frac{\sqrt{3}}{2}i}\right)^{3}+i}.
$$

$\blacksquare$

## 12.3-4

寻找区域 $\left\{z\in\mathbb{C}:\operatorname{Re}z>0\,\text{且}\,\arg{z}\in\left(0,1\right)\right\}$ 与单位圆盘之间的共形等价映射.

### 解答 12.3-4

因 $0<1<\frac{\pi}{2}$, 条件 $\arg{z}\in\left(0,1\right)$ 已保证 $\operatorname{Re}z=\rho\cos\arg{z}>0$, 故该区域即角域

$$
D=\left\{z=\rho{e}^{i\theta}:\rho>0,\,0<\theta<1\right\}.
$$

第一步: 幂函数 $z\mapsto{z}^{\pi}$ (取全纯分支) 把角域 $\left\{0<\arg{z}<1\right\}$ 映成角域 $\left\{0<\arg{u}<\pi\right\}$, 即上半平面 $\left\{\operatorname{Im}u>0\right\}$.

第二步: 莫比乌斯变换 $u\mapsto\frac{u-i}{u+i}$ 把上半平面映成开单位圆盘. 故所求映射为

$$
F\left(z\right)=\frac{z^{\pi}-i}{z^{\pi}+i},
$$

它把区域 $D$ 共形地映成开单位圆盘. $\blacksquare$

## 13.4-8

令 $D\subset\mathbb{C}$ 是由若当闭曲线 $\gamma_{1}$ 和 $\gamma_{2}$ 围成的区域, 其中 $\gamma_{1}$ 包含于 $\gamma_{2}$ 的内区域, $f$ 是闭区域 $\overline{D}$ 上的全纯函数. 证明:

$$
f\left(z\right)=f_{1}\left(z\right)+f_{2}\left(z\right),\quad\forall{z}\in{D},
$$

其中 $f_{1}$ 在 $\gamma_{1}$ 的外区域上全纯而 $f_{2}$ 在 $\gamma_{2}$ 的内区域上全纯.

### 解答 13.4-8

对 $z\in{D}$ (位于 $\gamma_{1}$ 与 $\gamma_{2}$ 之间), 由**定理 8.3.1 (柯西积分公式)** 对环形区域 ($\gamma_{1},\gamma_{2}$ 均取逆时针):

$$
f\left(z\right)=\frac{1}{2\pi{i}}\int_{\gamma_{2}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta-\frac{1}{2\pi{i}}\int_{\gamma_{1}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.
$$

定义

$$
f_{2}\left(z\right):=\frac{1}{2\pi{i}}\int_{\gamma_{2}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta,\quad
f_{1}\left(z\right):=-\frac{1}{2\pi{i}}\int_{\gamma_{1}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.
$$

对 $\gamma_{2}$ 的内区域中的点 $z$, 被积函数 $\frac{f\left(\zeta\right)}{\zeta-z}$ 关于 $z$ 在 $\gamma_{2}$ 内全纯 (参数积分), 故 $f_{2}$ 在 $\gamma_{2}$ 的内区域上全纯; 同理 $f_{1}$ 在 $\gamma_{1}$ 的外区域上全纯. 而 $z\in{D}$ 既在 $\gamma_{2}$ 的内区域又在 $\gamma_{1}$ 的外区域, 故 $f\left(z\right)=f_{1}\left(z\right)+f_{2}\left(z\right)$, $\forall{z}\in{D}$. $\blacksquare$
