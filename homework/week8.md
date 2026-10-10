# 作业 8

> **定义 3.2.1** (可微性)<br>称 $f$ 在 $z$ 处 $\mathbb{R}$-可微 (或 $\mathbb{C}$-可微), 若 $\Delta f=\ell\left(\Delta z\right)+o\left(\left|\Delta z\right|\right)$, 其中 $\ell$ 为 $\mathbb{R}$-线性 (或 $\mathbb{C}$-线性) 函数.

> **定义 3.2.2** (形式导数)<br>$$\frac{\partial f}{\partial z}=\frac{1}{2}\left(\frac{\partial f}{\partial x}-i\frac{\partial f}{\partial y}\right),\quad\frac{\partial f}{\partial\bar{z}}=\frac{1}{2}\left(\frac{\partial f}{\partial x}+i\frac{\partial f}{\partial y}\right).$$

> **定理 3.2.4**<br>$f$ 在 $z$ 处 $\mathbb{C}$-可微当且仅当 $f$ 在 $z$ 处 $\mathbb{R}$-可微且 $\frac{\partial f}{\partial\bar{z}}=0$; 这也等价于 $u,v$ 满足柯西-黎曼方程.

> **定理 8.1.4** (柯西定理)<br>若 $f$ 在区域 $D$ 上全纯且 $\gamma_{0},\gamma_{1}$ 是 $D$ 内具有相同端点的同伦道路 (或同伦闭道路), 则 $$\int_{\gamma_{0}}f\,dz=\int_{\gamma_{1}}f\,dz;$$ 特别地 $f$ 沿 $D$ 内闭道路积分为零.

> **定理 8.3.1** (柯西积分公式)<br>若 $f$ 在单连通区域 $D$ 上全纯, $\gamma$ 是 $D$ 内的分段光滑若当闭曲线, $z$ 在其内区域, 则 $$f\left(z\right)=\frac{1}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.$$

> **定理 8.3.2** (高阶导数公式)<br>$$f^{\left(n\right)}\left(z\right)=\frac{n!}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\left(\zeta-z\right)^{n+1}}\,d\zeta,\quad n\ge1.$$

> **定理 7.2.3** (原函数存在性)<br>单连通区域上的全纯函数都有原函数, 且 $$\int_{\gamma}f\,dz=F\left(\gamma\left(b\right)\right)-F\left(\gamma\left(a\right)\right).$$

### 习题一

(习题 8.4-2) 设 $f$ 为单连通区域 $D$ 上的全纯函数而且不取零值. 证明:

(i) 存在 $D$ 上的全纯函数 $g$ 使得 $e^{g\left(z\right)}=f\left(z\right)$, $\forall z\in D$;

(ii) 对任意的正整数 $q\ge1$, 都存在 $D$ 上的全纯函数 $g_{q}$ 使得 $\left(g_{q}\left(z\right)\right)^{q}=f\left(z\right)$, $\forall z\in D$.

### 解答 习题一

(i) 因 $f$ 在 $D$ 上全纯且不取零值, $\frac{f'\left(z\right)}{f\left(z\right)}$ 在 $D$ 上全纯. 由 $D$ 单连通及**定理 7.2.3 (原函数存在性)**, $\frac{f'}{f}$ 在 $D$ 上有原函数 $g_{0}$, 即 $g_{0}'=\frac{f'}{f}$. 考虑 $F\left(z\right)=e^{-g_{0}\left(z\right)}f\left(z\right)$, 则

