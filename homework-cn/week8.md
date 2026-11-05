# week8

> **定理 8.3.1 (柯西积分公式)**
> 
> 若 $f$ 在含若当闭曲线 $\gamma$ 及其内区域的区域上全纯, $z$ 在 $\gamma$ 的内区域, 则

> **定理 8.3.2 (高阶导数公式)**
> 
> 若 $f$ 在单连通区域 $D$ 上全纯, $\gamma$ 是 $D$ 内的分段光滑若当闭曲线, $z$ 在其内区域, 则 $f$ 在 $z$ 处有任意阶导数且

> **定理 10.1.1 (最大模原理)**
> 
> 若区域 $D$ 上的全纯函数 $f$ 的模 $\left|f\right|$ 在 $z_{0}\in{D}$ 处有局部极大值, 则 $f$ 在 $D$ 上为常值.

> **定义 13.1.3 (洛朗级数)**
> 
> $f$ 在圆环 $A\left(a;r;R\right)$ 上的洛朗级数为

$$
\sum_{n=-\infty}^{+\infty}c_{n}\left(z-a\right)^{n},
$$
其中正则部 $\sum_{n\ge0}c_{n}\left(z-a\right)^{n}$, 主部 $\sum_{n<0}c_{n}\left(z-a\right)^{n}$.

> **定义 13.2.2 (孤立奇点分类)**
> 
> $a$ 是 $f$ 的可去奇点若主部系数全为 $0$; 是 $m$-阶极点若 $c_{-m}\ne0$ 且 $n<-m$ 时 $c_{n}=0$; 是本性奇点若主部有无穷多项.

> **定理 13.2.4 (黎曼可去奇点定理)**
> 
> $a$ 是 $f$ 的可去奇点当且仅当 $f$ 在 $a$ 的去心邻域上有界.

> **定理 13.2.5**
> 
> $a$ 是 $f$ 的可去奇点当且仅当 $\lim_{z\to{a}}f\left(z\right)$ 存在且有限.

$$
\operatorname{Res}_{\infty}f=-\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right).
$$

> **定义 14.1.1 (留数)**
> 
> $f$ 在孤立奇点 $a$ 的留数 $\operatorname{Res}_{a}f$ 等于其洛朗展开中 $\frac{1}{z-a}$ 项的系数 $c_{-1}$.

$$
f\left(a\right)=\frac{1}{2\pi{i}}\oint_{\left|z-a\right|=r}\frac{f\left(z\right)}{z-a}\,dz.
$$
$$
\int_{0}^{+\infty}\frac{x^{\alpha-1}}{x^{2}+a^{2}}\,dx=\frac{\pi{a}^{\alpha-2}}{2\sin\frac{\pi\alpha}{2}}.
$$

> **定理 14.1.3 (留数定理)**
> 
> 若 $f$ 在区域 $D$ 上除有限个孤立奇点外全纯, $\gamma$ 是 $D$ 内的若当闭曲线且这些奇点都在 $\gamma$ 内, 则

$$
\int_{\gamma}f\,dz=2\pi{i}\sum\operatorname{Res}f.
$$

$$
\int_{\gamma}f\,dz=2\pi{i}\sum\operatorname{Res}f.
$$

## 13.4-18

令 $f$ 是区域 $D$ 上的全纯函数, $\gamma$ 是 $D$ 上的若当闭曲线且 $\gamma$ 的内区域全都包含在 $D$ 中. 证明: 对于 $\gamma$ 内区域中的任意一点 $z$, 都存在 $\gamma$ 上的一点 $w$ 使得

$$
\left|\frac{f\left(z\right)-f\left(w\right)}{z-w}\right|\ge\left|f'\left(z\right)\right|.
$$

### 解答 13.4-18

记 $G$ 为 $\gamma$ 的内区域, 固定 $z\in{G}$. 定义

$$
g\left(w\right)=\frac{f\left(w\right)-f\left(z\right)}{w-z},\quad{w}\in{G}\setminus\left\{z\right\}.
$$

