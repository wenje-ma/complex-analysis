# week4

> **定义 3.2.1 (可微性)**
> 
> 称 $f$ 在 $z$ 处 $\mathbb{R}$-可微 (或 $\mathbb{C}$-可微), 若 $\Delta{f}=\ell\left(\Delta{z}\right)+o\left(\left|\Delta{z}\right|\right)$, 其中 $\ell$ 为 $\mathbb{R}$-线性 (或 $\mathbb{C}$-线性) 函数.

> **定理 3.2.4 (柯西-黎曼方程)**
> 
> $f$ 在 $z$ 处 $\mathbb{C}$-可微当且仅当 $f$ 在 $z$ 处 $\mathbb{R}$-可微且 $\frac{\partial{f}}{\partial\overline{z}}=0$; 这也等价于 $u,v$ 满足柯西-黎曼方程.

> **定义 7.2.1 (原函数)**
> 
> 区域 $D$ 上的全纯函数 $F$ 称为 $f$ 的原函数, 若 $F'=f$ 于 $D$; $f$ 有原函数当且仅当 $f$ 沿 $D$ 内任意闭道路的积分为零.

> **定理 8.2.3 (原函数存在性)**
> 
> 单连通区域上的全纯函数都有原函数, 且 $\int_{\gamma}f\,dz=F\left(\gamma\left(b\right)\right)-F\left(\gamma\left(a\right)\right)$.

> **定理 8.3.1 (柯西积分公式)**
> 
> 若 $f$ 在含若当闭曲线 $\gamma$ 及其内区域的区域上全纯, $z$ 在 $\gamma$ 的内区域, 则 $f\left(z\right)=\frac{1}{2\pi{i}}\int_{\gamma}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta$.

> **定理 8.3.3 (高阶导数公式)**
> 
> 若 $f$ 在单连通区域 $D$ 上全纯, $\gamma$ 是 $D$ 内的分段光滑若当闭曲线, $z$ 在其内区域, 则 $f$ 在 $z$ 处有任意阶导数且 $f^{\left(n\right)}\left(z\right)=\frac{n!}{2\pi{i}}\int_{\gamma}\frac{f\left(\zeta\right)}{\left(\zeta-z\right)^{n+1}}\,d\zeta,\quad{n}\ge1$. $f^{\left(n\right)}\left(z\right)=\frac{n!}{2\pi{i}}\int_{\gamma}\frac{f\left(\zeta\right)}{\left(\zeta-z\right)^{n+1}}\,d\zeta$.

> **定理 9.3.2 (恒等定理)**
> 
> 若区域 $D$ 上的全纯函数零点在 $D$ 内有聚点, 则 $f\equiv0$. ## 7.4-7 判断下述函数在区域 $\mathbb{C}\setminus\left\{0\right\}$ 上是否有原函数: (i) $\sin\frac{1}{z}$; (ii) $\cos\frac{1}{z}$; (iii) $e^{\frac{1}{z^{3}}}$. 由**定义 7.2.1 (原函数)**, $f$ 在 $\mathbb{C}\setminus\left\{0\right\}$ 有原函数当且仅当 $f$ 沿任意绕 $0$ 的闭曲线积分为零, 即 $f$ 在 $z=0$ 处 (本性奇点) 的留数为零. (i) $\sin\frac{1}{z}=\frac{1}{z}-\frac{1}{3!z^{3}}+\frac{1}{5!z^{5}}-\cdots$ 含 $z^{-1}$ 项, 系数 (留数) 为 $1\ne0$. 故 $\sin\frac1z$ 在 $\mathbb{C}\setminus\left\{0\right\}$ 上无原函数. (ii) $\cos\frac{1}{z}=1-\frac{1}{2!z^{2}}+\frac{1}{4!z^{4}}-\cdots$ 不含 $z^{-1}$ 项, 留数为 $0$. 事实上 $F\left(z\right)=z+\frac{1}{2z}-\frac{1}{72z^{3}}+\cdots$ (逐项积分) 是 $\mathbb{C}\setminus\left\{0\right\}$ 上的单值全纯函数且 $F'=\cos\frac1z$. 故 $\cos\frac1z$ 在 $\mathbb{C}\setminus\left\{0\right\}$ 上有原函数. (iii) $e^{\frac{1}{z^{3}}}=1+\frac{1}{z^{3}}+\frac{1}{2!z^{6}}+\cdots$ 只含 $z^{-3k}$ ($k\ge0$) 项, 不含 $z^{-1}$ 项, 留数为 $0$. 其逐项积分 $F\left(z\right)=z-\frac{1}{2z^{2}}+\cdots$ 是 $\mathbb{C}\setminus\left\{0\right\}$ 上的单值全纯函数且 $F'=e^{1/z^{3}}$. 故 $e^{1/z^{3}}$ 在 $\mathbb{C}\setminus\left\{0\right\}$ 上有原函数. $\blacksquare$

