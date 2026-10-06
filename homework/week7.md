# 作业 7

> **定义 7.1.1** (路径积分)<br>$f$ 沿分段光滑道路 $\gamma:[a,b]\to\mathbb{C}$ 的积分为 $$\int_{\gamma}f\,dz=\int_{a}^{b}f(\gamma(t))\gamma'(t)\,dt.$$

> **定义 7.2.1** (原函数)<br>区域 $D$ 上的全纯函数 $F$ 称为 $f$ 的原函数, 若 $F'=f$ 于 $D$; $f$ 有原函数当且仅当 $f$ 沿 $D$ 内任意闭道路的积分为零.

> **定理 7.2.3**<br>$\frac{1}{z}$ 在区域 $D\subset\mathbb{C}\setminus\{0\}$ 上有原函数当且仅当 $D$ 上存在 $\operatorname{Ln}z$ 的全纯分支.

### 习题一

(习题 7.4-1) (i) 令 $P(z)=z^{n}+a_{n-1}z^{n-1}+\cdots+a_{0}$ 是首 $1$ 的多项式. 证明: $\max_{|z|=1}|P(z)|\ge1$. (ii) 是否存在多项式 $P(z)=\sum_{j=1}^{n}a_{j}z^{j}$ 使得 $\max_{|z|=1}\left|P(z)-\frac{1}{z^{2}}\right|<1$?

### 解答 习题一

(i) 由帕塞瓦尔等式 (傅里叶级数), $P(e^{i\theta})=\sum_{j=0}^{n}a_{j}e^{ij\theta}$ ($a_{n}=1$),

$$
\frac{1}{2\pi}\int_{0}^{2\pi}|P(e^{i\theta})|^{2}\,d\theta=\sum_{j=0}^{n}|a_{j}|^{2}\ge|a_{n}|^{2}=1.
$$

若 $|P(e^{i\theta})|<1$ 于一切 $\theta$, 则左边 $<1$, 矛盾. 故存在 $\theta$ 使 $|P(e^{i\theta})|\ge1$, 即 $\max_{|z|=1}|P(z)|\ge1$.

(ii) 不存在. 在 $|z|=1$ 上, $P(z)-\frac{1}{z^{2}}=\sum_{j=1}^{n}a_{j}z^{j}-z^{-2}$, 其 $z^{-2}$ 项系数为 $-1$. 由帕塞瓦尔等式,

$$
\frac{1}{2\pi}\int_{0}^{2\pi}\left|P(e^{i\theta})-e^{-2i\theta}\right|^{2}d\theta=\sum_{j=1}^{n}|a_{j}|^{2}+1\ge1.
$$

故存在 $\theta$ 使 $|P(e^{i\theta})-e^{-2i\theta}|\ge1$, 即 $\max_{|z|=1}|P(z)-\frac{1}{z^{2}}|\ge1$. 因此不能有 $\max<1$. $\blacksquare$

### 习题二

(习题 7.4-3) 计算积分: (i) $\int_{|z|=1}\left(z+\frac{1}{z}\right)^{2n}\frac{1}{z}\,dz$ ($n\in\mathbb{N}$); (ii) $\int_{|z|=r}\frac{1}{(z-a)(z-b)}\,dz$, $|a|<r<|b|$.

### 解答 习题二

(i) 展开 $\left(z+\frac{1}{z}\right)^{2n}=\sum_{k=0}^{2n}\binom{2n}{k}z^{2n-2k}$, 只有偶次幂. 乘上 $\frac1z$ 后, 其中 $z^{-1}$ 项的系数来自 $\left(z+\frac1z\right)^{2n}$ 的常数项 ($2n-2k=0$, 即 $k=n$), 系数为 $\binom{2n}{n}$. 由**定义 7.1.1** 及 $\int_{|z|=1}z^{m}dz=0$ ($m\ne-1$), $\int_{|z|=1}\frac{dz}{z}=2\pi i$,

$$
\int_{|z|=1}\left(z+\frac{1}{z}\right)^{2n}\frac{1}{z}\,dz=2\pi i\binom{2n}{n}.
$$

(ii) 在 $\{|z|=r\}$ 内 ($|a|<r<|b|$) 只有简单极点 $z=a$, 其留数为 $\frac{1}{a-b}$. 由留数/柯西积分,

$$
\int_{|z|=r}\frac{1}{(z-a)(z-b)}\,dz=2\pi i\cdot\frac{1}{a-b}.
$$

$\blacksquare$

### 习题三

(习题 7.4-5) 试构造函数 $e^{\frac{1}{z}}$ 沿道路 $\gamma(t):=e^{4\pi it}$, $t\in[0,1]$, 的原函数并用它计算积分 $\int_{\gamma}e^{\frac{1}{z}}\,dz$.

### 解答 习题三

$e^{\frac1z}=\sum_{n=0}^{+\infty}\frac{1}{n!}\frac{1}{z^{n}}$ (洛朗展开, $z\ne0$). 它的一个原函数 (含沿道路的连续分支) 为

$$
F(z):=z+\log z+\sum_{n=2}^{+\infty}\frac{1}{n!}\frac{z^{1-n}}{1-n},
$$

