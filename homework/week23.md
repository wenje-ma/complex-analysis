# 作业 23

> **定义 20.1.1** (黎曼 $\zeta$-函数)<br>$$\zeta(z)=\sum_{n=1}^{+\infty}\frac1{n^{z}},\quad\operatorname{Re}z>1;$$ 由欧拉乘积 $$\zeta(z)=\prod_{p}\left(1-p^{-z}\right)^{-1}$$ 知其无零点.

> **定理 20.1.6** (亚纯延拓)<br>$\zeta$ 亚纯延拓到 $\mathbb{C}$, 只在 $z=1$ 有简单极点, 且 $$\lim_{z\to1}\left(\zeta(z)-\frac1{z-1}\right)=\gamma$$ (欧拉常数).

> **定理 20.2.2** (函数方程)<br>$$\zeta(z)=2^{z}\pi^{z-1}\sin\frac{\pi z}{2}\,\Gamma(1-z)\zeta(1-z).$$

> **推论 20.2.3**<br>$\zeta$ 的平凡零点恰为 $-2,-4,-6,\ldots$; 非平凡零点全落在临界带 $0<\operatorname{Re}z<1$ 内.

### 习题一

(习题 20.3-2) 令序列 $a_{n}\in\mathbb{C}$, $n\in\mathbb{N}$, 满足估计 $|a_{n}|\le Cn^{k}$, 证明: 级数 $\sum_{n=1}^{+\infty}a_{n}n^{-z}$ 在半平面 $\{\operatorname{Re}z>k+1\}$ 上是全纯的.

### 解答 习题一

对 $z$ 满足 $\operatorname{Re}z>k+1$: $|a_{n}n^{-z}|=|a_{n}|n^{-\operatorname{Re}z}\le Cn^{-(\operatorname{Re}z-k)}$. 因 $\operatorname{Re}z-k>1$, 级数 $\sum_{n}n^{-(\operatorname{Re}z-k)}$ 收敛, 故原级数在 $\{\operatorname{Re}z>k+1\}$ 的任意紧子集上一致绝对收敛. 一致收敛的全纯函数级数之极限全纯, 故级数在半平面 $\{\operatorname{Re}z>k+1\}$ 上定义全纯函数. $\blacksquare$

### 习题二

(习题 20.3-3) 证明: (i) $\zeta(\bar z)=\overline{\zeta(z)}$, $\forall z\in\mathbb{C}\setminus\{1\}$; (ii) 若 $z\in\mathbb{C}\setminus\mathbb{R}$ 是 $\zeta$-函数的零点, 则 $\bar z$, $1-z$, $1-\bar z$ 都是它的零点.

### 解答 习题二

(i) 在 $\operatorname{Re}z>1$ 上, $n$ 为实数, $\overline{n^{-z}}=\overline{e^{-z\log n}}=e^{-\bar z\log n}=n^{-\bar z}$, 逐项取共轭得 $\overline{\zeta(z)}=\sum_{n}n^{-\bar z}=\zeta(\bar z)$. 由解析延拓 (恒等定理) 对 $\operatorname{Re}z>1$ 成立之等式延拓到 $\mathbb{C}\setminus\{1\}$, 故 $\zeta(\bar z)=\overline{\zeta(z)}$, $\forall z\in\mathbb{C}\setminus\{1\}$.

(ii) 设 $z$ 是非实零点, $\zeta(z)=0$. 由 (i), $\zeta(\bar z)=\overline{\zeta(z)}=0$, 故 $\bar z$ 是零点. 由**定理 20.2.2 (函数方程)** $\zeta(z)=2^{z}\pi^{z-1}\sin\frac{\pi z}{2}\Gamma(1-z)\zeta(1-z)$. 因 $z$ 非实, $\sin\frac{\pi z}{2}\ne0$, $\Gamma(1-z)\ne0$, 因子 $2^{z}\pi^{z-1}\ne0$, 故 $\zeta(1-z)=0$. 再由 (i), $\zeta(1-\bar z)=\overline{\zeta(1-z)}=0$. 故 $\bar z$, $1-z$, $1-\bar z$ 都是零点. $\blacksquare$

### 习题三

(习题 20.3-4, 黎曼) 令 $\xi(z)=\frac12 z(z-1)\pi^{-z/2}\Gamma\left(\frac z2\right)\zeta(z)$. 证明: (i) $\xi(z)$ 是整函数; (ii) $\xi(z)$ 的零点恰好是 $\zeta(z)$ 的非实数零点; (iii) $\xi(1-z)=\xi(z)$; (iv) $\xi(z)$ 在直线 $\operatorname{Re}z=\frac12$ 上取实数值.

### 解答 习题三

(i) $\zeta$ 只在 $z=1$ 有简单极点, 因子 $\frac12 z(z-1)$ 在 $z=1$ 为零, 消去该极点; 因子 $\Gamma(z/2)$ 的极点在 $z=0,-2,-4,\ldots$. 在 $z=0$, 因子 $z$ 为零, 而 $z(z-1)\to0$, $\Gamma(z/2)\sim\frac{2}{z}$, 故 $\frac12 z(z-1)\Gamma(z/2)$ 在 $0$ 处有限 (事实上 $\xi(0)=\frac12$). 在 $z=-2k$ ($k\ge1$), $\Gamma(z/2)=\Gamma(-k)$ 有极点, 但 $\zeta(-2k)=0$ (平凡零点, **推论 20.2.3**), 抵消极点. 故 $\xi$ 的所有潜在奇点均可去, $\xi$ 是整函数.

