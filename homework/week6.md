# 作业 6

> **定义 6.1.1** (幅角函数的连续分支)<br>称区域 $D\subset\mathbb{C}\setminus\left\{0\right\}$ 上的单值连续函数为 $\operatorname{Arg}z$ 的连续分支, 若 $\forall z\in D$ 存在 $k\in\mathbb{Z}$ 使 $f\left(z\right)=\arg z+2k\pi$.

> **定义 6.2.1** (复变对数函数)<br>满足 $e^{w}=z$ 的复数 $w$ 称为 $z$ 的对数, 记为 $\operatorname{Ln}z$; 它是无穷多值的.

> **命题 6.2.5** (对数的全纯分支)<br>区域 $D\subset\mathbb{C}\setminus\left\{0\right\}$ 上的连续对数分支必全纯, 故对数函数的单值连续分支即全纯分支.

> **定义 6.2.7** (分支点)<br>多值函数 $\operatorname{Ln}z$ (或幂函数) 的分支点是 $0$ 与 $\infty$, 沿连接它们的任意割线可定义单值分支.

> **定义 6.3.1** (幂函数)<br>$z^{\alpha}=e^{\alpha\operatorname{Ln}z}$; 在 $\mathbb{C}\setminus\left(-\infty,0\right]$ 上取主分支, 即 $z^{\alpha}=e^{\alpha\operatorname{Log}z}$.

### 习题一

(习题 6.5-2) 令 $\Phi:\mathbb{R}\to\mathbb{R}$ 为连续函数且 $\Phi\left(x\right)\in\operatorname{Arg}\left(e^{ix}\right)$, $\forall x\in\mathbb{R}$. 证明: 存在 $k\in\mathbb{Z}$ 使得 $\Phi\left(x\right)=x+2\pi k$, $\forall x\in\mathbb{R}$.

### 解答 习题一

$e^{ix}$ 的幅角为 $x+2\pi m$ ($m\in\mathbb{Z}$). 因 $\Phi\left(x\right)\in\operatorname{Arg}\left(e^{ix}\right)$, 存在整数 $\ell\left(x\right)$ 使

$$
\Phi\left(x\right)=x+2\pi\ell\left(x\right),\quad \ell\left(x\right)=\frac{\Phi\left(x\right)-x}{2\pi}\in\mathbb{Z}.
$$

$\Phi$ 与 $x\mapsto x$ 都连续, 故 $\frac{\Phi\left(x\right)-x}{2\pi}$ 连续; 而连续函数在连通的 $\mathbb{R}$ 上取整数值, 必为常数. 故存在 $k\in\mathbb{Z}$ 使 $\frac{\Phi\left(x\right)-x}{2\pi}=k$, 即 $\Phi\left(x\right)=x+2\pi k$, $\forall x\in\mathbb{R}$. $\blacksquare$

### 习题二

(习题 6.5-4) 令 $f$ 是对数函数在区域 $\mathbb{C}\setminus\left[0,+\infty\right)$ 上的全纯分支, 且 $f\left(-i\right)=-\frac{i\pi}{2}$. 确定下述函数值: (i) $f\left(i\right)$; (ii) $f\left(-e\right)$; (iii) $f\left(-1-\frac{i}{\sqrt3}\right)$; (iv) $f\left(\left(-1-\frac{i}{\sqrt3}\right)^{2}\right)$.

### 解答 习题二

$f$ 是 $\mathbb{C}\setminus\left[0,+\infty\right)$ 上对数函数的全纯分支, 故 $f\left(z\right)=\ln\left|z\right|+i\theta\left(z\right)$, 其中 $\theta\left(z\right)$ 是幅角在该区域的连续分支. 由 $f\left(-i\right)=-\frac{i\pi}{2}$ 得 $\theta\left(-i\right)=-\frac\pi2$, 故该分支幅角取区间 $\left(-\frac\pi2,\frac{3\pi}2\right)$.

(i) $z=i$: $\theta\left(i\right)=\frac\pi2$, $f\left(i\right)=i\frac\pi2$.

(ii) $z=-e$: $\left|z\right|=e$, $\theta\left(-e\right)=\pi$, $f\left(-e\right)=\ln e+i\pi=1+i\pi$.

(iii) $z=-1-\frac{i}{\sqrt3}$: $\left|z\right|=\sqrt{1+\frac13}=\frac{2}{\sqrt3}$, $\ln\left|z\right|=\ln2-\frac12\ln3$. 该点在第三象限, 参考角 $\frac\pi6$, 故 $\theta\left(z\right)=\pi+\frac\pi6=\frac{7\pi}{6}\in\left(-\frac\pi2,\frac{3\pi}2\right)$. 于是 $f\left(-1-\frac{i}{\sqrt3}\right)=\ln\frac{2}{\sqrt3}+i\frac{7\pi}{6}$.

