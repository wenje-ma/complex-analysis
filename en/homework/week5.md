# Assignment 5

> **Proposition 5.3.1**<br>(i) The exponential function $e^{z}$ is holomorphic on $\mathbb{C}$ and never vanishes; (iv) $e^{z}$ has minimal period $2\pi i$; (v) $e^{z}$ is univalent on a domain if and only if the difference between any two distinct points in that domain is not an integer multiple of $2\pi i$.

> **Definition 5.4.1** (Complex Sine and Cosine)<br>$$\cos z=\frac{e^{iz}+e^{-iz}}{2},\quad\sin z=\frac{e^{iz}-e^{-iz}}{2i},\quad z\in\mathbb{C}.$$

> **Proposition 5.4.2**<br>$\sin z,\cos z$ are holomorphic on $\mathbb{C}$, $\left(\sin z\right)'=\cos z$, $\left(\cos z\right)'=-\sin z$.

> **Theorem 5.1.2** (Fundamental Theorem of Algebra)<br>Any polynomial of degree $n\ge1$ has at least one root in the complex field $\mathbb{C}$.

### Problem 1

(Problem 5.5-1, Gauss–Lucas) Let $P\left(z\right)$ be a polynomial (of degree at least $1$). Prove: all roots of its derivative $P'\left(z\right)$ lie in the convex hull of the roots of $P\left(z\right)$ (i.e. the smallest convex polygon containing all roots of $P\left(z\right)$).

### Solution to Problem 1

Let the roots of $P$ (counting multiplicity) be $a_{1},\ldots,a_{n}$, $P\left(z\right)=c\prod_{j=1}^{n}\left(z-a_{j}\right)$. If $z_{0}$ is a root of $P$, then clearly $z_{0}$ lies in the convex hull. Suppose $z_{0}$ is a root of $P'$ but not of $P$; then $P\left(z_{0}\right)\ne0$, and

