# 作业 16

> **定义 14.1.1** (留数)<br>$f$ 在孤立奇点 $a$ 的留数 $\operatorname{Res}_{a}f$ 等于其洛朗展开中 $\frac{1}{z-a}$ 项的系数 $c_{-1}$.

> **定理 14.1.3** (留数定理)<br>若 $f$ 在区域 $D$ 上除有限个孤立奇点外全纯, $\gamma$ 是 $D$ 内的若当闭曲线且这些奇点都在 $\gamma$ 内, 则 $$\int_{\gamma}f\,dz=2\pi i\sum\operatorname{Res}f.$$

> **留数之和公式**<br>全复平面上的亚纯函数 $f$ 的全体有限留数与 $\infty$ 处留数之和为零, 且 $$\operatorname{Res}_{\infty}f=-\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right).$$

### 习题一

(习题 14.3-1) 计算下述积分: (i) $\int_{\partial B\left(0,4\right)}\frac{z^{2}+1}{z^{3}+2z^{2}-3z}\,dz$; (ii) $\int_{\partial B\left(0,\pi\right)}z^{2}\sin\frac{1}{z}\,dz$; (iv) $\int_{0}^{2\pi}\frac{1}{4\sin^{2}x+1}\,dx$.

### 解答 习题一

(i) $z^{3}+2z^{2}-3z=z\left(z+3\right)\left(z-1\right)$, 奇点 $0,1,-3$ 均在 $\left|z\right|<4$ 内, 都是一阶极点. 各留数:

$$
\operatorname{Res}_{0}=\frac{1}{3\cdot\left(-1\right)}=-\frac13,\quad
\operatorname{Res}_{1}=\frac{1+1}{1\cdot4\cdot1}=\frac12,\quad
\operatorname{Res}_{-3}=\frac{9+1}{\left(-3\right)\cdot1\cdot\left(-4\right)}=\frac56.
$$

和为 $-\frac13+\frac12+\frac56=1$. 由**定理 14.1.3 (留数定理)**, $\int_{\partial B\left(0,4\right)}=2\pi i\cdot1=2\pi i$.

(ii) $\sin\frac1z=\sum_{n=0}^{+\infty}\frac{\left(-1\right)^{n}}{\left(2n+1\right)!}\frac{1}{z^{2n+1}}$, 故 $z^{2}\sin\frac1z=\sum_{n=0}^{+\infty}\frac{\left(-1\right)^{n}}{\left(2n+1\right)!}z^{1-2n}$. 其中 $z^{-1}$ 项的系数 (留数) 来自 $1-2n=-1$, 即 $n=1$: $\operatorname{Res}_{0}z^{2}\sin\frac1z=\frac{\left(-1\right)^{1}}{3!}=-\frac16$. 故 $\int_{\partial B\left(0,\pi\right)}z^{2}\sin\frac1z\,dz=2\pi i\cdot\left(-\frac16\right)=-\frac{\pi i}{3}$.

(iv) 令 $z=e^{ix}$, 则 $\sin x=\frac{z-z^{-1}}{2i}$, $dz=iz\,dx$, 且 $\left|z\right|=1$ 逆时针. $4\sin^{2}x+1=4\cdot\left(-\frac{\left(z-z^{-1}\right)^{2}}{4}\right)+1=3-z^{2}-z^{-2}$, 于是

$$
\int_{0}^{2\pi}\frac{dx}{4\sin^{2}x+1}=\oint_{\left|z\right|=1}\frac{1}{3-z^{2}-z^{-2}}\frac{dz}{iz}=\oint_{\left|z\right|=1}\frac{z}{i\left(3z^{2}-z^{4}-1\right)}\,dz.
$$