因 $f$ 在 $G$ 上全纯, $z$ 是 $g$ 的可去奇点, 且 $g\left(z\right)=f'\left(z\right)$; 故 $g$ 在 $\overline{G}$ 上全纯 (连续延拓到 $\partial{G}=\gamma$).

由**定理 10.1.1 (最大模原理)**, $\left|g\right|$ 在紧闭区域 $\overline{G}$ 上的最大值在边界 $\gamma$ 上取到, 特别地

$$
\left|g\left(z\right)\right|=\left|f'\left(z\right)\right|\le\max_{w\in\gamma}\left|g\left(w\right)\right|=\max_{w\in\gamma}\left|\frac{f\left(w\right)-f\left(z\right)}{w-z}\right|.
$$

因此存在 $w\in\gamma$ 使得

$$
\left|\frac{f\left(w\right)-f\left(z\right)}{w-z}\right|\ge\left|f'\left(z\right)\right|,
$$

即 $\left|\frac{f\left(z\right)-f\left(w\right)}{z-w}\right|\ge\left|f'\left(z\right)\right|$. $\blacksquare$

## 13.4-1

令 $f$ 是区域 $\mathbb{C}\setminus\left\{0\right\}$ 上的全纯函数而且 $\left|f\left(z\right)\right|\le\frac{\left|z\right|+1}{\left|z\right|}$, $\forall{z}\in\mathbb{C}\setminus\left\{0\right\}$. 证明: $f$ 是常值函数.

### 解答 13.4-1

由 $\left|f\left(z\right)\right|\le1+\frac{1}{\left|z\right|}$, 当 $z\to0$ 时 $\left|zf\left(z\right)\right|\le\left|z\right|+1\to1$, 故 $zf\left(z\right)$ 在 $0$ 的去心邻域有界. 由**定理 13.2.4 (黎曼可去奇点定理)**, $0$ 是 $zf\left(z\right)$ 的可去奇点, 从而 $f$ 在 $0$ 处至多有一阶极点; 又 $\left|f\left(z\right)\right|\le1+\frac{1}{\left|z\right|}$ 在 $0$ 附近给出 $\left|f\left(z\right)\right|\le\frac{C}{\left|z\right|}$, 结合 $0$ 是 $f$ 的孤立奇点, $f$ 在 $0$ 处为可去奇点, 延拓为整函数.

于是 $f$ 是整函数且 $\left|f\left(z\right)\right|\le1+\frac{1}{\left|z\right|}\le2$ ($\left|z\right|\ge1$), 即 $f$ 有界. 由刘维尔定理, $f$ 是常值函数. $\blacksquare$

## 13.4-2

寻找下述函数的有限孤立奇点并判断它们的类型: (i) $\frac{1-\cos{z}}{\sin^{2}z}$; (ii) $e^{\cot\frac{\pi}{z}}$; (iii) $\frac{z+1}{\sin^{2}\left(\pi{z}\right)}$; (iv) $\frac{z}{1-\cos{z}}$.

### 解答 13.4-2

(i) $\sin{z}$ 的零点为 $z=k\pi$ ($k\in\mathbb{Z}$). 在 $z=2m\pi$ 处 $1-\cos{z}$ 与 $\sin^{2}z$ 都是二阶零点, 比值有限, 故为可去奇点 (值 $\lim=\frac12$); 在 $z=\left(2m+1\right)\pi$ 处 $1-\cos{z}\ne0$ 而 $\sin^{2}z$ 有二阶零点, 故为二阶极点. 即 $z=2m\pi$ 可去, $z=\left(2m+1\right)\pi$ 为二阶极点.

