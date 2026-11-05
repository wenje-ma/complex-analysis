# week11

> **引理 18.1.1 (拼接引理)**
> 
> 区域 $D_{1},D_{2}$ 不相交且有公共边界线段 $\gamma$, $f_{1},f_{2}$ 分别在其上全纯并连续到 $\gamma$, 若 $f_{1}=f_{2}$ 于 $\gamma$, 则拼接的函数在 $D_{1}\cup\gamma\cup D_{2}$ 上全纯.

> **定理 18.1.2 (施瓦茨对称原理 I)**
> 
> $D$ 关于实轴对称, $f$ 在 $D^{+}:=D\cap\left\{\operatorname{Im}z> 0\right\}$ 全纯, 连续到 $D^{+}\cap\mathbb{R}$ 且在其上取实值, 则 $f$ 延拓为 $D$ 上全纯函数.

> **定理 18.1.3 (施瓦茨对称原理 II)**
> 
> $f$ 在 $D^{+}$ 全纯, 连续到边界线段 $I\subset\mathbb{R}$ 且在其上取实值, 则 $f$ 延拓到 $D^{+}\cup I\cup D^{-}$ 上, 其中 $D^{-}$ 是 $D^{+}$ 关于实轴的对称, 延拓满足 $f\left(z\right)=\overline{f\left(\overline z\right)}$.

> **定义 19.1.1 (伽玛函数)**
> 
> 伽玛函数由欧拉积分定义 (对实参数 $s> 0$):

$$
\Gamma\left(s\right)=\int_{0}^{+\infty}e^{-t}t^{s-1}dt,\quad s> 0.
$$

> **命题 19.1.3 (伽玛函数的函数方程)**
> 
> 若 $\operatorname{Re}z> 0$, 则 $\Gamma\left(z+1\right)=z\Gamma\left(z\right)$; 它可延拓为 $\mathbb{C}$ 上的亚纯函数, 只在 $0,-1,-2,\ldots$ 有简单极点.

> **定理 19.2.1 (反射公式)**
> 
> 伽玛函数满足反射公式

$$
\Gamma\left(z\right)\Gamma\left(1-z\right)=\frac{\pi}{\sin\pi z},\quad z\in\mathbb{C}\setminus\mathbb{Z}.
$$

> **定理 19.2.3 (魏尔斯特拉斯无穷乘积)**
> 
> 伽玛函数的倒数有魏尔斯特拉斯无穷乘积展开

$$
\frac{1}{\Gamma\left(z\right)}=ze^{\gamma z}\prod_{n=1}^{+\infty}\left(1+\frac{z}{n}\right)e^{-\frac{z}{n}},
$$
其中 $\gamma$ 为欧拉常数.

> **定理 19.2.4 (欧拉-高斯极限)**
> 
> 伽玛函数可由欧拉-高斯极限表示为

$$
\Gamma\left(z\right)=\lim_{n\to+\infty}\frac{n!\,n^{z}}{z\left(z+1\right)\cdots\left(z+n\right)}.
$$

> **定义 20.1.1 (黎曼 $\zeta$-函数)**
> 
> 黎曼 $\zeta$-函数对 $\operatorname{Re}z> 1$ 由狄利克雷级数定义

$$
\zeta\left(z\right)=\sum_{n=1}^{+\infty}\frac1{n^{z}},\quad\operatorname{Re}z> 1;
$$
由欧拉乘积
$$
\zeta\left(z\right)=\prod_{p}\left(1-p^{-z}\right)^{-1}
$$
知其无零点.

> **定理 20.1.6 (亚纯延拓)**
> 
> $\zeta$ 亚纯延拓到 $\mathbb{C}$, 只在 $z=1$ 有简单极点, 且

$$
\lim_{z\to1}\left(\zeta\left(z\right)-\frac1{z-1}\right)=\gamma
$$
(欧拉常数).

> **定理 20.2.2 (函数方程)**
> 
> 黎曼 $\zeta$-函数满足函数方程