$3z^{2}-z^{4}-1=-\left(z^{4}-3z^{2}+1\right)$, 而 $z^{4}-3z^{2}+1=0$ 给出 $z^{2}=\frac{3\pm\sqrt5}{2}$. 圆 $\left|z\right|=1$ 内只有 $z^{2}=\frac{3-\sqrt5}{2}$ 的两个根 $\pm\sqrt{\frac{3-\sqrt5}{2}}$ (另一对 $\left|z\right|>1$). 记 $a^{2}=u:=\frac{3-\sqrt5}{2}$, 在 $z=a$ 处

$$
\operatorname{Res}_{a}\frac{z}{i\left(3z^{2}-z^{4}-1\right)}=\frac{a}{i\left(-\left(4a^{3}-6a\right)\right)}=\frac{1}{i\left(-\left(4u-6\right)\right)}=\frac{1}{i\left(-\left(-2\sqrt5\right)\right)}=\frac{1}{2\sqrt5\,i},
$$

根 $-a$ 处留数相同. 两留数和为 $\frac{1}{\sqrt5\,i}$. 故

$$
\int_{0}^{2\pi}\frac{dx}{4\sin^{2}x+1}=2\pi i\cdot\frac{1}{\sqrt5\,i}=\frac{2\pi}{\sqrt5}.
$$

$\blacksquare$

### 习题二

(习题 14.3-2) 令 $\gamma\subset\mathbb{C}$ 是一条若当闭曲线, $f$ 是 $\mathbb{C}\setminus\left\{a_{1},\ldots,a_{n}\right\}$ 上的全纯函数, 其中 $a_{1},\ldots,a_{n}$ 为 $\gamma$ 内区域的内点. 证明: $\frac{1}{2\pi i}\int_{\gamma}f\left(z\right)\,dz=\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right)$.

### 解答 习题二

$f$ 的孤立奇点为 $a_{1},\ldots,a_{n}$ (均在 $\gamma$ 内), 由**定理 14.1.3 (留数定理)**,

$$
\frac{1}{2\pi i}\int_{\gamma}f\left(z\right)\,dz=\sum_{j=1}^{n}\operatorname{Res}_{a_{j}}f.
$$

对全复平面上的亚纯函数 $f$ 取充分大的 $R$ 使 $\gamma$ 与全部 $a_{j}$ 都在 $\left\{\left|z\right|<R\right\}$ 内. 在 $\left\{\left|z\right|\le R\right\}$ 上用留数定理, 并把 $\infty$ 视为奇点, 得 $\sum_{j}\operatorname{Res}_{a_{j}}f+\operatorname{Res}_{\infty}f=0$. 又

$$
\operatorname{Res}_{\infty}f=-\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right),
$$

故 $\sum_{j}\operatorname{Res}_{a_{j}}f=\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right)$, 即所证. $\blacksquare$

### 习题三

(习题 14.3-3) 证明: $\int_{\partial B\left(0,1\right)}e^{z+\frac{1}{z}}\,dz=2\pi i\sum_{n=0}^{+\infty}\frac{1}{n!\left(n+1\right)!}$.

### 解答 习题三

$e^{z+\frac1z}=e^{z}e^{\frac1z}=\left(\sum_{m=0}^{+\infty}\frac{z^{m}}{m!}\right)\left(\sum_{k=0}^{+\infty}\frac{1}{k!}\frac{1}{z^{k}}\right)$. 其中 $z^{-1}$ 项的系数满足 $m-k=-1$, 即 $m=k-1$, 故

$$
\operatorname{Res}_{0}e^{z+\frac1z}=\sum_{k=1}^{+\infty}\frac{1}{\left(k-1\right)!k!}=\sum_{n=0}^{+\infty}\frac{1}{n!\left(n+1\right)!}.
$$

由**定理 14.1.3 (留数定理)**,

$$
\int_{\partial B\left(0,1\right)}e^{z+\frac1z}\,dz=2\pi i\operatorname{Res}_{0}e^{z+\frac1z}=2\pi i\sum_{n=0}^{+\infty}\frac{1}{n!\left(n+1\right)!}.
$$

$\blacksquare$