## 7.4-1

(i) 令 $P\left(z\right)=z^{n}+a_{n-1}z^{n-1}+\cdots+a_{0}$ 是首 $1$ 的多项式. 证明: $\max_{\left|z\right|=1}\left|P\left(z\right)\right|\ge1$. (ii) 是否存在多项式 $P\left(z\right)=\sum_{j=1}^{n}a_{j}z^{j}$ 使得 $\max_{\left|z\right|=1}\left|P\left(z\right)-\frac{1}{z^{2}}\right|<1$?

### 解答 7.4-1

(i) 由帕塞瓦尔等式 (傅里叶级数), $P\left(e^{i\theta}\right)=\sum_{j=0}^{n}a_{j}e^{ij\theta}$ ($a_{n}=1$),

$$
\frac{1}{2\pi}\int_{0}^{2\pi}\left|P\left(e^{i\theta}\right)\right|^{2}\,d\theta=\sum_{j=0}^{n}\left|a_{j}\right|^{2}\ge\left|a_{n}\right|^{2}=1.
$$

若 $\left|P\left(e^{i\theta}\right)\right|<1$ 于一切 $\theta$, 则左边 $<1$, 矛盾. 故存在 $\theta$ 使 $\left|P\left(e^{i\theta}\right)\right|\ge1$, 即 $\max_{\left|z\right|=1}\left|P\left(z\right)\right|\ge1$.

(ii) 不存在. 在 $\left|z\right|=1$ 上, $P\left(z\right)-\frac{1}{z^{2}}=\sum_{j=1}^{n}a_{j}z^{j}-z^{-2}$, 其 $z^{-2}$ 项系数为 $-1$. 由帕塞瓦尔等式,

$$
\frac{1}{2\pi}\int_{0}^{2\pi}\left|P\left(e^{i\theta}\right)-e^{-2i\theta}\right|^{2}d\theta=\sum_{j=1}^{n}\left|a_{j}\right|^{2}+1\ge1.
$$

故存在 $\theta$ 使 $\left|P\left(e^{i\theta}\right)-e^{-2i\theta}\right|\ge1$, 即 $\max_{\left|z\right|=1}\left|P\left(z\right)-\frac{1}{z^{2}}\right|\ge1$. 因此不能有 $\max<1$.

$\blacksquare$

## 7.4-3

计算积分: (i) $\int_{\left|z\right|=1}\left(z+\frac{1}{z}\right)^{2n}\frac{1}{z}\,dz$ ($n\in\mathbb{N}$); (ii) $\int_{\left|z\right|=r}\frac{1}{\left(z-a\right)\left(z-b\right)}\,dz$, $\left|a\right|<{}r<\left|b\right|$.

### 解答 7.4-3

