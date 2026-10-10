# 作业 2

> **定义 2.1.2** (道路的重参数化)<br>称道路 $\gamma_{1}:\left[a_{1},b_{1}\right]\to\mathbb{C}$ 是道路 $\gamma_{2}:\left[a_{2},b_{2}\right]\to\mathbb{C}$ 的重参数化, 如果存在单调递增函数 $\tau:\left[a_{1},b_{1}\right]\to\left[a_{2},b_{2}\right]$ 满足 $\tau\left(a_{1}\right)=a_{2}$, $\tau\left(b_{1}\right)=b_{2}$, 使得对任意 $t\in\left[a_{1},b_{1}\right]$ 有 $\gamma_{1}\left(t\right)=\gamma_{2}\left(\tau\left(t\right)\right)$; 若 $\tau$ 在某点 $\bar{t}$ 处不连续, 即 $\tau\left(\bar{t}-0\right)<\tau\left(\bar{t}+0\right)$, 还要求 $\gamma_{2}$ 在区间 $\left[\tau\left(\bar{t}-0\right),\tau\left(\bar{t}+0\right)\right]$ 上为常值.

> **定义 2.1.4** (路径)<br>在道路重参数化意义下的一个道路等价类称为路径.

> **定义 2.2.4** (区域)<br>称具有以下两条性质的点集 $D\subset\mathbb{C}$ (或 $\overline{\mathbb{C}}$) 为区域: (i-1) $D$ 是开集; (i-2) 道路连通性, 即任意 $a,b\in D$ 都存在位于 $D$ 中的道路以 $a,b$ 为端点.

> **定理 2.2.6** (若当曲线定理)<br>复平面上的任一条若当闭曲线把整个平面分成两个没有公共点的区域: 一个有界的称为它的内区域, 一个无界的称为它的外区域.

> **定义 2.2.7** (单、多连通性)<br>设 $D$ 是复平面 $\mathbb{C}$ 上的区域, 称 $D$ 为单连通的, 如果 $D$ 内任意若当闭曲线的内区域都包含在 $D$ 内; 否则称它是多连通的.

> **定义 2.4.1** (函数沿某集合的极限)<br>设函数 $f$ 在集合 $M\subset\overline{\mathbb{C}}$ 上有定义, 点 $a\in\overline{\mathbb{C}}$ 是 $M$ 的极限点. 称 $A\in\mathbb{C}$ 为 $f$ 当 $z$ 沿 $M$ 趋向 $a$ 时的极限, 记为 $\lim_{z\to a,\ z\in M}f\left(z\right)=A$, 如果对任意 $\epsilon>0$ 存在 $\delta>0$ 使对任意 $z\in M$, 若 $0<\rho\left(z,a\right)<\delta$ 则 $\rho\left(f\left(z\right),A\right)<\epsilon$.

> **定义 2.4.2** (函数的有界性和连续性)<br>若存在 $C>0$ 使 $\forall z\in M$ 有 $\left|f\left(z\right)\right|\le C$, 则称 $f$ 在 $M$ 上有界; 若 $\lim_{z\to a,\ z\in M}f\left(z\right)=f\left(a\right)$, 则称 $f$ 在点 $a$ 处 (沿 $M$) 连续; 若对 $\forall a\in M$ 均连续, 则称 $f$ 在 $M$ 上连续.

### 习题一

(习题 2.5-2) 令函数 $f$ 在区域 $D$ 上一致连续. 证明: 对于 $\forall z_{0}\in\partial D$, 极限 $\lim_{z\to z_{0},\ z\in D}f\left(z\right)$ 都存在.

### 解答 习题一

先证 $D$ 中收敛于 $z_{0}$ 的任意序列的像收敛. 任取 $D$ 中序列 $\left\{z_{n}\right\}$ 使 $z_{n}\to z_{0}$. 因 $f$ 在 $D$ 上一致连续, 对任意 $\epsilon>0$ 存在 $\delta>0$, 使当 $z,w\in D$ 且 $\left|z-w\right|<\delta$ 时有 $\left|f\left(z\right)-f\left(w\right)\right|<\epsilon$. 又 $\left\{z_{n}\right\}$ 是柯西列, 故存在 $N$ 使当 $m,n\ge N$ 时 $\left|z_{m}-z_{n}\right|<\delta$, 从而 $\left|f\left(z_{m}\right)-f\left(z_{n}\right)\right|<\epsilon$. 因此 $\left\{f\left(z_{n}\right)\right\}$ 是柯西列, 在 $\mathbb{C}$ 中收敛.