$$
\zeta\left(z\right)=2^{z}\pi^{z-1}\sin\frac{\pi z}{2}\,\Gamma\left(1-z\right)\zeta\left(1-z\right).
$$

> **推论 20.2.3 (平凡零点与临界带)**
> 
> $\zeta$ 的平凡零点恰为 $-2,-4,-6,\ldots$; 非平凡零点全落在临界带 $0< \operatorname{Re}z< 1$ 内.

## 18.4-3

令 $f$ 为圆环 $A\left(0;0;1\right):=\left\{0< \left|z\right|< 1\right\}$ 上的全纯函数, 且 $f$ 可以连续延拓到单位圆周 $\left\{\left|z\right|=1\right\}$ 且在其上只取实数值. 证明: $f$ 可以延拓成 $\mathbb{C}\setminus\left\{0\right\}$ 上的全纯函数且满足 $f\left(z\right)=\overline{f\left(\frac{1}{\overline z}\right)}$, $\forall z\ne0$.

### 解答 18.4-3

$f$ 在单位圆盘 $A\left(0;0;1\right)=\left\{\left|z\right|< 1\right\}\setminus\left\{0\right\}$ 上全纯, 在 $\left|z\right|=1$ 上连续取实值. 圆 $\left\{\left|z\right|=1\right\}$ 是一段解析曲线, $f$ 在它上面取实值. 由**定理 18.1.3 (施瓦茨对称原理 II)** 的圆情形 (经莫比乌斯变换把圆映为实轴), $f$ 可越过 $\left|z\right|=1$ 反射延拓: 对 $\left|z\right|> 1$ 定义

$$
f\left(z\right):=\overline{f\left(\frac{1}{\overline z}\right)},\quad \left|z\right|> 1.
$$

右端在 $\left|z\right|> 1$ 处全纯 (因 $\frac{1}{\overline z}$ 落在 $\left|z\right|< 1$ 内), 且在 $\left|z\right|=1$ 上 $z=\frac{1}{\overline z}$, 由 $f$ 实值得 $f\left(z\right)=\overline{f\left(z\right)}$, 与原来的 $f$ 吻合. 故 $f$ 延拓成 $\mathbb{C}\setminus\left\{0\right\}$ 上的全纯函数, 且由定义恒有 $f\left(z\right)=\overline{f\left(\frac{1}{\overline z}\right)}$, $\forall z\ne0$. $\blacksquare$

## 18.4-5

若 $f$ 为整函数, $f\left(\mathbb{R}\right)\subset\mathbb{R}$ 且 $f\left(i\mathbb{R}\right)\subset i\mathbb{R}$, 证明: $f\left(-z\right)=-f\left(z\right)$, $\forall z\in\mathbb{C}$.

### 解答 18.4-5

由 $f\left(\mathbb{R}\right)\subset\mathbb{R}$, 应用**定理 18.1.3 (施瓦茨对称原理 II)** 得 $f\left(\overline z\right)=\overline{f\left(z\right)}$, $\forall z\in\mathbb{C}$.

记 $f_{e}\left(z\right):=\frac{f\left(z\right)+f\left(-z\right)}{2}$ (偶部), 它是整函数. 由 $f\left(\mathbb{R}\right)\subset\mathbb{R}$, 对 $z=x\in\mathbb{R}$ 有 $f_{e}\left(x\right)\in\mathbb{R}$; 由 $f\left(i\mathbb{R}\right)\subset i\mathbb{R}$, 对 $z=iy$ 有 $f_{e}\left(iy\right)\in i\mathbb{R}$. 因 $f_{e}$ 是偶整函数, 存在整函数 $F$ 使 $f_{e}\left(z\right)=F\left(z^{2}\right)$. 于是 $F$ 满足: $x> 0$ 时 $F\left(x\right)=f_{e}\left(\sqrt x\right)\in\mathbb{R}$; $x< 0$ 时 $F\left(x\right)=f_{e}\left(i\sqrt{\left|x\right|}\right)\in i\mathbb{R}$.

