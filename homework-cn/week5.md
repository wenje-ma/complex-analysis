# week5

> **定理 8.3.2 (高阶导数公式)**
> 
> 若 $f$ 在单连通区域 $D$ 上全纯, $\gamma$ 是 $D$ 内的分段光滑若当闭曲线, $z$ 在其内区域, 则 $f$ 在 $z$ 处有任意阶导数且

> **定理 9.1.3 (刘维尔定理)**
> 
> $\mathbb{C}$ 上的有界整函数必为常值函数.

> **定理 9.3.2 (恒等定理)**
> 
> 若区域 $D$ 上的全纯函数零点在 $D$ 内有聚点, 则 $f\equiv0$.

> **定理 9.3.3 (唯一性定理)**
> 
> 若区域 $D$ 上的两个全纯函数 $f,g$ 在 $D$ 内有聚点的点集上相等, 则 $f\equiv{g}$.

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
为布拉施克因子; 它是 $\mathbb{D}$ 的自同构, 满足 $\left|\phi_{a}\left(e^{i\theta}\right)\right|=1$ 且 $\phi_{a}\left(a\right)=0$.

## 9.4-6

令 $f,g$ 是 $\mathbb{D}:=\left\{z\in\mathbb{C}:\left|z\right|<1\right\}$ 上的全纯函数且不取零值. 证明: 若 $\frac{f'\left(x_{n}\right)}{f\left(x_{n}\right)}=\frac{g'\left(x_{n}\right)}{g\left(x_{n}\right)}$, 其中 $x_{n}=\frac{1}{n}$, $n=2,3,\cdots$, 则 $f=cg$, $c\in\mathbb{C}$.

### 解答 9.4-6

因 $f,g$ 在 $\mathbb{D}$ 上不取零值, $\frac{f'}{f}-\frac{g'}{g}$ 在 $\mathbb{D}$ 上全纯. 由条件它在点列 $\left\{x_{n}\right\}$ 上为零, 而 $x_{n}=\frac{1}{n}\to0\in\mathbb{D}$, 即零点在 $\mathbb{D}$ 内有聚点 $0$. 由**定理 9.3.2 (恒等定理)**, $\frac{f'}{f}-\frac{g'}{g}\equiv0$, 即 $\frac{f'}{f}=\frac{g'}{g}$ 在 $\mathbb{D}$ 上.

故 $\left(\log{f}\right)'=\left(\log{g}\right)'$ 在 $\mathbb{D}$ 上 (取任一局部对数分支), 于是 $\log{f}-\log{g}$ 在 $\mathbb{D}$ 上局部为常数; 因 $\mathbb{D}$ 连通, 存在 $c_{0}\in\mathbb{C}$ 使 $\log{f}=\log{g}+c_{0}$ 在 $\mathbb{D}$ 上. 取指数得 $f=e^{c_{0}}g$, 即 $f=cg$, $c=e^{c_{0}}$. $\blacksquare$

## 9.4-8

(波莱尔-卡拉泰奥多里不等式) 令 $f$ 是闭圆盘 $\left\{z\in\mathbb{C}:\left|z\right|\le{R}\right\}$ 上的全纯函数, $\sum_{k=0}^{\infty}a_{k}z^{k}$ 为 $f$ 在 $0$ 处的泰勒级数. 证明:

$$
\left|a_{k}\right|R^{k}\le4\max_{0\le\theta\le2\pi}\operatorname{Re}f\left(Re^{i\theta}\right)+4\left|f\left(0\right)\right|,\quad\forall{k}\in\mathbb{N}.
$$

### 解答 9.4-8

记 $A=\max_{0\le\theta\le2\pi}\operatorname{Re}f\left(Re^{i\theta}\right)$, $u=\operatorname{Re}f$. 对 $k\ge1$, 由 $f\left(Re^{i\theta}\right)=\sum_{j=0}^{\infty}a_{j}R^{j}e^{ij\theta}$ 及 $u=\operatorname{Re}f$ 的傅里叶展开, 对 $k\ge1$ 有

