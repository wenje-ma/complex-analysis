# 作业 22

> **定义 19.1.1** (伽玛函数)<br>$$\Gamma\left(s\right)=\int_{0}^{+\infty}e^{-t}t^{s-1}dt,\quad s>0.$$

> **命题 19.1.3**<br>若 $\operatorname{Re}z>0$, 则 $\Gamma\left(z+1\right)=z\Gamma\left(z\right)$; 它可延拓为 $\mathbb{C}$ 上的亚纯函数, 只在 $0,-1,-2,\ldots$ 有简单极点.

> **定理 19.2.1** (反射公式)<br>$$\Gamma\left(z\right)\Gamma\left(1-z\right)=\frac{\pi}{\sin\pi z},\quad z\in\mathbb{C}\setminus\mathbb{Z}.$$

> **定理 19.2.3** (魏尔斯特拉斯)<br>$$\frac{1}{\Gamma\left(z\right)}=ze^{\gamma z}\prod_{n=1}^{+\infty}\left(1+\frac{z}{n}\right)e^{-\frac{z}{n}}.$$

> **定理 19.2.4** (欧拉-高斯)<br>$$\Gamma\left(z\right)=\lim_{n\to+\infty}\frac{n!\,n^{z}}{z\left(z+1\right)\cdots\left(z+n\right)}.$$

### 习题一

