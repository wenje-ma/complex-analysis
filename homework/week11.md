# 作业 11

> **定义 11.1.1** (内紧收敛)<br>称全纯函数列 $\{f_{n}\}$ 在区域 $\Omega$ 上内紧收敛到 $f$, 若它在 $\Omega$ 的任意紧子集上都一致收敛到 $f$.

> **定理 11.1.2**<br>若 $\{f_{n}\}$ 在 $\Omega$ 上内紧一致收敛到连续函数 $f$, 则 $f$ 在 $\Omega$ 上全纯.

> **定理 11.1.3** (蒙泰尔)<br>若全纯函数列 $\{f_{n}\}$ 在区域 $D$ 的任意紧子集上一致有界, 则存在子列在 $D$ 上内紧一致收敛.

> **定理 9.3.2** (恒等定理)<br>若区域 $D$ 上的全纯函数零点在 $D$ 内有聚点, 则 $f\equiv0$.

> **定理 10.1.4** (开映射定理)<br>非常值的全纯函数把区域映成区域.

> **定理 11.2.2** (黎曼映射定理)<br>任意不为全平面的单连通区域都与开单位圆盘共形等价.

### 习题一

(习题 11.3-3) 令 $f$ 是单连通区域 $D\subset\mathbb{C}$ 到开单位圆盘 $\mathbb{D}:=\{|z|<1\}$ 的共形等价映射. 证明: 若 $D\ni z_{n}\to z\in\partial D$, 则 $|f(z_{n})|\to1$.

### 解答 习题一

反设 $|f(z_{n})|\not\to1$. 因 $|f|<1$, 存在子列 (仍记 $z_{n}$) 及 $\rho<1$ 使得 $|f(z_{n})|\le\rho<1$. 于是 $\{f(z_{n})\}$ 含于 $\mathbb{D}$ 的紧子集 $\{|w|\le\rho\}$, 存在收敛子列 $f(z_{n_{k}})\to w_{0}\in\{|w|\le\rho\}\subset\mathbb{D}$.

$f$ 是 $D$ 到 $\mathbb{D}$ 的共形等价映射, 故 $f^{-1}:\mathbb{D}\to D$ 全纯连续. 由 $f(z_{n_{k}})\to w_{0}\in\mathbb{D}$, 得

$$
z_{n_{k}}=f^{-1}(f(z_{n_{k}}))\to f^{-1}(w_{0})\in D,
$$

与 $z_{n_{k}}\to z\in\partial D\notin D$ 矛盾. 故 $|f(z_{n})|\to1$. $\blacksquare$

### 习题二

(习题 11.3-4) 令 $\{g_{n}\}$ 是区域 $D\subset\mathbb{C}$ 上的全纯函数序列, 且 $g_{n}(D)\subset D$. 若 $g_{n}$ 在 $D$ 上内紧一致收敛到 $g$. 证明: $g(D)\subset D$ 或者 $g\equiv z_{0}\in\partial D$.

### 解答 习题二

由**定理 11.1.2**, $g$ 在 $D$ 上全纯. 因 $g_{n}(D)\subset D$ 且 $g_{n}\to g$, 对每个 $z\in D$, $g(z)\in\bar{D}$ (闭包). 故 $g(D)\subset\bar{D}$.

若 $g$ 不是常值, 由**定理 10.1.4 (开映射定理)**, $g(D)$ 是开集. 又 $g(D)\subset\bar{D}$ 且 $g(D)$ 非空开, 若 $g(D)$ 含有 $\partial D$ 的点, 则 $g(D)$ 不可能是开集 (因 $g(D)$ 中的点应被 $g(D)$ 内的小邻域包含, 但 $\partial D$ 附近的小邻域不全含于 $\bar D$). 故 $g(D)\subset D$.

若 $g$ 为常值 $g\equiv z_{0}$, 则 $z_{0}\in\bar D$. 若 $z_{0}\in D$, 则 $g(D)=\{z_{0}\}\subset D$, 属第一种情形; 若 $z_{0}\in\partial D$, 则 $g\equiv z_{0}\in\partial D$, 属第二种情形. 命题得证. $\blacksquare$

### 习题三

(习题 11.3-5) (维塔利-波特) 令 $\{f_{n}\}$ 是区域 $D\subset\mathbb{C}$ 上的全纯函数序列且在 $D$ 上的任意紧子集上都是一致有界的. 给定序列 $z_{m}\in D$ 且 $z_{m}\to z_{\infty}\in D$. 假设 $\lim_{n\to\infty}f_{n}(z_{m})=w_{m}$, $\forall m\in\mathbb{N}$. 证明: 存在 $D$ 上的全纯函数 $f$ 使得 $f_{n}$ 在 $D$ 上内紧一致收敛到 $f$.

### 解答 习题三

由**定理 11.1.3 (蒙泰尔)**, $\{f_{n}\}$ 在 $D$ 上正规: 任意子列含有在 $D$ 上内紧一致收敛的子列. 设 $f_{n_{k}}\to f$ 内紧一致, 由**定理 11.1.2** $f$ 在 $D$ 上全纯. 对每个 $m$, 由 $f_{n_{k}}\to f$ 一致于 $\{z_{m}\}$ 附近及条件 $\lim_{n}f_{n}(z_{m})=w_{m}$, 得 $f(z_{m})=w_{m}$.

