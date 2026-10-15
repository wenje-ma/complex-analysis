# 作业 13

> **定理 4.3.4** (保圆性)<br>莫比乌斯变换把扩充复平面上的广义圆 (圆或直线) 映成广义圆, 并保持切角.

> **命题 4.3.7**<br>莫比乌斯变换把两交点映射到 $0$ 与 $\infty$ 时, 相交两圆被映成过原点的两条直线, 区域映成角域.

> **定义 6.2.4** (幂函数)<br>$z^{\alpha}=e^{\alpha\log z}$ 把角域 $\left\{0<\arg z<\beta\right\}$ 共形地映成角域 $\left\{0<\arg w<\alpha\beta\right\}$ (取合适的全纯分支).

> **命题 5.2.2** (指数映射带区域)<br>$z\mapsto e^{z}$ 把水平带 $\left\{0<\operatorname{Im}z<2\pi\right\}$ 共形地映成 $\mathbb{C}\setminus\left[0,+\infty\right)$.

> **命题 5.2.3**<br>莫比乌斯变换 $$z\mapsto\frac{z-\alpha}{z-\beta}$$ ($\alpha,\beta\in\mathbb{C}$) 把不含 $\alpha,\beta$ 的圆映成圆, 且 $\left|z-\alpha\right|/\left|z-\beta\right|$ 在阿波罗尼奥斯圆上为常数.

### 习题一

(习题 12.3-1) 寻找将区域 $\left\{0<\operatorname{Im}z<\pi\right\}\setminus\left\{x+\frac{\pi}{2}i:x\le0\right\}$ 映成开单位圆盘的共形等价映射.

### 解答 习题一

记 $D=\left\{z:0<\operatorname{Im}z<\pi\right\}\setminus\left\{x+\frac{\pi}{2}i:x\le0\right\}$.

第一步 $w=e^{z}$: 把水平带 $\left\{0<\operatorname{Im}z<\pi\right\}$ 映成上半平面 $\mathbb{H}=\left\{\operatorname{Im}w>0\right\}$; 射线 $z=x+\frac{\pi}{2}i$ ($x\le0$) 映成 $w=e^{x}e^{i\pi/2}=ie^{x}$, $x\le0$, 即虚轴线段 $\left\{iy:0<y\le1\right\}$. 故 $w=e^{z}$ 把 $D$ 映成 $D_{1}:=\mathbb{H}\setminus\left(0,i\right]$.

第二步 $u=w^{2}$: 把 $\mathbb{H}$ 映成 $\mathbb{C}\setminus\left[0,+\infty\right)$, 而线段 $\left(0,i\right]$ 映成 $\left\{u=-y^{2}:0<y\le1\right\}=\left[-1,0\right)$. 故 $u$ 把 $D_{1}$ 映成 $D_{2}:=\mathbb{C}\setminus\left[-1,+\infty\right)$.

第三步 $t=\sqrt{u+1}$ (在 $\mathbb{C}\setminus\left[0,+\infty\right)$ 上取主分支): 因 $u+1\in\mathbb{C}\setminus\left[0,+\infty\right)$, 主平方根把 $\mathbb{C}\setminus\left[0,+\infty\right)$ 映成右半平面 $\left\{\operatorname{Re}t>0\right\}$.

第四步莫比乌斯 $s\mapsto\frac{s-1}{s+1}$ 把右半平面映成开单位圆盘. 综上, 所求映射为

$$
F\left(z\right)=\frac{\sqrt{e^{2z}+1}-1}{\sqrt{e^{2z}+1}+1},
$$

其中根式取主分支 (由上述构造, $e^{2z}+1\in\mathbb{C}\setminus\left[0,+\infty\right)$, 分支良定义). $\blacksquare$

### 习题二

(习题 12.3-2) 寻找共形等价映射将圆周 $\left\{\left|z\right|=1\right\}$ 和圆周 $\left\{\left|z-1\right|=\frac{5}{2}\right\}$ 所围成的区域映成标准圆环 (即内外边界为同心圆).

### 解答 习题二

两圆 $C_{1}:\left|z\right|=1$ 与 $C_{2}:\left|z-1\right|=\frac{5}{2}$ 不相交 (圆心都在实轴), $C_{1}$ 含于 $C_{2}$ 的内区域, 围成区域 $D=\left\{1<\left|z\right|<3.5\ \text{近似的环形}\right\}$ (即 $\left|z\right|>1$ 且 $\left|z-1\right|<2.5$).

用分式线性变换 $T\left(z\right)=\frac{z-\alpha}{z-\beta}$ ($\alpha,\beta\in\mathbb{R}$) 使两圆映成以原点为圆心的同心圆, 即要求 $\frac{\left|z-\alpha\right|}{\left|z-\beta\right|}$ 在 $C_{1}$ 与 $C_{2}$ 上分别取常数 $r_{1}$ 与 $r_{2}$.

