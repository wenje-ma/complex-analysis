# 作业 20

> **定义 17.2.1** (典范元)<br>称 $(f,U)$ 为典范元, 若 $U$ 是 $\mathbb{C}$ 的非空开集且 $f$ 在 $U$ 上全纯.

> **定义 17.2.2** (直接全纯延拓)<br>典范元 $(f_{1},U_{1})$ 是 $(f_{0},U_{0})$ 的直接全纯延拓, 若 $U_{0}\cap U_{1}\ne\emptyset$ 且 $f_{0}=f_{1}$ 于 $U_{0}\cap U_{1}$.

> **定义 17.2.3** (全纯延拓)<br>$(f_{0},U_{0})$ 沿道路 $\gamma$ 全纯延拓到 $(f_{1},U_{1})$, 若存在一族典范元 $(f_{t},U_{t})_{t\in[0,1]}$ 使每步为直接延拓且 $f_{0},f_{1}$ 为首末元.

> **定理 17.3.6** (单值性定理)<br>若 $D$ 是单连通区域且 $(f,U)$ 沿 $D$ 内每条道路都可全纯延拓, 则 $f$ 延拓为 $D$ 上的单值全纯函数.

### 习题一

(习题 17.4-1) 证明: 级数 $1+\sum_{n=1}^{+\infty}(iz)^{n}$ 与级数 $\frac{1}{1-z}+\sum_{n=1}^{+\infty}\frac{(1-i)^{n}(-z)^{n}}{(1-z)^{1+n}}$ 互为直接全纯延拓.

### 解答 习题一

级数 $1$ 是几何级数, 当 $|iz|<1$ 即 $|z|<1$ 时收敛, 其和为

$$
1+\sum_{n=1}^{+\infty}(iz)^{n}=1+\frac{iz}{1-iz}=\frac{1}{1-iz}.
$$

级数 $2$: 提出因子 $\frac{1}{1-z}$,

$$
\frac{1}{1-z}\left[1+\sum_{n=1}^{+\infty}\left(\frac{(1-i)(-z)}{1-z}\right)^{n}\right],
$$

当 $\left|\frac{(1-i)(-z)}{1-z}\right|<1$, 即 $\sqrt2|z|<|1-z|$ 时收敛 (此时 $|z|<1$ 亦满足), 其和为

$$
\frac{1}{1-z}\cdot\frac{1}{1-\frac{(1-i)(-z)}{1-z}}=\frac{1}{1-z-(1-i)z}=\frac{1}{1-iz}.
$$

两区域 $\{|z|<1\}$ 与 $\{\sqrt2|z|<|1-z|\}$ 的交叠非空, 且两级数在此交叠上表示同一个函数 $\frac{1}{1-iz}$. 由**定义 17.2.2 (直接全纯延拓)**, 二者互为直接全纯延拓. $\blacksquare$

### 习题二

(习题 17.4-3) 令 $\gamma:[0,1]\to\mathbb{C}$ 为道路, 若典范元 $(f_{0},U_{0})$ 沿道路 $\gamma$ 全纯延拓成典范元 $(f_{1},U_{1})$, 证明: 典范元 $(\partial_{z}f_{0},U_{0})$ 也可以沿 $\gamma$ 延拓成典范元 $(\partial_{z}f_{1},U_{1})$.

### 解答 习题二

由**定义 17.2.3**, 存在延拓族 $(f_{t},U_{t})_{t\in[0,1]}$, 相邻元 $f_{t},f_{t+\Delta t}$ 在交叠上相等. 因 $f_{t}$ 全纯于 $U_{t}$, 其导数 $\partial_{z}f_{t}$ 也全纯于 $U_{t}$. 若 $f_{s}=f_{t}$ 于 $U_{s}\cap U_{t}$, 则 $\partial_{z}f_{s}=\partial_{z}f_{t}$ 于 $U_{s}\cap U_{t}$ (解析函数在交叠开集上恒等则各阶导数恒等). 故 $(\partial_{z}f_{t},U_{t})_{t\in[0,1]}$ 构成 $(\partial_{z}f_{0},U_{0})$ 沿 $\gamma$ 的全纯延拓族, 其终点为 $(\partial_{z}f_{1},U_{1})$. $\blacksquare$

### 习题三

(习题 17.4-4) 令 $\gamma:[0,1]\to\mathbb{C}$ 是闭道路, $\gamma(0)=\gamma(1)=a$, $F_{k}:=(f_{k},U_{k})$, $k=0,1$, 都是以 $a$ 为圆心的典范元且 $F_{1}$ 可以由 $F_{0}$ 沿 $\gamma$ 全纯延拓得到. 假设存在一个开集 $\Omega$ 上的全纯函数 $g$ 满足 $f_{0}(z)=g(z)$, $\forall z\in U_{0}\cap\Omega$ 且 $\gamma\subset\Omega$. 如果 $\forall z\in U_{0}\cap U_{1}$, 都有等式 $f_{1}(z)=\partial_{z}f_{0}(z)$, 试给出 $f_{0}$ 的所有可能形式.

### 解答 习题三

