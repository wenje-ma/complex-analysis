# 作业 1

> **定义 1.1.5** (实部、虚部、共轭、模)<br>对 $z=x+iy$, 称 $x$ 为实部、$y$ 为虚部, 记 $x=\operatorname{Re}z$, $y=\operatorname{Im}z$; $z$ 的共轭为 $\bar{z}=x-iy$; $z$ 的模为 $$\left|z\right|=\sqrt{x^{2}+y^{2}}.$$

> **定义 1.2.2** (复数的极坐标形式)<br>复数 $z=x+iy\ne0$ 的极坐标形式为 $z=re^{i\phi}$, 其中 $r=\left|z\right|$, $\phi$ 为幅角 $\operatorname{Arg}z$ (确定到差 $2\pi$ 的整数倍), $e^{i\phi}=\cos\phi+i\sin\phi$.

> **定义 1.3.1** (球极投影)<br>单位球面 $S:\xi^{2}+\eta^{2}+\zeta^{2}=1$ 上, 复平面点 $z=\left(x,y\right)$ 对应 $$Z=\left(\xi,\eta,\zeta\right),\quad\xi=\frac{2x}{1+\left|z\right|^{2}},\ \eta=\frac{2y}{1+\left|z\right|^{2}},\ \zeta=\frac{\left|z\right|^{2}-1}{1+\left|z\right|^{2}},$$ 建立 $\mathbb{C}$ 与 $S\setminus\left\{N\right\}$ (去掉北极点) 的一一对应.

> **定义 1.4.2** (球弦度量)<br>对 $z,w\in\mathbb{C}$, 球弦距离 $$\rho\left(z,w\right)=\frac{2\left|z-w\right|}{\sqrt{1+\left|z\right|^{2}}\sqrt{1+\left|w\right|^{2}}}.$$

### 习题一

(习题 1.5-1) 证明: 若 $\left|z\right|=1$ 且 $z\ne\pm1$, 则

$$
\operatorname{Arg}\frac{z-1}{z+1}=\frac{\pi}{2}\ \text{或}\ \frac{3\pi}{2}\quad\left(\bmod 2\pi\right).
$$

### 解答 习题一

设 $z=e^{i\theta}$, 则 $z\ne\pm1$ 等价于 $\theta\ne0,\pi\ \left(\bmod 2\pi\right)$. 由**定义 1.2.2 (复数的极坐标形式)**, 得

$$
\begin{aligned}
&\quad\;\frac{z-1}{z+1}\\
&=\frac{e^{i\theta}-1}{e^{i\theta}+1}\\
&=\frac{e^{i\theta/2}\left(e^{i\theta/2}-e^{-i\theta/2}\right)}{e^{i\theta/2}\left(e^{i\theta/2}+e^{-i\theta/2}\right)}\\
&=\frac{2i\sin\frac{\theta}{2}}{2\cos\frac{\theta}{2}}\\
&=i\tan\frac{\theta}{2}.
\end{aligned}
$$

因 $z\ne\pm1$, 有 $\sin\frac{\theta}{2}\ne0$ 且 $\cos\frac{\theta}{2}\ne0$, 故 $\tan\frac{\theta}{2}\ne0$, 从而 $\frac{z-1}{z+1}=i\tan\frac{\theta}{2}$ 是非零纯虚数. 其辐角当 $\tan\frac{\theta}{2}>0$ 时为 $\frac{\pi}{2}$, 当 $\tan\frac{\theta}{2}<0$ 时为 $\frac{3\pi}{2}$ (均模 $2\pi$). 命题得证. $\blacksquare$

### 习题二

(习题 1.5-3) 证明: 若 $z_{1},\cdots,z_{n}$ 是非零复数且 $\sum_{k=1}^{n}\frac{1}{z_{k}}=0$, 则对任意一条通过原点 $z=0$ 的直线, 这些点不可能都落在该直线的一侧.

### 解答 习题二