(ii) $\frac12 z(z-1)\pi^{-z/2}\Gamma(z/2)$ 无零点 (在 $z=0,1$ 处 $\xi$ 取有限非零值 $\xi(0)=\frac12$, $\xi(1)=\frac12\Gamma(\frac12)\ne0$; $\pi^{-z/2},\Gamma(z/2)$ 均无零点). 故 $\xi$ 的零点恰是 $\zeta$ 的零点中去掉实零点 (平凡零点 $-2,-4,\ldots$ 被 $\Gamma$ 极点抵消, 且 $z=0,1$ 非 $\zeta$ 的零点). 而 $\zeta$ 的非平凡零点全在临界带内非实, 故 $\xi$ 的零点恰好是 $\zeta$ 的非实数零点.

(iii) 由**定理 20.2.2**:

$$
\xi(z)=\frac12 z(z-1)2^{z}\pi^{\frac z2}\frac{\Gamma(1-z)}{\Gamma\left(1-\frac z2\right)}\zeta(1-z).
$$

用勒让德公式 $\Gamma(1-z)=2^{1-z}\pi^{-\frac12}\Gamma\left(\frac{1-z}{2}\right)\Gamma\left(1-\frac z2\right)$, 得

$$
\xi(z)=\frac12 z(z-1)\pi^{\frac{z-1}{2}}\Gamma\left(\frac{1-z}{2}\right)\zeta(1-z)=\xi(1-z).
$$

(iv) $\xi$ 的系数均为实系数 (由 $\pi,\Gamma,\zeta$ 在实轴取实值), 故 $\xi(\bar z)=\overline{\xi(z)}$. 对 $z=\frac12+it$, $\bar z=1-z$, 由 (iii) $\xi(z)=\xi(1-z)=\xi(\bar z)=\overline{\xi(z)}$, 故 $\xi(z)\in\mathbb{R}$ 于 $\operatorname{Re}z=\frac12$. $\blacksquare$

### 习题四

(习题 20.3-5, 狄利克雷) 令 $\zeta_{-}(z)=1-\frac1{2^{z}}+\frac1{3^{z}}-\cdots=\sum_{n=1}^{+\infty}\frac{(-1)^{n+1}}{n^{z}}$. 证明: (i) 定义 $\zeta_{-}(z)$ 的级数对 $\operatorname{Re}z>0$ 都收敛, 给出了半平面 $\operatorname{Re}s>0$ 上的一个全纯函数; (ii) 若 $z>1$, 则 $\zeta_{-}(z)=\left(1-2^{1-z}\right)\zeta(z)$; (iii) 利用 (ii) 中的函数方程验证 $\zeta_{-}(z)$ 在右半平面 $\operatorname{Re}z>1$ 上都没有零点; (iv) 利用 (ii) 验证函数 $\zeta$ 在实区间 $(0,1)$ 上没有零点.

### 解答 习题四

(i) 对 $\operatorname{Re}z>0$, $\left|\frac{(-1)^{n+1}}{n^{z}}\right|=n^{-\operatorname{Re}z}\to0$ 且单调递减, 交错级数收敛. 在紧子集 $\{\operatorname{Re}z\ge\delta>0\}$ 上, 交错级数余项不超过首项, 一致收敛, 故 $\zeta_{-}$ 在 $\{\operatorname{Re}z>0\}$ 上全纯.

(ii) 对 $z>1$ 绝对收敛, 分离偶项:

$$
\zeta_{-}(z)=\sum_{n=1}^{+\infty}\frac1{n^{z}}-2\sum_{n=1}^{+\infty}\frac1{(2n)^{z}}=\zeta(z)-2^{1-z}\zeta(z)=\left(1-2^{1-z}\right)\zeta(z).
$$

(iii) 由 (ii) 及解析延拓, 对 $\operatorname{Re}z>1$, $\zeta_{-}(z)=\left(1-2^{1-z}\right)\zeta(z)$. 因 $\operatorname{Re}z>1$, $|2^{1-z}|=2^{1-\operatorname{Re}z}<1$, 故 $1-2^{1-z}\ne0$; 又由**定义 20.1.1** 欧拉乘积, $\zeta(z)=\prod_{p}(1-p^{-z})^{-1}\ne0$. 故 $\zeta_{-}(z)\ne0$ 于 $\operatorname{Re}z>1$.

(iv) 由 (ii) 解析延拓, 对 $x\in(0,1)$, $\zeta_{-}(x)=\left(1-2^{1-x}\right)\zeta(x)$. 因 $0<x<1$ 时 $1-x>0$, $2^{1-x}>1$, $1-2^{1-x}\ne0$; 而 $\zeta_{-}(x)=\sum_{n}\frac{(-1)^{n+1}}{n^{x}}>0$ (交错级数首项 $1>0$, 各项绝对值递减且 $\frac{1}{2^{x}}<1$). 故 $\zeta(x)\ne0$ 于 $(0,1)$. $\blacksquare$
