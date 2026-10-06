# 作业 15

> **定义 13.1.3** (洛朗级数)<br>$f$ 在圆环 $A(a;r;R)$ 上的洛朗级数为 $$\sum_{n=-\infty}^{+\infty}c_{n}(z-a)^{n},$$ 其中正则部 $\sum_{n\ge0}c_{n}(z-a)^{n}$, 主部 $\sum_{n<0}c_{n}(z-a)^{n}$.

> **定义 13.2.2** (孤立奇点分类)<br>$a$ 是 $f$ 的可去奇点若主部系数全为 $0$; 是 $m$-阶极点若 $c_{-m}\ne0$ 且 $n<-m$ 时 $c_{n}=0$; 是本性奇点若主部有无穷多项.

> **定理 13.2.4** (黎曼)<br>$a$ 是 $f$ 的可去奇点当且仅当 $f$ 在 $a$ 的去心邻域上有界.

> **定理 13.2.5**<br>$a$ 是 $f$ 的可去奇点当且仅当 $\lim_{z\to a}f(z)$ 存在且有限.

### 习题一

(习题 13.4-1) 令 $f$ 是区域 $\mathbb{C}\setminus\{0\}$ 上的全纯函数而且 $|f(z)|\le\frac{|z|+1}{|z|}$, $\forall z\in\mathbb{C}\setminus\{0\}$. 证明: $f$ 是常值函数. (注: 原题不等式在 OCR 中显示为 $|f(z)|\le|z|+\frac{1}{|z|}$, 但取 $f(z)=z$ 即为反例, 故按 $|f(z)|\le\frac{|z|+1}{|z|}=1+\frac{1}{|z|}$ 理解.)

### 解答 习题一

由 $|f(z)|\le1+\frac{1}{|z|}$, 当 $z\to0$ 时 $|zf(z)|\le|z|+1\to1$, 故 $zf(z)$ 在 $0$ 的去心邻域有界. 由**定理 13.2.4 (黎曼)**, $0$ 是 $zf(z)$ 的可去奇点, 从而 $f$ 在 $0$ 处至多有一阶极点; 又 $|f(z)|\le1+\frac{1}{|z|}$ 在 $0$ 附近给出 $|f(z)|\le\frac{C}{|z|}$, 结合 $0$ 是 $f$ 的孤立奇点, $f$ 在 $0$ 处为可去奇点, 延拓为整函数.

于是 $f$ 是整函数且 $|f(z)|\le1+\frac{1}{|z|}\le2$ ($|z|\ge1$), 即 $f$ 有界. 由刘维尔定理, $f$ 是常值函数. $\blacksquare$

### 习题二

(习题 13.4-2) 寻找下述函数的有限孤立奇点并判断它们的类型: (i) $\frac{1-\cos z}{\sin^{2}z}$; (ii) $e^{\cot\frac{\pi}{z}}$; (iii) $\frac{z+1}{\sin^{2}(\pi z)}$; (iv) $\frac{z}{1-\cos z}$.

### 解答 习题二

(i) $\sin z$ 的零点为 $z=k\pi$ ($k\in\mathbb{Z}$). 在 $z=2m\pi$ 处 $1-\cos z$ 与 $\sin^{2}z$ 都是二阶零点, 比值有限, 故为可去奇点 (值 $\lim=\frac12$); 在 $z=(2m+1)\pi$ 处 $1-\cos z\ne0$ 而 $\sin^{2}z$ 有二阶零点, 故为二阶极点. 即 $z=2m\pi$ 可去, $z=(2m+1)\pi$ 为二阶极点.

(ii) $\cot\frac{\pi}{z}$ 的极点为 $\frac{\pi}{z}=k\pi$, 即 $z=\frac{1}{k}$, $k\in\mathbb{Z}\setminus\{0\}$. 在 $z=\frac1k$ 处 $\cot\frac{\pi}{z}$ 有一阶极点, 故 $e^{\cot\frac{\pi}{z}}$ 在该点有本性奇点 (型如 $e^{1/(z-a)}$). $z=0$ 是这些奇点的聚点而非孤立奇点. 故有限孤立奇点为 $z=\frac1k$ ($k\ne0$), 均为本性奇点.

(iii) $\sin^{2}(\pi z)$ 在 $z=n$ ($n\in\mathbb{Z}$) 处有二阶零点. 当 $n\ne-1$ 时 $z+1\ne0$, 故 $z=n$ 为二阶极点; 当 $n=-1$ 时 $z+1$ 有一阶零点, 与二阶零点相抵, $z=-1$ 为一阶极点.

