# week3

> **定义 4.2.1 (莫比乌斯变换)**
> 
> 形如

> **命题 5.3.1 (指数函数)**
> 
> (i) 指数函数 $e^{z}$ 在 $\mathbb{C}$ 上全纯且不取零值; (iv) $e^{z}$ 以 $2\pi{i}$ 为最小周期; (v) $e^{z}$ 在某区域上单叶当且仅当该区域内任意不同两点之差不是 $2\pi{i}$ 的整数倍.

> **定义 5.4.1 (复正弦与余弦)**
> 
> 对任意复数 $z\in\mathbb{C}$, 定义复正弦与余弦为 $\cos{z}=\frac{e^{iz}+e^{-iz}}{2},\quad\sin{z}=\frac{e^{iz}-e^{-iz}}{2i},\quad{z}\in\mathbb{C}$.

> **定义 6.2.7 (分支点)**
> 
> 多值函数 $\operatorname{Ln}z$ (或幂函数) 的分支点是 $0$ 与 $\infty$, 沿连接它们的任意割线可定义单值分支.

> **定义 7.1.1 (路径积分)**
> 
> $f$ 沿分段光滑道路 $\gamma:\left[a,b\right]\to\mathbb{C}$ 的积分为 $\int_{\gamma}f\,dz=\int_{a}^{b}f\left(\gamma\left(t\right)\right)\gamma'\left(t\right)\,dt$.

> **定义 7.2.1 (原函数)**
> 
> 区域 $D$ 上的全纯函数 $F$ 称为 $f$ 的原函数, 若 $F'=f$ 于 $D$; $f$ 有原函数当且仅当 $f$ 沿 $D$ 内任意闭道路的积分为零. ## 4.5-16 令 $f=u\left(z\right)+iv\left(z\right)$ 在 $z_{0}\in\mathbb{C}$ 处为全纯的, 且 $f'\left(z_{0}\right)\ne0$. 证明: 函数 $u$ 和 $v$ 的水平集 (取值为某给定常数的点所组成的集合) 在 $z_{0}$ 处的夹角为 $\frac{\pi}{2}$. $u,v$ 的水平集在 $z_{0}$ 处的切线分别垂直于梯度 $\nabla{u}=\left(u_{x},u_{y}\right)$ 与 $\nabla{v}=\left(v_{x},v_{y}\right)$. 由 $f$ 在 $z_{0}$ 处全纯, $u,v$ 满足柯西-黎曼方程 $u_{x}=v_{y}$, $u_{y}=-v_{x}$, 于是 $$\nabla{u}\cdot\nabla{v}=u_{x}v_{x}+u_{y}v_{y}=u_{x}\left(-u_{y}\right)+u_{y}u_{x}=0.$$ 故 $\nabla{u}\perp\nabla{v}$, 两梯度正交, 因而两水平集的切线也正交, 夹角为 $\frac{\pi}{2}$. 又因 $f'\left(z_{0}\right)\ne0$, 由 $f'\left(z_{0}\right)=u_{x}\left(z_{0}\right)+iv_{x}\left(z_{0}\right)$ 知 $\nabla{u},\nabla{v}$ 在 $z_{0}$ 处均非零, 故两水平集在 $z_{0}$ 处都有定义良好的切线. $\blacksquare$

## 5.5-1

令 $P\left(z\right)$ 为多项式 (次数不小于 $1$). 证明: 它的导数 $P'\left(z\right)$ 的所有根都包含在 $P\left(z\right)$ 的根的凸包 (即包含 $P\left(z\right)$ 的所有根的最小的凸多边形) 内. (高斯-卢卡斯定理)

### 解答 5.5-1

设 $P$ 的根 (计重数) 为 $a_{1},\ldots,a_{n}$, $P\left(z\right)=c\prod_{j=1}^{n}\left(z-a_{j}\right)$. 若 $z_{0}$ 是 $P$ 的根, 显然 $z_{0}$ 在凸包内. 设 $z_{0}$ 是 $P'$ 的根但不是 $P$ 的根, 则 $P\left(z_{0}\right)\ne0$, 且