反证. 假设存在一条通过原点的直线 $L$ 使所有 $z_{1},\cdots,z_{n}$ 都落在 $L$ 的严格一侧 (即 $L$ 的某一开半平面). 经旋转坐标, 可设 $L$ 为实轴且所有 $z_{k}$ 都位于上半平面: $\operatorname{Im}z_{k}>0$, $k=1,\cdots,n$.

由 $z_{k}=x_{k}+iy_{k}\ne0$ 及 $y_{k}=\operatorname{Im}z_{k}>0$, 结合**定义 1.1.5 (实部、虚部、共轭、模)** 中 $\frac{1}{z_{k}}=\frac{\bar{z}_{k}}{\left|z_{k}\right|^{2}}$, 得

$$
\operatorname{Im}\frac{1}{z_{k}}=\operatorname{Im}\frac{x_{k}-iy_{k}}{x_{k}^{2}+y_{k}^{2}}=-\frac{y_{k}}{x_{k}^{2}+y_{k}^{2}}<0.
$$

于是

$$
\operatorname{Im}\sum_{k=1}^{n}\frac{1}{z_{k}}=\sum_{k=1}^{n}\operatorname{Im}\frac{1}{z_{k}}<0,
$$

这与 $\sum_{k=1}^{n}\frac{1}{z_{k}}=0$ (其虚部为 $0$) 矛盾. 故这些点不可能都落在通过原点的直线的同一侧. $\blacksquare$

### 习题三

(习题 1.5-5) 令 $z_{1},\cdots,z_{n},w_{1},\cdots,w_{n}$ 为复数. 证明下述 (拉格朗日) 等式成立:

$$
\left|\sum_{j=1}^{n}z_{j}\bar{w}_{j}\right|^{2}=\left(\sum_{j=1}^{n}\left|z_{j}\right|^{2}\right)\left(\sum_{j=1}^{n}\left|w_{j}\right|^{2}\right)-\sum_{1\le j<k\le n}\left|z_{j}\bar{w}_{k}-z_{k}\bar{w}_{j}\right|^{2}.
$$

### 解答 习题三

记 $A=\sum_{j=1}^{n}z_{j}\bar{w}_{j}$. 由共轭与模的性质 (**定义 1.1.5**),

$$
\left|A\right|^{2}=A\overline{A}=\sum_{j=1}^{n}\sum_{k=1}^{n}z_{j}\bar{w}_{j}\overline{z_{k}\bar{w}_{k}}=\sum_{j=1}^{n}\sum_{k=1}^{n}z_{j}\bar{z}_{k}\bar{w}_{j}w_{k}.
$$

分离 $j=k$ 的项:

$$
\left|A\right|^{2}=\sum_{j=1}^{n}\left|z_{j}\right|^{2}\left|w_{j}\right|^{2}+\sum_{j\ne k}z_{j}\bar{z}_{k}\bar{w}_{j}w_{k}.
$$

另一方面,

$$
\sum_{1\le j<k\le n}\left|z_{j}\bar{w}_{k}-z_{k}\bar{w}_{j}\right|^{2}=\sum_{j<k}\left(\left|z_{j}\right|^{2}\left|w_{k}\right|^{2}+\left|z_{k}\right|^{2}\left|w_{j}\right|^{2}-z_{j}\bar{w}_{k}\bar{z}_{k}w_{j}-\bar{z}_{j}w_{k}z_{k}\bar{w}_{j}\right),
$$

且

$$
\left(\sum_{j=1}^{n}\left|z_{j}\right|^{2}\right)\left(\sum_{k=1}^{n}\left|w_{k}\right|^{2}\right)=\sum_{j=1}^{n}\left|z_{j}\right|^{2}\left|w_{j}\right|^{2}+\sum_{j<k}\left(\left|z_{j}\right|^{2}\left|w_{k}\right|^{2}+\left|z_{k}\right|^{2}\left|w_{j}\right|^{2}\right).
$$

两式相减得