(ii) $\cot\frac{\pi}{z}$ 的极点为 $\frac{\pi}{z}=k\pi$, 即 $z=\frac{1}{k}$, $k\in\mathbb{Z}\setminus\left\{0\right\}$. 在 $z=\frac1k$ 处 $\cot\frac{\pi}{z}$ 有一阶极点, 故 $e^{\cot\frac{\pi}{z}}$ 在该点有本性奇点 (型如 $e^{1/\left(z-a\right)}$). $z=0$ 是这些奇点的聚点而非孤立奇点. 故有限孤立奇点为 $z=\frac1k$ ($k\ne0$), 均为本性奇点.

(iii) $\sin^{2}\left(\pi{z}\right)$ 在 $z=n$ ($n\in\mathbb{Z}$) 处有二阶零点. 当 $n\ne-1$ 时 $z+1\ne0$, 故 $z=n$ 为二阶极点; 当 $n=-1$ 时 $z+1$ 有一阶零点, 与二阶零点相抵, $z=-1$ 为一阶极点.

(iv) $1-\cos{z}$ 的零点为 $z=2m\pi$ (二阶). $z=0$ 处分子 $z$ 有一阶零点, 故 $z=0$ 为一阶极点; 当 $m\ne0$ 时 $z=2m\pi\ne0$, 分子非零, 故为二阶极点. $\blacksquare$

## 13.4-3

令 $f$ 是 $\mathbb{C}\setminus\left\{0\right\}$ 上的全纯函数, 请问下述不等式是否可能成立: $\left|f\left(z\right)\right|>{}e^{\frac{1}{\left|z\right|}}$, $\forall{z}\in\mathbb{C}\setminus\left\{0\right\}$? 请说明你的理由.

### 解答 13.4-3

不可能. 若 $\left|f\left(z\right)\right|>{}e^{1/\left|z\right|}$ 于一切 $z\ne0$, 则 $z\to0$ 时 $\left|f\left(z\right)\right|\to+\infty$, 故 $0$ 是 $f$ 的极点, 设其为 $m$-阶极点. 由**定义 13.2.2 (孤立奇点分类)**, 在 $0$ 附近 $\left|f\left(z\right)\right|\sim\frac{C}{\left|z\right|^{m}}$. 但 $e^{1/\left|z\right|}$ 的增长速度快于任何幂 $\frac{1}{\left|z\right|^{m}}$ (因 $\frac{e^{1/\left|z\right|}}{1/\left|z\right|^{m}}\to+\infty$), 故对充分小的 $\left|z\right|$ 有 $\left|f\left(z\right)\right|\le\frac{2C}{\left|z\right|^{m}}<{}e^{1/\left|z\right|}$, 矛盾于 $\left|f\left(z\right)\right|>{}e^{1/\left|z\right|}$. 故不等式不可能成立. $\blacksquare$

## 13.4-4

说明下述函数在 $\infty$ 处是否有孤立奇点并判断它的类型: (i) $e^{\sin\frac{1}{z}}$; (ii) $\frac{1}{1+z^{6}}$; (iii) $z^{7}$; (iv) $\frac{\cos{z}}{1+z^{2}}$.

### 解答 13.4-4

(i) $z\to\infty$ 时 $\frac1z\to0$, $\sin\frac1z\to0$, $e^{\sin\frac1z}\to1$. 故 $\infty$ 是 $e^{\sin\frac1z}$ 的可去奇点 (极限存在有限).

(ii) $\frac{1}{1+z^{6}}$: $z\to\infty$ 时 $\to0$. 令 $w=\frac1z$, $\frac{1}{1+z^{6}}=\frac{w^{6}}{w^{6}+1}$ 在 $w=0$ 处有六阶零点, 故 $\infty$ 是 $\frac{1}{1+z^{6}}$ 的可去奇点 (值为 $0$, 六阶零点).

(iii) $z^{7}$: $z\to\infty$ 时 $z^{7}\to\infty$, 洛朗主部为 $z^{7}$, 故 $\infty$ 是 $z^{7}$ 的七阶极点.