对 $C_{1}$: $\left|z-\alpha\right|^{2}=r_{1}^{2}\left|z-\beta\right|^{2}$ 在 $\left|z\right|=1$ 上恒等, 展开得 $\alpha=r_{1}^{2}\beta$ 且 $1+\alpha^{2}=r_{1}^{2}\left(1+\beta^{2}\right)$. 对 $C_{2}$: $\left|z-\alpha\right|^{2}=r_{2}^{2}\left|z-\beta\right|^{2}$ 在 $\left|z-1\right|=\frac{5}{2}$ 上恒等, 展开得 $1-\alpha=r_{2}^{2}\left(1-\beta\right)$ 且 $\frac{25}{4}+\left(1-\alpha\right)^{2}=r_{2}^{2}\left(\frac{25}{4}+\left(1-\beta\right)^{2}\right)$. 由第一组解得 $\alpha\beta=-1$; 由第二组结合 $\beta=-\frac{1}{\alpha}$ 得 $\frac{25}{4}=\left(1-\alpha\right)\left(1-\beta\right)=\frac{1}{\alpha}-\alpha$, 即

$$
\alpha^{2}+\frac{25}{4}\alpha-1=0,\quad \alpha=\frac{-25\pm\sqrt{689}}{8}.
$$

取 $\alpha=\frac{-25+\sqrt{689}}{8}$, $\beta=-\frac{1}{\alpha}$. 则 $T$ 把 $C_{1},C_{2}$ 映成同心圆 $\left|w\right|=r_{1}$, $\left|w\right|=r_{2}$, 其中 $r_{1}^{2}=\frac{1+\alpha^{2}}{1+\beta^{2}}$, 区域 $D$ 映成圆环 $\left\{r_{1}<\left|w\right|<r_{2}\right\}$. 最后缩放, 所求标准圆环映射为

$$
F\left(z\right)=\frac{1}{r_{1}}\cdot\frac{z-\alpha}{z-\beta},
$$

它把 $D$ 映成标准圆环 $\left\{1<\left|w\right|<\frac{r_{2}}{r_{1}}\right\}$. $\blacksquare$

### 习题三

(习题 12.3-3) 寻找将区域 $\left\{\operatorname{Re}z>0\right\}\setminus\left\{\left|z-0.5\right|\le1\right\}$ 映成开单位圆盘的共形等价映射.

### 解答 习题三

记 $D=\left\{\operatorname{Re}z>0\right\}\setminus\left\{\left|z-\frac{1}{2}\right|\le1\right\}$. 其边界为虚轴与圆 $\left|z-\frac{1}{2}\right|=1$, 两曲线交于 $z=\pm\frac{\sqrt{3}}{2}i$. 这是两个广义圆围成的单连通区域.

第一步: 用莫比乌斯变换把两交点映到 $0$ 与 $\infty$:

$$
w\left(z\right)=\frac{z-\frac{\sqrt{3}}{2}i}{z+\frac{\sqrt{3}}{2}i}.
$$

由**命题 4.3.7**, $w$ 把两圆映成过原点的两条直线, 区域 $D$ 映成顶点在原点的角域. 虚轴与圆 $\left|z-\frac{1}{2}\right|=1$ 在交点 $\frac{\sqrt{3}}{2}i$ 处的夹角: 圆在该点的切线方向角为 $\frac{\pi}{6}$ (圆心 $\frac12$ 到该点的半径方向角为 $\frac{2\pi}{3}$), 虚轴切线方向角为 $\frac{\pi}{2}$, 故夹角为 $\frac{\pi}{3}$. 于是 $D$ 映成角域 $\left\{0<\arg w<\frac{\pi}{3}\right\}$.

第二步: 幂函数 $w\mapsto w^{3}$ 把角域 $\left\{0<\arg w<\frac{\pi}{3}\right\}$ 映成上半平面 $\left\{\operatorname{Im}u>0\right\}$.

第三步: 莫比乌斯变换 $u\mapsto\frac{u-i}{u+i}$ 把上半平面映成开单位圆盘. 故所求映射为

$$
F\left(z\right)=\frac{\left(\frac{z-\frac{\sqrt{3}}{2}i}{z+\frac{\sqrt{3}}{2}i}\right)^{3}-i}{\left(\frac{z-\frac{\sqrt{3}}{2}i}{z+\frac{\sqrt{3}}{2}i}\right)^{3}+i}.
$$

$\blacksquare$

### 习题四

(习题 12.3-4) 寻找区域 $\left\{z\in\mathbb{C}:\operatorname{Re}z>0\ \text{且}\ \arg z\in\left(0,1\right)\right\}$ 与单位圆盘之间的共形等价映射.

### 解答 习题四

因 $0<1<\frac{\pi}{2}$, 条件 $\arg z\in\left(0,1\right)$ 已保证 $\operatorname{Re}z=\rho\cos\arg z>0$, 故该区域即角域

$$
D=\left\{z=\rho e^{i\theta}:\rho>0,\ 0<\theta<1\right\}.
$$

第一步: 幂函数 $z\mapsto z^{\pi}$ (取全纯分支) 把角域 $\left\{0<\arg z<1\right\}$ 映成角域 $\left\{0<\arg u<\pi\right\}$, 即上半平面 $\left\{\operatorname{Im}u>0\right\}$.

第二步: 莫比乌斯变换 $u\mapsto\frac{u-i}{u+i}$ 把上半平面映成开单位圆盘. 故所求映射为

$$
F\left(z\right)=\frac{z^{\pi}-i}{z^{\pi}+i},
$$

它把区域 $D$ 共形地映成开单位圆盘. $\blacksquare$