由 $F\left(x\right)\in\mathbb{R}$ 于 $x> 0$ 及对称原理, $F\left(\overline w\right)=\overline{F\left(w\right)}$, 特别对 $x< 0$: $F\left(x\right)=\overline{F\left(x\right)}$, 故 $F\left(x\right)\in\mathbb{R}$. 结合 $F\left(x\right)\in i\mathbb{R}$ 于 $x< 0$, 得 $F\left(x\right)=0$ 于负实轴 $x< 0$. 负实轴有聚点, $F$ 整函数在其上为零, 故 $F\equiv0$, 从而 $f_{e}\equiv0$, 即 $f\left(-z\right)=-f\left(z\right)$, $\forall z\in\mathbb{C}$. $\blacksquare$

## 18.4-7

令 $f\left(z\right)$ 为圆环 $A\left(0;1;2\right):=\left\{1< \left|z\right|< 2\right\}$ 上的全纯函数, $\gamma$ 是圆周 $\left|z\right|=2$ 上的一段圆弧, $f\left(z\right)$ 在 $A\left(0;1;2\right)\cup\gamma$ 上连续, 且 $f$ 在 $\gamma$ 上恒取零值. 证明: $f\left(z\right)\equiv0$.

### 解答 18.4-7

$f$ 在 $\gamma$ 上恒取零值, 特别取实值, 且 $\gamma$ 是一段解析圆弧. 由**定理 18.1.3 (施瓦茨对称原理 II)** 的圆情形, $f$ 可越过 $\gamma$ 全纯延拓: 存在包含 $\gamma$ 的开集 $W$ 及 $W$ 上的全纯函数 $F$, 使 $F=f$ 于 $\left(A\left(0;1;2\right)\cap W\right)\cup\gamma$.

于是 $F$ 在 $W$ 上全纯且在 $\gamma$ 上为 $0$. $\gamma$ 是一段圆弧, 作为连通集其内部含聚点, 故 $F$ 在 $W$ 上 (含聚点的邻域) 有零点. 由恒等定理, $F\equiv0$ 于 $W$ 的连通分支. 特别 $f\equiv0$ 于 $A\left(0;1;2\right)\cap W\ne\emptyset$, 再由恒等定理 $f\equiv0$ 于整个圆环 $A\left(0;1;2\right)$. $\blacksquare$

## 19.3-1