因 $f_{0}=g$ 于 $U_{0}\cap\Omega$ 且 $\gamma\subset\Omega$, $g$ 在 $\Omega$ 上全纯 (单值), 故 $f_{0}$ 沿 $\gamma$ 的全纯延拓恰为 $g$ 沿 $\gamma$ 的延拓. 由于 $\gamma$ 是 $\Omega$ 内闭曲线而 $g$ 单值, 绕 $\gamma$ 一圈后 $g$ 回到自身: $f_{1}=g=f_{0}$ 于 $U_{1}$ (在 $U_{0}\cap U_{1}$ 上 $f_{1}=f_{0}$). 结合条件 $f_{1}=\partial_{z}f_{0}$ 于 $U_{0}\cap U_{1}$, 得 $f_{0}=\partial_{z}f_{0}$ 于非空开集 $U_{0}\cap U_{1}$. 解常微分方程 $f_{0}'=f_{0}$: $f_{0}(z)=Ce^{z}$, 且 $f_{1}=f_{0}$ 给出同一常数. 故 $f_{0}$ 的所有可能形式为 $f_{0}(z)=Ce^{z}$, $C\in\mathbb{C}$. $\blacksquare$

### 习题四

(习题 17.4-5) 令 $U_{0}=B(1,1):=\{|z-1|<1\}$, $f_{0}$ 为对数函数 $\operatorname{Log}z$ 在 $U_{0}$ 上的一个全纯分支. 对任意 $n\in\mathbb{Z}\setminus\{0\}$, 令 $\gamma_{n}(t)=e^{2\pi int}$, $t\in[0,1]$. 给出元 $(f_{0},U_{0})$ 沿道路 $\gamma_{n}$ 的延拓族 $(f_{t},U_{t})$, 并说明 $f_{1}=f_{0}+2n\pi i$.

### 解答 习题四

$\gamma_{n}$ 从 $1$ 出发绕原点 $|n|$ 圈回到 $1$ (方向由 $n$ 的符号决定). 沿 $\gamma_{n}$, $\operatorname{Log}z$ 的幅角连续累积 $2\pi nt$. 对每个 $t\in[0,1]$, 取 $U_{t}=B(\gamma_{n}(t),\,\delta)$ (小邻域, 不含原点 $0$), 并定义

$$
f_{t}(z):=f_{0}(z)+2\pi int,\quad z\in U_{t},
$$

这里把 $f_{0}$ 视为 $\operatorname{Log}z$ 在 $1$ 附近的分支, 幅角从 $0$ 出发; 在 $U_{t}$ 上 $f_{t}$ 是 $\operatorname{Log}z$ 的一个全纯分支 (幅角相对 $1$ 处累积了 $2\pi nt$). 相邻元在交叠上取同一分支, 故 $(f_{t},U_{t})_{t\in[0,1]}$ 是 $(f_{0},U_{0})$ 沿 $\gamma_{n}$ 的延拓族. 当 $t=1$ 时 $\gamma_{n}(1)=1$, $U_{1}=B(1,\delta)$, $f_{1}(z)=f_{0}(z)+2\pi in$, 即 $f_{1}=f_{0}+2n\pi i$. $\blacksquare$

### 习题五

(习题 17.4-8) 令级数 $\sum_{n=0}^{+\infty}c_{n}z^{n}$ 的收敛半径为 $R=1$, $c_{n}\ge0$, $n=1,2,\cdots$, 而 $f(z)$ 是它的和函数. 证明: (i) $\alpha_{k}=\frac{f^{(k)}\left(\frac12\right)}{k!}\ge0$ ($k=0,1,2,\cdots$); (ii) 令 $\beta_{k}=\frac{f^{(k)}\left(\frac{e^{i\theta}}{2}\right)}{k!}$, 则有 $|\beta_{k}|\le\alpha_{k}$; (iii) $z=1$ 是和函数 $f$ 的一个奇点.

### 解答 习题五

(i) 逐项求导 (幂级数在 $|z|<1$ 内可逐项求导):

$$
\frac{f^{(k)}(z)}{k!}=\sum_{n=k}^{+\infty}c_{n}\binom{n}{k}z^{n-k}.
$$

取 $z=\frac12$ (正实数, $0<\frac12<1$):

$$
\alpha_{k}=\sum_{n=k}^{+\infty}c_{n}\binom{n}{k}\left(\frac12\right)^{n-k}\ge0,
$$

因 $c_{n}\ge0$.

(ii) 取 $z=\frac{e^{i\theta}}{2}$, 则 $|z|=\frac12<1$,

$$
\beta_{k}=\sum_{n=k}^{+\infty}c_{n}\binom{n}{k}\left(\frac{e^{i\theta}}{2}\right)^{n-k},\quad
|\beta_{k}|\le\sum_{n=k}^{+\infty}c_{n}\binom{n}{k}\left(\frac{|e^{i\theta}|}{2}\right)^{n-k}=\alpha_{k}.
$$

(iii) 反设 $1$ 是 $f$ 的正则点, 则 $f$ 在 $z=1$ 的某邻域全纯, 由幂级数理论其收敛半径必大于 $1$ (在 $1$ 邻域收敛 ⟹ 收敛半径 $>1$). 但这与收敛半径恰为 $R=1$ 矛盾. 故 $z=1$ 是 $f$ 的奇点. $\blacksquare$