(iv) $\frac{\cos{z}}{1+z^{2}}$: $z\to\infty$ 时 $\cos{z}$ 振荡不收敛, $\frac{1}{1+z^{2}}\to0$, 故 $\lim_{z\to\infty}\frac{\cos{z}}{1+z^{2}}$ 不存在且无有限/无穷极限, $\infty$ 是本性奇点. $\blacksquare$

## 13.4-10

令 $\Omega=G\setminus\left\{a,b\right\}$, 其中 $G$ 是有界单连通区域, $a,b\in{G}$ 且 $a\ne{b}$. 请问 $\Omega$ 到自身的全纯自同胚有多少?

### 解答 13.4-10

设 $\varphi\in\operatorname{Aut}\left(\Omega\right)$. 因 $G$ 有界, $\varphi$ 在 $\Omega$ 上有界, 由**定理 13.2.4 (黎曼可去奇点定理)**, $\varphi$ 在 $a,b$ 处均为可去奇点, 延拓为 $G$ 上的全纯函数. 又 $\varphi$ 是 $\Omega$ 到自身的双全纯映射, 延拓后 $\varphi$ 把 $G$ 映到 $G$ 且把点集 $\left\{a,b\right\}$ 映到自身, 故 $\varphi\in\operatorname{Aut}\left(G\right)$ 且 $\varphi\left(\left\{a,b\right\}\right)=\left\{a,b\right\}$.

$G$ 有界单连通且非 $\mathbb{C}$, 由黎曼映射定理 $G\cong\mathbb{D}$, 故 $\operatorname{Aut}\left(G\right)\cong\operatorname{Aut}\left(\mathbb{D}\right)$. 设 $p,q$ 为 $a,b$ 在 $\mathbb{D}$ 下的像. $\operatorname{Aut}\left(\mathbb{D}\right)$ 中把 $\left\{p,q\right\}$ 映到自身的元素只可能: 逐点固定 $p,q$, 或交换 $p,q$. 固定两个不同内点的 $\operatorname{Aut}\left(\mathbb{D}\right)$ 自同构只有恒等; 而交换 $p,q$ 的对合 (把 $p\mapsto{q}$, $q\mapsto{p}$) 恰存在一个. 故 $\Omega$ 到自身的全纯自同胚恰好有 $2$ 个. $\blacksquare$

## 13.4-12

令 $a\in\mathbb{C}$ 是函数 $f$ 的本性奇点. 证明: $\lim_{\varepsilon\to0}\varepsilon^{n}\max\left\{\left|f\left(z\right)\right|:\,\left|z-a\right|=\varepsilon\right\}=+\infty$, $\forall{n}\in\mathbb{N}$.

### 解答 13.4-12

记 $M\left(\varepsilon\right):=\max_{\left|z-a\right|=\varepsilon}\left|f\left(z\right)\right|$. 反设存在 $n\in\mathbb{N}$ 使得 $\varepsilon^{n}M\left(\varepsilon\right)$ 有上界, 即存在 $C>0$ 使 $\varepsilon^{n}M\left(\varepsilon\right)\le{C}$, 则

$$
\left|f\left(z\right)\right|\le\frac{C}{\left|z-a\right|^{n}},\quad0<\left|z-a\right|\,\text{充分小}.
$$

于是 $\left(z-a\right)^{n}f\left(z\right)$ 在 $a$ 的去心邻域有界, 由**定理 13.2.4 (黎曼可去奇点定理)**, $0$ 是 $\left(z-a\right)^{n}f$ 的可去奇点, 故 $f$ 在 $a$ 处至多是 $n$-阶极点. 但 $a$ 是 $f$ 的本性奇点, 矛盾. 故对每个 $n\in\mathbb{N}$, $\varepsilon^{n}M\left(\varepsilon\right)$ 无上界, 结合 $\varepsilon^{n}M\left(\varepsilon\right)$ 随 $\varepsilon$ 的单调行为, $\lim_{\varepsilon\to0}\varepsilon^{n}M\left(\varepsilon\right)=+\infty$. $\blacksquare$