$$
\frac{1}{2\pi}\int_{0}^{2\pi}u\left(Re^{i\theta}\right)e^{-ik\theta}\,d\theta=\frac{1}{2}a_{k}R^{k},
$$

故 $a_{k}R^{k}=\frac{1}{\pi}\int_{0}^{2\pi}u\left(Re^{i\theta}\right)e^{-ik\theta}\,d\theta$. 令 $A_{+}=\max\left(A,0\right)$, 则 $u\left(Re^{i\theta}\right)\le{A}\le{A}_{+}$, 从而 $\left|u\right|\le2A_{+}-u$. 于是

$$
\left|a_{k}\right|R^{k}\le\frac{1}{\pi}\int_{0}^{2\pi}\left|u\left(Re^{i\theta}\right)\right|\,d\theta\le\frac{1}{\pi}\int_{0}^{2\pi}\left(2A_{+}-u\left(Re^{i\theta}\right)\right)\,d\theta=4A_{+}-2\operatorname{Re}f\left(0\right).
$$

又 $-\operatorname{Re}f\left(0\right)\le\left|\operatorname{Re}f\left(0\right)\right|\le\left|f\left(0\right)\right|$, 且 $A\ge\operatorname{Re}f\left(0\right)\ge-\left|f\left(0\right)\right|$ 保证 $4A_{+}\le4A+4\left|f\left(0\right)\right|$, 故

$$
\left|a_{k}\right|R^{k}\le4A+4\left|f\left(0\right)\right|,\quad{k}\ge1.
$$

对 $k=0$, $\left|a_{0}\right|=\left|f\left(0\right)\right|\le4A+4\left|f\left(0\right)\right|$ 显然. 命题得证. $\blacksquare$

## 9.4-10

(洛必达法则) 令 $D\subset\mathbb{C}$ 是开集, $f,g$ 为 $D$ 上的全纯函数, $a\in{D}$ 为它们的共同孤立零点. 证明:

(i) 若 $f$ 和 $g$ 均在 $a$ 处有 $m$-阶零点, 则 $\lim_{z\to{a}}\frac{f\left(z\right)}{g\left(z\right)}=\lim_{z\to{a}}\frac{f^{\left(m\right)}\left(z\right)}{g^{\left(m\right)}\left(z\right)}$;

(ii) $\lim_{z\to{a}}\frac{f\left(z\right)}{g\left(z\right)}=\lim_{z\to{a}}\frac{f'\left(z\right)}{g'\left(z\right)}$ (包括极限为 $\infty$ 的情况).

### 解答 9.4-10

(i) $f$ 在 $a$ 处有 $m$-阶零点, 故 $f\left(z\right)=\left(z-a\right)^{m}f_{1}\left(z\right)$, $f_{1}\left(a\right)\ne0$; 同理 $g\left(z\right)=\left(z-a\right)^{m}g_{1}\left(z\right)$, $g_{1}\left(a\right)\ne0$. 于是

$$
\frac{f\left(z\right)}{g\left(z\right)}=\frac{f_{1}\left(z\right)}{g_{1}\left(z\right)}\to\frac{f_{1}\left(a\right)}{g_{1}\left(a\right)}.
$$

另一方面由莱布尼茨公式, $f^{\left(m\right)}\left(a\right)=m!f_{1}\left(a\right)$, $g^{\left(m\right)}\left(a\right)=m!g_{1}\left(a\right)$, 故

$$
\lim_{z\to{a}}\frac{f^{\left(m\right)}\left(z\right)}{g^{\left(m\right)}\left(z\right)}=\frac{m!f_{1}\left(a\right)}{m!g_{1}\left(a\right)}=\frac{f_{1}\left(a\right)}{g_{1}\left(a\right)}=\lim_{z\to{a}}\frac{f\left(z\right)}{g\left(z\right)}.
$$