(iv) $\left(-1-\frac{i}{\sqrt3}\right)^{2}=\frac23+\frac{2i}{\sqrt3}$, 故 $\left|z^{2}\right|=\frac43$, $\ln\left|z^{2}\right|=\ln\frac43$; 该点在第一象限, $\tan\theta=\frac{2/\sqrt3}{2/3}=\sqrt3$, 故 $\theta\left(z^{2}\right)=\frac\pi3$. 于是 $f\left(\left(-1-\frac{i}{\sqrt3}\right)^{2}\right)=\ln\frac43+i\frac\pi3$. $\blacksquare$

### 习题三

(习题 6.5-6) 考虑函数 $w\left(z\right)=\left(\frac{\left(z+1\right)\left(z-1\right)\left(z-2\right)}{z}\right)^{1/3}$. 寻找它的一个使得 $w\left(3\right)>0$ 的全纯分支.

### 解答 习题三

$w\left(z\right)=\exp\left(\frac13\left[\operatorname{Ln}\left(z+1\right)+\operatorname{Ln}\left(z-1\right)+\operatorname{Ln}\left(z-2\right)-\operatorname{Ln}z\right]\right)$ 的分支点由各因式的分支点给出: $z+1,z-1,z-2,z$ 的分支点分别是 $-1,1,2,0$. 取对数主分支 $\operatorname{Log}$, 则每个 $\operatorname{Log}\left(z-c\right)$ 在 $z-c\notin\left(-\infty,0\right]$ 全纯, 即 $z\notin\left(-\infty,c\right]$. 故在区域 $D:=\mathbb{C}\setminus\left(-\infty,2\right]$ (含所有分支点 $0,1,2,-1$) 上定义

$$
w\left(z\right):=\exp\left(\frac13\left[\operatorname{Log}\left(z+1\right)+\operatorname{Log}\left(z-1\right)+\operatorname{Log}\left(z-2\right)-\operatorname{Log}z\right]\right),
$$

它是 $D$ 上的全纯函数, 且满足 $w\left(z\right)^{3}=\frac{\left(z+1\right)\left(z-1\right)\left(z-2\right)}{z}$, 即为该函数在 $D$ 上的一个全纯分支. 在 $z=3$ 处, $z+1=4$, $z-1=2$, $z-2=1$, $z=3$ 均为正实数, 主对数取实值 $\ln$, 故

$$
w\left(3\right)=\exp\left(\frac13\left(\ln4+\ln2+\ln1-\ln3\right)\right)=\exp\left(\frac13\ln\frac83\right)=\left(\frac83\right)^{1/3}>0.
$$

故该分支满足 $w\left(3\right)>0$. $\blacksquare$

### 习题四

(习题 6.5-8) 令 $\alpha\in\mathbb{R}$, $\log z$ 是对数函数 $\operatorname{Log}z$ 满足 $\alpha<\arg z<\alpha+2\pi$ 的全纯分支, $z^{1/2}$ 为该全纯分支对应的平方根的全纯分支. (i) 给出函数 $\log z^{1/2}$ 的取值范围; (ii) 给出函数 $f\left(z\right)=\tan\left(\frac{1}{2i}\log\left(\frac{1+iz}{1-iz}\right)\right)$ 的定义域并验证在它的定义域内 $f\left(z\right)=z$.

### 解答 习题四

(i) $\log z^{1/2}=\frac12\log z$. $\log z$ 的虚部是幅角, 取在 $\left(\alpha,\alpha+2\pi\right)$, 故 $\log z^{1/2}$ 的虚部取在 $\left(\frac\alpha2,\frac\alpha2+\pi\right)$; 实部 $\frac12\ln\left|z\right|$ 取遍 $\mathbb{R}$. 故 $\log z^{1/2}$ 的取值范围为水平带

$$
\left\{\zeta\in\mathbb{C}:\ \frac{\alpha}{2}<\operatorname{Im}\zeta<\frac{\alpha}{2}+\pi\right\}.
$$

(ii) 记 $w\left(z\right)=\frac{1+iz}{1-iz}$ (莫比乌斯变换), 定义域要求 $w$ 落在 $\log$ 分支的定义域内且 $z\ne\pm i$. $\log$ 分支在 $\mathbb{C}$ 去掉幅角为 $\alpha$ 的射线 $R_{\alpha}:=\left\{re^{i\alpha}:r\ge0\right\}$ 上全纯, 故 $f$ 的定义域为

$$
D:=\left\{z\in\mathbb{C}:\ z\ne\pm i,\ \frac{1+iz}{1-iz}\notin R_{\alpha}\right\}.
$$

验证 $f\left(z\right)=z$: 在 $D$ 内令 $\theta=\frac{1}{2i}\log\left(\frac{1+iz}{1-iz}\right)$, 则 $e^{2i\theta}=\frac{1+iz}{1-iz}$. 于是

$$
\tan\theta=\frac{e^{2i\theta}-1}{i\left(e^{2i\theta}+1\right)}=\frac{\frac{1+iz}{1-iz}-1}{i\left(\frac{1+iz}{1-iz}+1\right)}=\frac{2iz}{i\cdot2}=z,
$$

故 $f\left(z\right)=\tan\theta=z$, $\forall z\in D$. $\blacksquare$