按**定义 7.2.1 (原函数)**, (i) 展开 $\left(z+\frac{1}{z}\right)^{2n}=\sum_{k=0}^{2n}\binom{2n}{k}z^{2n-2k}$, 只有偶次幂. 乘上 $\frac1z$ 后, 其中 $z^{-1}$ 项的系数来自 $\left(z+\frac1z\right)^{2n}$ 的常数项 ($2n-2k=0$, 即 $k=n$), 系数为 $\binom{2n}{n}$. 由**定义 7.1.1 (路径积分)** 及 $\int_{\left|z\right|=1}z^{m}dz=0$ ($m\ne-1$), $\int_{\left|z\right|=1}\frac{dz}{z}=2\pi{i}$,

$$
\int_{\left|z\right|=1}\left(z+\frac{1}{z}\right)^{2n}\frac{1}{z}\,dz=2\pi{i}\binom{2n}{n}.
$$

(ii) 在 $\left\{\left|z\right|=r\right\}$ 内 ($\left|a\right|<{}r<\left|b\right|$) 只有简单极点 $z=a$, 其留数为 $\frac{1}{a-b}$. 由留数定理 (柯西积分),

$$
\int_{\left|z\right|=r}\frac{1}{\left(z-a\right)\left(z-b\right)}\,dz=2\pi{i}\cdot\frac{1}{a-b}.
$$

$\blacksquare$

## 7.4-5

试构造函数 $e^{\frac{1}{z}}$ 沿道路 $\gamma\left(t\right):=e^{4\pi{i}t}$, $t\in\left[0,1\right]$, 的原函数并用它计算积分 $\int_{\gamma}e^{\frac{1}{z}}\,dz$.

### 解答 7.4-5

$e^{\frac1z}=\sum_{n=0}^{+\infty}\frac{1}{n!}\frac{1}{z^{n}}$ (洛朗展开, $z\ne0$). 它的一个原函数 (含沿道路的连续分支) 为

$$
F\left(z\right):=z+\log{z}+\sum_{n=2}^{+\infty}\frac{1}{n!}\frac{z^{1-n}}{1-n},
$$

其中 $\log{z}$ 取沿 $\gamma$ 的连续分支. 直接求导: $F'\left(z\right)=1+\frac{1}{z}+\sum_{n=2}^{+\infty}\frac{1}{n!}\frac{\left(1-n\right)z^{-n}}{1-n}=1+\frac{1}{z}+\sum_{n=2}^{+\infty}\frac{1}{n!}\frac{1}{z^{n}}=e^{\frac1z}$.

于是 $\int_{\gamma}e^{\frac1z}dz=F\left(\gamma\left(1\right)\right)-F\left(\gamma\left(0\right)\right)$ (沿 $\gamma$ 取连续分支). $\gamma$ 的参数为 $e^{4\pi{i}t}$, $t$ 从 $0$ 到 $1$, 幅角从 $0$ 增至 $4\pi$, 即绕原点 $0$ 转两圈; 因而沿 $\gamma$ 连续变动的 $\log{z}$ 增加 $2\cdot2\pi{i}=4\pi{i}$, 其余项 ($z$ 与 $\sum_{n\ge2}$ 项) 在闭道路上回到原值. 故

$$
\int_{\gamma}e^{\frac1z}\,dz=4\pi{i}.
$$

(也可由留数: $\operatorname{Res}_{0}e^{1/z}=1$, 而 $\gamma$ 绕 $0$ 的指标为 $2$, 得 $\int_{\gamma}=2\pi{i}\cdot2\cdot1=4\pi{i}$.)

$\blacksquare$

## 7.4-9

假设区域 $D\subset\mathbb{C}\setminus\left\{0\right\}$ 上有函数 $f\left(z\right)=\frac{1}{z}$ 的原函数 $F\left(z\right)$. 证明: 存在 $c\in\mathbb{C}$ 使得 $F\left(z\right)+c\in\operatorname{Ln}z$, $\forall{z}\in{D}$.

### 解答 7.4-9

$F'=\frac{1}{z}$ 于 $D$. 令 $G\left(z\right):=e^{F\left(z\right)}$, 则 $G$ 全纯于 $D$ 且