(iv) $1-\cos z$ 的零点为 $z=2m\pi$ (二阶). $z=0$ 处分子 $z$ 有一阶零点, 故 $z=0$ 为一阶极点; 当 $m\ne0$ 时 $z=2m\pi\ne0$, 分子非零, 故为二阶极点. $\blacksquare$

### 习题三

(习题 13.4-3) 令 $f$ 是 $\mathbb{C}\setminus\{0\}$ 上的全纯函数, 请问下述不等式是否可能成立: $|f(z)|>e^{\frac{1}{|z|}}$, $\forall z\in\mathbb{C}\setminus\{0\}$? 请说明你的理由.

### 解答 习题三

不可能. 若 $|f(z)|>e^{1/|z|}$ 于一切 $z\ne0$, 则 $z\to0$ 时 $|f(z)|\to+\infty$, 故 $0$ 是 $f$ 的极点, 设其为 $m$-阶极点. 由**定义 13.2.2**, 在 $0$ 附近 $|f(z)|\sim\frac{C}{|z|^{m}}$. 但 $e^{1/|z|}$ 的增长速度快于任何幂 $\frac{1}{|z|^{m}}$ (因 $\frac{e^{1/|z|}}{1/|z|^{m}}\to+\infty$), 故对充分小的 $|z|$ 有 $|f(z)|\le\frac{2C}{|z|^{m}}<e^{1/|z|}$, 矛盾于 $|f(z)|>e^{1/|z|}$. 故不等式不可能成立. $\blacksquare$

### 习题四

(习题 13.4-4) 说明下述函数在 $\infty$ 处是否有孤立奇点并判断它的类型: (i) $e^{\sin\frac{1}{z}}$; (ii) $\frac{1}{1+z^{6}}$; (iii) $z^{7}$; (iv) $\frac{\cos z}{1+z^{2}}$.

### 解答 习题四

(i) $z\to\infty$ 时 $\frac1z\to0$, $\sin\frac1z\to0$, $e^{\sin\frac1z}\to1$. 故 $\infty$ 是 $e^{\sin\frac1z}$ 的可去奇点 (极限存在有限).

(ii) $\frac{1}{1+z^{6}}$: $z\to\infty$ 时 $\to0$. 令 $w=\frac1z$, $\frac{1}{1+z^{6}}=\frac{w^{6}}{w^{6}+1}$ 在 $w=0$ 处有六阶零点, 故 $\infty$ 是 $\frac{1}{1+z^{6}}$ 的可去奇点 (值为 $0$, 六阶零点).

(iii) $z^{7}$: $z\to\infty$ 时 $z^{7}\to\infty$, 洛朗主部为 $z^{7}$, 故 $\infty$ 是 $z^{7}$ 的七阶极点.

(iv) $\frac{\cos z}{1+z^{2}}$: $z\to\infty$ 时 $\cos z$ 振荡不收敛, $\frac{1}{1+z^{2}}\to0$, 故 $\lim_{z\to\infty}\frac{\cos z}{1+z^{2}}$ 不存在且无有限/无穷极限, $\infty$ 是本性奇点. $\blacksquare$

### 习题五

(习题 13.4-10) 令 $\Omega=G\setminus\{a,b\}$, 其中 $G$ 是有界单连通区域, $a,b\in G$ 且 $a\ne b$. 请问 $\Omega$ 到自身的全纯自同胚有多少?

### 解答 习题五

设 $\varphi\in\operatorname{Aut}(\Omega)$. 因 $G$ 有界, $\varphi$ 在 $\Omega$ 上有界, 由**定理 13.2.4 (黎曼)**, $\varphi$ 在 $a,b$ 处均为可去奇点, 延拓为 $G$ 上的全纯函数. 又 $\varphi$ 是 $\Omega$ 到自身的双全纯映射, 延拓后 $\varphi$ 把 $G$ 映到 $G$ 且把点集 $\{a,b\}$ 映到自身, 故 $\varphi\in\operatorname{Aut}(G)$ 且 $\varphi(\{a,b\})=\{a,b\}$.

