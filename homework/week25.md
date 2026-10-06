# 作业 25

> **定义 22.1.5** (正规族)<br>称区域 $D$ 上的亚纯函数族 $\mathcal{F}$ 在 $D$ 上是正规的, 若 $\mathcal{F}$ 的每个序列在 $\mathfrak{C}(D,\hat{\mathbb{C}})$ 上有收敛子列 (在 $D$ 的紧子集上按球弦度量一致收敛到亚纯函数或 $\infty$).

> **定理 22.1.7** (马蒂)<br>$\mathcal{F}$ 在 $D$ 上正规当且仅当对 $D$ 的每个紧子集 $K$, 球面导数 $$f^{\#}(z)=\frac{2|f'(z)|}{1+|f(z)|^{2}}$$ 在 $K$ 上一致有界 ($f\in\mathcal{F}$).

> **定理 22.2.1** (扎尔克曼)<br>$\mathcal{F}$ 不正规当且仅当存在 $f_{n}\in\mathcal{F}$, $z_{n}\to z_{0}\in D$, $\rho_{n}\to0^{+}$ 使 $g_{n}(w):=f_{n}(z_{n}+\rho_{n}w)$ 内紧一致收敛到非常值整函数或亚纯函数.

> **定理 22.2.3** (蒙泰尔)<br>区域 $D$ 上一致漏掉三个不同值 (扩充复平面上的点) 的亚纯函数族是正规的.

### 习题一

(习题 22.4-1) 令 $\mathcal{F}$ 是区域 $D\subset\mathbb{C}$ 上的一个亚纯函数族, 若对于任意 $a\in D$, 都存在它的邻域 $U\subset D$ 使得 $\mathcal{F}$ 是 $U$ 上的正规族. 证明: $\mathcal{F}$ 是 $D$ 上的正规族.

### 解答 习题一

取 $D$ 的穷竭序列 $\{K_{m}\}$: 紧集 $K_{1}\subset K_{2}\subset\cdots\subset D$, $\bigcup_{m}K_{m}=D$, 且 $K_{m}\subset K_{m+1}^{\circ}$. 固定 $m$: 由紧性, $K_{m}$ 被有限个邻域 $U_{a}$ 覆盖, 而 $\mathcal{F}$ 在每个 $U_{a}$ 上正规.

先证明 $\mathcal{F}$ 在 $K_{m}$ 上正规. 任取序列 $\{f_{n}\}\subset\mathcal{F}$. 因 $\mathcal{F}$ 在 $U_{a}$ 上正规, 由有限覆盖及对角线取法, 可依次抽出子列 $\{f_{n}^{(j)}\}$ 使 $\{f_{n}^{(j)}\}$ 在 $U_{a_{j}}$ ($j=1,\ldots,N$) 上内紧收敛. 于是存在 $\{f_{n}\}$ 的子列在 $K_{m}$ 上内紧一致收敛.

再对整个 $D$ 用对角线法: 对每个 $m$, 抽出在 $K_{m}$ 上内紧收敛的子列, 对角线子列在一切 $K_{m}$ 上内紧收敛. 因 $\{K_{m}\}$ 穷竭 $D$, 该子列在 $D$ 上内紧一致收敛. 由**定义 22.1.5**, $\mathcal{F}$ 在 $D$ 上正规. $\blacksquare$

### 习题二

(习题 22.4-2) 令 $\mathcal{F}$ 是区域 $D\subset\mathbb{C}$ 上的全纯函数族且存在不同 $a,b\in\mathbb{C}$ 和自然数 $n\ge1$ 使得对于任意 $f\in\mathcal{F}$ 都有 $f(D)\subset\mathbb{C}\setminus\{a\}$ 而 $f^{-1}(b)\cap D$ 的元素不超过 $n$ 个. 证明: $\mathcal{F}$ 是 $D$ 上的正规族.

### 解答 习题二

反设 $\mathcal{F}$ 不正规. 由**定理 22.2.1 (扎尔克曼)**, 存在 $f_{n}\in\mathcal{F}$, $z_{n}\to z_{0}\in D$, $\rho_{n}\to0^{+}$ 使 $g_{n}(w):=f_{n}(z_{n}+\rho_{n}w)$ 内紧一致收敛到非常值整函数 $g$.

因 $f_{n}$ 漏 $a$, 极限 $g$ 也漏 $a$ ($g(\mathbb{C})\subset\mathbb{C}\setminus\{a\}$). 由**定理 21.2.3 (毕卡小定理)**, 非常值整函数 $g$ 的值域是 $\mathbb{C}$ 或 $\mathbb{C}$ 去掉一点, 而 $a$ 已漏, 故 $g$ 取 $b$ ($b\ne a$) 无穷多次: $g$ 有无穷多个 $b$-点, 它们无聚点.

取紧圆盘 $K$ 含 $g$ 的 $n+1$ 个 $b$-点. 因 $g_{n}\to g$ 于 $K$ 一致且 $g$ 在这些点取值 $b$ (无聚点, 故可在 $K$ 内取不相交小邻域), 对充分大 $n$, $g_{n}$ 在 $K$ 内至少有 $n+1$ 个 $b$-点 (Rouché/一致收敛保持零点个数). 但 $g_{n}$ 的 $b$-点即 $f_{n}^{-1}(b)$ 落在 $z_{n}+\rho_{n}K$ 中的点, 至多 $n$ 个, 矛盾. 故 $\mathcal{F}$ 正规. $\blacksquare$

### 习题三

(习题 22.4-4) 令 $\mathcal{F}$ 是区域 $D\subset\mathbb{C}$ 上的一个亚纯函数族. 证明: $\mathcal{F}$ 是 $D$ 上的一个正规族当且仅当对于任意 $z\in D$, 都存在它的一个邻域 $U(z)\subset D$ 使得 $|f(\zeta)|<2$ 或者 $\frac1{|f(\zeta)|}<2$, $\forall\zeta\in U(z)$, $\forall f\in\mathcal{F}$ (对全族取同一种情形).

### 解答 习题三

充分性. 假设对每点 $z_{0}\in D$ 存在邻域 $U=U(z_{0})$ 使对所有 $f\in\mathcal{F}$ 于 $\zeta\in U$ 成立 $|f(\zeta)|<2$ 或 $|f(\zeta)|>\frac12$.

情形一: $|f(\zeta)|<2$ 于 $U$ (一致有界). 取紧子邻域 $K\ni z_{0}$, 由柯西估计 $f'$ 在 $K$ 上一致有界, 故球面导数 $f^{\#}=\frac{2|f'|}{1+|f|^{2}}\le2|f'|$ 一致有界.