## 13.4-17

称集合 $\mathcal{E}\subset\mathbb{C}$ 是豪斯多夫长度零的, 如果对任意 $\varepsilon>0$ 都存在它的由可数多个开圆盘组成的开覆盖, 且这些圆盘半径之和不超过 $\varepsilon$. 令 $G\subset\mathbb{C}$ 是区域, $\mathcal{E}\subset{G}$ 是豪斯多夫长度零的紧子集, $f$ 是开集 $G\setminus\mathcal{E}$ 上的全纯函数. 假设存在 $M>0$ 使得 $\left|f\left(z\right)\right|\le{M}$, $\forall{z}\in{G}\setminus\mathcal{E}$. 证明: 存在 $G$ 上的全纯函数 $g$ 使得 $g\left(z\right)=f\left(z\right)$, $\forall{z}\in{G}\setminus\mathcal{E}$.

### 解答 13.4-17

豪斯多夫长度零的紧集 $\mathcal{E}$ 有二维勒贝格测度为零. 任取 $z_{0}\in\mathcal{E}$, 取 $r>0$ 使 $\overline{B\left(z_{0},r\right)}\subset{G}$. 因 $\mathcal{E}$ 面积为零, 可取圆周 $\left|w-z_{0}\right|=r$ 与 $\mathcal{E}$ 不相交 (否则用半径总长可任意小的开圆盘覆盖 $\mathcal{E}$, 面积亦任意小). 对 $z\in{B}\left(z_{0},r\right)\setminus\mathcal{E}$, 由柯西积分公式

$$
f\left(z\right)=\frac{1}{2\pi{i}}\oint_{\left|w-z_{0}\right|=r}\frac{f\left(w\right)}{w-z}\,dw.
$$

右端对每个 $z\in{B}\left(z_{0},r\right)$ 定义了一个全纯函数 (被积函数 $w\mapsto\frac{f\left(w\right)}{w-z}$ 在圆周上连续, $\left|f\right|\le{M}$), 记为 $g_{0}$. 当 $z\in{B}\left(z_{0},r\right)\setminus\mathcal{E}$ 时 $g_{0}\left(z\right)=f\left(z\right)$, 故 $g_{0}$ 是 $f$ 在 $z_{0}$ 邻域的解析延拓, 特别 $f$ 在 $z_{0}$ 处可去.

对每个 $z_{0}\in\mathcal{E}$ 如此延拓, 与 $G\setminus\mathcal{E}$ 上原有的 $f$ 一起, 由解析延拓的唯一性拼成 $G$ 上的全纯函数 $g$, 且 $g=f$ 于 $G\setminus\mathcal{E}$. $\blacksquare$

## 14.3-1

计算下述积分: (i) $\int_{\partial{B}\left(0,4\right)}\frac{z^{2}+1}{z^{3}+2z^{2}-3z}\,dz$; (ii) $\int_{\partial{B}\left(0,\pi\right)}z^{2}\sin\frac{1}{z}\,dz$; (iv) $\int_{0}^{2\pi}\frac{1}{4\sin^{2}x+1}\,dx$.

### 解答 14.3-1

(i) $z^{3}+2z^{2}-3z=z\left(z+3\right)\left(z-1\right)$, 奇点 $0,1,-3$ 均在 $\left|z\right|<4$ 内, 都是一阶极点. 各留数:

$$
\operatorname{Res}_{0}=\frac{1}{3\cdot\left(-1\right)}=-\frac13,\quad
\operatorname{Res}_{1}=\frac{1+1}{1\cdot4\cdot1}=\frac12,\quad
\operatorname{Res}_{-3}=\frac{9+1}{\left(-3\right)\cdot1\cdot\left(-4\right)}=\frac56.
$$

和为 $-\frac13+\frac12+\frac56=1$. 由**定理 14.1.3 (留数定理)**, $\int_{\partial{B}\left(0,4\right)}=2\pi{i}\cdot1=2\pi{i}$.

