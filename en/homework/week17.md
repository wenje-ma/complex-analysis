# week17

> **Basic Knowledge: Cauchy Integral Formula**<br>If $f$ is holomorphic on $\overline{B\left(a,r\right)}$, then

$$
f\left(a\right)=\frac{1}{2\pi i}\oint_{\left|z-a\right|=r}\frac{f\left(z\right)}{z-a}\,dz.
$$

> **Basic Knowledge: Standard Integral**<br>For $0< \alpha< 2$, $a> 0$,

$$
\int_{0}^{+\infty}\frac{x^{\alpha-1}}{x^{2}+a^{2}}\,dx=\frac{\pi a^{\alpha-2}}{2\sin\frac{\pi\alpha}{2}}.
$$

> **Theorem 14.1.3 (Residue Theorem)**<br>If $f$ is holomorphic on a domain $D$ except at finitely many isolated singularities, and $\gamma$ is a Jordan closed curve in $D$ enclosing all these singularities, then

$$
\int_{\gamma}f\,dz=2\pi i\sum\operatorname{Res}f.
$$

---

## 14.3-6

Compute $\int_{0}^{+\infty}\frac{x^{1/n}}{x^{2}+a^{2}}\,dx$, where $2\le n\in\mathbb{N}$, $a> 0$.

### Solution 14.3-6

Take the $\operatorname{Log}$ branch of $z^{1/n}$ (cut along the positive real axis), and use **Basic Knowledge: Standard Integral** $\int_{0}^{+\infty}\frac{x^{\alpha-1}}{x^{2}+a^{2}}dx=\frac{\pi a^{\alpha-2}}{2\sin\frac{\pi\alpha}{2}}$, with $\alpha-1=\frac1n$, i.e. $\alpha=1+\frac1n$. Then

$$
\int_{0}^{+\infty}\frac{x^{1/n}}{x^{2}+a^{2}}\,dx
=\frac{\pi a^{\frac1n-1}}{2\sin\left(\frac{\pi}{2}\left(1+\frac1n\right)\right)}
=\frac{\pi a^{\frac{1-n}{n}}}{2\cos\frac{\pi}{2n}}.
$$

(Outline: apply a wedge contour of angle $\frac{2\pi}{n}$ to $f\left(z\right)=\frac{z^{1/n}}{z^{2}+a^{2}}$, let the radius $R\to\infty$, subtract the integrals along the two sides with factor $e^{2\pi i/n}$, and add the residues at the two poles.) $\blacksquare$

---

## 14.3-7

Compute $\int_{0}^{+\infty}\frac{1}{\sqrt{x}\left(1+x\right)}\,dx$.

### Solution 14.3-7

Let $x=t^{2}$, $t> 0$; then $\sqrt{x}=t$, $dx=2t\,dt$:

$$
\int_{0}^{+\infty}\frac{dx}{\sqrt{x}\left(1+x\right)}=\int_{0}^{+\infty}\frac{2t\,dt}{t\left(1+t^{2}\right)}=2\int_{0}^{+\infty}\frac{dt}{1+t^{2}}=2\cdot\frac{\pi}{2}=\pi.
$$

$\blacksquare$

---

## 14.3-10