(ii) 设 $f$ 在 $a$ 处零点阶数为 $p$, $g$ 的零点阶数为 $q$. 若 $p>{}q$, 则 $f\left(z\right)=\left(z-a\right)^{p}f_{1}$, $g\left(z\right)=\left(z-a\right)^{q}g_{1}$, $f_{1}\left(a\right)g_{1}\left(a\right)\ne0$, 故 $\frac{f}{g}=\left(z-a\right)^{p-q}\frac{f_{1}}{g_{1}}\to0$; 而 $f'$ 零点阶 $p-1$, $g'$ 零点阶 $q-1$, $\frac{f'}{g'}\to0$, 二者相等. 若 $p<{}q$, 同理 $\frac{f}{g}\to\infty$, $\frac{f'}{g'}\to\infty$, 相等. 若 $p=q=m$, 由 (i) 应用于 $f',g'$ (均为 $m-1$ 阶零点) 得 $\lim\frac{f'}{g'}=\lim\frac{f^{\left(m\right)}}{g^{\left(m\right)}}$, 再由 (i) 得 $\lim\frac{f}{g}=\lim\frac{f^{\left(m\right)}}{g^{\left(m\right)}}$, 故二者相等. $\blacksquare$

## 9.4-13

令 $f$ 是区域 $D\subset\mathbb{C}$ 上的全纯函数. 假设对任意 $z\in{D}$ 都存在 $m,n\in\mathbb{N}\setminus\left\{0\right\}$ 使得 $\left(f\left(z\right)\right)^{m}=\left(f\left(z\right)\right)^{n}$. 证明: $f$ 在 $D$ 上是常值的.

### 解答 9.4-13

不妨设 $m>{}n$ (否则互换), 则 $\left(f\left(z\right)\right)^{m}=\left(f\left(z\right)\right)^{n}$ 即

$$
\left(f\left(z\right)\right)^{n}\left(\left(f\left(z\right)\right)^{m-n}-1\right)=0,
$$

故对每个 $z$, 或 $f\left(z\right)=0$, 或 $\left(f\left(z\right)\right)^{m-n}=1$. 后者说明 $f\left(z\right)$ 是单位根, 满足 $\left|f\left(z\right)\right|=1$. 因此

$$
f\left(D\right)\subset\left\{0\right\}\cup\left\{w\in\mathbb{C}:\left|w\right|=1\right\}.
$$

集合 $\left\{0\right\}\cup\left\{\left|w\right|=1\right\}$ 在 $\mathbb{C}$ 中没有内点. 若 $f$ 非常值, 由**定理 10.1.4 (开映射定理)**, $f\left(D\right)$ 是开集, 应有内点, 矛盾. 故 $f$ 在 $D$ 上为常值. $\blacksquare$

## 9.4-15

是否存在 $\mathbb{C}$ 上的全纯函数 $f\left(z\right)$ 满足 $\left|f\left(z\right)\right|>\left|z\right|$, $\forall{z}\in\mathbb{C}$?

### 解答 9.4-15

不存在. 反设存在. 取 $z=0$ 得 $\left|f\left(0\right)\right|>0$, 故 $f\left(0\right)\ne0$; 对 $z\ne0$, $\left|f\left(z\right)\right|>\left|z\right|>0$, 故 $f$ 在 $\mathbb{C}$ 上处处不取零值. 定义整函数

$$
g\left(z\right)=\frac{z}{f\left(z\right)},
$$

则 $g\left(0\right)=0$, 且对 $z\ne0$, $\left|g\left(z\right)\right|=\frac{\left|z\right|}{\left|f\left(z\right)\right|}<1$. 故 $\left|g\left(z\right)\right|<1$ 在 $\mathbb{C}$ 上成立, $g$ 是有界整函数. 由**定理 9.1.3 (刘维尔定理)**, $g$ 为常值; 又 $g\left(0\right)=0$, 故 $g\equiv0$, 这与 $g\left(z\right)=\frac{z}{f\left(z\right)}\ne0$ ($z\ne0$) 矛盾. 故不存在. $\blacksquare$

## 9.4-17

令 $f:\mathbb{C}\to\mathbb{D}=\left\{\left|z\right|<1\right\}$ 是 $\mathbb{C}$ 上的全纯函数且 $f\left(2\right)=\frac{2+i}{8}$, 求 $f\left(10\right)$ 的值.