$G$ 有界单连通且非 $\mathbb{C}$, 由黎曼映射定理 $G\cong\mathbb{D}$, 故 $\operatorname{Aut}(G)\cong\operatorname{Aut}(\mathbb{D})$. 设 $p,q$ 为 $a,b$ 在 $\mathbb{D}$ 下的像. $\operatorname{Aut}(\mathbb{D})$ 中把 $\{p,q\}$ 映到自身的元素只可能: 逐点固定 $p,q$, 或交换 $p,q$. 固定两个不同内点的 $\operatorname{Aut}(\mathbb{D})$ 自同构只有恒等; 而交换 $p,q$ 的对合 (把 $p\mapsto q$, $q\mapsto p$) 恰存在一个. 故 $\Omega$ 到自身的全纯自同胚恰好有 $2$ 个. $\blacksquare$

### 习题六

(习题 13.4-12) 令 $a\in\mathbb{C}$ 是函数 $f$ 的本性奇点. 证明: $\lim_{\epsilon\to0}\epsilon^{n}\max\{|f(z)|:\ |z-a|=\epsilon\}=+\infty$, $\forall n\in\mathbb{N}$.

### 解答 习题六

记 $M(\epsilon):=\max_{|z-a|=\epsilon}|f(z)|$. 反设存在 $n\in\mathbb{N}$ 使得 $\epsilon^{n}M(\epsilon)$ 有上界, 即存在 $C>0$ 使 $\epsilon^{n}M(\epsilon)\le C$, 则

$$
|f(z)|\le\frac{C}{|z-a|^{n}},\quad 0<|z-a|\ \text{充分小}.
$$

于是 $(z-a)^{n}f(z)$ 在 $a$ 的去心邻域有界, 由**定理 13.2.4 (黎曼)**, $0$ 是 $(z-a)^{n}f$ 的可去奇点, 故 $f$ 在 $a$ 处至多是 $n$-阶极点. 但 $a$ 是 $f$ 的本性奇点, 矛盾. 故对每个 $n\in\mathbb{N}$, $\epsilon^{n}M(\epsilon)$ 无上界, 结合 $\epsilon^{n}M(\epsilon)$ 随 $\epsilon$ 的单调行为, $\lim_{\epsilon\to0}\epsilon^{n}M(\epsilon)=+\infty$. $\blacksquare$

### 习题七

(习题 13.4-17, 佩莱) 称集合 $\mathcal{E}\subset\mathbb{C}$ 是豪斯多夫长度零的, 如果对任意 $\epsilon>0$ 都存在它的由可数多个开圆盘组成的开覆盖, 且这些圆盘半径之和不超过 $\epsilon$. 令 $G\subset\mathbb{C}$ 是区域, $\mathcal{E}\subset G$ 是豪斯多夫长度零的紧子集, $f$ 是开集 $G\setminus\mathcal{E}$ 上的全纯函数. 假设存在 $M>0$ 使得 $|f(z)|\le M$, $\forall z\in G\setminus\mathcal{E}$. 证明: 存在 $G$ 上的全纯函数 $g$ 使得 $g(z)=f(z)$, $\forall z\in G\setminus\mathcal{E}$.

### 解答 习题七

豪斯多夫长度零的紧集 $\mathcal{E}$ 有二维勒贝格测度为零. 任取 $z_{0}\in\mathcal{E}$, 取 $r>0$ 使 $\overline{B(z_{0},r)}\subset G$. 因 $\mathcal{E}$ 面积为零, 可取圆周 $|w-z_{0}|=r$ 与 $\mathcal{E}$ 不相交 (否则用半径总长可任意小的开圆盘覆盖 $\mathcal{E}$, 面积亦任意小). 对 $z\in B(z_{0},r)\setminus\mathcal{E}$, 由柯西积分公式

$$
f(z)=\frac{1}{2\pi i}\oint_{|w-z_{0}|=r}\frac{f(w)}{w-z}\,dw.
$$

右端对每个 $z\in B(z_{0},r)$ 定义了一个全纯函数 (被积函数 $w\mapsto\frac{f(w)}{w-z}$ 在圆周上连续, $|f|\le M$), 记为 $g_{0}$. 当 $z\in B(z_{0},r)\setminus\mathcal{E}$ 时 $g_{0}(z)=f(z)$, 故 $g_{0}$ 是 $f$ 在 $z_{0}$ 邻域的解析延拓, 特别 $f$ 在 $z_{0}$ 处可去.

对每个 $z_{0}\in\mathcal{E}$ 如此延拓, 与 $G\setminus\mathcal{E}$ 上原有的 $f$ 一起, 由解析延拓的唯一性拼成 $G$ 上的全纯函数 $g$, 且 $g=f$ 于 $G\setminus\mathcal{E}$. $\blacksquare$