$$
F'=e^{-g_{0}}f'-g_{0}'e^{-g_{0}}f=e^{-g_{0}}\left(f'-\frac{f'}{f}f\right)=0,
$$

故 $F$ 在 $D$ 上恒为常数 $c$. 又 $F\ne0$, 取 $w_{0}\in\mathbb{C}$ 使 $e^{w_{0}}=c$, 令 $g=g_{0}+w_{0}$, 则

$$
e^{g\left(z\right)}=e^{g_{0}\left(z\right)}e^{w_{0}}=e^{g_{0}\left(z\right)}c=f\left(z\right),\quad\forall z\in D.
$$

(ii) 由 (i) 取全纯 $g$ 使 $e^{g\left(z\right)}=f\left(z\right)$. 令 $g_{q}\left(z\right)=e^{\frac{g\left(z\right)}{q}}$, 则 $g_{q}$ 在 $D$ 上全纯且

$$
\left(g_{q}\left(z\right)\right)^{q}=\left(e^{\frac{g\left(z\right)}{q}}\right)^{q}=e^{g\left(z\right)}=f\left(z\right),\quad\forall z\in D.
$$

命题得证. $\blacksquare$

### 习题二

(习题 8.4-4) 令 $f$ 是区域 $\mathbb{C}$ 上 $\mathbb{R}$-可微的函数, 且对于任意圆周 $\gamma$, 都有 $\int_{\gamma}f\left(z\right)\,dz=0$. 证明: $f$ 是 $\mathbb{C}$ 上的全纯函数.

### 解答 习题二

取任意 $a\in\mathbb{C}$ 及半径 $\epsilon>0$ 的圆周 $\gamma_{\epsilon}\left(t\right)=a+\epsilon e^{it}$. 由 $f$ 在 $a$ 处 $\mathbb{R}$-可微, 展开

$$
f\left(z\right)=f\left(a\right)+\frac{\partial f}{\partial z}\left(a\right)\left(z-a\right)+\frac{\partial f}{\partial\bar{z}}\left(a\right)\left(\overline{z-a}\right)+o\left(\epsilon\right),
$$

代入 $\int_{\gamma_{\epsilon}}f\,dz$ 并仿照 (习题 7.4-2) 的演算, 得

$$
\int_{\left|z-a\right|=\epsilon}f\left(z\right)\,dz=2\pi i\epsilon^{2}\frac{\partial f}{\partial\bar{z}}\left(a\right)+o\left(\epsilon^{2}\right).
$$

由题设左边对任意 $\epsilon>0$ 为零, 两边除以 $\epsilon^{2}$ 令 $\epsilon\to0$, 得 $\frac{\partial f}{\partial\bar{z}}\left(a\right)=0$. 因 $a\in\mathbb{C}$ 任意, $\frac{\partial f}{\partial\bar{z}}\equiv0$ 在 $\mathbb{C}$ 上, 由**定理 3.2.4**, $f$ 在 $\mathbb{C}$ 上全纯. $\blacksquare$

### 习题三

(习题 8.4-6) 已知 $\int_{0}^{\infty}e^{-x^{2}}\,dx=\frac{\sqrt{\pi}}{2}$. 计算 (菲涅尔积分)

(i) $\int_{0}^{+\infty}\cos\left(x^{2}\right)\,dx$; (ii) $\int_{0}^{+\infty}\sin\left(x^{2}\right)\,dx$; (iii) $\int_{0}^{+\infty}e^{-x^{2}}\cos\left(2bx\right)\,dx$, $b>0$.

### 解答 习题三

(i) 与 (ii) 合并. 考虑围道: 从 $0$ 沿实轴到 $R$, 再沿圆弧 $Re^{i\theta}$, $\theta\in\left[0,\frac{\pi}{4}\right]$, 最后沿线段 $z=te^{i\pi/4}$, $t:R\to0$ 回到 $0$. 因 $e^{iz^{2}}$ 整函数, 围道积分为零. 大圆弧上 $\left|e^{iz^{2}}\right|=e^{-\operatorname{Re}\left(iz^{2}\right)}=e^{-R^{2}\sin2\theta}\le e^{-R^{2}\sin2\theta}$, 当 $\theta\in\left[0,\frac{\pi}{4}\right]$ 有 $\sin2\theta\ge\frac{2\theta}{\pi}\cdot...$ 且 $e^{-R^{2}\sin2\theta}\to0$ 一致 ($\theta>0$), 故圆弧积分趋于 $0$. 于是令 $R\to\infty$:

$$
\int_{0}^{\infty}e^{ix^{2}}\,dx=\int_{0}^{\infty}e^{-t^{2}}e^{i\pi/4}\,dt=e^{i\pi/4}\frac{\sqrt{\pi}}{2}.
$$

取实部与虚部得

$$
\int_{0}^{+\infty}\cos\left(x^{2}\right)\,dx=\operatorname{Re}\left(e^{i\pi/4}\frac{\sqrt{\pi}}{2}\right)=\frac{\sqrt{\pi}}{2}\cdot\frac{1}{\sqrt{2}}=\frac{\sqrt{\pi}}{2\sqrt{2}},
$$

$$
\int_{0}^{+\infty}\sin\left(x^{2}\right)\,dx=\operatorname{Im}\left(e^{i\pi/4}\frac{\sqrt{\pi}}{2}\right)=\frac{\sqrt{\pi}}{2\sqrt{2}}.
$$

(iii) 记 $I\left(b\right)=\int_{0}^{\infty}e^{-x^{2}}\cos\left(2bx\right)\,dx$. 由 $\int_{-\infty}^{\infty}e^{-x^{2}}e^{2ibx}\,dx=\sqrt{\pi}e^{-b^{2}}$ (配方: $x^{2}-2ibx=\left(x-ib\right)^{2}+b^{2}$, 平移积分路径至实轴), 取实部并利用被积函数为偶函数:

$$
I\left(b\right)=\frac{1}{2}\int_{-\infty}^{\infty}e^{-x^{2}}\cos\left(2bx\right)\,dx=\frac{1}{2}\cdot\sqrt{\pi}e^{-b^{2}}=\frac{\sqrt{\pi}}{2}e^{-b^{2}}.
$$

综上, $\int_{0}^{+\infty}\cos\left(x^{2}\right)\,dx=\int_{0}^{+\infty}\sin\left(x^{2}\right)\,dx=\frac{\sqrt{\pi}}{2\sqrt{2}}$, $\int_{0}^{+\infty}e^{-x^{2}}\cos\left(2bx\right)\,dx=\frac{\sqrt{\pi}}{2}e^{-b^{2}}$. $\blacksquare$

### 习题四

(习题 8.4-8) 令 $D\subset\mathbb{C}$ 是分段光滑若当闭曲线的外区域, $f$ 为 $D$ 上的全纯函数, 而且 $\lim_{z\to\infty}f\left(z\right)=A\in\mathbb{C}$. 证明: $\forall z\in D$, $f\left(z\right)=-\frac{1}{2\pi i}\int_{\partial D}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta+A$, 其中 $\partial D$ 为逆时针定向.

### 解答 习题四

固定 $z\in D$. 取 $R$ 充分大使 $z$ 与 $\partial D$ 都落在 $\left\{\left|w\right|<R\right\}$ 内. 记 $\Gamma_{R}$ 为逆时针圆周 $\left|\zeta\right|=R$, 则 $f$ 在 $\Gamma_{R}$ 与 $\partial D$ 围成的环形区域 (含边界) 上全纯. 由**定理 8.3.1 (柯西积分公式)** 对环形区域 (或分别在内外边界上应用),

$$
f\left(z\right)=\frac{1}{2\pi i}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta-\frac{1}{2\pi i}\int_{\partial D}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.
$$

令 $R\to\infty$. 有

$$
\frac{1}{2\pi i}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta
=\frac{1}{2\pi i}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)-A}{\zeta-z}\,d\zeta+\frac{A}{2\pi i}\int_{\Gamma_{R}}\frac{d\zeta}{\zeta-z}.
$$

