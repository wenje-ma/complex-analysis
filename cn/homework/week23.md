# 作业 23

> **定义 20.1.1** (黎曼 $\zeta$-函数)<br>$$\zeta\left(z\right)=\sum_{n=1}^{+\infty}\frac1{n^{z}},\quad\operatorname{Re}z>1;$$ 由欧拉乘积 $$\zeta\left(z\right)=\prod_{p}\left(1-p^{-z}\right)^{-1}$$ 知其无零点.

> **定理 20.1.6** (亚纯延拓)<br>$\zeta$ 亚纯延拓到 $\mathbb{C}$, 只在 $z=1$ 有简单极点, 且 $$\lim_{z\to1}\left(\zeta\left(z\right)-\frac1{z-1}\right)=\gamma$$ (欧拉常数).

> **定理 20.2.2** (函数方程)<br>$$\zeta\left(z\right)=2^{z}\pi^{z-1}\sin\frac{\pi z}{2}\,\Gamma\left(1-z\right)\zeta\left(1-z\right).$$

> **推论 20.2.3**<br>$\zeta$ 的平凡零点恰为 $-2,-4,-6,\ldots$; 非平凡零点全落在临界带 $0<\operatorname{Re}z<1$ 内.

### 习题一

(习题 20.3-2) 令序列 $a_{n}\in\mathbb{C}$, $n\in\mathbb{N}$, 满足估计 $\left|a_{n}\right|\le Cn^{k}$, 证明: 级数 $\sum_{n=1}^{+\infty}a_{n}n^{-z}$ 在半平面 $\left\{\operatorname{Re}z>k+1\right\}$ 上是全纯的.

### 解答 习题一

对 $z$ 满足 $\operatorname{Re}z>k+1$: $\left|a_{n}n^{-z}\right|=\left|a_{n}\right|n^{-\operatorname{Re}z}\le Cn^{-\left(\operatorname{Re}z-k\right)}$. 因 $\operatorname{Re}z-k>1$, 级数 $\sum_{n}n^{-\left(\operatorname{Re}z-k\right)}$ 收敛, 故原级数在 $\left\{\operatorname{Re}z>k+1\right\}$ 的任意紧子集上一致绝对收敛. 一致收敛的全纯函数级数之极限全纯, 故级数在半平面 $\left\{\operatorname{Re}z>k+1\right\}$ 上定义全纯函数. $\blacksquare$

### 习题二

(习题 20.3-3) 证明: (i) $\zeta\left(\bar z\right)=\overline{\zeta\left(z\right)}$, $\forall z\in\mathbb{C}\setminus\left\{1\right\}$; (ii) 若 $z\in\mathbb{C}\setminus\mathbb{R}$ 是 $\zeta$-函数的零点, 则 $\bar z$, $1-z$, $1-\bar z$ 都是它的零点.

### 解答 习题二

(i) 在 $\operatorname{Re}z>1$ 上, $n$ 为实数, $\overline{n^{-z}}=\overline{e^{-z\log n}}=e^{-\bar z\log n}=n^{-\bar z}$, 逐项取共轭得 $\overline{\zeta\left(z\right)}=\sum_{n}n^{-\bar z}=\zeta\left(\bar z\right)$. 由解析延拓 (恒等定理) 对 $\operatorname{Re}z>1$ 成立之等式延拓到 $\mathbb{C}\setminus\left\{1\right\}$, 故 $\zeta\left(\bar z\right)=\overline{\zeta\left(z\right)}$, $\forall z\in\mathbb{C}\setminus\left\{1\right\}$.

(ii) 设 $z$ 是非实零点, $\zeta\left(z\right)=0$. 由 (i), $\zeta\left(\bar z\right)=\overline{\zeta\left(z\right)}=0$, 故 $\bar z$ 是零点. 由**定理 20.2.2 (函数方程)** $\zeta\left(z\right)=2^{z}\pi^{z-1}\sin\frac{\pi z}{2}\Gamma\left(1-z\right)\zeta\left(1-z\right)$. 因 $z$ 非实, $\sin\frac{\pi z}{2}\ne0$, $\Gamma\left(1-z\right)\ne0$, 因子 $2^{z}\pi^{z-1}\ne0$, 故 $\zeta\left(1-z\right)=0$. 再由 (i), $\zeta\left(1-\bar z\right)=\overline{\zeta\left(1-z\right)}=0$. 故 $\bar z$, $1-z$, $1-\bar z$ 都是零点. $\blacksquare$

### 习题三

(习题 20.3-4, 黎曼) 令 $\xi\left(z\right)=\frac12 z\left(z-1\right)\pi^{-z/2}\Gamma\left(\frac z2\right)\zeta\left(z\right)$. 证明: (i) $\xi\left(z\right)$ 是整函数; (ii) $\xi\left(z\right)$ 的零点恰好是 $\zeta\left(z\right)$ 的非实数零点; (iii) $\xi\left(1-z\right)=\xi\left(z\right)$; (iv) $\xi\left(z\right)$ 在直线 $\operatorname{Re}z=\frac12$ 上取实数值.

### 解答 习题三

(i) $\zeta$ 只在 $z=1$ 有简单极点, 因子 $\frac12 z\left(z-1\right)$ 在 $z=1$ 为零, 消去该极点; 因子 $\Gamma\left(z/2\right)$ 的极点在 $z=0,-2,-4,\ldots$. 在 $z=0$, 因子 $z$ 为零, 而 $z\left(z-1\right)\to0$, $\Gamma\left(z/2\right)\sim\frac{2}{z}$, 故 $\frac12 z\left(z-1\right)\Gamma\left(z/2\right)$ 在 $0$ 处有限 (事实上 $\xi\left(0\right)=\frac12$). 在 $z=-2k$ ($k\ge1$), $\Gamma\left(z/2\right)=\Gamma\left(-k\right)$ 有极点, 但 $\zeta\left(-2k\right)=0$ (平凡零点, **推论 20.2.3**), 抵消极点. 故 $\xi$ 的所有潜在奇点均可去, $\xi$ 是整函数.

