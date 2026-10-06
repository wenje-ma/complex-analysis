# 作业 4

> **定义 4.1.2** (共形)<br>称 $f$ 在 $z$ 处共形, 若 $f$ 在 $z$ 的某邻域上全纯、单叶且 $f'(z)\ne0$.

> **定理 4.1.5**<br>$f$ 在 $z$ 处共形当且仅当 $f$ 在 $z$ 处 $\mathbb{C}$-可微且 $f'(z)\ne0$.

> **定义 4.2.1** (莫比乌斯变换)<br>形如 $$f(z)=\frac{az+b}{cz+d}$$ (其中 $a,b,c,d\in\mathbb{C}$ 且 $ad-bc\ne0$) 的函数称为莫比乌斯变换 (或分式线性变换), 它是扩充复平面到自身的双射, 逆变换也是莫比乌斯变换.

> **定理 4.3.4** (保圆性)<br>莫比乌斯变换把扩充复平面上的圆 (广义圆, 即圆或直线) 映成扩充复平面上的圆, 并保持切角.

> **定义 4.4.1** (单叶)<br>称 $f$ 在区域 $D$ 上单叶, 若 $f$ 在 $D$ 上是单射.

> **定理 4.4.2**<br>若 $f$ 在 $z_{0}$ 处全纯且 $f'(z_{0})=0$, 则 $f$ 在 $z_{0}$ 的任意邻域上都不是单叶的.

### 习题一

(习题 4.5-1) 证明: 任意一个莫比乌斯变换 $\lambda$ 在扩充复平面上至少有一个不动点, 即至少存在一个 $z_{0}\in\hat{\mathbb{C}}$ 使得 $\lambda(z_{0})=z_{0}$; 若它有三个不动点, 那么它只能是恒同映射.

### 解答 习题一

设 $\lambda(z)=\frac{az+b}{cz+d}$, $ad-bc\ne0$. 不动点 $z$ 满足 $\frac{az+b}{cz+d}=z$, 即

$$
cz^{2}+(d-a)z-b=0.\tag{1}
$$

分两种情形.

若 $c\ne0$, 则 (1) 是真正的二次方程, 由代数基本定理它在 $\mathbb{C}$ 中至少有一个解 (计重数), 故 $\lambda$ 至少有一个有限不动点. 此时 $\lambda(\infty)=\frac{a}{c}\in\mathbb{C}$, $\infty$ 不是不动点.

若 $c=0$, 则 $ad\ne0$, $\lambda$ 是整线性变换 $\lambda(z)=\alpha z+\beta$ ($\alpha=\frac{a}{d}\ne0$, $\beta=\frac{b}{d}$), 且 $\lambda(\infty)=\infty$, 故 $\infty$ 是不动点. 若 $\alpha\ne1$, 还有有限不动点 $z=\frac{\beta}{1-\alpha}$; 若 $\alpha=1$, 则 $\lambda(z)=z+\beta$ 为平移 ($\beta\ne0$ 时仅 $\infty$ 为不动点; $\beta=0$ 时即恒同映射).

综上, 任意莫比乌斯变换在扩充复平面上至少有一个不动点.

若 $\lambda$ 有三个不动点: 若 $c\ne0$, 有限不动点至多两个 (二次方程 (1) 至多两个解, 除非恒为零, 但 $c\ne0$), 而 $\infty$ 又不是不动点, 矛盾. 故 $c=0$, $\lambda(z)=\alpha z+\beta$. 此时有限不动点至多一个 ($\alpha\ne1$) 或无 ($\alpha=1,\beta\ne0$), 要凑齐三个不动点只能是 $\alpha=1$, $\beta=0$, 即 $\lambda$ 为恒同映射. $\blacksquare$

### 习题二

(习题 4.5-3) 描述半平面 $\{z\in\mathbb{C}:\operatorname{Re}z<1\}$ 在下述莫比乌斯变换下的像:

(i) $z\mapsto(1+i)z+1$; (ii) $z\mapsto\frac{z}{z-2}$; (iii) $z\mapsto\frac{4z}{z+1}$.

### 解答 习题二

边界 $\operatorname{Re}z=1$ (直线 $x=1$) 由**定理 4.3.4 (保圆性)** 被莫比乌斯变换映成广义圆, 半平面映成的区域以该广义圆为边界; 用一点确定所在侧.

(i) 对 $\lambda(z)=(1+i)z+1$, 取边界点 $z=1+iy$: $\lambda(1+iy)=(1+i)(1+iy)+1=(2-y)+i(1+y)$. 令 $u=2-y$, $v=1+y$, 消去 $y$ 得 $u+v=3$, 故边界映成直线 $u+v=3$. 取内点 $z=0\in\{\operatorname{Re}z<1\}$, $\lambda(0)=1$, $1+0=1<3$. 故像集为

$$
\{w:\operatorname{Re}w+\operatorname{Im}w<3\}.
$$

(ii) 对 $\lambda(z)=\frac{z}{z-2}$, 极点 $z=2$ 不在边界 $x=1$ 上, 故边界映成圆. $\lambda(\infty)=1$, $\lambda(1)=-1$, $\lambda(1+i)=\frac{1+i}{-1+i}=-i$, 故边界映成过 $1,-1,-i$ 的圆, 即单位圆 $|w|=1$. 取 $z=0$: $\lambda(0)=0$, $|0|=0<1$. 故像集为开单位圆盘

$$
\{w:|w|<1\}.
$$

(iii) 对 $\lambda(z)=\frac{4z}{z+1}$, 极点 $z=-1$ 不在边界 $x=1$ 上, 故边界映成圆. $\lambda(\infty)=4$, $\lambda(1)=2$, $\lambda(1+i)=\frac{4(1+i)}{2+i}=\frac{12+4i}{5}$, 故边界映成过 $4,2,\frac{12+4i}{5}$ 的圆. 设圆为 $x^{2}+y^{2}+ax+by+c=0$, 代入 $(4,0),(2,0),(2.4,0.8)$ 得 $a=-6$, $b=0$, $c=8$, 即 $(x-3)^{2}+y^{2}=1$, 圆心 $3$ 半径 $1$. 取 $z=0$: $\lambda(0)=0$, $|0-3|=3>1$, 在圆外; 又 $-1\in\{\operatorname{Re}z<1\}$ 且 $\lambda(-1)=\infty$. 故像集为圆外区域

$$
\{w:|w-3|>1\}\cup\{\infty\}.
$$

$\blacksquare$

### 习题三

(习题 4.5-5) 令函数 $f:\mathbb{C}\to\mathbb{C}$ 定义为 $f(z)=z^{2}-2z+2$.

(i) 找出所有 $w\in\mathbb{C}$ 使得 $f'(w)=0$;

(ii) 证明函数 $f$ 在 (i) 中的 $w$ 点的任意邻域上都不可能是单叶的;

(iii) 证明函数 $f$ 在 (i) 中的 $w$ 点处不可能具有保角性.

### 解答 习题三

(i) $f'(z)=2z-2$, 故 $f'(w)=0$ 当且仅当 $w=1$. 即唯一 $w=1$.

(ii) 因 $f'(1)=0$, 由**定理 4.4.2**, $f$ 在 $1$ 的任意邻域上都不是单叶的. (更直接地, $f(z)=(z-1)^{2}+1$, 对任意 $\delta\ne0$ 有 $f(1+\delta)=f(1-\delta)$, 而 $1+\delta\ne1-\delta$, 故任一含 $1$ 的邻域内都不单叶.)

(iii) 由**定理 4.1.5**, $f$ 在 $z$ 处共形当且仅当 $f'(z)\ne0$; 现 $f'(1)=0$, 故 $f$ 在 $1$ 处不具保角性. $\blacksquare$