$$
G'\left(z\right)=e^{F\left(z\right)}F'\left(z\right)=\frac{e^{F\left(z\right)}}{z}=\frac{G\left(z\right)}{z}.
$$

于是 $\left(\frac{G\left(z\right)}{z}\right)'=\frac{G'\left(z\right)z-G\left(z\right)}{z^{2}}=\frac{G\left(z\right)-G\left(z\right)}{z^{2}}=0$, 故 $\frac{G\left(z\right)}{z}$ 在连通区域 $D$ 上为常数, 记 $\frac{G\left(z\right)}{z}=e^{c}$ ($c\in\mathbb{C}$). 则

$$
e^{F\left(z\right)}=e^{c}z=e^{c+\operatorname{Ln}z},
$$

故 $e^{F\left(z\right)-c-\operatorname{Ln}z}=1$, 即 $F\left(z\right)-c-\operatorname{Ln}z\in2\pi{i}\mathbb{Z}$, 从而 $F\left(z\right)-c\in\operatorname{Ln}z$. 取 $c':=-c$, 得 $F\left(z\right)+c'\in\operatorname{Ln}z$, $\forall{z}\in{D}$.

$\blacksquare$

## 8.4-2

设 $f$ 为单连通区域 $D$ 上的全纯函数而且不取零值. 证明:

(i) 存在 $D$ 上的全纯函数 $g$ 使得 $e^{g\left(z\right)}=f\left(z\right)$, $\forall{z}\in{D}$;

(ii) 对任意的正整数 $q\ge1$, 都存在 $D$ 上的全纯函数 $g_{q}$ 使得 $\left(g_{q}\left(z\right)\right)^{q}=f\left(z\right)$, $\forall{z}\in{D}$.

### 解答 8.4-2

(i) 因 $f$ 在 $D$ 上全纯且不取零值, $\frac{f'\left(z\right)}{f\left(z\right)}$ 在 $D$ 上全纯. 由 $D$ 单连通及**定理 8.2.3 (原函数存在性)**, $\frac{f'}{f}$ 在 $D$ 上有原函数 $g_{0}$, 即 $g_{0}'=\frac{f'}{f}$. 考虑 $F\left(z\right)=e^{-g_{0}\left(z\right)}f\left(z\right)$, 则