(ii) $\sin\frac1z=\sum_{n=0}^{+\infty}\frac{\left(-1\right)^{n}}{\left(2n+1\right)!}\frac{1}{z^{2n+1}}$, 故 $z^{2}\sin\frac1z=\sum_{n=0}^{+\infty}\frac{\left(-1\right)^{n}}{\left(2n+1\right)!}z^{1-2n}$. 其中 $z^{-1}$ 项的系数 (留数) 来自 $1-2n=-1$, 即 $n=1$: $\operatorname{Res}_{0}z^{2}\sin\frac1z=\frac{\left(-1\right)^{1}}{3!}=-\frac16$. 故 $\int_{\partial{B}\left(0,\pi\right)}z^{2}\sin\frac1z\,dz=2\pi{i}\cdot\left(-\frac16\right)=-\frac{\pi{i}}{3}$.

(iv) 令 $z=e^{ix}$, 则 $\sin{x}=\frac{z-z^{-1}}{2i}$, $dz=iz\,dx$, 且 $\left|z\right|=1$ 逆时针. $4\sin^{2}x+1=4\cdot\left(-\frac{\left(z-z^{-1}\right)^{2}}{4}\right)+1=3-z^{2}-z^{-2}$, 于是

$$
\int_{0}^{2\pi}\frac{dx}{4\sin^{2}x+1}=\oint_{\left|z\right|=1}\frac{1}{3-z^{2}-z^{-2}}\frac{dz}{iz}=\oint_{\left|z\right|=1}\frac{z}{i\left(3z^{2}-z^{4}-1\right)}\,dz.
$$

$3z^{2}-z^{4}-1=-\left(z^{4}-3z^{2}+1\right)$, 而 $z^{4}-3z^{2}+1=0$ 给出 $z^{2}=\frac{3\pm\sqrt5}{2}$. 圆 $\left|z\right|=1$ 内只有 $z^{2}=\frac{3-\sqrt5}{2}$ 的两个根 $\pm\sqrt{\frac{3-\sqrt5}{2}}$ (另一对 $\left|z\right|>1$). 记 $a^{2}=u:=\frac{3-\sqrt5}{2}$, 在 $z=a$ 处

$$
\operatorname{Res}_{a}\frac{z}{i\left(3z^{2}-z^{4}-1\right)}=\frac{a}{i\left(-\left(4a^{3}-6a\right)\right)}=\frac{1}{i\left(-\left(4u-6\right)\right)}=\frac{1}{i\left(-\left(-2\sqrt5\right)\right)}=\frac{1}{2\sqrt5\,i},
$$

根 $-a$ 处留数相同. 两留数和为 $\frac{1}{\sqrt5\,i}$. 故

$$
\int_{0}^{2\pi}\frac{dx}{4\sin^{2}x+1}=2\pi{i}\cdot\frac{1}{\sqrt5\,i}=\frac{2\pi}{\sqrt5}.
$$

$\blacksquare$

## 14.3-2

令 $\gamma\subset\mathbb{C}$ 是一条若当闭曲线, $f$ 是 $\mathbb{C}\setminus\left\{a_{1},\ldots,a_{n}\right\}$ 上的全纯函数, 其中 $a_{1},\ldots,a_{n}$ 为 $\gamma$ 内区域的内点. 证明: $\frac{1}{2\pi{i}}\int_{\gamma}f\left(z\right)\,dz=\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right)$.

### 解答 14.3-2

$f$ 的孤立奇点为 $a_{1},\ldots,a_{n}$ (均在 $\gamma$ 内), 由**定理 14.1.3 (留数定理)**,

$$
\frac{1}{2\pi{i}}\int_{\gamma}f\left(z\right)\,dz=\sum_{j=1}^{n}\operatorname{Res}_{a_{j}}f.
$$

