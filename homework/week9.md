# 作业 9

> **定理 8.3.2** (高阶导数公式)<br>$$f^{(n)}(z)=\frac{n!}{2\pi i}\int_{\gamma}\frac{f(\zeta)}{(\zeta-z)^{n+1}}\,d\zeta.$$

> **定理 9.1.3** (刘威尔)<br>$\mathbb{C}$ 上的有界整函数必为常值函数.

> **定理 9.3.2** (恒等定理)<br>若区域 $D$ 上的全纯函数 $f$ 的零点在 $D$ 内有聚点, 则 $f\equiv0$.

> **定理 9.3.3** (唯一性定理)<br>若区域 $D$ 上的两个全纯函数 $f,g$ 在 $D$ 内有聚点的点集上相等, 则 $f\equiv g$.

> **定理 10.1.4** (开映射定理)<br>非常值的全纯函数把区域映成区域 (开集).

### 习题一

(习题 9.4-2) 令 $f$ 是单位圆盘 $\mathbb{D}:=\{z\in\mathbb{C}:|z|<1\}$ 上的全纯函数而且 $|f'(z)|\le\frac{1}{1-|z|}$, $\forall z\in\mathbb{D}$. 证明: 函数 $f$ 在 $z=0$ 处的泰勒级数的系数 $c_{n}$ 都满足 $|c_{n}|<e$, $\forall n\in\mathbb{N}\setminus\{0\}$.

### 解答 习题一

$f$ 在 $0$ 处的泰勒系数 $c_{n}=\frac{f^{(n)}(0)}{n!}$. 由**定理 8.3.2 (高阶导数公式)** 对 $f'$ 应用 $n-1$ 阶导数, 取 $0<r<1$:

