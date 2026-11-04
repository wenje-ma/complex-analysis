# week9

> **Theorem 14.1.3 (Residue Theorem)**
> 
> If $f$ is holomorphic on a domain $D$ except at finitely many isolated singularities, and $\gamma$ is a Jordan closed curve in $D$ enclosing all these singularities, then

> **Definition 15.1.1 (Entire and Meromorphic Functions)**
> 
> A function holomorphic everywhere on the complex plane $\mathbb{C}$ is called entire; a function holomorphic except at poles is called meromorphic.

> **Theorem 15.2.7 (Argument Principle)**
> 
> If $f$ is meromorphic on a domain $D$, the zeros $a_{j}$ have order $r_{j}$, the poles $p_{k}$ have order $s_{k}$, and $\Gamma$ is a Jordan closed curve in $D$ avoiding these points, then

$$
\frac{1}{2\pi i}\int_{\Gamma}\frac{f'}{f}\,dz=\sum r_{j}-\sum s_{k}.
$$

> **Definition 16.1.1 (Harmonic Function)**
> 
> A real-valued $C^{2}$ function $u$ on a domain $D$ is called harmonic if $\Delta u=u_{xx}+u_{yy}=0$ on $D$.

> **Proposition 16.1.6 (Mean Value Property)**
> 
> A harmonic function $u$ on $B\left(a,R\right)$ satisfies

$$
u\left(a\right)=\frac{1}{2\pi}\int_{0}^{2\pi}u\left(a+Re^{i\theta}\right)d\theta.
$$

> **Theorem 16.2.9 (Poisson Integral)**
> 
> The Dirichlet problem on the disk $B\left(a,R\right)$ has solution

$$
u\left(z\right)=\frac{R^{2}-\left|z-a\right|^{2}}{2\pi R}\int_{0}^{2\pi}\frac{f\left(a+Re^{i\theta}\right)}{\left|z-a-Re^{i\theta}\right|^{2}}d\theta.
$$

> **Theorem 16.2.10 (Dirichlet Problem on Bounded Jordan Domains)**
> 
> The Dirichlet problem on a bounded Jordan domain is solvable.

## 14.3-10

Let $\gamma\subset\mathbb{C}$ be a Jordan closed curve, $D$ its interior, $f$ holomorphic on $\overline{D}=D\cup\gamma$, and $z_{0}\in D$ the unique zero of $f$ in $D$. Prove: $z_{0}=\frac{1}{2\pi n i}\int_{\gamma}\frac{z f'\left(z\right)}{f\left(z\right)}\,dz$, where $n$ is the order of the zero at $z_{0}$.

### Solution to 14.3-10

Since $z_{0}$ is the unique $n$-th order zero of $f$ in $D$, write $f\left(z\right)=\left(z-z_{0}\right)^{n}g\left(z\right)$, with $g$ holomorphic on $\overline{D}$ and $g\ne0$. Then

$$
\frac{f'\left(z\right)}{f\left(z\right)}=\frac{n}{z-z_{0}}+\frac{g'\left(z\right)}{g\left(z\right)}.
$$

$\frac{g'}{g}$ is holomorphic on $\overline{D}$, so its integral around the closed curve vanishes; hence

$$
\int_{\gamma}\frac{z f'\left(z\right)}{f\left(z\right)}\,dz=n\int_{\gamma}\frac{z}{z-z_{0}}\,dz=n\cdot2\pi i\cdot z_{0},
$$

where the last equality uses Cauchy Integral Formula (value of $z$ at $z=z_{0}$). Thus $\frac{1}{2\pi n i}\int_{\gamma}\frac{z f'\left(z\right)}{f\left(z\right)}dz=z_{0}$. $\blacksquare$

## 14.3-11

Let $f$ be entire, $R> 0$, $a,b\in\mathbb{C}$ with $\left|a\right|,\left|b\right|< R$. (i) Compute $\int_{\gamma}\frac{f\left(z\right)}{\left(z-a\right)\left(z-b\right)}\,dz$, where $\gamma\left(t\right)=Re^{it}$, $t\in\left[0,2\pi\right]$; (ii) use the integral in (i) to prove Liouville's theorem: bounded entire functions are constant.

### Solution to 14.3-11

(i) Partial fractions: $\frac{1}{\left(z-a\right)\left(z-b\right)}=\frac{1}{a-b}\left(\frac{1}{z-a}-\frac{1}{z-b}\right)$. Both $a,b$ lie inside $\left|z\right|=R$; by Cauchy Integral Formula,

$$
\int_{\gamma}\frac{f\left(z\right)}{\left(z-a\right)\left(z-b\right)}\,dz=\frac{1}{a-b}\left(\int_{\gamma}\frac{f\left(z\right)}{z-a}dz-\int_{\gamma}\frac{f\left(z\right)}{z-b}dz\right)=\frac{2\pi i}{a-b}\left(f\left(a\right)-f\left(b\right)\right).
$$

(ii) Suppose $f$ is bounded: $\left|f\right|\le M$. Estimate the integral in (i): on $\left|z\right|=R$, $\left|\left(z-a\right)\left(z-b\right)\right|\ge R^{2}$ (for large $R$), so

$$
\left|\int_{\gamma}\frac{f\left(z\right)}{\left(z-a\right)\left(z-b\right)}\,dz\right|\le\frac{M}{R^{2}}\cdot2\pi R=\frac{2\pi M}{R}\to0\quad\left(R\to\infty\right).
$$

By (i), $\frac{2\pi i}{a-b}\left(f\left(a\right)-f\left(b\right)\right)\to0$, so $f\left(a\right)=f\left(b\right)$ for all $a,b$, i.e. $f$ is constant. $\blacksquare$

## 14.3-16

Let $\beta=\sqrt\pi\,e^{i\frac{\pi}{4}}$ (so $\beta^{2}=i\pi$), and consider $f\left(z\right)=\frac{e^{-z^{2}}}{1+e^{-2\beta z}}$. (i) Verify that $f$ has singularities only at $\mathcal{Z}:=\left\{z_{n}=\left(n+\frac12\right)\beta,\ n\in\mathbb{Z}\right\}$, all simple poles; (ii) verify $f\left(z\right)-f\left(z+\beta\right)=e^{-z^{2}}$ for all $z\in\mathbb{C}\setminus\mathcal{Z}$; (iii) for large $R> 0$, consider the parallelogram $\Omega$ with vertices $-R,R,R+\beta,-R+\beta$; verify $\int_{-\infty}^{+\infty}e^{-x^{2}}dx=2\pi i\operatorname{Res}_{z_{0}}f$, where $z_{0}$ is as in (i); (iv) use the above to verify $\int_{-\infty}^{+\infty}e^{-\frac{x^{2}}{2}}dx=\sqrt{2\pi}$.

### Solution to 14.3-16

(i) The singularities of $f$ are the zeros of the denominator $1+e^{-2\beta z}=0$, i.e. $e^{-2\beta z}=-1$, i.e. $-2\beta z=i\pi\left(1+2k\right)$, $z=-\frac{i\pi\left(1+2k\right)}{2\beta}$. Since $\beta^{2}=i\pi$, this gives $z=\frac{\left(2k+1\right)\beta}{2}=\left(k+\frac12\right)\beta=z_{k}$, $k\in\mathbb{Z}$. Hence the singularities are exactly $\mathcal{Z}$. At $z_{n}$, $\frac{d}{dz}\left(1+e^{-2\beta z}\right)=-2\beta e^{-2\beta z_{n}}=-2\beta\left(-1\right)=2\beta\ne0$, so all are simple poles.

(ii) Write $u=e^{-2\beta z}$. Since $\beta^{2}=i\pi$, $e^{-\beta^{2}}=e^{-i\pi}=-1$, $e^{-2\beta^{2}}=1$. Then

$$
f\left(z\right)-f\left(z+\beta\right)=\frac{e^{-z^{2}}}{1+u}-\frac{e^{-z^{2}-2\beta z-\beta^{2}}}{1+u}=e^{-z^{2}}\frac{1-\left(-1\right)u}{1+u}=e^{-z^{2}}\frac{1+u}{1+u}=e^{-z^{2}}.
$$

(iii) The parallelogram is $\Omega=\left\{x+t\beta:\ x\in\left[-R,R\right],\ t\in\left[0,1\right]\right\}$. The pole $z_{n}=\left(n+\frac12\right)\beta$ lies inside $\Omega$ iff $n+\frac12\in\left[0,1\right]$, i.e. $n=0$; hence the only pole in $\Omega$ is $z_{0}=\frac\beta2$. By **Theorem 14.1.3 (Residue Theorem)**,

$$
\oint_{\partial\Omega}f\left(z\right)\,dz=2\pi i\operatorname{Res}_{z_{0}}f=2\pi i\frac{e^{-z_{0}^{2}}}{2\beta}=2\pi i\frac{e^{-\beta^{2}/4}}{2\beta}.
$$

The integrals along the two vertical sides ($x=\pm R$) tend to $0$ by exponential decay of $f$; the difference between top and bottom is given by (ii):

$$
\oint_{\partial\Omega}f\left(z\right)\,dz=\int_{-R}^{R}\left(f\left(x\right)-f\left(x+\beta\right)\right)dx=\int_{-R}^{R}e^{-x^{2}}dx.
$$

Letting $R\to\infty$ gives $\int_{-\infty}^{+\infty}e^{-x^{2}}dx=2\pi i\operatorname{Res}_{z_{0}}f$. Also $e^{-\beta^{2}/4}=e^{-i\pi/4}$, $\frac{e^{-i\pi/4}}{\beta}=\frac{e^{-i\pi/4}}{\sqrt\pi e^{i\pi/4}}=\frac{e^{-i\pi/2}}{\sqrt\pi}=-\frac{i}{\sqrt\pi}$, so

$$
\int_{-\infty}^{+\infty}e^{-x^{2}}dx=2\pi i\cdot\frac{e^{-i\pi/4}}{2\beta}=\pi i\cdot\left(-\frac{i}{\sqrt\pi}\right)=\sqrt\pi.
$$

(iv) Substitute $x=\sqrt2\,t$:

$$
\int_{-\infty}^{+\infty}e^{-\frac{x^{2}}{2}}dx=\sqrt2\int_{-\infty}^{+\infty}e^{-t^{2}}dt=\sqrt2\cdot\sqrt\pi=\sqrt{2\pi}.
$$

$\blacksquare$

## 15.4-5

Prove: $\frac{1}{\sin^{2}z}=\sum_{n=-\infty}^{+\infty}\frac{1}{\left(z-n\pi\right)^{2}}$.

### Solution to 15.4-5

$\frac{1}{\sin^{2}z}$ has second-order poles at $z=n\pi$, and its principal part near $z=n\pi$ is exactly $\frac{1}{\left(z-n\pi\right)^{2}}$ (since $\sin z\sim\left(-1\right)^{n}\left(z-n\pi\right)$, $\sin^{2}z\sim\left(z-n\pi\right)^{2}$). Write

$$
F\left(z\right):=\frac{1}{\sin^{2}z}-\sum_{n=-\infty}^{+\infty}\frac{1}{\left(z-n\pi\right)^{2}}.
$$

The series converges locally uniformly on compact subsets of $\mathbb{C}$ (away from punctured neighborhoods of the poles), and its principal part at each $n\pi$ matches that of $\frac{1}{\sin^{2}z}$, so $F$ is holomorphic on $\mathbb{C}$ (each pole is canceled); it is an entire function by **Definition 15.1.1 (Entire and Meromorphic Functions)**. Also $\sin^{2}\left(z+\pi\right)=\sin^{2}z$ and $\sum_{n}\frac{1}{\left(z+\pi-n\pi\right)^{2}}=\sum_{n}\frac{1}{\left(z-n\pi\right)^{2}}$, so $F\left(z+\pi\right)=F\left(z\right)$, i.e. $F$ has period $\pi$. On the fundamental strip $\left|\operatorname{Re}z\right|\le\frac\pi2$, as $\left|\operatorname{Im}z\right|\to+\infty$, $\frac{1}{\sin^{2}z}\to0$ and the series $\to0$, so $F$ is bounded on the strip; by periodicity, bounded on $\mathbb{C}$. By Liouville's theorem, $F$ is constant; and $F\to0$ as $\operatorname{Im}z\to+\infty$, so $F\equiv0$, as claimed. $\blacksquare$

## 15.4-8

Let $P,Q$ be polynomials with $\deg Q\ge\deg P+2$, $g=\frac{P}{Q}$, and $f\left(z\right)=g\left(z\right)\cot\pi z$. Let $Z\left(Q\right)$ be the set of zeros of $Q$. (i) Prove: there exist $M> 0$ and $R> 0$ such that $\left|g\left(z\right)\right|\le\frac{M}{\left|z\right|^{2}}$ for all $z\notin\left\{\left|z\right|\le R\right\}$; (ii) let $N\in\mathbb{N}$ with $N> R$, and let $C_{N}$ be the rectangle with sides on $\operatorname{Re}z=\pm\left(N+\frac12\right)$ and $\operatorname{Im}z=\pm N$; prove $\lim_{N\to\infty}\int_{C_{N}}f\left(z\right)\,dz=0$; (iii) prove: for any $n\in\mathbb{Z}\setminus Z\left(Q\right)$, $\operatorname{Res}_{z=n}f=\frac{g\left(n\right)}{\pi}$; (iv) prove: $\sum_{n=-\infty}^{+\infty}\operatorname{Res}_{z=n}f=-\sum_{a\in Z\left(Q\right)\setminus\mathbb{Z}}\operatorname{Res}_{z=a}f$; (v) take $g\left(z\right)=\frac{1}{z^{2}+c^{2}}$, $c> 0$, and compute $\sum_{n=1}^{+\infty}\frac{1}{n^{2}+c^{2}}$.

### Solution to 15.4-8

(i) Since $\deg Q\ge\deg P+2$, $g\left(z\right)=\frac{P\left(z\right)}{Q\left(z\right)}$ satisfies $\left|g\left(z\right)\right|\le\frac{C}{\left|z\right|^{2}}$ as $\left|z\right|\to+\infty$, i.e. there exist $M,R> 0$ with $\left|g\left(z\right)\right|\le\frac{M}{\left|z\right|^{2}}$ for all $\left|z\right|> R$.

(ii) On $C_{N}$, $\left|z\right|\ge N$, so $\left|g\left(z\right)\right|\le\frac{M}{N^{2}}$. On $\operatorname{Im}z=\pm N$ and $\operatorname{Re}z=\pm\left(N+\frac12\right)$, the poles $z=n$ (integers) are avoided, and $\cot\pi z$ is uniformly bounded on these sides (when $\left|\operatorname{Im}z\right|\ge N$, or $\operatorname{Re}z$ is a half-integer, $\cot\pi z$ is bounded); write $\left|\cot\pi z\right|\le K$. Then $\left|f\right|\le\frac{MK}{N^{2}}$, while the perimeter of $C_{N}$ is $\le C'N$, so

$$
\left|\int_{C_{N}}f\left(z\right)\,dz\right|\le\frac{MK}{N^{2}}\cdot C'N=\frac{C''}{N}\to0.
$$

(iii) For $n\in\mathbb{Z}\setminus Z\left(Q\right)$, $g$ is holomorphic at $n$ with $g\left(n\right)\ne0$; $\cot\pi z$ has a simple pole at $z=n$ with $\cot\pi z\sim\frac{1}{\pi\left(z-n\right)}$, $\operatorname{Res}_{z=n}\cot\pi z=\frac1\pi$. Hence $\operatorname{Res}_{z=n}f=g\left(n\right)\operatorname{Res}_{z=n}\cot\pi z=\frac{g\left(n\right)}{\pi}$.

(iv) By the residue theorem on $C_{N}$ (for large $N$, $C_{N}$ contains all integers $\left|n\right|\le N$ and the poles from $Z\left(Q\right)$ inside):

$$
\int_{C_{N}}f\,dz=2\pi i\left[\sum_{\left|n\right|\le N}\operatorname{Res}_{z=n}f+\sum_{a\in Z\left(Q\right),\,a\text{ inside }C_{N}}\operatorname{Res}_{z=a}f\right].
$$

By (ii), letting $N\to\infty$ gives $\sum_{n=-\infty}^{+\infty}\operatorname{Res}_{z=n}f+\sum_{a\in Z\left(Q\right)}\operatorname{Res}_{z=a}f=0$. If $Z\left(Q\right)\cap\mathbb{Z}=\emptyset$ (as in (v)), then $\sum_{a\in Z\left(Q\right)}\operatorname{Res}_{z=a}f=\sum_{a\in Z\left(Q\right)\setminus\mathbb{Z}}\operatorname{Res}_{z=a}f$, as claimed.

(v) $g\left(z\right)=\frac{1}{z^{2}+c^{2}}$, $Z\left(Q\right)=\left\{ic,-ic\right\}$ (non-integers). By (iii), $\operatorname{Res}_{z=n}f=\frac{1}{\pi\left(n^{2}+c^{2}\right)}$; by (iv),

$$
\sum_{n=-\infty}^{+\infty}\frac{1}{\pi\left(n^{2}+c^{2}\right)}=-\left(\operatorname{Res}_{z=ic}f+\operatorname{Res}_{z=-ic}f\right).
$$

$\operatorname{Res}_{z=ic}g=\frac{1}{2ic}$, $\operatorname{Res}_{z=-ic}g=-\frac{1}{2ic}$; $\cot\left(i\pi c\right)=-i\coth\left(\pi c\right)$, $\cot\left(-i\pi c\right)=i\coth\left(\pi c\right)$. Hence

$$
\operatorname{Res}_{z=ic}f=\frac{1}{2ic}\cdot\left(-i\coth\left(\pi c\right)\right)=-\frac{\coth\left(\pi c\right)}{2c},\quad
\operatorname{Res}_{z=-ic}f=\left(-\frac{1}{2ic}\right)\cdot\left(i\coth\left(\pi c\right)\right)=-\frac{\coth\left(\pi c\right)}{2c}.
$$

Thus $\sum_{n=-\infty}^{+\infty}\frac{1}{n^{2}+c^{2}}=\frac{\pi\coth\left(\pi c\right)}{c}$. Since $\sum_{n=-\infty}^{+\infty}=2\sum_{n=1}^{+\infty}+\frac1{c^{2}}$,

$$
\sum_{n=1}^{+\infty}\frac{1}{n^{2}+c^{2}}=\frac12\left(\frac{\pi\coth\left(\pi c\right)}{c}-\frac{1}{c^{2}}\right)=\frac{\pi}{2c}\coth\left(\pi c\right)-\frac{1}{2c^{2}}.
$$

$\blacksquare$

## 15.4-13

Suppose the boundary of a domain $D\subset\mathbb{C}$ is a piecewise smooth Jordan closed curve $\Gamma$, $g$ is holomorphic on $\overline{D}=D\cup\Gamma$, and $f$ is meromorphic on $D$ with only finitely many zeros and poles in $D$. Prove: $\frac{1}{2\pi i}\int_{\Gamma}g\left(z\right)\frac{f'\left(z\right)}{f\left(z\right)}\,dz=\sum_{j=1}^{n}r_{j}g\left(a_{j}\right)-\sum_{k=1}^{m}s_{k}g\left(p_{k}\right)$, where $a_{j}$ are zeros of $f$ of order $r_{j}$, $j=1,\ldots,n$, and $p_{k}$ are poles of $f$ of order $s_{k}$, $k=1,\ldots,n$.

### Solution to 15.4-13

$f$ is meromorphic on $D$. Near a zero $a_{j}$ of order $r_{j}$, $f\left(z\right)=\left(z-a_{j}\right)^{r_{j}}h\left(z\right)$ with $h\left(a_{j}\right)\ne0$, so

$$
\frac{f'\left(z\right)}{f\left(z\right)}=\frac{r_{j}}{z-a_{j}}+\frac{h'\left(z\right)}{h\left(z\right)},\quad\operatorname{Res}_{z=a_{j}}\frac{f'}{f}=r_{j};
$$

near a pole $p_{k}$ of order $s_{k}$, $f\left(z\right)=\left(z-p_{k}\right)^{-s_{k}}H\left(z\right)$ with $H\left(p_{k}\right)\ne0$, $\frac{f'}{f}=-\frac{s_{k}}{z-p_{k}}+\frac{H'}{H}$, $\operatorname{Res}_{z=p_{k}}\frac{f'}{f}=-s_{k}$. Since $g$ is holomorphic, by the residue theorem inside $\Gamma$:

$$
\frac{1}{2\pi i}\int_{\Gamma}g\left(z\right)\frac{f'\left(z\right)}{f\left(z\right)}\,dz
=\sum_{j=1}^{n}\operatorname{Res}_{z=a_{j}}\left(g\frac{f'}{f}\right)+\sum_{k=1}^{m}\operatorname{Res}_{z=p_{k}}\left(g\frac{f'}{f}\right)
=\sum_{j=1}^{n}r_{j}g\left(a_{j}\right)-\sum_{k=1}^{m}s_{k}g\left(p_{k}\right).
$$

$\blacksquare$

## 16.3-1

Prove: (i) in polar coordinates $\left(r,\theta\right)$, $\Delta u=\frac{\partial^{2}u}{\partial r^{2}}+\frac1r\frac{\partial u}{\partial r}+\frac{1}{r^{2}}\frac{\partial^{2}u}{\partial\theta^{2}}$; (ii) directly using **Definition 16.1.1 (Harmonic Function)** and the identity in (i), verify **Proposition 16.1.6 (Mean Value Property)**.

### Solution to 16.3-1

(i) From $x=r\cos\theta$, $y=r\sin\theta$, the chain rule:

$$
\frac{\partial}{\partial x}=\cos\theta\frac{\partial}{\partial r}-\frac{\sin\theta}{r}\frac{\partial}{\partial\theta},\quad
\frac{\partial}{\partial y}=\sin\theta\frac{\partial}{\partial r}+\frac{\cos\theta}{r}\frac{\partial}{\partial\theta}.
$$

Squaring and adding (using $\frac{\partial}{\partial r}\circ\frac{\partial}{\partial\theta}=\frac{\partial}{\partial\theta}\circ\frac{\partial}{\partial r}$):

$$
\Delta u=\left(\frac{\partial^{2}}{\partial x^{2}}+\frac{\partial^{2}}{\partial y^{2}}\right)u=\frac{\partial^{2}u}{\partial r^{2}}+\frac1r\frac{\partial u}{\partial r}+\frac{1}{r^{2}}\frac{\partial^{2}u}{\partial\theta^{2}}.
$$

(ii) Fix $a$, write $M\left(r\right):=\frac{1}{2\pi}\int_{0}^{2\pi}u\left(a+re^{i\theta}\right)d\theta$. From (i) and $\Delta u=0$: $u_{rr}+\frac1r u_r+\frac1{r^{2}}u_{\theta\theta}=0$; multiply by $r$ to get $\frac{\partial}{\partial r}\left(r u_r\right)=-\frac1r u_{\theta\theta}$. Hence

$$
\frac{d}{dr}\left(rM'\left(r\right)\right)=\frac{1}{2\pi}\int_{0}^{2\pi}\frac{\partial}{\partial r}\left(r u_r\right)d\theta=-\frac{1}{2\pi r}\int_{0}^{2\pi}u_{\theta\theta}d\theta=0,
$$

so $rM'\left(r\right)$ is constant. As $r\to0$, $M'\left(r\right)\to u_r\left(a\right)$ (smooth), $rM'\left(r\right)\to0$, so the constant is $0$, $M'\left(r\right)\equiv0$, and $M$ is constant. Since $\lim_{r\to0}M\left(r\right)=u\left(a\right)$, $M\left(R\right)=u\left(a\right)$, i.e. $u\left(a\right)=\frac{1}{2\pi}\int_{0}^{2\pi}u\left(a+Re^{i\theta}\right)d\theta$. $\blacksquare$