Let $\gamma\subset\mathbb{C}$ be a Jordan closed curve, $D$ its interior, $f$ holomorphic on $\overline{D}=D\cup\gamma$, and $z_{0}\in D$ the unique zero of $f$ in $D$. Prove: $z_{0}=\frac{1}{2\pi n i}\int_{\gamma}\frac{z f'\left(z\right)}{f\left(z\right)}\,dz$, where $n$ is the order of the zero at $z_{0}$.

### Solution 14.3-10

Since $z_{0}$ is the unique $n$-th order zero of $f$ in $D$, write $f\left(z\right)=\left(z-z_{0}\right)^{n}g\left(z\right)$, with $g$ holomorphic on $\overline{D}$ and $g\ne0$. Then

$$
\frac{f'\left(z\right)}{f\left(z\right)}=\frac{n}{z-z_{0}}+\frac{g'\left(z\right)}{g\left(z\right)}.
$$

$\frac{g'}{g}$ is holomorphic on $\overline{D}$, so its integral around the closed curve vanishes; hence

$$
\int_{\gamma}\frac{z f'\left(z\right)}{f\left(z\right)}\,dz=n\int_{\gamma}\frac{z}{z-z_{0}}\,dz=n\cdot2\pi i\cdot z_{0},
$$

where the last equality uses **Basic Knowledge: Cauchy Integral Formula** (value of $z$ at $z=z_{0}$). Thus $\frac{1}{2\pi n i}\int_{\gamma}\frac{z f'\left(z\right)}{f\left(z\right)}dz=z_{0}$. $\blacksquare$

---

## 14.3-11

Let $f$ be entire, $R> 0$, $a,b\in\mathbb{C}$ with $\left|a\right|,\left|b\right|< R$. (i) Compute $\int_{\gamma}\frac{f\left(z\right)}{\left(z-a\right)\left(z-b\right)}\,dz$, where $\gamma\left(t\right)=Re^{it}$, $t\in\left[0,2\pi\right]$; (ii) use the integral in (i) to prove Liouville's theorem: bounded entire functions are constant.

### Solution 14.3-11

(i) Partial fractions: $\frac{1}{\left(z-a\right)\left(z-b\right)}=\frac{1}{a-b}\left(\frac{1}{z-a}-\frac{1}{z-b}\right)$. Both $a,b$ lie inside $\left|z\right|=R$; by **Basic Knowledge: Cauchy Integral Formula**,

$$
\int_{\gamma}\frac{f\left(z\right)}{\left(z-a\right)\left(z-b\right)}\,dz=\frac{1}{a-b}\left(\int_{\gamma}\frac{f\left(z\right)}{z-a}dz-\int_{\gamma}\frac{f\left(z\right)}{z-b}dz\right)=\frac{2\pi i}{a-b}\left(f\left(a\right)-f\left(b\right)\right).
$$

(ii) Suppose $f$ is bounded: $\left|f\right|\le M$. Estimate the integral in (i): on $\left|z\right|=R$, $\left|\left(z-a\right)\left(z-b\right)\right|\ge R^{2}$ (for large $R$), so

$$
\left|\int_{\gamma}\frac{f\left(z\right)}{\left(z-a\right)\left(z-b\right)}\,dz\right|\le\frac{M}{R^{2}}\cdot2\pi R=\frac{2\pi M}{R}\to0\quad\left(R\to\infty\right).
$$

By (i), $\frac{2\pi i}{a-b}\left(f\left(a\right)-f\left(b\right)\right)\to0$, so $f\left(a\right)=f\left(b\right)$ for all $a,b$, i.e. $f$ is constant. $\blacksquare$

---

## 14.3-16

Let $\beta=\sqrt\pi\,e^{i\frac{\pi}{4}}$ (so $\beta^{2}=i\pi$), and consider $f\left(z\right)=\frac{e^{-z^{2}}}{1+e^{-2\beta z}}$. (i) Verify that $f$ has singularities only at $\mathcal{Z}:=\left\{z_{n}=\left(n+\frac12\right)\beta,\ n\in\mathbb{Z}\right\}$, all simple poles; (ii) verify $f\left(z\right)-f\left(z+\beta\right)=e^{-z^{2}}$ for all $z\in\mathbb{C}\setminus\mathcal{Z}$; (iii) for large $R> 0$, consider the parallelogram $\Omega$ with vertices $-R,R,R+\beta,-R+\beta$; verify $\int_{-\infty}^{+\infty}e^{-x^{2}}dx=2\pi i\operatorname{Res}_{z_{0}}f$, where $z_{0}$ is as in (i); (iv) use the above to verify $\int_{-\infty}^{+\infty}e^{-\frac{x^{2}}{2}}dx=\sqrt{2\pi}$.

### Solution 14.3-16

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