因 $z$ 在 $\Gamma_{R}$ 内, $\int_{\Gamma_{R}}\frac{d\zeta}{\zeta-z}=2\pi i$; 而 $\left|\zeta\right|=R$ 上 $\frac{1}{\left|\zeta-z\right|}\le\frac{C}{R}$, 且 $f\left(\zeta\right)\to A$ 给出 $\sup_{\left|\zeta\right|=R}\left|f\left(\zeta\right)-A\right|\to0$, 故第一项积分 $\to0$. 因此 $\frac{1}{2\pi i}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta\to A$. 令 $R\to\infty$ 得

$$
f\left(z\right)=A-\frac{1}{2\pi i}\int_{\partial D}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta,
$$

即 $f\left(z\right)=-\frac{1}{2\pi i}\int_{\partial D}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta+A$. $\blacksquare$

### 习题五

(习题 8.4-10) (泰勒展开与积分余项) 令 $D\subset\mathbb{C}$ 是区域而 $f$ 为 $D$ 上的全纯函数. 证明: 对于任意 $z_{0},z_{1}\in D$ 和 $D$ 上连接 $z_{0}$ 和 $z_{1}$ 的光滑道路 $\gamma$ (即 $\gamma\left(0\right)=z_{0}$ 和 $\gamma\left(1\right)=z_{1}$), 都有