$$
0=\frac{P'\left(z_{0}\right)}{P\left(z_{0}\right)}=\sum_{j=1}^{n}\frac{1}{z_{0}-a_{j}}.
$$

取共轭并利用 $\frac{1}{\overline{z_{0}-a_{j}}}=\frac{z_{0}-a_{j}}{\left|z_{0}-a_{j}\right|^{2}}$, 得

$$
\sum_{j=1}^{n}\frac{z_{0}-a_{j}}{\left|z_{0}-a_{j}\right|^{2}}=0,\quad\text{即}\quad
z_{0}\sum_{j=1}^{n}\frac{1}{\left|z_{0}-a_{j}\right|^{2}}=\sum_{j=1}^{n}\frac{a_{j}}{\left|z_{0}-a_{j}\right|^{2}}.
$$

于是

$$
z_{0}=\sum_{j=1}^{n}\lambda_{j}a_{j},\quad
\lambda_{j}:=\frac{\frac{1}{\left|z_{0}-a_{j}\right|^{2}}}{\sum_{k=1}^{n}\frac{1}{\left|z_{0}-a_{k}\right|^{2}}}.
$$

$\lambda_{j}>0$ 且 $\sum_{j}\lambda_{j}=1$, 故 $z_{0}$ 是 $a_{1},\ldots,a_{n}$ 的凸组合, 落在它们的凸包内. 得证.

$\blacksquare$

## 5.5-3

证明: 函数 $f\left(z\right)=\frac{\sin{z}}{z}$ ($z\ne0$), $f\left(0\right)=1$, 在 $\mathbb{C}$ 上是全纯的.

### 解答 5.5-3

由**定义 5.4.1 (复正弦与余弦)**, $\sin{z}=\frac{e^{iz}-e^{-iz}}{2i}$, 其泰勒展开为

$$
\sin{z}=\sum_{n=0}^{+\infty}\frac{\left(-1\right)^{n}}{\left(2n+1\right)!}z^{2n+1},
$$

收敛半径为 $+\infty$. 除以 $z$ (当 $z\ne0$) 得

$$
\frac{\sin{z}}{z}=\sum_{n=0}^{+\infty}\frac{\left(-1\right)^{n}}{\left(2n+1\right)!}z^{2n},\quad{z}\ne0.
$$

该幂级数在 $\mathbb{C}$ 上收敛, 故在整个 $\mathbb{C}$ 上全纯, 且其在 $z=0$ 处的值为 $1$. 因此 $f$ 在 $\mathbb{C}$ 上全纯.

$\blacksquare$

## 5.5-5

证明: $\cos{z}$ 和 $\sin{z}$ 在 $\mathbb{C}$ 上都是无界函数.

### 解答 5.5-5

取 $z=it$, $t\in\mathbb{R}$. 由**定义 5.4.1 (复正弦与余弦)**,

$$
\cos\left(it\right)=\frac{e^{-t}+e^{t}}{2}=\cosh{t},\quad
\sin\left(it\right)=\frac{e^{-t}-e^{t}}{2i}=i\sinh{t}.
$$

当 $t\to+\infty$ 时 $\cosh{t}\to+\infty$, $\left|\sinh{t}\right|\to+\infty$. 故 $\cos{z}$ 沿虚轴无界, $\sin{z}$ 沿虚轴也无界 ($\left|\sin\left(it\right)\right|=\sinh{t}\to+\infty$). 因此 $\cos{z}$ 与 $\sin{z}$ 在 $\mathbb{C}$ 上都是无界函数.

$\blacksquare$

## 5.5-7

找出复平面上所有使得函数 $2+\sin{z}$ 取零值的点.

### 解答 5.5-7

解方程 $\sin{z}=-2$. 由**定义 5.4.1 (复正弦与余弦)**, $\frac{e^{iz}-e^{-iz}}{2i}=-2$, 即 $e^{iz}-e^{-iz}=-4i$. 令 $w=e^{iz}$, 得

$$
w-\frac{1}{w}=-4i,\quad{w}^{2}+4iw-1=0,\quad{w}=i\left(-2\pm\sqrt{3}\right).
$$

于是 $e^{iz}=i\left(-2+\sqrt3\right)$ 或 $e^{iz}=i\left(-2-\sqrt3\right)$, 两者均是非零复数 (在负虚轴上). 解 $e^{iz}=w$: $iz=\operatorname{Log}w+2k\pi{i}$, $z=-i\operatorname{Log}w+2k\pi$, $k\in\mathbb{Z}$.

对 $w=i\left(-2+\sqrt3\right)=-i\left(2-\sqrt3\right)$: $\left|w\right|=2-\sqrt3$, $\operatorname{Log}w=\ln\left(2-\sqrt3\right)-i\frac\pi2$, 故 $z=\left(2k-\frac12\right)\pi+i\ln\left(2+\sqrt3\right)$ (因 $\ln\left(2-\sqrt3\right)=-\ln\left(2+\sqrt3\right)$). 对 $w=i\left(-2-\sqrt3\right)=-i\left(2+\sqrt3\right)$: $\left|w\right|=2+\sqrt3$, 得 $z=\left(2k-\frac12\right)\pi-i\ln\left(2+\sqrt3\right)$.

故 $2+\sin{z}=0$ 的全部解为

$$
z=\left(2k-\frac12\right)\pi\pm{i}\ln\left(2+\sqrt3\right),\quad{k}\in\mathbb{Z}.
$$

$\blacksquare$

## 5.5-9

证明等式 $\overline{e^{iz}}=e^{-i\overline{z}}$ 成立.

### 解答 5.5-9

由指数函数 $e^{z}=e^{x}\left(\cos{y}+i\sin{y}\right)$ (**命题 5.3.1 (指数函数)** 及欧拉公式), 记 $z=x+iy$:

$$
e^{iz}=e^{i\left(x+iy\right)}=e^{ix-y}=e^{-y}\left(\cos{x}+i\sin{x}\right),
$$

取共轭得 $\overline{e^{iz}}=e^{-y}\left(\cos{x}-i\sin{x}\right)=e^{-y}e^{-ix}=e^{-\left(ix+y\right)}$. 而

$$
e^{-i\overline{z}}=e^{-i\left(x-iy\right)}=e^{-ix-y}=e^{-y}e^{-ix}=e^{-\left(ix+y\right)}.
$$

两者相等, 故 $\overline{e^{iz}}=e^{-i\overline{z}}$.

$\blacksquare$

## 6.5-2

令 $\Phi:\mathbb{R}\to\mathbb{R}$ 为连续函数且 $\Phi\left(x\right)\in\operatorname{Arg}\left(e^{ix}\right)$, $\forall{x}\in\mathbb{R}$. 证明: 存在 $k\in\mathbb{Z}$ 使得 $\Phi\left(x\right)=x+2\pi{k}$, $\forall{x}\in\mathbb{R}$.

### 解答 6.5-2

$e^{ix}$ 的幅角为 $x+2\pi{m}$ ($m\in\mathbb{Z}$). 因 $\Phi\left(x\right)\in\operatorname{Arg}\left(e^{ix}\right)$, 存在整数 $\ell\left(x\right)$ 使

$$
\Phi\left(x\right)=x+2\pi\ell\left(x\right),\quad\ell\left(x\right)=\frac{\Phi\left(x\right)-x}{2\pi}\in\mathbb{Z}.
$$

$\Phi$ 与 $x\mapsto{x}$ 都连续, 故 $\frac{\Phi\left(x\right)-x}{2\pi}$ 连续; 而连续函数在连通的 $\mathbb{R}$ 上取整数值, 必为常数. 故存在 $k\in\mathbb{Z}$ 使 $\frac{\Phi\left(x\right)-x}{2\pi}=k$, 即 $\Phi\left(x\right)=x+2\pi{k}$, $\forall{x}\in\mathbb{R}$.

$\blacksquare$

## 6.5-4

令 $f$ 是对数函数在区域 $\mathbb{C}\setminus\left[0,+\infty\right)$ 上的全纯分支, 且 $f\left(-i\right)=-\frac{i\pi}{2}$. 确定下述函数值: (i) $f\left(i\right)$; (ii) $f\left(-e\right)$; (iii) $f\left(-1-\frac{i}{\sqrt3}\right)$; (iv) $f\left(\left(-1-\frac{i}{\sqrt3}\right)^{2}\right)$.

### 解答 6.5-4

$f$ 是 $\mathbb{C}\setminus\left[0,+\infty\right)$ 上对数函数的全纯分支, 故 $f\left(z\right)=\ln\left|z\right|+i\theta\left(z\right)$, 其中 $\theta\left(z\right)$ 是幅角在该区域的连续分支. 由 $f\left(-i\right)=-\frac{i\pi}{2}$ 得 $\theta\left(-i\right)=-\frac\pi2$, 故该分支幅角取区间 $\left(-\frac\pi2,\frac{3\pi}2\right)$.

(i) $z=i$: $\theta\left(i\right)=\frac\pi2$, $f\left(i\right)=i\frac\pi2$.

(ii) $z=-e$: $\left|z\right|=e$, $\theta\left(-e\right)=\pi$, $f\left(-e\right)=\ln{e}+i\pi=1+i\pi$.

(iii) $z=-1-\frac{i}{\sqrt3}$: $\left|z\right|=\sqrt{1+\frac13}=\frac{2}{\sqrt3}$, $\ln\left|z\right|=\ln2-\frac12\ln3$. 该点在第三象限, 参考角 $\frac\pi6$, 故 $\theta\left(z\right)=\pi+\frac\pi6=\frac{7\pi}{6}\in\left(-\frac\pi2,\frac{3\pi}2\right)$. 于是 $f\left(-1-\frac{i}{\sqrt3}\right)=\ln\frac{2}{\sqrt3}+i\frac{7\pi}{6}$.

(iv) $\left(-1-\frac{i}{\sqrt3}\right)^{2}=\frac23+\frac{2i}{\sqrt3}$, 故 $\left|z^{2}\right|=\frac43$, $\ln\left|z^{2}\right|=\ln\frac43$; 该点在第一象限, $\tan\theta=\frac{2/\sqrt3}{2/3}=\sqrt3$, 故 $\theta\left(z^{2}\right)=\frac\pi3$. 于是 $f\left(\left(-1-\frac{i}{\sqrt3}\right)^{2}\right)=\ln\frac43+i\frac\pi3$.

$\blacksquare$

## 6.5-6

考虑函数 $w\left(z\right)=\left(\frac{\left(z+1\right)\left(z-1\right)\left(z-2\right)}{z}\right)^{1/3}$. 寻找它的一个使得 $w\left(3\right)>0$ 的全纯分支.

### 解答 6.5-6

按**定义 6.2.7 (分支点)**, $w\left(z\right)=\exp\left(\frac13\left[\operatorname{Ln}\left(z+1\right)+\operatorname{Ln}\left(z-1\right)+\operatorname{Ln}\left(z-2\right)-\operatorname{Ln}z\right]\right)$ 的分支点由各因式的分支点给出: $z+1,z-1,z-2,z$ 的分支点分别是 $-1,1,2,0$. 取对数主分支 $\operatorname{Log}$, 则每个 $\operatorname{Log}\left(z-c\right)$ 在 $z-c\notin\left(-\infty,0\right]$ 全纯, 即 $z\notin\left(-\infty,c\right]$. 故在区域 $D:=\mathbb{C}\setminus\left(-\infty,2\right]$ (含所有分支点 $0,1,2,-1$) 上定义

$$
w\left(z\right):=\exp\left(\frac13\left[\operatorname{Log}\left(z+1\right)+\operatorname{Log}\left(z-1\right)+\operatorname{Log}\left(z-2\right)-\operatorname{Log}z\right]\right),
$$

它是 $D$ 上的全纯函数, 且满足 $w\left(z\right)^{3}=\frac{\left(z+1\right)\left(z-1\right)\left(z-2\right)}{z}$, 即为该函数在 $D$ 上的一个全纯分支. 在 $z=3$ 处, $z+1=4$, $z-1=2$, $z-2=1$, $z=3$ 均为正实数, 主对数取实值 $\ln$, 故

$$
w\left(3\right)=\exp\left(\frac13\left(\ln4+\ln2+\ln1-\ln3\right)\right)=\exp\left(\frac13\ln\frac83\right)=\left(\frac83\right)^{1/3}>0.
$$

故该分支满足 $w\left(3\right)>0$.

$\blacksquare$

## 6.5-8

令 $\alpha\in\mathbb{R}$, $\log{z}$ 是对数函数 $\operatorname{Log}z$ 满足 $\alpha<\arg{z}<\alpha+2\pi$ 的全纯分支, $z^{1/2}$ 为该全纯分支对应的平方根的全纯分支. (i) 给出函数 $\log{z}^{1/2}$ 的取值范围; (ii) 给出函数 $f\left(z\right)=\tan\left(\frac{1}{2i}\log\left(\frac{1+iz}{1-iz}\right)\right)$ 的定义域并验证在它的定义域内 $f\left(z\right)=z$.

### 解答 6.5-8

按**定义 4.2.1 (莫比乌斯变换)**, (i) $\log{z}^{1/2}=\frac12\log{z}$. $\log{z}$ 的虚部是幅角, 取在 $\left(\alpha,\alpha+2\pi\right)$, 故 $\log{z}^{1/2}$ 的虚部取在 $\left(\frac\alpha2,\frac\alpha2+\pi\right)$; 实部 $\frac12\ln\left|z\right|$ 取遍 $\mathbb{R}$. 故 $\log{z}^{1/2}$ 的取值范围为水平带

$$
\left\{\zeta\in\mathbb{C}:\,\frac{\alpha}{2}<\operatorname{Im}\zeta<\frac{\alpha}{2}+\pi\right\}.
$$

(ii) 记 $w\left(z\right)=\frac{1+iz}{1-iz}$ (莫比乌斯变换), 定义域要求 $w$ 落在 $\log$ 分支的定义域内且 $z\ne\pm{i}$. $\log$ 分支在 $\mathbb{C}$ 去掉幅角为 $\alpha$ 的射线 $R_{\alpha}:=\left\{re^{i\alpha}:r\ge0\right\}$ 上全纯, 故 $f$ 的定义域为

$$
D:=\left\{z\in\mathbb{C}:\,z\ne\pm{i},\frac{1+iz}{1-iz}\notin{R}_{\alpha}\right\}.
$$

验证 $f\left(z\right)=z$: 在 $D$ 内令 $\theta=\frac{1}{2i}\log\left(\frac{1+iz}{1-iz}\right)$, 则 $e^{2i\theta}=\frac{1+iz}{1-iz}$. 于是

$$
\tan\theta=\frac{e^{2i\theta}-1}{i\left(e^{2i\theta}+1\right)}=\frac{\frac{1+iz}{1-iz}-1}{i\left(\frac{1+iz}{1-iz}+1\right)}=\frac{2iz}{i\cdot2}=z,
$$

故 $f\left(z\right)=\tan\theta=z$, $\forall{z}\in{D}$.

$\blacksquare$