现在证明整个序列收敛到 $f$. 若不然, 存在紧集 $K\subset D$, $\epsilon>0$ 及子列 $f_{n'_{j}}$ 使得 $\sup_{K}|f_{n'_{j}}-f|\ge\epsilon$. 由蒙泰尔, $f_{n'_{j}}$ 有子列内紧收敛到某全纯 $\tilde f$. 则 $\tilde f(z_{m})=w_{m}=f(z_{m})$ 对一切 $m$ 成立; 因 $z_{m}\to z_{\infty}\in D$ 有聚点, 由**定理 9.3.2 (恒等定理)** $\tilde f=f$. 这与 $\sup_{K}|f_{n'_{j}}-f|\ge\epsilon$ 且 $f_{n'_{j}}\to f$ 于 $K$ 矛盾. 故 $f_{n}\to f$ 在 $D$ 上内紧一致收敛. $\blacksquare$

### 习题四

(习题 11.3-6) 令 $D\subset\mathbb{C}$ 是区域, $f$ 是 $D$ 上的全纯函数且 $f:D\to f(D)$ 是共形映射. 证明: 区域 $f(D)$ 的面积等于 $\iint_{D}|f'(z)|^{2}\,dx\,dy$.

### 解答 习题四

记 $f(z)=u(x,y)+iv(x,y)$. 因 $f:D\to f(D)$ 共形, $f$ 单叶且 $f'\ne0$, 故 $f$ 是 $D$ 到 $f(D)$ 的 $C^{1}$ 微分同胚. 由二重积分的变量代换公式,

$$
\operatorname{Area}(f(D))=\iint_{D}|\det J_{f}(x,y)|\,dx\,dy,
$$

其中 $J_{f}=\begin{pmatrix}u_{x}&u_{y}\\v_{x}&v_{y}\end{pmatrix}$ 为雅可比矩阵. 由柯西-黎曼方程 $u_{x}=v_{y}$, $u_{y}=-v_{x}$,

$$
\det J_{f}=u_{x}v_{y}-u_{y}v_{x}=u_{x}^{2}+u_{y}^{2}=|f'(z)|^{2}.
$$

故 $\operatorname{Area}(f(D))=\iint_{D}|f'(z)|^{2}\,dx\,dy$. $\blacksquare$

### 习题五

(习题 11.3-15) 令 $\{f_{n}\}$ 是开集 $\Omega\subset\mathbb{C}$ 上的一列全纯函数. 假设存在正实数序列 $c_{n}>0$ 使得 $\sum_{n=1}^{+\infty}c_{n}<+\infty$ 而且 $|f_{n}(z)-1|\le c_{n}$, $\forall z\in\Omega$. 证明:

(i) 无穷乘积 $\prod_{n=1}^{+\infty}f_{n}(z)$ 在 $\Omega$ 上一致收敛到一个 $\Omega$ 上的全纯函数 $f$;

(ii) 若所有的 $f_{n}(z)$ 都不在 $\Omega$ 上取零值, 则 $\frac{f'(z)}{f(z)}=\sum_{n=1}^{+\infty}\frac{f_{n}'(z)}{f_{n}(z)}$.

### 解答 习题五

(i) 记 $P_{n}(z)=\prod_{k=1}^{n}f_{k}(z)$. 由 $|f_{k}(z)-1|\le c_{k}$, 有 $|f_{k}(z)|\le1+c_{k}$, 故

$$
|P_{n}(z)|\le\prod_{k=1}^{n}(1+c_{k})\le\exp\left(\sum_{k=1}^{n}c_{k}\right)\le e^{C},
$$

其中 $C=\sum_{k=1}^{+\infty}c_{k}<+\infty$. 于是

$$
|P_{n}(z)-P_{n-1}(z)|=|P_{n-1}(z)||f_{n}(z)-1|\le e^{C}c_{n}.
$$

因 $\sum c_{n}$ 收敛, $\sum|P_{n}-P_{n-1}|$ 在 $\Omega$ 上一致收敛, 故 $P_{n}\to f$ 在 $\Omega$ 上一致. 由**定理 11.1.2**, $f$ 在 $\Omega$ 上全纯.

(ii) 取 $N_{0}$ 充分大使 $\sum_{n>N_{0}}c_{n}<\frac{1}{2}$. 对 $n>N_{0}$, $|f_{n}(z)-1|\le c_{n}$, 取 $c_{n}$ 充分小 (由收敛性) 使 $f_{n}(z)\ne0$; 且 $|P_{n}(z)|\ge\prod_{k=1}^{n}(1-c_{k})>0$ 局部, 故 $f$ 在 $\Omega$ 上不取零值. 因 $P_{n}\to f$ 内紧一致且局部 $P_{n}\ne0$, 对数导数 $\frac{P_{n}'}{P_{n}}\to\frac{f'}{f}$ 内紧一致. 而对有限乘积,

$$
\frac{P_{n}'(z)}{P_{n}(z)}=\sum_{k=1}^{n}\frac{f_{k}'(z)}{f_{k}(z)},
$$

令 $n\to\infty$ 得 $\frac{f'(z)}{f(z)}=\sum_{n=1}^{+\infty}\frac{f_{n}'(z)}{f_{n}(z)}$. $\blacksquare$