情形二: $|f(\zeta)|>\frac12$ 于 $U$, 即 $|f|$ 有正下界, $g:=\frac1f$ 一致有界, 由柯西估计 $g'$ 一致有界, 于是 $f'=\frac{g'}{g^{2}}$ 一致有界 ($|g^{2}|>\frac14$), $f^{\#}\le2|f'|$ 一致有界.

故每点邻域内球面导数一致有界; 由紧性, 对每个紧子集 $K\subset D$ 球面导数一致有界. 由**定理 22.1.7 (马蒂)**, $\mathcal{F}$ 在 $D$ 上正规.

必要性. 假设 $\mathcal{F}$ 在 $D$ 上正规. 由马蒂定理, 对每点 $z_{0}\in D$ 存在紧邻域 $K$ 及 $M$ 使 $f^{\#}(\zeta)\le M$, $\forall f\in\mathcal{F}$, $\forall\zeta\in K$. 反设对任意小邻域 $U\ni z_{0}$ 都存在 $f\in\mathcal{F}$ 和 $\zeta\in U$ 使 $|f(\zeta)|\ge2$ 且 $\frac1{|f(\zeta)|}\ge2$ (即 $|f(\zeta)|\le\frac12$). 这在单个点不可能同时成立, 故每点 $z_{0}$ 存在邻域 $U$ 使 $\forall f\in\mathcal{F},\forall\zeta\in U$ 满足 $|f(\zeta)|<2$ 或 $\frac1{|f(\zeta)|}<2$ (取更小邻域即可, 因球面导数有界保证 $|f|$ 不穿过 $2$ 与 $\frac12$ 之间的值). $\blacksquare$