其中 $\log z$ 取沿 $\gamma$ 的连续分支. 直接求导: $F'(z)=1+\frac{1}{z}+\sum_{n=2}^{+\infty}\frac{1}{n!}\frac{(1-n)z^{-n}}{1-n}=1+\frac{1}{z}+\sum_{n=2}^{+\infty}\frac{1}{n!}\frac{1}{z^{n}}=e^{\frac1z}$.

于是 $\int_{\gamma}e^{\frac1z}dz=F(\gamma(1))-F(\gamma(0))$ (沿 $\gamma$ 取连续分支). $\gamma$ 的参数为 $e^{4\pi it}$, $t$ 从 $0$ 到 $1$, 幅角从 $0$ 增至 $4\pi$, 即绕原点 $0$ 转两圈; 因而沿 $\gamma$ 连续变动的 $\log z$ 增加 $2\cdot2\pi i=4\pi i$, 其余项 ($z$ 与 $\sum_{n\ge2}$ 项) 在闭道路上回到原值. 故

$$
\int_{\gamma}e^{\frac1z}\,dz=4\pi i.
$$

(也可由留数: $\operatorname{Res}_{0}e^{1/z}=1$, 而 $\gamma$ 绕 $0$ 的指标为 $2$, 得 $\int_{\gamma}=2\pi i\cdot2\cdot1=4\pi i$.) $\blacksquare$

### 习题四

(习题 7.4-7) 判断下述函数在区域 $\mathbb{C}\setminus\{0\}$ 上是否有原函数: (i) $\sin\frac{1}{z}$; (ii) $\cos\frac{1}{z}$; (iii) $e^{\frac{1}{z^{3}}}$.

### 解答 习题四

由**定义 7.2.1**, $f$ 在 $\mathbb{C}\setminus\{0\}$ 有原函数当且仅当 $f$ 沿任意绕 $0$ 的闭曲线积分为零, 即 $f$ 在 $z=0$ 处 (本性奇点) 的留数为零.

(i) $\sin\frac{1}{z}=\frac{1}{z}-\frac{1}{3!z^{3}}+\frac{1}{5!z^{5}}-\cdots$ 含 $z^{-1}$ 项, 系数 (留数) 为 $1\ne0$. 故 $\sin\frac1z$ 在 $\mathbb{C}\setminus\{0\}$ 上无原函数.

(ii) $\cos\frac{1}{z}=1-\frac{1}{2!z^{2}}+\frac{1}{4!z^{4}}-\cdots$ 不含 $z^{-1}$ 项, 留数为 $0$. 事实上 $F(z)=z+\frac{1}{2z}-\frac{1}{72z^{3}}+\cdots$ (逐项积分) 是 $\mathbb{C}\setminus\{0\}$ 上的单值全纯函数且 $F'=\cos\frac1z$. 故 $\cos\frac1z$ 在 $\mathbb{C}\setminus\{0\}$ 上有原函数.

(iii) $e^{\frac{1}{z^{3}}}=1+\frac{1}{z^{3}}+\frac{1}{2!z^{6}}+\cdots$ 只含 $z^{-3k}$ ($k\ge0$) 项, 不含 $z^{-1}$ 项, 留数为 $0$. 其逐项积分 $F(z)=z-\frac{1}{2z^{2}}+\cdots$ 是 $\mathbb{C}\setminus\{0\}$ 上的单值全纯函数且 $F'=e^{1/z^{3}}$. 故 $e^{1/z^{3}}$ 在 $\mathbb{C}\setminus\{0\}$ 上有原函数. $\blacksquare$

### 习题五

(习题 7.4-9) 假设区域 $D\subset\mathbb{C}\setminus\{0\}$ 上有函数 $f(z)=\frac{1}{z}$ 的原函数 $F(z)$. 证明: 存在 $c\in\mathbb{C}$ 使得 $F(z)+c\in\operatorname{Ln}z$, $\forall z\in D$.

### 解答 习题五

$F'=\frac{1}{z}$ 于 $D$. 令 $G(z):=e^{F(z)}$, 则 $G$ 全纯于 $D$ 且

$$
G'(z)=e^{F(z)}F'(z)=\frac{e^{F(z)}}{z}=\frac{G(z)}{z}.
$$

于是 $\left(\frac{G(z)}{z}\right)'=\frac{G'(z)z-G(z)}{z^{2}}=\frac{G(z)-G(z)}{z^{2}}=0$, 故 $\frac{G(z)}{z}$ 在连通区域 $D$ 上为常数, 记 $\frac{G(z)}{z}=e^{c}$ ($c\in\mathbb{C}$). 则

$$
e^{F(z)}=e^{c}z=e^{c+\operatorname{Ln}z},
$$

故 $e^{F(z)-c-\operatorname{Ln}z}=1$, 即 $F(z)-c-\operatorname{Ln}z\in2\pi i\mathbb{Z}$, 从而 $F(z)-c\in\operatorname{Ln}z$. 取 $c':=-c$, 得 $F(z)+c'\in\operatorname{Ln}z$, $\forall z\in D$. $\blacksquare$