$$
\begin{aligned}
&\quad\;\left(\sum_{j=1}^{n}\left|z_{j}\right|^{2}\right)\left(\sum_{j=1}^{n}\left|w_{j}\right|^{2}\right)-\sum_{1\le j<k\le n}\left|z_{j}\bar{w}_{k}-z_{k}\bar{w}_{j}\right|^{2}\\
&=\sum_{j=1}^{n}\left|z_{j}\right|^{2}\left|w_{j}\right|^{2}+\sum_{j<k}\left(z_{j}\bar{w}_{k}\bar{z}_{k}w_{j}+\bar{z}_{j}w_{k}z_{k}\bar{w}_{j}\right)\\
&=\sum_{j=1}^{n}\left|z_{j}\right|^{2}\left|w_{j}\right|^{2}+\sum_{j<k}\left(z_{j}\bar{z}_{k}\bar{w}_{j}w_{k}+\bar{z}_{j}z_{k}w_{k}\bar{w}_{j}\right).
\end{aligned}
$$

上式中 $\sum_{j<k}\left(z_{j}\bar{z}_{k}\bar{w}_{j}w_{k}+\bar{z}_{j}z_{k}w_{k}\bar{w}_{j}\right)=\sum_{j\ne k}z_{j}\bar{z}_{k}\bar{w}_{j}w_{k}$ (其中 $j<k$ 与 $k<j$ 的项成对), 故右边等于 $\left|A\right|^{2}$. 拉格朗日等式成立. $\blacksquare$

### 习题四

(习题 1.5-7) 令 $\left\langle\cdot,\cdot\right\rangle$ 是 $\mathbb{R}^{2}$ 上的标准内积, 即 $\left\langle X,Y\right\rangle=x_{1}y_{1}+x_{2}y_{2}$ ($X=\left(x_{1},x_{2}\right)\in\mathbb{R}^{2}$, $Y=\left(y_{1},y_{2}\right)\in\mathbb{R}^{2}$); 令 $\left(z,w\right)=z\bar{w}$, $z,w\in\mathbb{C}$, 为 $\mathbb{C}$ 上的厄米特 (Hermitian) 内积. 证明:

$$
\left\langle z,w\right\rangle=\frac{1}{2}\left(\left(z,w\right)+\left(w,z\right)\right)=\operatorname{Re}\left(z,w\right).
$$

### 解答 习题四

把 $z=x_{1}+ix_{2}$, $w=y_{1}+iy_{2}$ 看作 $\mathbb{R}^{2}$ 中的向量 $X=\left(x_{1},x_{2}\right)$, $Y=\left(y_{1},y_{2}\right)$. 由标准内积定义,

$$
\left\langle z,w\right\rangle=\left\langle X,Y\right\rangle=x_{1}y_{1}+x_{2}y_{2}.
$$

另一方面, $\left(z,w\right)=z\bar{w}=\left(x_{1}+ix_{2}\right)\left(y_{1}-iy_{2}\right)=x_{1}y_{1}+x_{2}y_{2}+i\left(x_{2}y_{1}-x_{1}y_{2}\right)$, 故

$$
\operatorname{Re}\left(z,w\right)=x_{1}y_{1}+x_{2}y_{2}=\left\langle z,w\right\rangle.
$$

又因 $\overline{\left(z,w\right)}=\overline{z\bar{w}}=\bar{z}w=\left(w,z\right)$, 得

$$
\begin{aligned}
&\quad\;\frac{1}{2}\left(\left(z,w\right)+\left(w,z\right)\right)\\
&=\frac{1}{2}\left(\left(z,w\right)+\overline{\left(z,w\right)}\right)\\
&=\operatorname{Re}\left(z,w\right).
\end{aligned}
$$

故 $\left\langle z,w\right\rangle=\frac{1}{2}\left(\left(z,w\right)+\left(w,z\right)\right)=\operatorname{Re}\left(z,w\right)$. $\blacksquare$

### 习题五

(习题 1.5-9) (球面度量) 对任意 $a,b\in\mathbb{C}$, 设 $A,B$ 为其对应的球极投影, 令

$$
\operatorname{dist}_{\sigma}\left(a,b\right)=\text{单位球面 }S\text{ 上 }A,B\text{ 两点间最短大圆弧长}.
$$

