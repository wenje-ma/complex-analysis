# 作业 9

> **定理 8.3.2** (高阶导数公式)<br>$$f^{\left(n\right)}\left(z\right)=\frac{n!}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\left(\zeta-z\right)^{n+1}}\,d\zeta.$$

> **定理 9.1.3** (刘威尔)<br>$\mathbb{C}$ 上的有界整函数必为常值函数.

> **定理 9.3.2** (恒等定理)<br>若区域 $D$ 上的全纯函数 $f$ 的零点在 $D$ 内有聚点, 则 $f\equiv0$.

> **定理 9.3.3** (唯一性定理)<br>若区域 $D$ 上的两个全纯函数 $f,g$ 在 $D$ 内有聚点的点集上相等, 则 $f\equiv g$.

> **定理 10.1.4** (开映射定理)<br>非常值的全纯函数把区域映成区域 (开集).

### 习题一

(习题 9.4-2) 令 $f$ 是单位圆盘 $\mathbb{D}:=\left\{z\in\mathbb{C}:\left|z\right|<1\right\}$ 上的全纯函数而且 $\left|f'\left(z\right)\right|\le\frac{1}{1-\left|z\right|}$, $\forall z\in\mathbb{D}$. 证明: 函数 $f$ 在 $z=0$ 处的泰勒级数的系数 $c_{n}$ 都满足 $\left|c_{n}\right|<e$, $\forall n\in\mathbb{N}\setminus\left\{0\right\}$.

### 解答 习题一

$f$ 在 $0$ 处的泰勒系数 $c_{n}=\frac{f^{\left(n\right)}\left(0\right)}{n!}$. 由**定理 8.3.2 (高阶导数公式)** 对 $f'$ 应用 $n-1$ 阶导数, 取 $0<r<1$:

$$
f^{\left(n\right)}\left(0\right)=\frac{\left(n-1\right)!}{2\pi i}\int_{\left|z\right|=r}\frac{f'\left(z\right)}{z^{n}}\,dz.
$$

于是

$$
\left|c_{n}\right|=\frac{\left|f^{\left(n\right)}\left(0\right)\right|}{n!}\le\frac{\left(n-1\right)!}{n!}\cdot\frac{1}{2\pi}\cdot\frac{1}{1-r}\cdot\frac{2\pi r}{r^{n}}=\frac{1}{n}\cdot\frac{r^{1-n}}{1-r}.
$$

对 $r\in\left(0,1\right)$ 取最优. 令 $h\left(r\right)=\frac{r^{1-n}}{1-r}$, 由 $h'\left(r\right)=0$ 得 $r=\frac{n-1}{n}$, 此时

$$
h\left(\frac{n-1}{n}\right)=\frac{\left(\frac{n-1}{n}\right)^{1-n}}{1-\frac{n-1}{n}}=n\left(1+\frac{1}{n-1}\right)^{n-1}.
$$

故 $\left|c_{n}\right|\le\left(1+\frac{1}{n-1}\right)^{n-1}<e$ (因 $\left(1+\frac{1}{m}\right)^{m}<e$). 命题得证. $\blacksquare$

### 习题二

(习题 9.4-4) 令 $D$ 为包含原点的区域, $f\left(x\right):=\begin{cases}e^{-1/x^{2}},&x\ne0\\0,&x=0\end{cases}$. 请问是否存在 $D$ 上的全纯函数使得它限定在实轴上与函数 $f$ 相等?

### 解答 习题二

不存在. 反设存在 $D$ 上的全纯函数 $F$ 满足 $F\left(x\right)=f\left(x\right)$ 对实轴上的一切点成立. 由实分析中已知 $f$ 在 $0$ 处各阶导数都存在且 $f^{\left(n\right)}\left(0\right)=0$, $\forall n\ge0$ (函数 $e^{-1/x^{2}}$ 是实光滑而非实解析的典型例子). 因 $F$ 与 $f$ 在实轴重合, $F^{\left(n\right)}\left(0\right)=f^{\left(n\right)}\left(0\right)=0$, 故 $F$ 在 $0$ 处的泰勒级数各项系数均为 $0$, 于是 $F$ 在 $0$ 的某邻域上恒为 $0$. 由**定理 9.3.2 (恒等定理)**, $F\equiv0$ 在 $D$ 上. 但取实轴上 $x\ne0$, $F\left(x\right)=0\ne e^{-1/x^{2}}=f\left(x\right)$, 矛盾. 故不存在. $\blacksquare$

### 习题三

(习题 9.4-6) 令 $f,g$ 是 $\mathbb{D}:=\left\{z\in\mathbb{C}:\left|z\right|<1\right\}$ 上的全纯函数且不取零值. 证明: 若 $\frac{f'\left(x_{n}\right)}{f\left(x_{n}\right)}=\frac{g'\left(x_{n}\right)}{g\left(x_{n}\right)}$, 其中 $x_{n}=\frac{1}{n}$, $n=2,3,\cdots$, 则 $f=cg$, $c\in\mathbb{C}$.

### 解答 习题三

因 $f,g$ 在 $\mathbb{D}$ 上不取零值, $\frac{f'}{f}-\frac{g'}{g}$ 在 $\mathbb{D}$ 上全纯. 由条件它在点列 $\left\{x_{n}\right\}$ 上为零, 而 $x_{n}=\frac{1}{n}\to0\in\mathbb{D}$, 即零点在 $\mathbb{D}$ 内有聚点 $0$. 由**定理 9.3.2 (恒等定理)**, $\frac{f'}{f}-\frac{g'}{g}\equiv0$, 即 $\frac{f'}{f}=\frac{g'}{g}$ 在 $\mathbb{D}$ 上.

故 $\left(\log f\right)'=\left(\log g\right)'$ 在 $\mathbb{D}$ 上 (取任一局部对数分支), 于是 $\log f-\log g$ 在 $\mathbb{D}$ 上局部为常数; 因 $\mathbb{D}$ 连通, 存在 $c_{0}\in\mathbb{C}$ 使 $\log f=\log g+c_{0}$ 在 $\mathbb{D}$ 上. 取指数得 $f=e^{c_{0}}g$, 即 $f=cg$, $c=e^{c_{0}}$. $\blacksquare$

### 习题四

(习题 9.4-8) (波莱尔-卡拉泰奥多里) 令 $f$ 是闭圆盘 $\left\{z\in\mathbb{C}:\left|z\right|\le R\right\}$ 上的全纯函数, $\sum_{k=0}^{\infty}a_{k}z^{k}$ 为 $f$ 在 $0$ 处的泰勒级数. 证明:

$$
\left|a_{k}\right|R^{k}\le4\max_{0\le\theta\le2\pi}\operatorname{Re}f\left(Re^{i\theta}\right)+4\left|f\left(0\right)\right|,\quad\forall k\in\mathbb{N}.
$$

### 解答 习题四

记 $A=\max_{0\le\theta\le2\pi}\operatorname{Re}f\left(Re^{i\theta}\right)$, $u=\operatorname{Re}f$. 对 $k\ge1$, 由 $f\left(Re^{i\theta}\right)=\sum_{j=0}^{\infty}a_{j}R^{j}e^{ij\theta}$ 及 $u=\operatorname{Re}f$ 的傅里叶展开, 对 $k\ge1$ 有

$$
\frac{1}{2\pi}\int_{0}^{2\pi}u\left(Re^{i\theta}\right)e^{-ik\theta}\,d\theta=\frac{1}{2}a_{k}R^{k},
$$

故 $a_{k}R^{k}=\frac{1}{\pi}\int_{0}^{2\pi}u\left(Re^{i\theta}\right)e^{-ik\theta}\,d\theta$. 令 $A_{+}=\max\left(A,0\right)$, 则 $u\left(Re^{i\theta}\right)\le A\le A_{+}$, 从而 $\left|u\right|\le2A_{+}-u$. 于是

$$
\left|a_{k}\right|R^{k}\le\frac{1}{\pi}\int_{0}^{2\pi}\left|u\left(Re^{i\theta}\right)\right|\,d\theta\le\frac{1}{\pi}\int_{0}^{2\pi}\left(2A_{+}-u\left(Re^{i\theta}\right)\right)\,d\theta=4A_{+}-2\operatorname{Re}f\left(0\right).
$$

又 $-\operatorname{Re}f\left(0\right)\le\left|\operatorname{Re}f\left(0\right)\right|\le\left|f\left(0\right)\right|$, 且 $A\ge\operatorname{Re}f\left(0\right)\ge-\left|f\left(0\right)\right|$ 保证 $4A_{+}\le4A+4\left|f\left(0\right)\right|$, 故

$$
\left|a_{k}\right|R^{k}\le4A+4\left|f\left(0\right)\right|,\quad k\ge1.
$$

对 $k=0$, $\left|a_{0}\right|=\left|f\left(0\right)\right|\le4A+4\left|f\left(0\right)\right|$ 显然. 命题得证. $\blacksquare$

### 习题五

(习题 9.4-10) (洛必达法则) 令 $D\subset\mathbb{C}$ 是开集, $f,g$ 为 $D$ 上的全纯函数, $a\in D$ 为它们的共同孤立零点. 证明:

(i) 若 $f$ 和 $g$ 均在 $a$ 处有 $m$-阶零点, 则 $\lim_{z\to a}\frac{f\left(z\right)}{g\left(z\right)}=\lim_{z\to a}\frac{f^{\left(m\right)}\left(z\right)}{g^{\left(m\right)}\left(z\right)}$;

(ii) $\lim_{z\to a}\frac{f\left(z\right)}{g\left(z\right)}=\lim_{z\to a}\frac{f'\left(z\right)}{g'\left(z\right)}$ (包括极限为 $\infty$ 的情况).

### 解答 习题五

(i) $f$ 在 $a$ 处有 $m$-阶零点, 故 $f\left(z\right)=\left(z-a\right)^{m}f_{1}\left(z\right)$, $f_{1}\left(a\right)\ne0$; 同理 $g\left(z\right)=\left(z-a\right)^{m}g_{1}\left(z\right)$, $g_{1}\left(a\right)\ne0$. 于是

$$
\frac{f\left(z\right)}{g\left(z\right)}=\frac{f_{1}\left(z\right)}{g_{1}\left(z\right)}\to\frac{f_{1}\left(a\right)}{g_{1}\left(a\right)}.
$$

另一方面由莱布尼茨公式, $f^{\left(m\right)}\left(a\right)=m!f_{1}\left(a\right)$, $g^{\left(m\right)}\left(a\right)=m!g_{1}\left(a\right)$, 故

$$
\lim_{z\to a}\frac{f^{\left(m\right)}\left(z\right)}{g^{\left(m\right)}\left(z\right)}=\frac{m!f_{1}\left(a\right)}{m!g_{1}\left(a\right)}=\frac{f_{1}\left(a\right)}{g_{1}\left(a\right)}=\lim_{z\to a}\frac{f\left(z\right)}{g\left(z\right)}.
$$

(ii) 设 $f$ 在 $a$ 处零点阶数为 $p$, $g$ 的零点阶数为 $q$. 若 $p>q$, 则 $f\left(z\right)=\left(z-a\right)^{p}f_{1}$, $g\left(z\right)=\left(z-a\right)^{q}g_{1}$, $f_{1}\left(a\right)g_{1}\left(a\right)\ne0$, 故 $\frac{f}{g}=\left(z-a\right)^{p-q}\frac{f_{1}}{g_{1}}\to0$; 而 $f'$ 零点阶 $p-1$, $g'$ 零点阶 $q-1$, $\frac{f'}{g'}\to0$, 二者相等. 若 $p<q$, 同理 $\frac{f}{g}\to\infty$, $\frac{f'}{g'}\to\infty$, 相等. 若 $p=q=m$, 由 (i) 应用于 $f',g'$ (均为 $m-1$ 阶零点) 得 $\lim\frac{f'}{g'}=\lim\frac{f^{\left(m\right)}}{g^{\left(m\right)}}$, 再由 (i) 得 $\lim\frac{f}{g}=\lim\frac{f^{\left(m\right)}}{g^{\left(m\right)}}$, 故二者相等. $\blacksquare$

### 习题六

(习题 9.4-13) 令 $f$ 是区域 $D\subset\mathbb{C}$ 上的全纯函数. 假设对任意 $z\in D$ 都存在 $m,n\in\mathbb{N}\setminus\left\{0\right\}$ 使得 $\left(f\left(z\right)\right)^{m}=\left(f\left(z\right)\right)^{n}$. 证明: $f$ 在 $D$ 上是常值的.

### 解答 习题六

不妨设 $m>n$ (否则互换), 则 $\left(f\left(z\right)\right)^{m}=\left(f\left(z\right)\right)^{n}$ 即

$$
\left(f\left(z\right)\right)^{n}\left(\left(f\left(z\right)\right)^{m-n}-1\right)=0,
$$

故对每个 $z$, 或 $f\left(z\right)=0$, 或 $\left(f\left(z\right)\right)^{m-n}=1$. 后者说明 $f\left(z\right)$ 是单位根, 满足 $\left|f\left(z\right)\right|=1$. 因此

$$
f\left(D\right)\subset\left\{0\right\}\cup\left\{w\in\mathbb{C}:\left|w\right|=1\right\}.
$$

集合 $\left\{0\right\}\cup\left\{\left|w\right|=1\right\}$ 在 $\mathbb{C}$ 中没有内点. 若 $f$ 非常值, 由**定理 10.1.4 (开映射定理)**, $f\left(D\right)$ 是开集, 应有内点, 矛盾. 故 $f$ 在 $D$ 上为常值. $\blacksquare$

### 习题七

(习题 9.4-15) 是否存在 $\mathbb{C}$ 上的全纯函数 $f\left(z\right)$ 满足 $\left|f\left(z\right)\right|>\left|z\right|$, $\forall z\in\mathbb{C}$?

### 解答 习题七

不存在. 反设存在. 取 $z=0$ 得 $\left|f\left(0\right)\right|>0$, 故 $f\left(0\right)\ne0$; 对 $z\ne0$, $\left|f\left(z\right)\right|>\left|z\right|>0$, 故 $f$ 在 $\mathbb{C}$ 上处处不取零值. 定义整函数

$$
g\left(z\right)=\frac{z}{f\left(z\right)},
$$

则 $g\left(0\right)=0$, 且对 $z\ne0$, $\left|g\left(z\right)\right|=\frac{\left|z\right|}{\left|f\left(z\right)\right|}<1$. 故 $\left|g\left(z\right)\right|<1$ 在 $\mathbb{C}$ 上成立, $g$ 是有界整函数. 由**定理 9.1.3 (刘威尔)**, $g$ 为常值; 又 $g\left(0\right)=0$, 故 $g\equiv0$, 这与 $g\left(z\right)=\frac{z}{f\left(z\right)}\ne0$ ($z\ne0$) 矛盾. 故不存在. $\blacksquare$

### 习题八

(习题 9.4-17) 令 $f:\mathbb{C}\to\mathbb{D}=\left\{\left|z\right|<1\right\}$ 是 $\mathbb{C}$ 上的全纯函数且 $f\left(2\right)=\frac{2+i}{8}$, 求 $f\left(10\right)$ 的值.

### 解答 习题八

$f:\mathbb{C}\to\mathbb{D}$ 取值于开单位圆盘, 故 $\left|f\left(z\right)\right|<1$ 在 $\mathbb{C}$ 上成立, $f$ 是有界整函数. 由**定理 9.1.3 (刘威尔)**, $f$ 在 $\mathbb{C}$ 上为常值. 故

$$
f\left(10\right)=f\left(2\right)=\frac{2+i}{8}.
$$

$\blacksquare$

### 习题九

(习题 9.4-18) 令 $f$ 是 $\mathbb{C}$ 上的全纯函数, 且存在 $a_{1},a_{2}\in\mathbb{C}$, $\operatorname{Im}\frac{a_{1}}{a_{2}}\ne0$, 使得 $f\left(z+a_{1}\right)=f\left(z\right)=f\left(z+a_{2}\right)$, $\forall z\in\mathbb{C}$. 证明: $f$ 是常值函数.

### 解答 习题九

$\operatorname{Im}\frac{a_{1}}{a_{2}}\ne0$ 表明 $\frac{a_{1}}{a_{2}}\notin\mathbb{R}$, 故 $a_{1},a_{2}$ 在 $\mathbb{R}$ 上线性无关. 由周期性, 平行四边形 $\Pi=\left\{sa_{1}+ta_{2}:0\le s,t\le1\right\}$ 是 $f$ 的基本平行四边形, 它在 $\mathbb{C}$ 中有界 (紧集), 故 $\left|f\right|$ 在 $\Pi$ 上有界. 又对任意 $z\in\mathbb{C}$, 存在 $s,t\in\left[0,1\right)$ 与 $m,n\in\mathbb{Z}$ 使 $z=sa_{1}+ta_{2}+ma_{1}+na_{2}$, 由双周期性 $f\left(z\right)=f\left(sa_{1}+ta_{2}\right)$, 故 $\left|f\right|$ 在 $\mathbb{C}$ 上一致有界. $f$ 是有界整函数, 由**定理 9.1.3 (刘威尔)**, $f$ 为常值. $\blacksquare$