$$
F'=e^{-g_{0}}f'-g_{0}'e^{-g_{0}}f=e^{-g_{0}}\left(f'-\frac{f'}{f}f\right)=0,
$$

故 $F$ 在 $D$ 上恒为常数 $c$. 又 $F\ne0$, 取 $w_{0}\in\mathbb{C}$ 使 $e^{w_{0}}=c$, 令 $g=g_{0}+w_{0}$, 则

$$
e^{g\left(z\right)}=e^{g_{0}\left(z\right)}e^{w_{0}}=e^{g_{0}\left(z\right)}c=f\left(z\right),\quad\forall{z}\in{D}.
$$

(ii) 由 (i) 取全纯 $g$ 使 $e^{g\left(z\right)}=f\left(z\right)$. 令 $g_{q}\left(z\right)=e^{\frac{g\left(z\right)}{q}}$, 则 $g_{q}$ 在 $D$ 上全纯且

$$
\left(g_{q}\left(z\right)\right)^{q}=\left(e^{\frac{g\left(z\right)}{q}}\right)^{q}=e^{g\left(z\right)}=f\left(z\right),\quad\forall{z}\in{D}.
$$

命题得证.

$\blacksquare$

## 8.4-4

令 $f$ 是区域 $\mathbb{C}$ 上 $\mathbb{R}$-可微的函数, 且对于任意圆周 $\gamma$, 都有 $\int_{\gamma}f\left(z\right)\,dz=0$. 证明: $f$ 是 $\mathbb{C}$ 上的全纯函数.

### 解答 8.4-4

取任意 $a\in\mathbb{C}$ 及半径 $\varepsilon>0$ 的圆周 $\gamma_{\varepsilon}\left(t\right)=a+\varepsilon{e}^{it}$. 由 $f$ 在 $a$ 处 $\mathbb{R}$-可微 (**定义 3.2.1 (可微性)**), 展开

$$
f\left(z\right)=f\left(a\right)+\frac{\partial{f}}{\partial{z}}\left(a\right)\left(z-a\right)+\frac{\partial{f}}{\partial\overline{z}}\left(a\right)\left(\overline{z-a}\right)+o\left(\varepsilon\right),
$$

代入 $\int_{\gamma_{\varepsilon}}f\,dz$ 并仿照 (习题 7.4-2) 的演算, 得

$$
\int_{\left|z-a\right|=\varepsilon}f\left(z\right)\,dz=2\pi{i}\varepsilon^{2}\frac{\partial{f}}{\partial\overline{z}}\left(a\right)+o\left(\varepsilon^{2}\right).
$$

由题设左边对任意 $\varepsilon>0$ 为零, 两边除以 $\varepsilon^{2}$ 令 $\varepsilon\to0$, 得 $\frac{\partial{f}}{\partial\overline{z}}\left(a\right)=0$. 因 $a\in\mathbb{C}$ 任意, $\frac{\partial{f}}{\partial\overline{z}}\equiv0$ 在 $\mathbb{C}$ 上, 由**定理 3.2.4 (柯西-黎曼方程)**, $f$ 在 $\mathbb{C}$ 上全纯.

$\blacksquare$

## 8.4-6

已知 $\int_{0}^{\infty}e^{-x^{2}}\,dx=\frac{\sqrt{\pi}}{2}$. 计算 (菲涅尔积分)

(i) $\int_{0}^{+\infty}\cos\left(x^{2}\right)\,dx$; (ii) $\int_{0}^{+\infty}\sin\left(x^{2}\right)\,dx$; (iii) $\int_{0}^{+\infty}e^{-x^{2}}\cos\left(2bx\right)\,dx$, $b>0$.

### 解答 8.4-6

(i) 与 (ii) 合并. 考虑围道: 从 $0$ 沿实轴到 $R$, 再沿圆弧 $Re^{i\theta}$, $\theta\in\left[0,\frac{\pi}{4}\right]$, 最后沿线段 $z=te^{i\pi/4}$, $t:R\to0$ 回到 $0$. 因 $e^{iz^{2}}$ 整函数, 围道积分为零. 大圆弧上 $\left|e^{iz^{2}}\right|=e^{-\operatorname{Re}\left(iz^{2}\right)}=e^{-R^{2}\sin2\theta}$, 当 $\theta\in\left[0,\frac{\pi}{4}\right]$ 有 $\sin2\theta\ge\frac{2\theta}{\pi}$ 且 $e^{-R^{2}\sin2\theta}\to0$ 一致 ($\theta>0$), 故圆弧积分趋于 $0$. 于是令 $R\to\infty$:

$$
\int_{0}^{\infty}e^{ix^{2}}\,dx=\int_{0}^{\infty}e^{-t^{2}}e^{i\pi/4}\,dt=e^{i\pi/4}\frac{\sqrt{\pi}}{2}.
$$

取实部与虚部得

$$
\int_{0}^{+\infty}\cos\left(x^{2}\right)\,dx=\operatorname{Re}\left(e^{i\pi/4}\frac{\sqrt{\pi}}{2}\right)=\frac{\sqrt{\pi}}{2}\cdot\frac{1}{\sqrt{2}}=\frac{\sqrt{\pi}}{2\sqrt{2}},
$$

$$
\int_{0}^{+\infty}\sin\left(x^{2}\right)\,dx=\operatorname{Im}\left(e^{i\pi/4}\frac{\sqrt{\pi}}{2}\right)=\frac{\sqrt{\pi}}{2\sqrt{2}}.
$$

(iii) 记 $I\left(b\right)=\int_{0}^{\infty}e^{-x^{2}}\cos\left(2bx\right)\,dx$. 由 $\int_{-\infty}^{\infty}e^{-x^{2}}e^{2ibx}\,dx=\sqrt{\pi}e^{-b^{2}}$ (配方: $x^{2}-2ibx=\left(x-ib\right)^{2}+b^{2}$, 平移积分路径至实轴), 取实部并利用被积函数为偶函数:

$$
I\left(b\right)=\frac{1}{2}\int_{-\infty}^{\infty}e^{-x^{2}}\cos\left(2bx\right)\,dx=\frac{1}{2}\cdot\sqrt{\pi}e^{-b^{2}}=\frac{\sqrt{\pi}}{2}e^{-b^{2}}.
$$

综上, $\int_{0}^{+\infty}\cos\left(x^{2}\right)\,dx=\int_{0}^{+\infty}\sin\left(x^{2}\right)\,dx=\frac{\sqrt{\pi}}{2\sqrt{2}}$, $\int_{0}^{+\infty}e^{-x^{2}}\cos\left(2bx\right)\,dx=\frac{\sqrt{\pi}}{2}e^{-b^{2}}$.

$\blacksquare$

## 8.4-8

令 $D\subset\mathbb{C}$ 是分段光滑若当闭曲线的外区域, $f$ 为 $D$ 上的全纯函数, 而且 $\lim_{z\to\infty}f\left(z\right)=A\in\mathbb{C}$. 证明: $\forall{z}\in{D}$, $f\left(z\right)=-\frac{1}{2\pi{i}}\int_{\partial{D}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta+A$, 其中 $\partial{D}$ 为逆时针定向.

### 解答 8.4-8

固定 $z\in{D}$. 取 $R$ 充分大使 $z$ 与 $\partial{D}$ 都落在 $\left\{\left|w\right|<{}R\right\}$ 内. 记 $\Gamma_{R}$ 为逆时针圆周 $\left|\zeta\right|=R$, 则 $f$ 在 $\Gamma_{R}$ 与 $\partial{D}$ 围成的环形区域 (含边界) 上全纯. 由**定理 8.3.1 (柯西积分公式)** 对环形区域 (或分别在内外边界上应用),

$$
f\left(z\right)=\frac{1}{2\pi{i}}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta-\frac{1}{2\pi{i}}\int_{\partial{D}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.
$$

令 $R\to\infty$. 有

$$
\frac{1}{2\pi{i}}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta
=\frac{1}{2\pi{i}}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)-A}{\zeta-z}\,d\zeta+\frac{A}{2\pi{i}}\int_{\Gamma_{R}}\frac{d\zeta}{\zeta-z}.
$$

因 $z$ 在 $\Gamma_{R}$ 内, $\int_{\Gamma_{R}}\frac{d\zeta}{\zeta-z}=2\pi{i}$; 而 $\left|\zeta\right|=R$ 上 $\frac{1}{\left|\zeta-z\right|}\le\frac{C}{R}$, 且 $f\left(\zeta\right)\to{A}$ 给出 $\sup_{\left|\zeta\right|=R}\left|f\left(\zeta\right)-A\right|\to0$, 故第一项积分 $\to0$. 因此 $\frac{1}{2\pi{i}}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta\to{A}$. 令 $R\to\infty$ 得

$$
f\left(z\right)=A-\frac{1}{2\pi{i}}\int_{\partial{D}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta,
$$

即 $f\left(z\right)=-\frac{1}{2\pi{i}}\int_{\partial{D}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta+A$.

$\blacksquare$

## 8.4-10

(泰勒展开与积分余项) 令 $D\subset\mathbb{C}$ 是区域而 $f$ 为 $D$ 上的全纯函数. 证明: 对于任意 $z_{0},z_{1}\in{D}$ 和 $D$ 上连接 $z_{0}$ 和 $z_{1}$ 的光滑道路 $\gamma$ (即 $\gamma\left(0\right)=z_{0}$ 和 $\gamma\left(1\right)=z_{1}$), 都有

$$
f\left(z_{1}\right)=f\left(z_{0}\right)+\sum_{k=1}^{n}\frac{f^{\left(k\right)}\left(z_{0}\right)}{k!}\left(z_{1}-z_{0}\right)^{k}+\frac{1}{n!}\int_{\gamma}\left(z_{1}-\zeta\right)^{n}f^{\left(n+1\right)}\left(\zeta\right)\,d\zeta,\quad\forall{n}\in\mathbb{N}.
$$

### 解答 8.4-10

对 $n$ 归纳. 当 $n=0$, 由**定理 8.2.3 (原函数存在性)** 及 $f'$ 的原函数为 $f$:

$$
f\left(z_{1}\right)=f\left(z_{0}\right)+\int_{\gamma}f'\left(\zeta\right)\,d\zeta,
$$

即命题对 $n=0$ 成立.

假设命题对 $n-1$ 成立, 记

$$
R_{n-1}=\frac{1}{\left(n-1\right)!}\int_{\gamma}\left(z_{1}-\zeta\right)^{n-1}f^{\left(n\right)}\left(\zeta\right)\,d\zeta.
$$

对 $R_{n-1}$ 分部积分 (利用 $df^{\left(n\right)}=f^{\left(n+1\right)}d\zeta$ 与 $d\left(z_{1}-\zeta\right)^{n-1}=-\left(n-1\right)\left(z_{1}-\zeta\right)^{n-2}d\zeta$):

$$
\int_{\gamma}\left(z_{1}-\zeta\right)^{n-1}f^{\left(n\right)}\left(\zeta\right)\,d\zeta
=\left[\left(z_{1}-\zeta\right)^{n-1}f^{\left(n\right)}\left(\zeta\right)\right]_{\gamma\left(0\right)}^{\gamma\left(1\right)}
-\int_{\gamma}f^{\left(n\right)}\left(\zeta\right)\,d\left[\left(z_{1}-\zeta\right)^{n-1}\right]
$$

$$
=-\left(z_{1}-z_{0}\right)^{n-1}f^{\left(n\right)}\left(z_{0}\right)
+\left(n-1\right)\int_{\gamma}\left(z_{1}-\zeta\right)^{n-2}f^{\left(n\right)}\left(\zeta\right)\,d\zeta,
$$

其中边界项在 $\zeta=z_{1}$ 处因 $\left(z_{1}-z_{1}\right)^{n-1}=0$ ($n\ge1$) 消失. 于是

$$
R_{n-1}=-\frac{f^{\left(n\right)}\left(z_{0}\right)}{\left(n-1\right)!}\left(z_{1}-z_{0}\right)^{n-1}+R_{n-2}.
$$

回代归纳假设, 得

$$
f\left(z_{1}\right)=f\left(z_{0}\right)+\sum_{k=1}^{n-1}\frac{f^{\left(k\right)}\left(z_{0}\right)}{k!}\left(z_{1}-z_{0}\right)^{k}+R_{n-1}.
$$

由上面递推 $R_{n-1}=R_{n-2}-\frac{f^{\left(n\right)}\left(z_{0}\right)}{\left(n-1\right)!}\left(z_{1}-z_{0}\right)^{n-1}$, 重复 $n$ 次把积分余项逐项抵消, 最终得到

$$
f\left(z_{1}\right)=f\left(z_{0}\right)+\sum_{k=1}^{n}\frac{f^{\left(k\right)}\left(z_{0}\right)}{k!}\left(z_{1}-z_{0}\right)^{k}+R_{n},
$$

其中 $R_{n}=\frac{1}{n!}\int_{\gamma}\left(z_{1}-\zeta\right)^{n}f^{\left(n+1\right)}\left(\zeta\right)\,d\zeta$. 归纳完成.

$\blacksquare$
