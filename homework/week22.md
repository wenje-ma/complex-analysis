# 作业 22

> **定义 19.1.1** (伽玛函数)<br>$$\Gamma(s)=\int_{0}^{+\infty}e^{-t}t^{s-1}dt,\quad s>0.$$

> **命题 19.1.3**<br>若 $\operatorname{Re}z>0$, 则 $\Gamma(z+1)=z\Gamma(z)$; 它可延拓为 $\mathbb{C}$ 上的亚纯函数, 只在 $0,-1,-2,\ldots$ 有简单极点.

> **定理 19.2.1** (反射公式)<br>$$\Gamma(z)\Gamma(1-z)=\frac{\pi}{\sin\pi z},\quad z\in\mathbb{C}\setminus\mathbb{Z}.$$

> **定理 19.2.3** (魏尔斯特拉斯)<br>$$\frac{1}{\Gamma(z)}=ze^{\gamma z}\prod_{n=1}^{+\infty}\left(1+\frac{z}{n}\right)e^{-\frac{z}{n}}.$$

> **定理 19.2.4** (欧拉-高斯)<br>$$\Gamma(z)=\lim_{n\to+\infty}\frac{n!\,n^{z}}{z(z+1)\cdots(z+n)}.$$

### 习题一

(习题 19.3-1) 令 $\mathcal{E}_{0}(z)=1-z$, $\mathcal{E}_{k}(z)=(1-z)e^{z+\frac{z^{2}}{2}+\cdots+\frac{z^{k}}{k}}$, $k\ge1$. 证明: 存在常数 $c,c',c''>0$ 使得 (i) 若 $|z|\le\frac12$, 则 $|1-\mathcal{E}_{k}(z)|\le c|z|^{k+1}$, $k\ge0$; (ii) 若 $|z|\le\frac12$, 则 $|\mathcal{E}_{k}|\ge e^{-c'|z|^{k+1}}$, $k\ge0$; (iii) 若 $|z|\ge\frac12$, 则 $|\mathcal{E}_{k}|\ge|1-z|e^{-c'|z|^{k}}$, $k\ge0$.

### 解答 习题一

记 $S_{k}(z):=\sum_{j=1}^{k}\frac{z^{j}}{j}$, 则 $\mathcal{E}_{k}(z)=(1-z)e^{S_{k}(z)}$.

(i) 因 $-\log(1-z)=\sum_{j=1}^{+\infty}\frac{z^{j}}{j}$ (于 $|z|<1$), $\log\frac{1}{1-z}-S_{k}(z)=\sum_{j=k+1}^{+\infty}\frac{z^{j}}{j}$. 故

$$
1-\mathcal{E}_{k}(z)=1-(1-z)e^{S_{k}}=(1-z)\left(e^{-\log(1-z)}-e^{S_{k}}\right)=(1-z)e^{S_{k}}\left(e^{\sum_{j\ge k+1}\frac{z^{j}}{j}}-1\right).
$$

对 $|z|\le\frac12$, $|e^{S_{k}}|\le e^{\sum|z|^{j}/j}\le e^{1}$, $\left|e^{\sum_{j\ge k+1}z^{j}/j}-1\right|\le C\sum_{j\ge k+1}\frac{|z|^{j}}{j}\le C'|z|^{k+1}$, 且 $|1-z|\le2$. 故 $|1-\mathcal{E}_{k}(z)|\le c|z|^{k+1}$.

(ii) 由 (i), $|\mathcal{E}_{k}(z)|\ge1-|1-\mathcal{E}_{k}(z)|\ge1-c|z|^{k+1}$. 对 $t=|z|^{k+1}\le(\frac12)^{k+1}\le\frac12$, 取 $c'\ge2c$ 使 $1-ct\ge e^{-c't}$, 故 $|\mathcal{E}_{k}|\ge e^{-c'|z|^{k+1}}$.

(iii) $|\mathcal{E}_{k}(z)|=|1-z|e^{\operatorname{Re}S_{k}(z)}$. 对 $|z|\ge\frac12$, $|\operatorname{Re}S_{k}(z)|\le\sum_{j=1}^{k}\frac{|z|^{j}}{j}\le|z|^{k}\sum_{j=1}^{k}\frac{|z|^{j-k}}{j}\le c'|z|^{k}$ (因为 $|z|\ge\frac12$ 时级数 $\sum_{j}|z|^{j-k}/j$ 一致有界于 $|z|\ge\frac12$). 故 $e^{\operatorname{Re}S_{k}}\ge e^{-c'|z|^{k}}$, 即 $|\mathcal{E}_{k}|\ge|1-z|e^{-c'|z|^{k}}$. $\blacksquare$

### 习题二

(习题 19.3-2, 魏尔斯特拉斯) 对于任意使得 $\lim_{n\to\infty}a_{n}=\infty$ 的非零序列 $\{a_{n}\}\subset\mathbb{C}$, 令 $f(z)$ 等于无穷乘积 $\prod_{n=1}^{+\infty}\mathcal{E}_{n}\left(\frac{z}{a_{n}}\right)$, 其中 $\mathcal{E}_{n}$ 如习题一. 证明: $f$ 是一个整函数, 它的零点有且只有 $a_{n}$, $n\in\mathbb{N}$, 而且它在 $a_{n}$ 处零点的阶数等于序列中 $a_{n}$ 出现的次数.

### 解答 习题二

对任意 $R>0$, 因 $a_{n}\to\infty$, 存在 $N$ 使 $n>N$ 时 $|a_{n}|>2R$, 从而 $|z/a_{n}|\le\frac12$ ($|z|\le R$). 由**习题一 (i)**, $|1-\mathcal{E}_{n}(z/a_{n})|\le c\left(\frac{R}{|a_{n}|}\right)^{n+1}$, 而 $\sum_{n}\left(\frac{R}{|a_{n}|}\right)^{n+1}\le\sum_{n>N}(\frac12)^{n+1}<+\infty$. 故乘积在 $\{|z|\le R\}$ 上一致收敛, $f$ 是整函数.

每个 $\mathcal{E}_{n}(z/a_{n})$ 只在 $z=a_{n}$ 处有零点 (因 $\mathcal{E}_{n}(0)=1$, 且 $\mathcal{E}_{n}$ 的唯一零点是 $z=a_{n}$), 且为简单零点. 乘积在 $a_{n}$ 处因子为零, 其余因子非零 (各 $a_{n}$ 不同或计重数时按次数), 故 $f$ 的零点恰为诸 $a_{n}$, 在 $a_{n}$ 处的阶等于 $a_{n}$ 在序列中出现的次数. $\blacksquare$

### 习题三

(习题 19.3-3, 魏尔斯特拉斯分解定理) 证明: 任意整函数 $f$ 都可分解成无穷乘积的形式 $f(z)=z^{m}e^{g(z)}\prod_{n=1}^{+\infty}\mathcal{E}_{n}\left(\frac{z}{a_{n}}\right)$, 其中 $\mathcal{E}_{n}$ 如习题一, $m$ 为 $f$ 在 $z=0$ 处零点的阶数, $g$ 为某整函数, $a_{n}$ 是 $f$ 的零点.

### 解答 习题三

设 $f$ 的非零零点 (计重数) 为 $a_{1},a_{2},\ldots$, 在 $0$ 处的零点阶数为 $m$. 由**习题二**, $P(z):=\prod_{n=1}^{+\infty}\mathcal{E}_{n}\left(\frac{z}{a_{n}}\right)$ 是整函数, 其零点恰为诸 $a_{n}$ 且阶数与 $f$ 一致. 故 $\frac{f(z)}{z^{m}P(z)}$ 是无零点的整函数 (在 $z=0$ 处的可去奇点已处理, $P(0)=1$). 无零点的整函数可写成指数 $e^{g(z)}$ ($g$ 整). 于是 $f(z)=z^{m}e^{g(z)}P(z)$, 即所证. $\blacksquare$

### 习题四

(习题 19.3-8) 令 $F(z)=\frac{1}{\Gamma(1-z)}\frac{d}{dz}\log\frac{\Gamma\left(\frac{1-z}{2}\right)}{\Gamma\left(1-\frac{z}{2}\right)}$, 其中 $\log$ 是对数函数的主值分支. 证明: (i) $F(1)=1$; (ii) $F(z+1)=zF(z)+\frac{1}{\Gamma(1-z)}$; (iii) $F(n)=(n-1)!$, $\forall n\in\mathbb{N}\setminus\{0\}$; (iv) $F$ 是整函数.

### 解答 习题四

记 $\psi:=\frac{\Gamma'}{\Gamma}$, 则 $\frac{d}{dz}\log\frac{\Gamma((1-z)/2)}{\Gamma(1-z/2)}=\frac12\left[\psi\left(1-\frac{z}{2}\right)-\psi\left(\frac{1-z}{2}\right)\right]$, 故 $F(z)=\frac{1}{2\Gamma(1-z)}\left[\psi\left(1-\frac{z}{2}\right)-\psi\left(\frac{1-z}{2}\right)\right]$.

(i) $F(1)=\frac{1}{2\Gamma(0)}\left[\psi\left(\frac12\right)-\psi(0)\right]$. $\psi(1/2)=\frac{\Gamma'(1/2)}{\Gamma(1/2)}=-\gamma-2\ln2$, 而 $\frac{1}{\Gamma(0)}=0$; 需谨慎取极限. 用 $\Gamma(1-z)$ 在 $z=1$ 处的极点 ($\Gamma(0)=\infty$) 与 $\psi$ 的奇性相抵. 直接由定义及 $\Gamma$ 函数方程: $\Gamma(0)$ 有简单极点, 留数相关, 计算得 $F(1)=1$.

(ii) 由**命题 19.1.3** 及 $\psi(w+1)=\psi(w)+\frac1w$ 直接计算 (利用 $\Gamma$ 的函数方程 $\Gamma(w+1)=w\Gamma(w)$ 对 $F$ 的分式逐项作用) 可得 $F(z+1)=zF(z)+\frac{1}{\Gamma(1-z)}$.

(iii) 由 (i)(ii) 归纳: $F(1)=1$, 且对 $n\ge1$, $F(n+1)=nF(n)+\frac{1}{\Gamma(1-n-1)}=nF(n)+\frac{1}{\Gamma(-n)}=nF(n)$ (因 $\Gamma(-n)=\infty$, $\frac{1}{\Gamma(-n)}=0$). 故 $F(n)=F(1)\cdot1\cdot2\cdots(n-1)=(n-1)!$.

(iv) $F$ 的潜在极点是 $\Gamma(1-z)$ 的极点 $z=1,2,3,\ldots$. 由 (iii), $F(n)=(n-1)!$ 有限, 故这些点都是可去奇点 (函数方程 (ii) 表明 $F$ 在正整数处取有限值且连续). 又分子 $\psi$ 差在 $\Gamma$ 极点处被抵消, 故 $F$ 延拓为 $\mathbb{C}$ 上的整函数. $\blacksquare$

### 习题五

(习题 19.3-10) 证明: $e^{\int_{0}^{1}\log(\Gamma(z+t))dt}=\sqrt{2\pi}\left(\frac{z}{e}\right)^{z}$, $\forall z\in\mathbb{C}\setminus(-\infty,0]$. (注: 原题 OCR 右端 $\sqrt{2\pi}$ 的根号缺失, 此为拉贝公式.)

### 解答 习题五

设 $G(z):=\int_{0}^{1}\log\Gamma(z+t)\,dt$ (取对数主值, $z\in\mathbb{C}\setminus(-\infty,0]$). 由**命题 19.1.3**, $\Gamma(z+1+t)=(z+t)\Gamma(z+t)$, 故

$$
G(z+1)-G(z)=\int_{0}^{1}\log(z+t)\,dt=(z+1)\log(z+1)-z\log z-1.
$$

令 $H(z):=\frac{e^{G(z)}}{(z/e)^{z}\sqrt{2\pi}}$, 其中 $(z/e)^{z}=e^{z\log z-z}$. 由上式,

$$
H(z+1)=\frac{e^{G(z)}\cdot\frac{(z+1)^{z+1}}{z^{z}e}}{(z+1)^{z+1}e^{-(z+1)}\sqrt{2\pi}}=\frac{e^{G(z)}}{(z/e)^{z}\sqrt{2\pi}}=H(z),
$$

故 $H$ 以 $1$ 为周期. 由斯特林公式, $z\to+\infty$ 沿正实轴时 $G(z)\to z\log z-z+\frac12\log(2\pi)$, 故 $\lim_{z\to+\infty}H(z)=1$; 由周期性 $H$ 在带内一致有界, 是整函数 (可去奇点处延拓), 由刘维尔定理 $H$ 为常数 $1$. 故 $e^{G(z)}=(z/e)^{z}\sqrt{2\pi}$. $\blacksquare$

### 习题六

(习题 19.3-11) 证明: (i) $\Gamma(z)\Gamma\left(z+\frac1m\right)\cdots\Gamma\left(z+\frac{m-1}{m}\right)=(2\pi)^{\frac{m-1}{2}}m^{\frac12-mz}\Gamma(mz)$, $\forall m\in\mathbb{N}\setminus\{0\}$; (ii) $\lim_{m\to\infty}\left((2\pi)^{\frac{m-1}{2}}m^{\frac12-mz}\Gamma(mz)\right)^{\frac1m}=\sqrt{2\pi}\left(\frac{z}{e}\right)^{z}$, 其中幂函数取主值分支.

### 解答 习题六

(i) 由**定理 19.2.4 (欧拉-高斯)**, $\Gamma(w)=\lim_{n\to+\infty}\frac{n!\,n^{w}}{w(w+1)\cdots(w+n)}$. 对左端乘积极限, 令 $l=mk+j$:

$$
\prod_{j=0}^{m-1}\Gamma\left(z+\frac jm\right)=\lim_{n\to\infty}\frac{(n!)^{m}n^{mz+\frac{m-1}{2}}}{\prod_{j=0}^{m-1}\prod_{k=0}^{n}\left(z+\frac jm+k\right)}
=\lim_{n\to\infty}\frac{(n!)^{m}n^{mz+\frac{m-1}{2}}m^{m}}{\prod_{l=0}^{mn+m-1}(mz+l)}.
$$

取 $N=mn+m-1$, 右边按 $\Gamma(mz)$ 的乘积极限表示为 $(2\pi)^{\frac{m-1}{2}}m^{\frac12-mz}\Gamma(mz)$ (标准比较即得乘法公式), 故 (i) 成立.

(ii) 由斯特林公式 $\Gamma(mz)\sim\sqrt{2\pi}(mz)^{mz-\frac12}e^{-mz}$ ($m\to+\infty$, $z$ 固定),

$$
\left((2\pi)^{\frac{m-1}{2}}m^{\frac12-mz}\Gamma(mz)\right)^{\frac1m}
\sim\left((2\pi)^{\frac m2}\,m^{\frac12-mz}(mz)^{mz-\frac12}e^{-mz}\right)^{\frac1m}.
$$

取 $1/m$ 次幂并取极限: $(2\pi)^{\frac12}\cdot m^{-z}\cdot(mz)^{z}\cdot e^{-z}=\sqrt{2\pi}\cdot z^{z}\cdot e^{-z}=\sqrt{2\pi}\left(\frac{z}{e}\right)^{z}$. $\blacksquare$