### 习题四

(习题 4.5-14) 考虑莫比乌斯变换 $w(z)=\frac{az+b}{cz+d}$ 和矩阵 $M=\begin{pmatrix}a&b\\c&d\end{pmatrix}$. 证明: 向量 $\binom{z_{1}}{z_{2}}\in\mathbb{C}^{2}$ 是 $M$ 的特征向量当且仅当 $\zeta=\frac{z_{1}}{z_{2}}$ 是 $w$ 的不动点, 其中若 $z_{2}=0$, 则 $\zeta=\infty$.

### 解答 习题四

设 $\binom{z_{1}}{z_{2}}$ 非零. 若 $z_{2}\ne0$, 记 $\zeta=\frac{z_{1}}{z_{2}}$. $\binom{z_{1}}{z_{2}}$ 是 $M$ 的特征向量当且仅当存在 $\lambda$ 使得

$$
\begin{pmatrix}a&b\\c&d\end{pmatrix}\binom{z_{1}}{z_{2}}=\lambda\binom{z_{1}}{z_{2}},
$$

即 $az_{1}+bz_{2}=\lambda z_{1}$ 且 $cz_{1}+dz_{2}=\lambda z_{2}$. 两式分别除以 $z_{2}$: $a\zeta+b=\lambda\zeta$, $c\zeta+d=\lambda$. 消去 $\lambda$:

$$
a\zeta+b=\zeta(c\zeta+d),
$$

即 $c\zeta^{2}+(d-a)\zeta-b=0$, 这正是 $w(\zeta)=\frac{a\zeta+b}{c\zeta+d}=\zeta$ 的不动点方程. 故 $z_{2}\ne0$ 时命题成立.

若 $z_{2}=0$, 则 $\zeta=\infty$, 且 $z_{1}\ne0$. $M\binom{z_{1}}{0}=\binom{az_{1}}{cz_{1}}$ 是 $\binom{z_{1}}{0}$ 的标量倍当且仅当 $c=0$. 另一方面 $w(\infty)=\lim_{z\to\infty}\frac{az+b}{cz+d}=\frac{a}{c}$ (当 $c\ne0$) 或 $\infty$ (当 $c=0$), 即 $w(\infty)=\infty$ 当且仅当 $c=0$. 故 $z_{2}=0$ 时命题也成立. $\blacksquare$

### 习题五

(习题 4.5-16) 令 $f=u(z)+iv(z)$ 在 $z_{0}\in\mathbb{C}$ 处为全纯的, 且 $f'(z_{0})\ne0$. 证明: 函数 $u$ 和 $v$ 的水平集 (取值为某给定常数的点所组成的集合) 在 $z_{0}$ 处的夹角为 $\frac{\pi}{2}$.

### 解答 习题五

$u,v$ 的水平集在 $z_{0}$ 处的切线分别垂直于梯度 $\nabla u=(u_{x},u_{y})$ 与 $\nabla v=(v_{x},v_{y})$. 由 $f$ 在 $z_{0}$ 处全纯, $u,v$ 满足柯西-黎曼方程 $u_{x}=v_{y}$, $u_{y}=-v_{x}$, 于是

$$
\nabla u\cdot\nabla v=u_{x}v_{x}+u_{y}v_{y}=u_{x}(-u_{y})+u_{y}u_{x}=0.
$$

故 $\nabla u\perp\nabla v$, 两梯度正交, 因而两水平集的切线也正交, 夹角为 $\frac{\pi}{2}$.

又因 $f'(z_{0})\ne0$, 由 $f'(z_{0})=u_{x}(z_{0})+iv_{x}(z_{0})$ 知 $\nabla u,\nabla v$ 在 $z_{0}$ 处均非零, 故两水平集在 $z_{0}$ 处都有定义良好的切线. $\blacksquare$