证明: (i) $\operatorname{dist}_{\sigma}\left(a,b\right)=2\arctan\left|\frac{a-b}{1+\bar{a}b}\right|$; (ii) $\rho\left(a,b\right)=2\sin\frac{1}{2}\operatorname{dist}_{\sigma}\left(a,b\right)$; (iii) $\frac{2}{\pi}\operatorname{dist}_{\sigma}\left(a,b\right)\le\rho\left(a,b\right)\le\operatorname{dist}_{\sigma}\left(a,b\right)$, 其中 $\rho$ 为球弦度量.

### 解答 习题五

设 $d=\operatorname{dist}_{\sigma}\left(a,b\right)$. 单位球面半径为 $1$, 故 $d$ 等于球心角 $\angle AOB$ ($O$ 为球心), 从而弦长 $\left|AB\right|=2\sin\frac{d}{2}$. 由球极投影与球弦度量的关系 (**定义 1.4.2**), $\left|AB\right|=\rho\left(a,b\right)$, 故

$$
\begin{aligned}
&\quad\;\rho\left(a,b\right)\\
&=\frac{2\left|a-b\right|}{\sqrt{1+\left|a\right|^{2}}\sqrt{1+\left|b\right|^{2}}}\\
&=2\sin\frac{d}{2}.
\end{aligned}
$$

由此即得 (ii).

现证 (i). 由上式,

$$
\sin\frac{d}{2}=\frac{\left|a-b\right|}{\sqrt{\left(1+\left|a\right|^{2}\right)\left(1+\left|b\right|^{2}\right)}}.
$$

展开验证恒等式

$$
\left(1+\left|a\right|^{2}\right)\left(1+\left|b\right|^{2}\right)=\left|1+\bar{a}b\right|^{2}+\left|a-b\right|^{2},
$$

于是

$$
\begin{aligned}
&\quad\;\sin\frac{d}{2}\\
&=\frac{\left|a-b\right|}{\sqrt{\left|1+\bar{a}b\right|^{2}+\left|a-b\right|^{2}}}\\
&=\frac{\left|\frac{a-b}{1+\bar{a}b}\right|}{\sqrt{1+\left|\frac{a-b}{1+\bar{a}b}\right|^{2}}}.
\end{aligned}
$$

令 $\phi=\arctan\left|\frac{a-b}{1+\bar{a}b}\right|\in\left[0,\frac{\pi}{2}\right)$, 则

$$
\frac{\left|\frac{a-b}{1+\bar{a}b}\right|}{\sqrt{1+\left|\frac{a-b}{1+\bar{a}b}\right|^{2}}}=\frac{\tan\phi}{\sqrt{1+\tan^{2}\phi}}=\sin\phi.
$$

故 $\sin\frac{d}{2}=\sin\phi$, 其中 $\frac{d}{2},\phi\in\left[0,\frac{\pi}{2}\right]$, 正弦在此区间上严格递增, 从而 $\frac{d}{2}=\phi$, 即 $d=2\arctan\left|\frac{a-b}{1+\bar{a}b}\right|$. (i) 得证.

最后证 (iii). 令 $t=\frac{d}{2}\in\left[0,\frac{\pi}{2}\right]$, 则 $\rho\left(a,b\right)=2\sin t$. 右端不等式: 由 $\sin t\le t$ 得 $\rho\left(a,b\right)=2\sin t\le2t=d=\operatorname{dist}_{\sigma}\left(a,b\right)$. 左端不等式: 函数 $\frac{\sin t}{t}$ 在 $\left(0,\frac{\pi}{2}\right]$ 上递减 (其导数 $\frac{t\cos t-\sin t}{t^{2}}<0$), 故对 $t\in\left(0,\frac{\pi}{2}\right]$,

$$
\frac{\sin t}{t}\ge\frac{\sin\frac{\pi}{2}}{\frac{\pi}{2}}=\frac{2}{\pi},
$$

即 $\sin t\ge\frac{2t}{\pi}$, 得 $\rho\left(a,b\right)=2\sin t\ge\frac{4t}{\pi}=\frac{2}{\pi}d=\frac{2}{\pi}\operatorname{dist}_{\sigma}\left(a,b\right)$. 三式合并即 (iii). $\blacksquare$