$$
0=\frac{P'\left(z_{0}\right)}{P\left(z_{0}\right)}=\sum_{j=1}^{n}\frac{1}{z_{0}-a_{j}}.
$$

Taking conjugates and using $\frac{1}{\overline{z_{0}-a_{j}}}=\frac{z_{0}-a_{j}}{\left|z_{0}-a_{j}\right|^{2}}$, we get

$$
\sum_{j=1}^{n}\frac{z_{0}-a_{j}}{\left|z_{0}-a_{j}\right|^{2}}=0,\quad\text{即}\quad
z_{0}\sum_{j=1}^{n}\frac{1}{\left|z_{0}-a_{j}\right|^{2}}=\sum_{j=1}^{n}\frac{a_{j}}{\left|z_{0}-a_{j}\right|^{2}}.
$$

Hence

$$
z_{0}=\sum_{j=1}^{n}\lambda_{j}a_{j},\quad
\lambda_{j}:=\frac{\frac{1}{\left|z_{0}-a_{j}\right|^{2}}}{\sum_{k=1}^{n}\frac{1}{\left|z_{0}-a_{k}\right|^{2}}}.
$$

$\lambda_{j}>0$ and $\sum_{j}\lambda_{j}=1$, so $z_{0}$ is a convex combination of $a_{1},\ldots,a_{n}$ and lies in their convex hull. This completes the proof. $\blacksquare$

### Problem 2

(Problem 5.5-3) Prove: the function $f\left(z\right)=\frac{\sin z}{z}$ ($z\ne0$), $f\left(0\right)=1$, is holomorphic on $\mathbb{C}$.

### Solution to Problem 2

By **Definition 5.4.1**, $\sin z=\frac{e^{iz}-e^{-iz}}{2i}$, whose Taylor expansion is $\sin z=\sum_{n=0}^{+\infty}\frac{\left(-1\right)^{n}}{\left(2n+1\right)!}z^{2n+1}$, with radius of convergence $+\infty$. Dividing by $z$ (when $z\ne0$) gives

$$
\frac{\sin z}{z}=\sum_{n=0}^{+\infty}\frac{\left(-1\right)^{n}}{\left(2n+1\right)!}z^{2n},\quad z\ne0.
$$

This power series converges on $\mathbb{C}$, so it is holomorphic on all of $\mathbb{C}$, and its value at $z=0$ is $1$. Therefore $f$ is holomorphic on $\mathbb{C}$. $\blacksquare$

### Problem 3

(Problem 5.5-5) Prove: both $\cos z$ and $\sin z$ are unbounded functions on $\mathbb{C}$.

### Solution to Problem 3

Take $z=it$, $t\in\mathbb{R}$. By **Definition 5.4.1**,

$$
\cos\left(it\right)=\frac{e^{-t}+e^{t}}{2}=\cosh t,\quad
\sin\left(it\right)=\frac{e^{-t}-e^{t}}{2i}=i\sinh t.
$$

As $t\to+\infty$, $\cosh t\to+\infty$ and $\left|\sinh t\right|\to+\infty$. Hence $\cos z$ is unbounded along the imaginary axis, and $\sin z$ is also unbounded along the imaginary axis ($\left|\sin\left(it\right)\right|=\sinh t\to+\infty$). Therefore both $\cos z$ and $\sin z$ are unbounded on $\mathbb{C}$. $\blacksquare$

### Problem 4

(Problem 5.5-7) Find all points in the complex plane at which the function $2+\sin z$ vanishes.

### Solution to Problem 4

Solve the equation $\sin z=-2$. By **Definition 5.4.1**, $\frac{e^{iz}-e^{-iz}}{2i}=-2$, i.e. $e^{iz}-e^{-iz}=-4i$. Letting $w=e^{iz}$, we get

$$
w-\frac{1}{w}=-4i,\quad w^{2}+4iw-1=0,\quad w=i\left(-2\pm\sqrt{3}\right).
$$

Thus $e^{iz}=i\left(-2+\sqrt3\right)$ or $e^{iz}=i\left(-2-\sqrt3\right)$, both nonzero complex numbers (on the negative imaginary axis). Solving $e^{iz}=w$: $iz=\operatorname{Log}w+2k\pi i$, $z=-i\operatorname{Log}w+2k\pi$, $k\in\mathbb{Z}$.

For $w=i\left(-2+\sqrt3\right)=-i\left(2-\sqrt3\right)$: $\left|w\right|=2-\sqrt3$, $\operatorname{Log}w=\ln\left(2-\sqrt3\right)-i\frac\pi2$, so $z=\left(2k-\frac12\right)\pi+i\ln\left(2+\sqrt3\right)$ (since $\ln\left(2-\sqrt3\right)=-\ln\left(2+\sqrt3\right)$). For $w=i\left(-2-\sqrt3\right)=-i\left(2+\sqrt3\right)$: $\left|w\right|=2+\sqrt3$, giving $z=\left(2k-\frac12\right)\pi-i\ln\left(2+\sqrt3\right)$.

Hence all solutions of $2+\sin z=0$ are

$$
z=\left(2k-\frac12\right)\pi\pm i\ln\left(2+\sqrt3\right),\quad k\in\mathbb{Z}.
$$

$\blacksquare$

### Problem 5

(Problem 5.5-9) Prove the identity $\overline{e^{iz}}=e^{-i\bar z}$. (Note: two conjugation marks were missing in the OCR of the original problem; they have been restored according to the conjugation identity for the exponential function.)

### Solution to Problem 5

From the exponential function $e^{z}=e^{x}\left(\cos y+i\sin y\right)$ (Proposition 5.3.1 and Euler's formula), write $z=x+iy$:

$$
e^{iz}=e^{i\left(x+iy\right)}=e^{ix-y}=e^{-y}\left(\cos x+i\sin x\right),
$$

and taking conjugates gives $\overline{e^{iz}}=e^{-y}\left(\cos x-i\sin x\right)=e^{-y}e^{-ix}=e^{-\left(ix+y\right)}$. On the other hand,

$$
e^{-i\bar z}=e^{-i\left(x-iy\right)}=e^{-ix-y}=e^{-y}e^{-ix}=e^{-\left(ix+y\right)}.
$$

The two are equal, so $\overline{e^{iz}}=e^{-i\bar z}$. $\blacksquare$