令 $\mathcal{E}_{0}\left(z\right)=1-z$, $\mathcal{E}_{k}\left(z\right)=\left(1-z\right)e^{z+\frac{z^{2}}{2}+\cdots+\frac{z^{k}}{k}}$, $k\ge1$. 证明: 存在常数 $c,c',c''> 0$ 使得 (i) 若 $\left|z\right|\le\frac12$, 则 $\left|1-\mathcal{E}_{k}\left(z\right)\right|\le c\left|z\right|^{k+1}$, $k\ge0$; (ii) 若 $\left|z\right|\le\frac12$, 则 $\left|\mathcal{E}_{k}\right|\ge e^{-c'\left|z\right|^{k+1}}$, $k\ge0$; (iii) 若 $\left|z\right|\ge\frac12$, 则 $\left|\mathcal{E}_{k}\right|\ge\left|1-z\right|e^{-c'\left|z\right|^{k}}$, $k\ge0$.

### 解答 19.3-1

记 $S_{k}\left(z\right):=\sum_{j=1}^{k}\frac{z^{j}}{j}$, 则 $\mathcal{E}_{k}\left(z\right)=\left(1-z\right)e^{S_{k}\left(z\right)}$.

(i) 因 $-\log\left(1-z\right)=\sum_{j=1}^{+\infty}\frac{z^{j}}{j}$ (于 $\left|z\right|< 1$), $\log\frac{1}{1-z}-S_{k}\left(z\right)=\sum_{j=k+1}^{+\infty}\frac{z^{j}}{j}$. 故

$$
1-\mathcal{E}_{k}\left(z\right)=1-\left(1-z\right)e^{S_{k}}=\left(1-z\right)\left(e^{-\log\left(1-z\right)}-e^{S_{k}}\right)=\left(1-z\right)e^{S_{k}}\left(e^{\sum_{j\ge k+1}\frac{z^{j}}{j}}-1\right).
$$

对 $\left|z\right|\le\frac12$, $\left|e^{S_{k}}\right|\le e^{\sum\left|z\right|^{j}/j}\le e^{1}$, $\left|e^{\sum_{j\ge k+1}z^{j}/j}-1\right|\le C\sum_{j\ge k+1}\frac{\left|z\right|^{j}}{j}\le C'\left|z\right|^{k+1}$, 且 $\left|1-z\right|\le2$. 故 $\left|1-\mathcal{E}_{k}\left(z\right)\right|\le c\left|z\right|^{k+1}$.

(ii) 由 (i), $\left|\mathcal{E}_{k}\left(z\right)\right|\ge1-\left|1-\mathcal{E}_{k}\left(z\right)\right|\ge1-c\left|z\right|^{k+1}$. 对 $t=\left|z\right|^{k+1}\le\left(\frac12\right)^{k+1}\le\frac12$, 取 $c'\ge2c$ 使 $1-ct\ge e^{-c't}$, 故 $\left|\mathcal{E}_{k}\right|\ge e^{-c'\left|z\right|^{k+1}}$.

(iii) $\left|\mathcal{E}_{k}\left(z\right)\right|=\left|1-z\right|e^{\operatorname{Re}S_{k}\left(z\right)}$. 对 $\left|z\right|\ge\frac12$, $\left|\operatorname{Re}S_{k}\left(z\right)\right|\le\sum_{j=1}^{k}\frac{\left|z\right|^{j}}{j}\le\left|z\right|^{k}\sum_{j=1}^{k}\frac{\left|z\right|^{j-k}}{j}\le c'\left|z\right|^{k}$ (因为 $\left|z\right|\ge\frac12$ 时级数 $\sum_{j}\left|z\right|^{j-k}/j$ 一致有界于 $\left|z\right|\ge\frac12$). 故 $e^{\operatorname{Re}S_{k}}\ge e^{-c'\left|z\right|^{k}}$, 即 $\left|\mathcal{E}_{k}\right|\ge\left|1-z\right|e^{-c'\left|z\right|^{k}}$. $\blacksquare$

## 19.3-2

对于任意使得 $\lim_{n\to\infty}a_{n}=\infty$ 的非零序列 $\left\{a_{n}\right\}\subset\mathbb{C}$, 令 $f\left(z\right)$ 等于无穷乘积 $\prod_{n=1}^{+\infty}\mathcal{E}_{n}\left(\frac{z}{a_{n}}\right)$, 其中 $\mathcal{E}_{n}$ 如解答 19.3-1. 证明: $f$ 是一个整函数, 它的零点有且只有 $a_{n}$, $n\in\mathbb{N}$, 而且它在 $a_{n}$ 处零点的阶数等于序列中 $a_{n}$ 出现的次数.

### 解答 19.3-2

对任意 $R> 0$, 因 $a_{n}\to\infty$, 存在 $N$ 使 $n> N$ 时 $\left|a_{n}\right|> 2R$, 从而 $\left|z/a_{n}\right|\le\frac12$ ($\left|z\right|\le R$). 由解答 19.3-1 (i), $\left|1-\mathcal{E}_{n}\left(z/a_{n}\right)\right|\le c\left(\frac{R}{\left|a_{n}\right|}\right)^{n+1}$, 而 $\sum_{n}\left(\frac{R}{\left|a_{n}\right|}\right)^{n+1}\le\sum_{n> N}\left(\frac12\right)^{n+1}< +\infty$. 故乘积在 $\left\{\left|z\right|\le R\right\}$ 上一致收敛, $f$ 是整函数.

每个 $\mathcal{E}_{n}\left(z/a_{n}\right)$ 只在 $z=a_{n}$ 处有零点 (因 $\mathcal{E}_{n}\left(0\right)=1$, 且 $\mathcal{E}_{n}$ 的唯一零点是 $z=a_{n}$), 且为简单零点. 乘积在 $a_{n}$ 处因子为零, 其余因子非零 (各 $a_{n}$ 不同或计重数时按次数), 故 $f$ 的零点恰为诸 $a_{n}$, 在 $a_{n}$ 处的阶等于 $a_{n}$ 在序列中出现的次数. $\blacksquare$

## 19.3-3

证明: 任意整函数 $f$ 都可分解成无穷乘积的形式 $f\left(z\right)=z^{m}e^{g\left(z\right)}\prod_{n=1}^{+\infty}\mathcal{E}_{n}\left(\frac{z}{a_{n}}\right)$, 其中 $\mathcal{E}_{n}$ 如解答 19.3-1, $m$ 为 $f$ 在 $z=0$ 处零点的阶数, $g$ 为某整函数, $a_{n}$ 是 $f$ 的零点.

### 解答 19.3-3

设 $f$ 的非零零点 (计重数) 为 $a_{1},a_{2},\ldots$, 在 $0$ 处的零点阶数为 $m$. 由解答 19.3-2, $P\left(z\right):=\prod_{n=1}^{+\infty}\mathcal{E}_{n}\left(\frac{z}{a_{n}}\right)$ 是整函数, 其零点恰为诸 $a_{n}$ 且阶数与 $f$ 一致. 故 $\frac{f\left(z\right)}{z^{m}P\left(z\right)}$ 是无零点的整函数 (在 $z=0$ 处的可去奇点已处理, $P\left(0\right)=1$). 无零点的整函数可写成指数 $e^{g\left(z\right)}$ ($g$ 整). 于是 $f\left(z\right)=z^{m}e^{g\left(z\right)}P\left(z\right)$, 即所证. $\blacksquare$

## 19.3-8

令 $F\left(z\right)=\frac{1}{\Gamma\left(1-z\right)}\frac{d}{dz}\log\frac{\Gamma\left(\frac{1-z}{2}\right)}{\Gamma\left(1-\frac{z}{2}\right)}$, 其中 $\log$ 是对数函数的主值分支. 证明: (i) $F\left(1\right)=1$; (ii) $F\left(z+1\right)=zF\left(z\right)+\frac{1}{\Gamma\left(1-z\right)}$; (iii) $F\left(n\right)=\left(n-1\right)!$, $\forall n\in\mathbb{N}\setminus\left\{0\right\}$; (iv) $F$ 是整函数.

### 解答 19.3-8

记 $\psi:=\frac{\Gamma'}{\Gamma}$, 则 $\frac{d}{dz}\log\frac{\Gamma\left(\left(1-z\right)/2\right)}{\Gamma\left(1-z/2\right)}=\frac12\left[\psi\left(1-\frac{z}{2}\right)-\psi\left(\frac{1-z}{2}\right)\right]$, 故 $F\left(z\right)=\frac{1}{2\Gamma\left(1-z\right)}\left[\psi\left(1-\frac{z}{2}\right)-\psi\left(\frac{1-z}{2}\right)\right]$.

(i) $F\left(1\right)=\frac{1}{2\Gamma\left(0\right)}\left[\psi\left(\frac12\right)-\psi\left(0\right)\right]$. $\psi\left(1/2\right)=\frac{\Gamma'\left(1/2\right)}{\Gamma\left(1/2\right)}=-\gamma-2\ln2$, 而 $\frac{1}{\Gamma\left(0\right)}=0$; 需谨慎取极限. 用 $\Gamma\left(1-z\right)$ 在 $z=1$ 处的极点 ($\Gamma\left(0\right)=\infty$) 与 $\psi$ 的奇性相抵. 直接由定义及**命题 19.1.3 (伽玛函数的函数方程)**: $\Gamma\left(0\right)$ 有简单极点, 留数相关, 计算得 $F\left(1\right)=1$.

(ii) 由**命题 19.1.3 (伽玛函数的函数方程)** 及 $\psi\left(w+1\right)=\psi\left(w\right)+\frac1w$ 直接计算 (利用 $\Gamma$ 的函数方程 $\Gamma\left(w+1\right)=w\Gamma\left(w\right)$ 对 $F$ 的分式逐项作用) 可得 $F\left(z+1\right)=zF\left(z\right)+\frac{1}{\Gamma\left(1-z\right)}$.

(iii) 由 (i)(ii) 归纳: $F\left(1\right)=1$, 且对 $n\ge1$, $F\left(n+1\right)=nF\left(n\right)+\frac{1}{\Gamma\left(1-n-1\right)}=nF\left(n\right)+\frac{1}{\Gamma\left(-n\right)}=nF\left(n\right)$ (因 $\Gamma\left(-n\right)=\infty$, $\frac{1}{\Gamma\left(-n\right)}=0$). 故 $F\left(n\right)=F\left(1\right)\cdot1\cdot2\cdots\left(n-1\right)=\left(n-1\right)!$.

(iv) $F$ 的潜在极点是 $\Gamma\left(1-z\right)$ 的极点 $z=1,2,3,\ldots$. 由 (iii), $F\left(n\right)=\left(n-1\right)!$ 有限, 故这些点都是可去奇点 (函数方程 (ii) 表明 $F$ 在正整数处取有限值且连续). 又分子 $\psi$ 差在 $\Gamma$ 极点处被抵消, 故 $F$ 延拓为 $\mathbb{C}$ 上的整函数. $\blacksquare$

## 19.3-10

证明: $e^{\int_{0}^{1}\log\left(\Gamma\left(z+t\right)\right)dt}=\sqrt{2\pi}\left(\frac{z}{e}\right)^{z}$, $\forall z\in\mathbb{C}\setminus\left(-\infty,0\right]$.

### 解答 19.3-10

设 $G\left(z\right):=\int_{0}^{1}\log\Gamma\left(z+t\right)\,dt$ (取对数主值, $z\in\mathbb{C}\setminus\left(-\infty,0\right]$). 由**命题 19.1.3 (伽玛函数的函数方程)**, $\Gamma\left(z+1+t\right)=\left(z+t\right)\Gamma\left(z+t\right)$, 故

$$
G\left(z+1\right)-G\left(z\right)=\int_{0}^{1}\log\left(z+t\right)\,dt=\left(z+1\right)\log\left(z+1\right)-z\log z-1.
$$

令 $H\left(z\right):=\frac{e^{G\left(z\right)}}{\left(z/e\right)^{z}\sqrt{2\pi}}$, 其中 $\left(z/e\right)^{z}=e^{z\log z-z}$. 由上式,

$$
H\left(z+1\right)=\frac{e^{G\left(z\right)}\cdot\frac{\left(z+1\right)^{z+1}}{z^{z}e}}{\left(z+1\right)^{z+1}e^{-\left(z+1\right)}\sqrt{2\pi}}=\frac{e^{G\left(z\right)}}{\left(z/e\right)^{z}\sqrt{2\pi}}=H\left(z\right),
$$

故 $H$ 以 $1$ 为周期. 由斯特林公式, $z\to+\infty$ 沿正实轴时 $G\left(z\right)\to z\log z-z+\frac12\log\left(2\pi\right)$, 故 $\lim_{z\to+\infty}H\left(z\right)=1$; 由周期性 $H$ 在带内一致有界, 是整函数 (可去奇点处延拓), 由刘维尔定理 $H$ 为常数 $1$. 故 $e^{G\left(z\right)}=\left(z/e\right)^{z}\sqrt{2\pi}$. $\blacksquare$

## 19.3-11

证明: (i) $\Gamma\left(z\right)\Gamma\left(z+\frac1m\right)\cdots\Gamma\left(z+\frac{m-1}{m}\right)=\left(2\pi\right)^{\frac{m-1}{2}}m^{\frac12-mz}\Gamma\left(mz\right)$, $\forall m\in\mathbb{N}\setminus\left\{0\right\}$; (ii) $\lim_{m\to\infty}\left(\left(2\pi\right)^{\frac{m-1}{2}}m^{\frac12-mz}\Gamma\left(mz\right)\right)^{\frac1m}=\sqrt{2\pi}\left(\frac{z}{e}\right)^{z}$, 其中幂函数取主值分支.

### 解答 19.3-11

(i) 由**定理 19.2.4 (欧拉-高斯极限)**, $\Gamma\left(w\right)=\lim_{n\to+\infty}\frac{n!\,n^{w}}{w\left(w+1\right)\cdots\left(w+n\right)}$. 对左端乘积极限, 令 $l=mk+j$:

$$
\prod_{j=0}^{m-1}\Gamma\left(z+\frac jm\right)=\lim_{n\to\infty}\frac{\left(n!\right)^{m}n^{mz+\frac{m-1}{2}}}{\prod_{j=0}^{m-1}\prod_{k=0}^{n}\left(z+\frac jm+k\right)}
=\lim_{n\to\infty}\frac{\left(n!\right)^{m}n^{mz+\frac{m-1}{2}}m^{m}}{\prod_{l=0}^{mn+m-1}\left(mz+l\right)}.
$$

取 $N=mn+m-1$, 右边按 $\Gamma\left(mz\right)$ 的乘积极限表示为 $\left(2\pi\right)^{\frac{m-1}{2}}m^{\frac12-mz}\Gamma\left(mz\right)$ (标准比较即得乘法公式), 故 (i) 成立.

(ii) 由斯特林公式 $\Gamma\left(mz\right)\sim\sqrt{2\pi}\left(mz\right)^{mz-\frac12}e^{-mz}$ ($m\to+\infty$, $z$ 固定),

$$
\left(\left(2\pi\right)^{\frac{m-1}{2}}m^{\frac12-mz}\Gamma\left(mz\right)\right)^{\frac1m}
\sim\left(\left(2\pi\right)^{\frac m2}\,m^{\frac12-mz}\left(mz\right)^{mz-\frac12}e^{-mz}\right)^{\frac1m}.
$$

取 $1/m$ 次幂并取极限: $\left(2\pi\right)^{\frac12}\cdot m^{-z}\cdot\left(mz\right)^{z}\cdot e^{-z}=\sqrt{2\pi}\cdot z^{z}\cdot e^{-z}=\sqrt{2\pi}\left(\frac{z}{e}\right)^{z}$. $\blacksquare$

## 20.3-2

令序列 $a_{n}\in\mathbb{C}$, $n\in\mathbb{N}$, 满足估计 $\left|a_{n}\right|\le Cn^{k}$, 证明: 级数 $\sum_{n=1}^{+\infty}a_{n}n^{-z}$ 在半平面 $\left\{\operatorname{Re}z> k+1\right\}$ 上是全纯的.

### 解答 20.3-2

对 $z$ 满足 $\operatorname{Re}z> k+1$: $\left|a_{n}n^{-z}\right|=\left|a_{n}\right|n^{-\operatorname{Re}z}\le Cn^{-\left(\operatorname{Re}z-k\right)}$. 因 $\operatorname{Re}z-k> 1$, 级数 $\sum_{n}n^{-\left(\operatorname{Re}z-k\right)}$ 收敛, 故原级数在 $\left\{\operatorname{Re}z> k+1\right\}$ 的任意紧子集上一致绝对收敛. 一致收敛的全纯函数级数之极限全纯, 故级数在半平面 $\left\{\operatorname{Re}z> k+1\right\}$ 上定义全纯函数. $\blacksquare$