对全复平面上的亚纯函数 $f$ 取充分大的 $R$ 使 $\gamma$ 与全部 $a_{j}$ 都在 $\left\{\left|z\right|<{}R\right\}$ 内. 在 $\left\{\left|z\right|\le{R}\right\}$ 上用留数定理, 并把 $\infty$ 视为奇点, 得 $\sum_{j}\operatorname{Res}_{a_{j}}f+\operatorname{Res}_{\infty}f=0$. 又

$$
\operatorname{Res}_{\infty}f=-\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right),
$$

故 $\sum_{j}\operatorname{Res}_{a_{j}}f=\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right)$, 即所证. $\blacksquare$

## 14.3-3

证明: $\int_{\partial{B}\left(0,1\right)}e^{z+\frac{1}{z}}\,dz=2\pi{i}\sum_{n=0}^{+\infty}\frac{1}{n!\left(n+1\right)!}$.

### 解答 14.3-3

$e^{z+\frac1z}=e^{z}e^{\frac1z}=\left(\sum_{m=0}^{+\infty}\frac{z^{m}}{m!}\right)\left(\sum_{k=0}^{+\infty}\frac{1}{k!}\frac{1}{z^{k}}\right)$. 其中 $z^{-1}$ 项的系数满足 $m-k=-1$, 即 $m=k-1$, 故

$$
\operatorname{Res}_{0}e^{z+\frac1z}=\sum_{k=1}^{+\infty}\frac{1}{\left(k-1\right)!k!}=\sum_{n=0}^{+\infty}\frac{1}{n!\left(n+1\right)!}.
$$

由**定理 14.1.3 (留数定理)**,

$$
\int_{\partial{B}\left(0,1\right)}e^{z+\frac1z}\,dz=2\pi{i}\operatorname{Res}_{0}e^{z+\frac1z}=2\pi{i}\sum_{n=0}^{+\infty}\frac{1}{n!\left(n+1\right)!}.
$$

$\blacksquare$

## 14.3-6

计算积分 $\int_{0}^{+\infty}\frac{x^{1/n}}{x^{2}+a^{2}}\,dx$, 其中 $2\le{n}\in\mathbb{N}$, $a>0$.

### 解答 14.3-6

取 $z^{1/n}$ 的 $\operatorname{Log}$ 分支 (割正实轴), 用标准积分 $\int_{0}^{+\infty}\frac{x^{\alpha-1}}{x^{2}+a^{2}}dx=\frac{\pi{a}^{\alpha-2}}{2\sin\frac{\pi\alpha}{2}}$, 这里 $\alpha-1=\frac1n$, 即 $\alpha=1+\frac1n$. 则

$$
\int_{0}^{+\infty}\frac{x^{1/n}}{x^{2}+a^{2}}\,dx
=\frac{\pi{a}^{\frac1n-1}}{2\sin\left(\frac{\pi}{2}\left(1+\frac1n\right)\right)}
=\frac{\pi{a}^{\frac{1-n}{n}}}{2\cos\frac{\pi}{2n}}.
$$

(推导概述: 对 $f\left(z\right)=\frac{z^{1/n}}{z^{2}+a^{2}}$ 取角为 $\frac{2\pi}{n}$ 的楔形围道, 半径 $R\to\infty$, 两条边上的积分相减差因子 $e^{2\pi{i}/n}$, 加上两极点的留数, 即得上式.) $\blacksquare$

## 14.3-7

计算积分 $\int_{0}^{+\infty}\frac{1}{\sqrt{x}\left(1+x\right)}\,dx$.

### 解答 14.3-7

令 $x=t^{2}$, $t>0$, 则 $\sqrt{x}=t$, $dx=2t\,dt$:

$$
\int_{0}^{+\infty}\frac{dx}{\sqrt{x}\left(1+x\right)}=\int_{0}^{+\infty}\frac{2t\,dt}{t\left(1+t^{2}\right)}=2\int_{0}^{+\infty}\frac{dt}{1+t^{2}}=2\cdot\frac{\pi}{2}=\pi.
$$

$\blacksquare$