(ii) $\frac12 z\left(z-1\right)\pi^{-z/2}\Gamma\left(z/2\right)$ 无零点 (在 $z=0,1$ 处 $\xi$ 取有限非零值 $\xi\left(0\right)=\frac12$, $\xi\left(1\right)=\frac12\Gamma\left(\frac12\right)\ne0$; $\pi^{-z/2},\Gamma\left(z/2\right)$ 均无零点). 故 $\xi$ 的零点恰是 $\zeta$ 的零点中去掉实零点 (平凡零点 $-2,-4,\ldots$ 被 $\Gamma$ 极点抵消, 且 $z=0,1$ 非 $\zeta$ 的零点). 而 $\zeta$ 的非平凡零点全在临界带内非实, 故 $\xi$ 的零点恰好是 $\zeta$ 的非实数零点.

(iii) 由**定理 20.2.2**:

$$
\xi\left(z\right)=\frac12 z\left(z-1\right)2^{z}\pi^{\frac z2}\frac{\Gamma\left(1-z\right)}{\Gamma\left(1-\frac z2\right)}\zeta\left(1-z\right).
$$

用勒让德公式 $\Gamma\left(1-z\right)=2^{1-z}\pi^{-\frac12}\Gamma\left(\frac{1-z}{2}\right)\Gamma\left(1-\frac z2\right)$, 得

$$
\xi\left(z\right)=\frac12 z\left(z-1\right)\pi^{\frac{z-1}{2}}\Gamma\left(\frac{1-z}{2}\right)\zeta\left(1-z\right)=\xi\left(1-z\right).
$$

(iv) $\xi$ 的系数均为实系数 (由 $\pi,\Gamma,\zeta$ 在实轴取实值), 故 $\xi\left(\bar z\right)=\overline{\xi\left(z\right)}$. 对 $z=\frac12+it$, $\bar z=1-z$, 由 (iii) $\xi\left(z\right)=\xi\left(1-z\right)=\xi\left(\bar z\right)=\overline{\xi\left(z\right)}$, 故 $\xi\left(z\right)\in\mathbb{R}$ 于 $\operatorname{Re}z=\frac12$. $\blacksquare$

### 习题四

(习题 20.3-5, 狄利克雷) 令 $\zeta_{-}\left(z\right)=1-\frac1{2^{z}}+\frac1{3^{z}}-\cdots=\sum_{n=1}^{+\infty}\frac{\left(-1\right)^{n+1}}{n^{z}}$. 证明: (i) 定义 $\zeta_{-}\left(z\right)$ 的级数对 $\operatorname{Re}z>0$ 都收敛, 给出了半平面 $\operatorname{Re}s>0$ 上的一个全纯函数; (ii) 若 $z>1$, 则 $\zeta_{-}\left(z\right)=\left(1-2^{1-z}\right)\zeta\left(z\right)$; (iii) 利用 (ii) 中的函数方程验证 $\zeta_{-}\left(z\right)$ 在右半平面 $\operatorname{Re}z>1$ 上都没有零点; (iv) 利用 (ii) 验证函数 $\zeta$ 在实区间 $\left(0,1\right)$ 上没有零点.

### 解答 习题四

(i) 对 $\operatorname{Re}z>0$, $\left|\frac{\left(-1\right)^{n+1}}{n^{z}}\right|=n^{-\operatorname{Re}z}\to0$ 且单调递减, 交错级数收敛. 在紧子集 $\left\{\operatorname{Re}z\ge\delta>0\right\}$ 上, 交错级数余项不超过首项, 一致收敛, 故 $\zeta_{-}$ 在 $\left\{\operatorname{Re}z>0\right\}$ 上全纯.

(ii) 对 $z>1$ 绝对收敛, 分离偶项:

$$
\zeta_{-}\left(z\right)=\sum_{n=1}^{+\infty}\frac1{n^{z}}-2\sum_{n=1}^{+\infty}\frac1{\left(2n\right)^{z}}=\zeta\left(z\right)-2^{1-z}\zeta\left(z\right)=\left(1-2^{1-z}\right)\zeta\left(z\right).
$$

(iii) 由 (ii) 及解析延拓, 对 $\operatorname{Re}z>1$, $\zeta_{-}\left(z\right)=\left(1-2^{1-z}\right)\zeta\left(z\right)$. 因 $\operatorname{Re}z>1$, $\left|2^{1-z}\right|=2^{1-\operatorname{Re}z}<1$, 故 $1-2^{1-z}\ne0$; 又由**定义 20.1.1** 欧拉乘积, $\zeta\left(z\right)=\prod_{p}\left(1-p^{-z}\right)^{-1}\ne0$. 故 $\zeta_{-}\left(z\right)\ne0$ 于 $\operatorname{Re}z>1$.

(iv) 由 (ii) 解析延拓, 对 $x\in\left(0,1\right)$, $\zeta_{-}\left(x\right)=\left(1-2^{1-x}\right)\zeta\left(x\right)$. 因 $0<x<1$ 时 $1-x>0$, $2^{1-x}>1$, $1-2^{1-x}\ne0$; 而 $\zeta_{-}\left(x\right)=\sum_{n}\frac{\left(-1\right)^{n+1}}{n^{x}}>0$ (交错级数首项 $1>0$, 各项绝对值递减且 $\frac{1}{2^{x}}<1$). 故 $\zeta\left(x\right)\ne0$ 于 $\left(0,1\right)$. $\blacksquare$