$$
f^{(n)}(0)=\frac{(n-1)!}{2\pi i}\int_{|z|=r}\frac{f'(z)}{z^{n}}\,dz.
$$

于是

$$
|c_{n}|=\frac{|f^{(n)}(0)|}{n!}\le\frac{(n-1)!}{n!}\cdot\frac{1}{2\pi}\cdot\frac{1}{1-r}\cdot\frac{2\pi r}{r^{n}}=\frac{1}{n}\cdot\frac{r^{1-n}}{1-r}.
$$

对 $r\in(0,1)$ 取最优. 令 $h(r)=\frac{r^{1-n}}{1-r}$, 由 $h'(r)=0$ 得 $r=\frac{n-1}{n}$, 此时

$$
h\left(\frac{n-1}{n}\right)=\frac{\left(\frac{n-1}{n}\right)^{1-n}}{1-\frac{n-1}{n}}=n\left(1+\frac{1}{n-1}\right)^{n-1}.
$$

故 $|c_{n}|\le\left(1+\frac{1}{n-1}\right)^{n-1}<e$ (因 $(1+\frac{1}{m})^{m}<e$). 命题得证. $\blacksquare$

### 习题二

(习题 9.4-4) 令 $D$ 为包含原点的区域, $f(x):=\begin{cases}e^{-1/x^{2}},&x\ne0\\0,&x=0\end{cases}$. 请问是否存在 $D$ 上的全纯函数使得它限定在实轴上与函数 $f$ 相等?

### 解答 习题二

不存在. 反设存在 $D$ 上的全纯函数 $F$ 满足 $F(x)=f(x)$ 对实轴上的一切点成立. 由实分析中已知 $f$ 在 $0$ 处各阶导数都存在且 $f^{(n)}(0)=0$, $\forall n\ge0$ (函数 $e^{-1/x^{2}}$ 是实光滑而非实解析的典型例子). 因 $F$ 与 $f$ 在实轴重合, $F^{(n)}(0)=f^{(n)}(0)=0$, 故 $F$ 在 $0$ 处的泰勒级数各项系数均为 $0$, 于是 $F$ 在 $0$ 的某邻域上恒为 $0$. 由**定理 9.3.2 (恒等定理)**, $F\equiv0$ 在 $D$ 上. 但取实轴上 $x\ne0$, $F(x)=0\ne e^{-1/x^{2}}=f(x)$, 矛盾. 故不存在. $\blacksquare$

### 习题三

(习题 9.4-6) 令 $f,g$ 是 $\mathbb{D}:=\{z\in\mathbb{C}:|z|<1\}$ 上的全纯函数且不取零值. 证明: 若 $\frac{f'(x_{n})}{f(x_{n})}=\frac{g'(x_{n})}{g(x_{n})}$, 其中 $x_{n}=\frac{1}{n}$, $n=2,3,\cdots$, 则 $f=cg$, $c\in\mathbb{C}$.

### 解答 习题三

因 $f,g$ 在 $\mathbb{D}$ 上不取零值, $\frac{f'}{f}-\frac{g'}{g}$ 在 $\mathbb{D}$ 上全纯. 由条件它在点列 $\{x_{n}\}$ 上为零, 而 $x_{n}=\frac{1}{n}\to0\in\mathbb{D}$, 即零点在 $\mathbb{D}$ 内有聚点 $0$. 由**定理 9.3.2 (恒等定理)**, $\frac{f'}{f}-\frac{g'}{g}\equiv0$, 即 $\frac{f'}{f}=\frac{g'}{g}$ 在 $\mathbb{D}$ 上.

故 $(\log f)'=(\log g)'$ 在 $\mathbb{D}$ 上 (取任一局部对数分支), 于是 $\log f-\log g$ 在 $\mathbb{D}$ 上局部为常数; 因 $\mathbb{D}$ 连通, 存在 $c_{0}\in\mathbb{C}$ 使 $\log f=\log g+c_{0}$ 在 $\mathbb{D}$ 上. 取指数得 $f=e^{c_{0}}g$, 即 $f=cg$, $c=e^{c_{0}}$. $\blacksquare$

### 习题四

(习题 9.4-8) (波莱尔-卡拉泰奥多里) 令 $f$ 是闭圆盘 $\{z\in\mathbb{C}:|z|\le R\}$ 上的全纯函数, $\sum_{k=0}^{\infty}a_{k}z^{k}$ 为 $f$ 在 $0$ 处的泰勒级数. 证明:

$$
|a_{k}|R^{k}\le4\max_{0\le\theta\le2\pi}\operatorname{Re}f(Re^{i\theta})+4|f(0)|,\quad\forall k\in\mathbb{N}.
$$

### 解答 习题四

记 $A=\max_{0\le\theta\le2\pi}\operatorname{Re}f(Re^{i\theta})$, $u=\operatorname{Re}f$. 对 $k\ge1$, 由 $f(Re^{i\theta})=\sum_{j=0}^{\infty}a_{j}R^{j}e^{ij\theta}$ 及 $u=\operatorname{Re}f$ 的傅里叶展开, 对 $k\ge1$ 有

$$
\frac{1}{2\pi}\int_{0}^{2\pi}u(Re^{i\theta})e^{-ik\theta}\,d\theta=\frac{1}{2}a_{k}R^{k},
$$

故 $a_{k}R^{k}=\frac{1}{\pi}\int_{0}^{2\pi}u(Re^{i\theta})e^{-ik\theta}\,d\theta$. 令 $A_{+}=\max(A,0)$, 则 $u(Re^{i\theta})\le A\le A_{+}$, 从而 $|u|\le2A_{+}-u$. 于是

$$
|a_{k}|R^{k}\le\frac{1}{\pi}\int_{0}^{2\pi}|u(Re^{i\theta})|\,d\theta\le\frac{1}{\pi}\int_{0}^{2\pi}(2A_{+}-u(Re^{i\theta}))\,d\theta=4A_{+}-2\operatorname{Re}f(0).
$$

又 $-\operatorname{Re}f(0)\le|\operatorname{Re}f(0)|\le|f(0)|$, 且 $A\ge\operatorname{Re}f(0)\ge-|f(0)|$ 保证 $4A_{+}\le4A+4|f(0)|$, 故

$$
|a_{k}|R^{k}\le4A+4|f(0)|,\quad k\ge1.
$$

对 $k=0$, $|a_{0}|=|f(0)|\le4A+4|f(0)|$ 显然. 命题得证. $\blacksquare$

### 习题五

(习题 9.4-10) (洛必达法则) 令 $D\subset\mathbb{C}$ 是开集, $f,g$ 为 $D$ 上的全纯函数, $a\in D$ 为它们的共同孤立零点. 证明:

(i) 若 $f$ 和 $g$ 均在 $a$ 处有 $m$-阶零点, 则 $\lim_{z\to a}\frac{f(z)}{g(z)}=\lim_{z\to a}\frac{f^{(m)}(z)}{g^{(m)}(z)}$;

(ii) $\lim_{z\to a}\frac{f(z)}{g(z)}=\lim_{z\to a}\frac{f'(z)}{g'(z)}$ (包括极限为 $\infty$ 的情况).

### 解答 习题五

(i) $f$ 在 $a$ 处有 $m$-阶零点, 故 $f(z)=(z-a)^{m}f_{1}(z)$, $f_{1}(a)\ne0$; 同理 $g(z)=(z-a)^{m}g_{1}(z)$, $g_{1}(a)\ne0$. 于是

$$
\frac{f(z)}{g(z)}=\frac{f_{1}(z)}{g_{1}(z)}\to\frac{f_{1}(a)}{g_{1}(a)}.
$$

另一方面由莱布尼茨公式, $f^{(m)}(a)=m!f_{1}(a)$, $g^{(m)}(a)=m!g_{1}(a)$, 故

$$
\lim_{z\to a}\frac{f^{(m)}(z)}{g^{(m)}(z)}=\frac{m!f_{1}(a)}{m!g_{1}(a)}=\frac{f_{1}(a)}{g_{1}(a)}=\lim_{z\to a}\frac{f(z)}{g(z)}.
$$

(ii) 设 $f$ 在 $a$ 处零点阶数为 $p$, $g$ 的零点阶数为 $q$. 若 $p>q$, 则 $f(z)=(z-a)^{p}f_{1}$, $g(z)=(z-a)^{q}g_{1}$, $f_{1}(a)g_{1}(a)\ne0$, 故 $\frac{f}{g}=(z-a)^{p-q}\frac{f_{1}}{g_{1}}\to0$; 而 $f'$ 零点阶 $p-1$, $g'$ 零点阶 $q-1$, $\frac{f'}{g'}\to0$, 二者相等. 若 $p<q$, 同理 $\frac{f}{g}\to\infty$, $\frac{f'}{g'}\to\infty$, 相等. 若 $p=q=m$, 由 (i) 应用于 $f',g'$ (均为 $m-1$ 阶零点) 得 $\lim\frac{f'}{g'}=\lim\frac{f^{(m)}}{g^{(m)}}$, 再由 (i) 得 $\lim\frac{f}{g}=\lim\frac{f^{(m)}}{g^{(m)}}$, 故二者相等. $\blacksquare$

### 习题六

(习题 9.4-13) 令 $f$ 是区域 $D\subset\mathbb{C}$ 上的全纯函数. 假设对任意 $z\in D$ 都存在 $m,n\in\mathbb{N}\setminus\{0\}$ 使得 $(f(z))^{m}=(f(z))^{n}$. 证明: $f$ 在 $D$ 上是常值的.

### 解答 习题六

不妨设 $m>n$ (否则互换), 则 $(f(z))^{m}=(f(z))^{n}$ 即

$$
(f(z))^{n}\left((f(z))^{m-n}-1\right)=0,
$$

故对每个 $z$, 或 $f(z)=0$, 或 $(f(z))^{m-n}=1$. 后者说明 $f(z)$ 是单位根, 满足 $|f(z)|=1$. 因此

$$
f(D)\subset\{0\}\cup\{w\in\mathbb{C}:|w|=1\}.
$$

集合 $\{0\}\cup\{|w|=1\}$ 在 $\mathbb{C}$ 中没有内点. 若 $f$ 非常值, 由**定理 10.1.4 (开映射定理)**, $f(D)$ 是开集, 应有内点, 矛盾. 故 $f$ 在 $D$ 上为常值. $\blacksquare$

### 习题七

(习题 9.4-15) 是否存在 $\mathbb{C}$ 上的全纯函数 $f(z)$ 满足 $|f(z)|>|z|$, $\forall z\in\mathbb{C}$?

### 解答 习题七

不存在. 反设存在. 取 $z=0$ 得 $|f(0)|>0$, 故 $f(0)\ne0$; 对 $z\ne0$, $|f(z)|>|z|>0$, 故 $f$ 在 $\mathbb{C}$ 上处处不取零值. 定义整函数

$$
g(z)=\frac{z}{f(z)},
$$

则 $g(0)=0$, 且对 $z\ne0$, $|g(z)|=\frac{|z|}{|f(z)|}<1$. 故 $|g(z)|<1$ 在 $\mathbb{C}$ 上成立, $g$ 是有界整函数. 由**定理 9.1.3 (刘威尔)**, $g$ 为常值; 又 $g(0)=0$, 故 $g\equiv0$, 这与 $g(z)=\frac{z}{f(z)}\ne0$ ($z\ne0$) 矛盾. 故不存在. $\blacksquare$

### 习题八

(习题 9.4-17) 令 $f:\mathbb{C}\to\mathbb{D}=\{|z|<1\}$ 是 $\mathbb{C}$ 上的全纯函数且 $f(2)=\frac{2+i}{8}$, 求 $f(10)$ 的值.

### 解答 习题八

$f:\mathbb{C}\to\mathbb{D}$ 取值于开单位圆盘, 故 $|f(z)|<1$ 在 $\mathbb{C}$ 上成立, $f$ 是有界整函数. 由**定理 9.1.3 (刘威尔)**, $f$ 在 $\mathbb{C}$ 上为常值. 故

$$
f(10)=f(2)=\frac{2+i}{8}.
$$

$\blacksquare$

### 习题九

(习题 9.4-18) 令 $f$ 是 $\mathbb{C}$ 上的全纯函数, 且存在 $a_{1},a_{2}\in\mathbb{C}$, $\operatorname{Im}\frac{a_{1}}{a_{2}}\ne0$, 使得 $f(z+a_{1})=f(z)=f(z+a_{2})$, $\forall z\in\mathbb{C}$. 证明: $f$ 是常值函数.

### 解答 习题九

$\operatorname{Im}\frac{a_{1}}{a_{2}}\ne0$ 表明 $\frac{a_{1}}{a_{2}}\notin\mathbb{R}$, 故 $a_{1},a_{2}$ 在 $\mathbb{R}$ 上线性无关. 由周期性, 平行四边形 $\Pi=\{sa_{1}+ta_{2}:0\le s,t\le1\}$ 是 $f$ 的基本平行四边形, 它在 $\mathbb{C}$ 中有界 (紧集), 故 $|f|$ 在 $\Pi$ 上有界. 又对任意 $z\in\mathbb{C}$, 存在 $s,t\in[0,1)$ 与 $m,n\in\mathbb{Z}$ 使 $z=sa_{1}+ta_{2}+ma_{1}+na_{2}$, 由双周期性 $f(z)=f(sa_{1}+ta_{2})$, 故 $|f|$ 在 $\mathbb{C}$ 上一致有界. $f$ 是有界整函数, 由**定理 9.1.3 (刘威尔)**, $f$ 为常值. $\blacksquare$