### 解答 9.4-17

$f:\mathbb{C}\to\mathbb{D}$ 取值于开单位圆盘, 故 $\left|f\left(z\right)\right|<1$ 在 $\mathbb{C}$ 上成立, $f$ 是有界整函数. 由**定理 9.1.3 (刘维尔定理)**, $f$ 在 $\mathbb{C}$ 上为常值. 故

$$
f\left(10\right)=f\left(2\right)=\frac{2+i}{8}.
$$

$\blacksquare$

## 9.4-18

令 $f$ 是 $\mathbb{C}$ 上的全纯函数, 且存在 $a_{1},a_{2}\in\mathbb{C}$, $\operatorname{Im}\frac{a_{1}}{a_{2}}\ne0$, 使得 $f\left(z+a_{1}\right)=f\left(z\right)=f\left(z+a_{2}\right)$, $\forall{z}\in\mathbb{C}$. 证明: $f$ 是常值函数.

### 解答 9.4-18

$\operatorname{Im}\frac{a_{1}}{a_{2}}\ne0$ 表明 $\frac{a_{1}}{a_{2}}\notin\mathbb{R}$, 故 $a_{1},a_{2}$ 在 $\mathbb{R}$ 上线性无关. 由周期性, 平行四边形 $\Pi=\left\{sa_{1}+ta_{2}:0\le{s},t\le1\right\}$ 是 $f$ 的基本平行四边形, 它在 $\mathbb{C}$ 中有界 (紧集), 故 $\left|f\right|$ 在 $\Pi$ 上有界. 又对任意 $z\in\mathbb{C}$, 存在 $s,t\in\left[0,1\right)$ 与 $m,n\in\mathbb{Z}$ 使 $z=sa_{1}+ta_{2}+ma_{1}+na_{2}$, 由双周期性 $f\left(z\right)=f\left(sa_{1}+ta_{2}\right)$, 故 $\left|f\right|$ 在 $\mathbb{C}$ 上一致有界. $f$ 是有界整函数, 由**定理 9.1.3 (刘维尔定理)**, $f$ 为常值. $\blacksquare$

## 10.4-2

令 $f$ 和 $g$ 都是区域 $D\subset\mathbb{C}$ 上的全纯函数. 假设存在一点 $z_{0}\in{D}$ 和它的 $r$-邻域 $B\left(z_{0},r\right)\subset{D}$, $r>0$, 使得 $\left|f\left(z_{0}\right)\right|+\left|g\left(z_{0}\right)\right|\ge\left|f\left(z\right)\right|+\left|g\left(z\right)\right|$, $\forall{z}\in{B}\left(z_{0},r\right)$. 证明: $f$ 和 $g$ 均在 $D$ 上为常值.

### 解答 10.4-2

记 $M=\left|f\left(z_{0}\right)\right|+\left|g\left(z_{0}\right)\right|$. 取 $\theta_{1},\theta_{2}$ 使 $e^{i\theta_{1}}f\left(z_{0}\right)=\left|f\left(z_{0}\right)\right|$, $e^{i\theta_{2}}g\left(z_{0}\right)=\left|g\left(z_{0}\right)\right|$, 并令 $h\left(z\right)=e^{i\theta_{1}}f\left(z\right)+e^{i\theta_{2}}g\left(z\right)$. 则 $h$ 在 $D$ 上全纯, 且

$$
h\left(z_{0}\right)=\left|f\left(z_{0}\right)\right|+\left|g\left(z_{0}\right)\right|=M,
$$

而 $\left|h\left(z\right)\right|\le\left|f\left(z\right)\right|+\left|g\left(z\right)\right|\le{M}$, $\forall{z}\in{B}\left(z_{0},r\right)$. 故 $\left|h\right|$ 在 $z_{0}$ 处有局部极大值, 由**定理 10.1.1 (最大模原理)**, $h$ 在 $D$ 上为常值 $h\left(z\right)\equiv{M}'$, 其中 $\left|M'\right|=M$.