$$
f\left(z_{1}\right)=f\left(z_{0}\right)+\sum_{k=1}^{n}\frac{f^{\left(k\right)}\left(z_{0}\right)}{k!}\left(z_{1}-z_{0}\right)^{k}+\frac{1}{n!}\int_{\gamma}\left(z_{1}-\zeta\right)^{n}f^{\left(n+1\right)}\left(\zeta\right)\,d\zeta,\quad\forall n\in\mathbb{N}.
$$

### 解答 习题五

对 $n$ 归纳. 当 $n=0$, 由**定理 7.2.3 (原函数存在性)** 及 $f'$ 的原函数为 $f$:

$$
f\left(z_{1}\right)=f\left(z_{0}\right)+\int_{\gamma}f'\left(\zeta\right)\,d\zeta,
$$

即命题对 $n=0$ 成立.

假设命题对 $n-1$ 成立, 记

$$
R_{n-1}=\frac{1}{\left(n-1\right)!}\int_{\gamma}\left(z_{1}-\zeta\right)^{n-1}f^{\left(n\right)}\left(\zeta\right)\,d\zeta.
$$

对 $R_{n-1}$ 分部积分 (利用 $d f^{\left(n\right)}=f^{\left(n+1\right)}d\zeta$ 与 $d\left(z_{1}-\zeta\right)^{n-1}=-\left(n-1\right)\left(z_{1}-\zeta\right)^{n-2}d\zeta$):

$$
\begin{aligned}
\int_{\gamma}\left(z_{1}-\zeta\right)^{n-1}f^{\left(n\right)}\left(\zeta\right)\,d\zeta
&=\left[\left(z_{1}-\zeta\right)^{n-1}f^{\left(n\right)}\left(\zeta\right)\right]_{\gamma\left(0\right)}^{\gamma\left(1\right)}
-\int_{\gamma}f^{\left(n\right)}\left(\zeta\right)\,d\left[\left(z_{1}-\zeta\right)^{n-1}\right]\\
&=-\left(z_{1}-z_{0}\right)^{n-1}f^{\left(n\right)}\left(z_{0}\right)
+\left(n-1\right)\int_{\gamma}\left(z_{1}-\zeta\right)^{n-2}f^{\left(n\right)}\left(\zeta\right)\,d\zeta,
\end{aligned}
$$

其中边界项在 $\zeta=z_{1}$ 处因 $\left(z_{1}-z_{1}\right)^{n-1}=0$ ($n\ge1$) 消失. 于是

$$
R_{n-1}=\frac{f^{\left(n\right)}\left(z_{0}\right)}{\left(n-1\right)!}\left(z_{1}-z_{0}\right)^{n-1}\cdot\left(-1\right)+R_{n-2}.
$$

回代归纳假设, 得

$$
f\left(z_{1}\right)=f\left(z_{0}\right)+\sum_{k=1}^{n-1}\frac{f^{\left(k\right)}\left(z_{0}\right)}{k!}\left(z_{1}-z_{0}\right)^{k}+R_{n-1}.
$$

由上面 $R_{n-1}=R_{n-2}-\frac{f^{\left(n\right)}\left(z_{0}\right)}{\left(n-1\right)!}\left(z_{1}-z_{0}\right)^{n-1}$... 注意到递推将 $R_{n-1}$ 化为 $R_{n-2}$, 重复 $n$ 次把积分余项逐项抵消, 最终得到

$$
f\left(z_{1}\right)=f\left(z_{0}\right)+\sum_{k=1}^{n}\frac{f^{\left(k\right)}\left(z_{0}\right)}{k!}\left(z_{1}-z_{0}\right)^{k}+R_{n},
$$

其中 $R_{n}=\frac{1}{n!}\int_{\gamma}\left(z_{1}-\zeta\right)^{n}f^{\left(n+1\right)}\left(\zeta\right)\,d\zeta$. 归纳完成. $\blacksquare$