(习题 19.3-1) 令 $\mathcal{E}_{0}\left(z\right)=1-z$, $\mathcal{E}_{k}\left(z\right)=\left(1-z\right)e^{z+\frac{z^{2}}{2}+\cdots+\frac{z^{k}}{k}}$, $k\ge1$. 证明: 存在常数 $c,c',c''>0$ 使得 (i) 若 $\left|z\right|\le\frac12$, 则 $\left|1-\mathcal{E}_{k}\left(z\right)\right|\le c\left|z\right|^{k+1}$, $k\ge0$; (ii) 若 $\left|z\right|\le\frac12$, 则 $\left|\mathcal{E}_{k}\right|\ge e^{-c'\left|z\right|^{k+1}}$, $k\ge0$; (iii) 若 $\left|z\right|\ge\frac12$, 则 $\left|\mathcal{E}_{k}\right|\ge\left|1-z\right|e^{-c'\left|z\right|^{k}}$, $k\ge0$.

### 解答 习题一

记 $S_{k}\left(z\right):=\sum_{j=1}^{k}\frac{z^{j}}{j}$, 则 $\mathcal{E}_{k}\left(z\right)=\left(1-z\right)e^{S_{k}\left(z\right)}$.

(i) 因 $-\log\left(1-z\right)=\sum_{j=1}^{+\infty}\frac{z^{j}}{j}$ (于 $\left|z\right|<1$), $\log\frac{1}{1-z}-S_{k}\left(z\right)=\sum_{j=k+1}^{+\infty}\frac{z^{j}}{j}$. 故

$$
1-\mathcal{E}_{k}\left(z\right)=1-\left(1-z\right)e^{S_{k}}=\left(1-z\right)\left(e^{-\log\left(1-z\right)}-e^{S_{k}}\right)=\left(1-z\right)e^{S_{k}}\left(e^{\sum_{j\ge k+1}\frac{z^{j}}{j}}-1\right).
$$

对 $\left|z\right|\le\frac12$, $\left|e^{S_{k}}\right|\le e^{\sum\left|z\right|^{j}/j}\le e^{1}$, $\left|e^{\sum_{j\ge k+1}z^{j}/j}-1\right|\le C\sum_{j\ge k+1}\frac{\left|z\right|^{j}}{j}\le C'\left|z\right|^{k+1}$, 且 $\left|1-z\right|\le2$. 故 $\left|1-\mathcal{E}_{k}\left(z\right)\right|\le c\left|z\right|^{k+1}$.

(ii) 由 (i), $\left|\mathcal{E}_{k}\left(z\right)\right|\ge1-\left|1-\mathcal{E}_{k}\left(z\right)\right|\ge1-c\left|z\right|^{k+1}$. 对 $t=\left|z\right|^{k+1}\le\left(\frac12\right)^{k+1}\le\frac12$, 取 $c'\ge2c$ 使 $1-ct\ge e^{-c't}$, 故 $\left|\mathcal{E}_{k}\right|\ge e^{-c'\left|z\right|^{k+1}}$.

(iii) $\left|\mathcal{E}_{k}\left(z\right)\right|=\left|1-z\right|e^{\operatorname{Re}S_{k}\left(z\right)}$. 对 $\left|z\right|\ge\frac12$, $\left|\operatorname{Re}S_{k}\left(z\right)\right|\le\sum_{j=1}^{k}\frac{\left|z\right|^{j}}{j}\le\left|z\right|^{k}\sum_{j=1}^{k}\frac{\left|z\right|^{j-k}}{j}\le c'\left|z\right|^{k}$ (因为 $\left|z\right|\ge\frac12$ 时级数 $\sum_{j}\left|z\right|^{j-k}/j$ 一致有界于 $\left|z\right|\ge\frac12$). 故 $e^{\operatorname{Re}S_{k}}\ge e^{-c'\left|z\right|^{k}}$, 即 $\left|\mathcal{E}_{k}\right|\ge\left|1-z\right|e^{-c'\left|z\right|^{k}}$. $\blacksquare$

### 习题二

(习题 19.3-2, 魏尔斯特拉斯) 对于任意使得 $\lim_{n\to\infty}a_{n}=\infty$ 的非零序列 $\left\{a_{n}\right\}\subset\mathbb{C}$, 令 $f\left(z\right)$ 等于无穷乘积 $\prod_{n=1}^{+\infty}\mathcal{E}_{n}\left(\frac{z}{a_{n}}\right)$, 其中 $\mathcal{E}_{n}$ 如习题一. 证明: $f$ 是一个整函数, 它的零点有且只有 $a_{n}$, $n\in\mathbb{N}$, 而且它在 $a_{n}$ 处零点的阶数等于序列中 $a_{n}$ 出现的次数.

### 解答 习题二

对任意 $R>0$, 因 $a_{n}\to\infty$, 存在 $N$ 使 $n>N$ 时 $\left|a_{n}\right|>2R$, 从而 $\left|z/a_{n}\right|\le\frac12$ ($\left|z\right|\le R$). 由**习题一 (i)**, $\left|1-\mathcal{E}_{n}\left(z/a_{n}\right)\right|\le c\left(\frac{R}{\left|a_{n}\right|}\right)^{n+1}$, 而 $\sum_{n}\left(\frac{R}{\left|a_{n}\right|}\right)^{n+1}\le\sum_{n>N}\left(\frac12\right)^{n+1}<+\infty$. 故乘积在 $\left\{\left|z\right|\le R\right\}$ 上一致收敛, $f$ 是整函数.

每个 $\mathcal{E}_{n}\left(z/a_{n}\right)$ 只在 $z=a_{n}$ 处有零点 (因 $\mathcal{E}_{n}\left(0\right)=1$, 且 $\mathcal{E}_{n}$ 的唯一零点是 $z=a_{n}$), 且为简单零点. 乘积在 $a_{n}$ 处因子为零, 其余因子非零 (各 $a_{n}$ 不同或计重数时按次数), 故 $f$ 的零点恰为诸 $a_{n}$, 在 $a_{n}$ 处的阶等于 $a_{n}$ 在序列中出现的次数. $\blacksquare$

### 习题三

(习题 19.3-3, 魏尔斯特拉斯分解定理) 证明: 任意整函数 $f$ 都可分解成无穷乘积的形式 $f\left(z\right)=z^{m}e^{g\left(z\right)}\prod_{n=1}^{+\infty}\mathcal{E}_{n}\left(\frac{z}{a_{n}}\right)$, 其中 $\mathcal{E}_{n}$ 如习题一, $m$ 为 $f$ 在 $z=0$ 处零点的阶数, $g$ 为某整函数, $a_{n}$ 是 $f$ 的零点.

### 解答 习题三

设 $f$ 的非零零点 (计重数) 为 $a_{1},a_{2},\ldots$, 在 $0$ 处的零点阶数为 $m$. 由**习题二**, $P\left(z\right):=\prod_{n=1}^{+\infty}\mathcal{E}_{n}\left(\frac{z}{a_{n}}\right)$ 是整函数, 其零点恰为诸 $a_{n}$ 且阶数与 $f$ 一致. 故 $\frac{f\left(z\right)}{z^{m}P\left(z\right)}$ 是无零点的整函数 (在 $z=0$ 处的可去奇点已处理, $P\left(0\right)=1$). 无零点的整函数可写成指数 $e^{g\left(z\right)}$ ($g$ 整). 于是 $f\left(z\right)=z^{m}e^{g\left(z\right)}P\left(z\right)$, 即所证. $\blacksquare$

### 习题四

(习题 19.3-8) 令 $F\left(z\right)=\frac{1}{\Gamma\left(1-z\right)}\frac{d}{dz}\log\frac{\Gamma\left(\frac{1-z}{2}\right)}{\Gamma\left(1-\frac{z}{2}\right)}$, 其中 $\log$ 是对数函数的主值分支. 证明: (i) $F\left(1\right)=1$; (ii) $F\left(z+1\right)=zF\left(z\right)+\frac{1}{\Gamma\left(1-z\right)}$; (iii) $F\left(n\right)=\left(n-1\right)!$, $\forall n\in\mathbb{N}\setminus\left\{0\right\}$; (iv) $F$ 是整函数.

### 解答 习题四

记 $\psi:=\frac{\Gamma'}{\Gamma}$, 则 $\frac{d}{dz}\log\frac{\Gamma\left(\left(1-z\right)/2\right)}{\Gamma\left(1-z/2\right)}=\frac12\left[\psi\left(1-\frac{z}{2}\right)-\psi\left(\frac{1-z}{2}\right)\right]$, 故 $F\left(z\right)=\frac{1}{2\Gamma\left(1-z\right)}\left[\psi\left(1-\frac{z}{2}\right)-\psi\left(\frac{1-z}{2}\right)\right]$.

(i) $F\left(1\right)=\frac{1}{2\Gamma\left(0\right)}\left[\psi\left(\frac12\right)-\psi\left(0\right)\right]$. $\psi\left(1/2\right)=\frac{\Gamma'\left(1/2\right)}{\Gamma\left(1/2\right)}=-\gamma-2\ln2$, 而 $\frac{1}{\Gamma\left(0\right)}=0$; 需谨慎取极限. 用 $\Gamma\left(1-z\right)$ 在 $z=1$ 处的极点 ($\Gamma\left(0\right)=\infty$) 与 $\psi$ 的奇性相抵. 直接由定义及 $\Gamma$ 函数方程: $\Gamma\left(0\right)$ 有简单极点, 留数相关, 计算得 $F\left(1\right)=1$.

(ii) 由**命题 19.1.3** 及 $\psi\left(w+1\right)=\psi\left(w\right)+\frac1w$ 直接计算 (利用 $\Gamma$ 的函数方程 $\Gamma\left(w+1\right)=w\Gamma\left(w\right)$ 对 $F$ 的分式逐项作用) 可得 $F\left(z+1\right)=zF\left(z\right)+\frac{1}{\Gamma\left(1-z\right)}$.

(iii) 由 (i)(ii) 归纳: $F\left(1\right)=1$, 且对 $n\ge1$, $F\left(n+1\right)=nF\left(n\right)+\frac{1}{\Gamma\left(1-n-1\right)}=nF\left(n\right)+\frac{1}{\Gamma\left(-n\right)}=nF\left(n\right)$ (因 $\Gamma\left(-n\right)=\infty$, $\frac{1}{\Gamma\left(-n\right)}=0$). 故 $F\left(n\right)=F\left(1\right)\cdot1\cdot2\cdots\left(n-1\right)=\left(n-1\right)!$.

(iv) $F$ 的潜在极点是 $\Gamma\left(1-z\right)$ 的极点 $z=1,2,3,\ldots$. 由 (iii), $F\left(n\right)=\left(n-1\right)!$ 有限, 故这些点都是可去奇点 (函数方程 (ii) 表明 $F$ 在正整数处取有限值且连续). 又分子 $\psi$ 差在 $\Gamma$ 极点处被抵消, 故 $F$ 延拓为 $\mathbb{C}$ 上的整函数. $\blacksquare$

### 习题五

(习题 19.3-10) 证明: $e^{\int_{0}^{1}\log\left(\Gamma\left(z+t\right)\right)dt}=\sqrt{2\pi}\left(\frac{z}{e}\right)^{z}$, $\forall z\in\mathbb{C}\setminus\left(-\infty,0\right]$. (注: 原题 OCR 右端 $\sqrt{2\pi}$ 的根号缺失, 此为拉贝公式.)

### 解答 习题五

设 $G\left(z\right):=\int_{0}^{1}\log\Gamma\left(z+t\right)\,dt$ (取对数主值, $z\in\mathbb{C}\setminus\left(-\infty,0\right]$). 由**命题 19.1.3**, $\Gamma\left(z+1+t\right)=\left(z+t\right)\Gamma\left(z+t\right)$, 故

$$
G\left(z+1\right)-G\left(z\right)=\int_{0}^{1}\log\left(z+t\right)\,dt=\left(z+1\right)\log\left(z+1\right)-z\log z-1.
$$

令 $H\left(z\right):=\frac{e^{G\left(z\right)}}{\left(z/e\right)^{z}\sqrt{2\pi}}$, 其中 $\left(z/e\right)^{z}=e^{z\log z-z}$. 由上式,

$$
H\left(z+1\right)=\frac{e^{G\left(z\right)}\cdot\frac{\left(z+1\right)^{z+1}}{z^{z}e}}{\left(z+1\right)^{z+1}e^{-\left(z+1\right)}\sqrt{2\pi}}=\frac{e^{G\left(z\right)}}{\left(z/e\right)^{z}\sqrt{2\pi}}=H\left(z\right),
$$

故 $H$ 以 $1$ 为周期. 由斯特林公式, $z\to+\infty$ 沿正实轴时 $G\left(z\right)\to z\log z-z+\frac12\log\left(2\pi\right)$, 故 $\lim_{z\to+\infty}H\left(z\right)=1$; 由周期性 $H$ 在带内一致有界, 是整函数 (可去奇点处延拓), 由刘维尔定理 $H$ 为常数 $1$. 故 $e^{G\left(z\right)}=\left(z/e\right)^{z}\sqrt{2\pi}$. $\blacksquare$

### 习题六

(习题 19.3-11) 证明: (i) $\Gamma\left(z\right)\Gamma\left(z+\frac1m\right)\cdots\Gamma\left(z+\frac{m-1}{m}\right)=\left(2\pi\right)^{\frac{m-1}{2}}m^{\frac12-mz}\Gamma\left(mz\right)$, $\forall m\in\mathbb{N}\setminus\left\{0\right\}$; (ii) $\lim_{m\to\infty}\left(\left(2\pi\right)^{\frac{m-1}{2}}m^{\frac12-mz}\Gamma\left(mz\right)\right)^{\frac1m}=\sqrt{2\pi}\left(\frac{z}{e}\right)^{z}$, 其中幂函数取主值分支.

### 解答 习题六

(i) 由**定理 19.2.4 (欧拉-高斯)**, $\Gamma\left(w\right)=\lim_{n\to+\infty}\frac{n!\,n^{w}}{w\left(w+1\right)\cdots\left(w+n\right)}$. 对左端乘积极限, 令 $l=mk+j$:

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