再证极限不依赖序列的选取. 设 $z_{n},z_{n}'\in D$, $z_{n}\to z_{0}$, $z_{n}'\to z_{0}$, 且 $f\left(z_{n}\right)\to L$, $f\left(z_{n}'\right)\to L'$. 构造交错序列 $z_{1},z_{1}',z_{2},z_{2}',\cdots$, 它仍收敛于 $z_{0}$, 故其像收敛, 但它的两个子列分别收敛于 $L$ 与 $L'$, 从而 $L=L'$.

综上, 极限 $\lim_{z\to z_{0},\ z\in D}f\left(z\right)$ 存在. $\blacksquare$

### 习题二

(习题 2.5-4) 将下述道路分成道路重参数化等价类:

(i) $e^{2\pi it}$, $t\in\left[0,1\right]$; (ii) $e^{4\pi it}$, $t\in\left[0,1\right]$; (iii) $e^{-2\pi it}$, $t\in\left[0,1\right]$; (iv) $e^{2\pi i\sin t}$, $t\in\left[0,\frac{\pi}{6}\right]$; (v) $e^{\pi i\sin t}$, $t\in\left[0,2\pi\right]$.

### 解答 习题二

依据**定义 2.1.2 (道路的重参数化)** 与**定义 2.1.4 (路径)**, 两条道路重参数化等价, 当且仅当在单调递增参数变换下像相同、起点终点相同且"行进顺序"一致 (定向与绕行圈数不变). 逐条分析:

(i) 起点 $1$, 终点 $1$, 逆时针绕单位圆一圈;

(ii) 起点 $1$, 终点 $1$, 逆时针绕单位圆两圈;

(iii) 起点 $1$, 终点 $1$, 顺时针绕单位圆一圈;

(iv) 起点 $1$, 终点 $e^{2\pi i\cdot\frac{1}{2}}=e^{\pi i}=-1$; 因 $\sin t$ 在 $\left[0,\frac{\pi}{6}\right]$ 上单调递增, 该道路逆时针沿单位圆从 $1$ 走到 $-1$, 即走了半圈;

(v) 起点 $1$, 终点 $1$. 在 $\left[0,\pi\right]$ 上 $\sin t$ 从 $0$ 增到 $1$ 再减到 $0$, 点从 $1$ 逆时针到 $-1$ 再回到 $1$; 在 $\left[\pi,2\pi\right]$ 上 $\sin t$ 从 $0$ 减到 $-1$ 再增到 $0$, 点从 $1$ 顺时针到 $-1$ 再回到 $1$. 故它是往返摆动的闭道路.

比较等价性: (i) 与 (iii) 定向相反, 不等价; (i) 与 (ii) 圈数不同, 不等价; (iv) 非闭道路 (起 $1$ 终 $-1$), 与任何闭道路不等价; (v) 的轨迹是往返摆动, 不同于 (i)(ii)(iii) 的整圈, 也不同于 (iv) 的半圈. 故五条道路分属五个互不相同的重参数化等价类. $\blacksquare$

### 习题三

(习题 2.5-6) 考虑映射 $f\left(z\right)=z^{3}$, 将它表示成 (1) 长方形表示和 (2) 极坐标表示的形式; 试画出椭圆 $\left\{z=x+iy:\frac{x^{2}}{2}+y^{2}=1\right\}$ 在该映射下的图像.

### 解答 习题三

(1) 长方形表示: 设 $z=x+iy$, 由**定义 1.2.2 (复数的极坐标形式)** 与二项展开,

$$
\begin{aligned}
&\quad\;f\left(z\right)\\
&=\left(x+iy\right)^{3}\\
&=x^{3}+3x^{2}\left(iy\right)+3x\left(iy\right)^{2}+\left(iy\right)^{3}\\
&=x^{3}-3xy^{2}+i\left(3x^{2}y-y^{3}\right).
\end{aligned}
$$

(2) 极坐标表示: 设 $z=re^{i\theta}$, 则

$$
f\left(z\right)=r^{3}e^{3i\theta}=r^{3}\left(\cos3\theta+i\sin3\theta\right).
$$

椭圆 $\frac{x^{2}}{2}+y^{2}=1$ 可参数化为 $x=\sqrt{2}\cos\theta$, $y=\sin\theta$, $\theta\in\left[0,2\pi\right]$, 即 $z\left(\theta\right)=\sqrt{2}\cos\theta+i\sin\theta$. 其像为 $f\left(z\left(\theta\right)\right)=\left(\sqrt{2}\cos\theta+i\sin\theta\right)^{3}$. 记 $c=\cos\theta$, $s=\sin\theta$, 展开得

$$
\begin{aligned}
&\quad\;f\left(z\left(\theta\right)\right)\\
&=\left(2\sqrt{2}c^{3}-3\sqrt{2}cs^{2}\right)+i\left(6c^{2}s-s^{3}\right)\\
&=\left(2\sqrt{2}\cos^{3}\theta-3\sqrt{2}\cos\theta\sin^{2}\theta\right)+i\left(6\cos^{2}\theta\sin\theta-\sin^{3}\theta\right).
\end{aligned}
$$

由极坐标表示, $z^{3}$ 的辐角是 $z$ 辐角的 $3$ 倍; 当 $\theta$ 扫过 $\left[0,2\pi\right]$ 时, 像点辐角扫过 $\left[0,6\pi\right]$, 故像是一条绕原点转三圈、关于原点对称的闭曲线. $\blacksquare$

### 习题四

(习题 2.5-8) 令 $K\subset\mathbb{C}$ 是有界连通闭集. 证明: 对于任意 $\epsilon>0$, 都存在若当闭曲线 $\gamma$ 使得 $K$ 包含在 $\gamma$ 的内部区域而且 $\operatorname{dist}\left(K,\gamma\right)<\epsilon$.

### 解答 习题四

$K$ 有界闭, 故紧. 取 $\eta>0$ 待定, 令 $K_{\eta}=\left\{z\in\mathbb{C}:\operatorname{dist}\left(z,K\right)\le\eta\right\}$ 为 $K$ 的闭 $\eta$-邻域. $K_{\eta}$ 仍是紧集, 且 $K\subset K_{\eta}^{\circ}$ (即 $K$ 含于 $K_{\eta}$ 的内部), 因为对每个 $k\in K$ 都存在以 $k$ 为中心的开圆盘含于 $K_{\eta}$.

将复平面用边长 $\delta$ 的方格网覆盖, 取所有与 $K_{\eta}$ 相交的闭方格并成集合 $P$. 因 $K_{\eta}$ 紧, 与它相交的方格至多有限个, 故 $P$ 是有限个闭方格的并. 又 $K_{\eta}$ 连通 (由 $K$ 连通, 其 $\eta$-管状邻域连通), 当 $\delta$ 充分小时, 这些方格沿 $K_{\eta}$ 依次相接, 故 $P$ 连通. 取 $P$ 的外边界 $\gamma=\partial_{\text{外}}P$ (由最外层的方格边组成的简单闭折线), 则 $\gamma$ 是一条若当闭曲线 (**定理 2.2.6 (若当曲线定理)**).

因 $P\supset K_{\eta}\supset K$ 且 $K_{\eta}\subset P^{\circ}$, 故 $K$ 包含在 $\gamma$ 的内部区域. 对 $P$ 中任一方格, 因它包含 $K_{\eta}$ 的某点, 其上任意点到 $K_{\eta}$ 的距离不超过方格对角长 $\sqrt{2}\,\delta$, 从而到 $K$ 的距离不超过 $\sqrt{2}\,\delta+\eta$. 特别地, 对任意 $z\in\gamma\subset P$,

$$
\operatorname{dist}\left(z,K\right)\le\sqrt{2}\,\delta+\eta,
$$

故 $\operatorname{dist}\left(K,\gamma\right)\le\sqrt{2}\,\delta+\eta$. 取 $\delta<\frac{\epsilon}{2\sqrt{2}}$, $\eta<\frac{\epsilon}{2}$, 得 $\operatorname{dist}\left(K,\gamma\right)<\epsilon$. $\blacksquare$

### 习题五

(习题 2.5-10) 试给出 $\mathbb{C}$ 上的一个区域 $D$ 使得 $\mathbb{C}\setminus D$ 是连通集但 $D$ 不是单连通的.

### 解答 习题五

取闭单位圆盘的外部区域

$$
D=\left\{z\in\mathbb{C}:\left|z\right|>1\right\}.
$$

先验证 $D$ 是区域 (**定义 2.2.4 (区域)**): $D$ 是开集 (开集 $\left\{\left|z\right|>1\right\}$); 且对任意 $a,b\in D$, 存在 $R>\max\left\{\left|a\right|,\left|b\right|\right\}$, 取圆弧 $\gamma_{1}$ 把 $a$ 连到模为 $R$ 的点、沿圆周 $\left|z\right|=R$ 的弧 $\gamma_{2}$、再取圆弧 $\gamma_{3}$ 连回 $b$, 三段均在 $D$ 内, 故 $D$ 道路连通. 因而 $D$ 是区域.

其次, $\mathbb{C}\setminus D=\left\{z\in\mathbb{C}:\left|z\right|\le1\right\}$ 是闭单位圆盘, 显然连通.

最后, $D$ 不是单连通的: 圆周 $\gamma\left(t\right)=2e^{it}$, $t\in\left[0,2\pi\right]$, 位于 $D$ 内且是若当闭曲线, 其内区域 $\left\{\left|z\right|<2\right\}$ 包含闭单位圆盘 $\left\{\left|z\right|\le1\right\}\subset\mathbb{C}\setminus D$, 故 $\left\{\left|z\right|<2\right\}\not\subset D$. 由**定义 2.2.7 (单、多连通性)**, $D$ 不是单连通的.

综上, $D=\left\{z:\left|z\right|>1\right\}$ 满足要求. $\blacksquare$