于是 $M=\left|h\left(z\right)\right|\le\left|f\left(z\right)\right|+\left|g\left(z\right)\right|\le{M}$ 对所有 $z\in{B}\left(z_{0},r\right)$ (进而 $D$) 成立, 故 $\left|f\left(z\right)\right|+\left|g\left(z\right)\right|\equiv{M}$ 且三角形等号 $\left|e^{i\theta_{1}}f\left(z\right)+e^{i\theta_{2}}g\left(z\right)\right|=\left|f\left(z\right)\right|+\left|g\left(z\right)\right|$ 处处成立. 三角形等号条件要求 $e^{i\theta_{1}}f\left(z\right)$ 与 $e^{i\theta_{2}}g\left(z\right)$ 方向相同, 故 $e^{i\left(\theta_{1}-\theta_{2}\right)}\frac{f\left(z\right)}{g\left(z\right)}\ge0$ 为实数 ($g\left(z\right)\ne0$ 处). 于是 $e^{i\left(\theta_{1}-\theta_{2}\right)}\frac{f}{g}$ 是实值亚纯函数, 取虚部为零得 (由恒等定理) $e^{i\left(\theta_{1}-\theta_{2}\right)}\frac{f}{g}\equiv{c}\in\mathbb{R}_{\ge0}$, 即 $f\equiv{c}'e^{i\theta}g$ 为 $g$ 的常数倍. 再由 $\left|f\right|+\left|g\right|\equiv{M}$ 得 $\left|g\right|\equiv\text{常数}$, 故 $g$ 常值 ($\left|g\right|$ 为常数且 $g$ 全纯, 由**定理 10.1.4 (开映射定理)** $g$ 必常值), 从而 $f$ 也常值. $\blacksquare$

## 10.4-4

令 $f$ 为有界区域 $D\subset\mathbb{C}$ 上的全纯函数且 $f$ 在闭区域 $\overline{D}$ 上是连续的. 若 $\left|f\left(z\right)\right|=\alpha$, $\forall{z}\in\partial{D}$. 证明: 要么 $f$ 为常值的要么它在 $D$ 内有零点.

### 解答 10.4-4

反设 $f$ 在 $D$ 内无零点. 若 $\alpha=0$, 则 $\left|f\right|=0$ 在 $\partial{D}$, 由最大模原理 $f\equiv0$ 于 $D$, 常值, 得证. 下设 $\alpha>0$. 由 $\left|f\right|$ 在 $\overline{D}$ 上连续, 最大模原理 (在 $\overline{D}$ 上 $\left|f\right|$ 的最大值在边界取到) 给出 $\left|f\left(z\right)\right|\le\alpha$, $\forall{z}\in{D}$.

又 $\frac{1}{f}$ 在 $D$ 上全纯 (因 $f$ 无零点) 且在 $\overline{D}$ 上连续, 边界上 $\left|\frac{1}{f}\right|=\frac{1}{\alpha}$. 同理 $\left|\frac{1}{f\left(z\right)}\right|\le\frac{1}{\alpha}$, 即 $\left|f\left(z\right)\right|\ge\alpha$, $\forall{z}\in{D}$. 故 $\left|f\left(z\right)\right|\equiv\alpha$ 于 $D$, $\left|f\right|$ 为常数; 由**定理 10.1.4 (开映射定理)**, $f$ 为常值. 因此 $f$ 要么常值, 要么在 $D$ 内有零点. $\blacksquare$

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

即 $M\left(\rho\right)\le{M}\left(r\right)^{s}M\left(R\right)^{1-s}$, 这正是 $M\left(r^{s}R^{1-s}\right)\le{M}\left(r\right)^{s}M\left(R\right)^{1-s}$. $\blacksquare$

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

而 $\left|B\left(0\right)\right|=\prod_{j=1}^{k}\left|z_{j}\right|$, 故 $\left|f\left(0\right)\right|\le{M}\prod_{j=1}^{k}\left|z_{j}\right|=\sup_{\left|z\right|<1}\left|f\left(z\right)\right|\prod_{j=1}^{k}\left|z_{j}\right|$. $\blacksquare$
