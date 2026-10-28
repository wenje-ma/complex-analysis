# week3

> **Definition 3.1.1 ($\mathbb{R}$-linear and $\mathbb{C}$-linear)**<br>A map $\ell:\mathbb{C}\to\mathbb{C}$ is called $\mathbb{R}$-linear (or $\mathbb{C}$-linear) if $\ell\left(a+b\right)=\ell\left(a\right)+\ell\left(b\right)$ and $\ell\left(\lambda z\right)=\lambda\ell\left(z\right)$ for $\lambda\in\mathbb{R}$ (or $\mathbb{C}$); a $\mathbb{C}$-linear map is necessarily $\mathbb{R}$-linear.

> **Theorem 3.1.2 (Form of Linear Maps)**<br>Every $\mathbb{R}$-linear map has the form $\ell\left(z\right)=az+b\overline{z}$, where

$$
a=\frac{\ell\left(1\right)-i\ell\left(i\right)}{2},\quad b=\frac{\ell\left(1\right)+i\ell\left(i\right)}{2};
$$

every $\mathbb{C}$-linear map has the form $\ell\left(z\right)=az$; an $\mathbb{R}$-linear map $\ell$ is $\mathbb{C}$-linear if and only if $\ell\left(iz\right)=i\ell\left(z\right)$.

> **Definition 3.2.1 (Differentiability)**<br>A map $f:U\to\mathbb{C}$ is $\mathbb{R}$-differentiable (or $\mathbb{C}$-differentiable) at $z$ if $\Delta f=f\left(z+\Delta z\right)-f\left(z\right)=\ell\left(\Delta z\right)+o\left(\left|\Delta z\right|\right)$, where $\ell$ is an $\mathbb{R}$-linear (or $\mathbb{C}$-linear) map; $\ell\left(\Delta z\right)$ is called the real (complex) differential $df\left(z\right)$.

> **Definition 3.2.2 (Formal Derivatives)**<br>The formal derivative operators are

$$
\frac{\partial f}{\partial z}=\frac{1}{2}\left(\frac{\partial f}{\partial x}-i\frac{\partial f}{\partial y}\right),\quad\frac{\partial f}{\partial\overline{z}}=\frac{1}{2}\left(\frac{\partial f}{\partial x}+i\frac{\partial f}{\partial y}\right),
$$

and $df\left(z\right)=\frac{\partial f}{\partial z}\,dz+\frac{\partial f}{\partial\overline{z}}\,d\overline{z}$.

> **Theorem 3.2.4 (Cauchy-Riemann Equations)**<br>$f=u\left(x,y\right)+iv\left(x,y\right)$ is $\mathbb{C}$-differentiable at $z=x+iy$ if and only if $f$ is $\mathbb{R}$-differentiable at $z$ and $\frac{\partial f}{\partial\overline{z}}=0$, equivalently $u,v$ are differentiable and satisfy the Cauchy-Riemann equations

$$
\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y},\quad\frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}.
$$

> **Definition 3.3.1 (Complex Differentiability)**<br>$f$ is differentiable at $a$ if

$$
\lim_{z\to a}\frac{f\left(z\right)-f\left(a\right)}{z-a}=A
$$

exists; write $A=f'\left(a\right)$.

> **Theorem 3.3.3**<br>$f$ is differentiable at $a$ if and only if $f$ is $\mathbb{C}$-differentiable at $a$, in which case $f'\left(a\right)=\frac{\partial f}{\partial z}\left(a\right)$.

> **Theorem 4.1.5 (Criterion for Conformality)**<br>$f$ is conformal at $z$ if and only if $f$ is $\mathbb{C}$-differentiable at $z$ and $f'\left(z\right)\ne0$.

> **Theorem 10.2.4 (Inverse of a Univalent Holomorphic Map)**<br>If $f$ is holomorphic and univalent on an open set $\Omega$, then $f\left(\Omega\right)$ is open and $f^{-1}$ is holomorphic on $f\left(\Omega\right)$.

---

## 3.4-1

Let $f$ be a function of a complex variable, $\mathbb{R}$-differentiable at $z_{0}\in\mathbb{C}$. Prove: as $z\to z_{0}$, the set of limit points of

$$
\left\{\frac{f\left(z\right)-f\left(z_{0}\right)}{z-z_{0}}\right\}
$$

is a circle centered at $\frac{\partial f}{\partial z}\left(z_{0}\right)$ with radius $\left|\frac{\partial f}{\partial\overline{z}}\left(z_{0}\right)\right|$.

### Solution 3.4-1

Since $f$ is $\mathbb{R}$-differentiable at $z_{0}$ (**Definition 3.2.1 (Differentiability)**), write $\Delta z=z-z_{0}$; then

$$
\Delta f=f\left(z\right)-f\left(z_{0}\right)=\ell\left(\Delta z\right)+o\left(\left|\Delta z\right|\right),
$$

where $\ell$ is $\mathbb{R}$-linear. By **Theorem 3.1.2 (Form of Linear Maps)**, $\ell\left(\Delta z\right)=a\Delta z+b\Delta\overline{z}$, and by **Definition 3.2.2 (Formal Derivatives)**, $a=\frac{\partial f}{\partial z}\left(z_{0}\right)$, $b=\frac{\partial f}{\partial\overline{z}}\left(z_{0}\right)$. Thus

$$
\frac{f\left(z\right)-f\left(z_{0}\right)}{z-z_{0}}=\frac{\partial f}{\partial z}\left(z_{0}\right)+\frac{\partial f}{\partial\overline{z}}\left(z_{0}\right)\frac{\Delta\overline{z}}{\Delta z}+\frac{o\left(\left|\Delta z\right|\right)}{\Delta z}.
$$

As $z\to z_{0}$ (i.e. $\Delta z\to0$), the last term $\frac{o\left(\left|\Delta z\right|\right)}{\Delta z}\to0$. Set $\Delta z=re^{i\theta}$ ($r> 0$); then $\frac{\Delta\overline{z}}{\Delta z}=e^{-2i\theta}$, which ranges over the entire unit circle. Hence the set of limit points of the difference quotient is exactly

$$
\left\{\frac{\partial f}{\partial z}\left(z_{0}\right)+\frac{\partial f}{\partial\overline{z}}\left(z_{0}\right)e^{-2i\theta}:\theta\in\left[0,2\pi\right)\right\},
$$

the circle centered at $\frac{\partial f}{\partial z}\left(z_{0}\right)$ with radius $\left|\frac{\partial f}{\partial\overline{z}}\left(z_{0}\right)\right|$. $\blacksquare$

---

## 3.4-3

Let $f$ be $\mathbb{C}$-differentiable at $z_{0}\in\mathbb{C}$ with $f'\left(z_{0}\right)\ne0$. Suppose $f$ is defined on the disk $B\left(z_{0},r\right)$ centered at $z_{0}$ with radius $r> 0$, and let $l$ be any line through $f\left(z_{0}\right)$. Prove: the image $f\left(B\left(z_{0},r\right)\right)$ cannot lie entirely on one side of $l$.

### Solution 3.4-3

Proof by contradiction. Suppose $f\left(B\left(z_{0},r\right)\right)$ lies entirely on one side of a line $l$ through $f\left(z_{0}\right)$. After translation and rotation, assume $f\left(z_{0}\right)=0$ and $l$ is the real axis, so $\operatorname{Im}f\left(z\right)\ge0$ (or $\le0$) for all $z\in B\left(z_{0},r\right)$, i.e. $f\left(z_{0}\right)=0$ is a boundary point of $f\left(B\left(z_{0},r\right)\right)$.

Since $f$ is $\mathbb{C}$-differentiable at $z_{0}$ with $f'\left(z_{0}\right)\ne0$, by **Theorem 4.1.5 (Criterion for Conformality)**, $f$ is conformal at $z_{0}$. Since $f'\left(z_{0}\right)\ne0$, $f$ is locally univalent on some open neighborhood $U\subset B\left(z_{0},r\right)$ of $z_{0}$; by **Theorem 10.2.4 (Inverse of a Univalent Holomorphic Map)**, $f\left(U\right)$ is open and contains $f\left(z_{0}\right)=0$ as an interior point. Hence there exists $\delta> 0$ such that $f\left(U\right)$ contains the disk $\left\{w:\left|w\right|< \delta\right\}$ centered at $0$, which contains points on both sides of the real axis, contradicting the assumption that $f\left(B\left(z_{0},r\right)\right)$ lies on one side of the real axis.

Thus $f\left(B\left(z_{0},r\right)\right)$ cannot lie entirely on one side of $l$. $\blacksquare$

---

## 3.4-5

Consider $f=u+iv$. Prove: in polar coordinates $\left(r,\phi\right)$, the Cauchy-Riemann equations take the form

$$
\frac{\partial u}{\partial r}=\frac{1}{r}\frac{\partial v}{\partial\phi},\quad
\frac{\partial v}{\partial r}=-\frac{1}{r}\frac{\partial u}{\partial\phi};
$$

and if $f$ is differentiable at $z_{0}=r_{0}e^{i\phi_{0}}\ne0$, then

$$
f'\left(z_{0}\right)=e^{-i\phi_{0}}\left(\frac{\partial u}{\partial r}\left(r_{0},\phi_{0}\right)+i\frac{\partial v}{\partial r}\left(r_{0},\phi_{0}\right)\right).
$$

### Solution 3.4-5

From $x=r\cos\phi$, $y=r\sin\phi$ and the chain rule,

$$
\frac{\partial u}{\partial r}=\frac{\partial u}{\partial x}\cos\phi+\frac{\partial u}{\partial y}\sin\phi,\quad
\frac{\partial u}{\partial\phi}=-\frac{\partial u}{\partial x}r\sin\phi+\frac{\partial u}{\partial y}r\cos\phi,
$$

and similarly for $v$. By the Cauchy-Riemann equations (**Theorem 3.2.4 (Cauchy-Riemann Equations)**) $\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y}$, $\frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}$,

$$
\frac{\partial u}{\partial r}=\frac{\partial v}{\partial y}\cos\phi-\frac{\partial v}{\partial x}\sin\phi=\frac{1}{r}\left(-\frac{\partial v}{\partial x}r\sin\phi+\frac{\partial v}{\partial y}r\cos\phi\right)=\frac{1}{r}\frac{\partial v}{\partial\phi}.
$$

Similarly,

$$
\frac{\partial v}{\partial r}=\frac{\partial v}{\partial x}\cos\phi+\frac{\partial v}{\partial y}\sin\phi=-\frac{\partial u}{\partial y}\cos\phi+\frac{\partial u}{\partial x}\sin\phi=-\frac{1}{r}\left(-\frac{\partial u}{\partial x}r\sin\phi+\frac{\partial u}{\partial y}r\cos\phi\right)=-\frac{1}{r}\frac{\partial u}{\partial\phi}.
$$

This proves the polar Cauchy-Riemann equations.

Second part: by **Theorem 3.3.3**, $f'\left(z_{0}\right)=\frac{\partial f}{\partial z}\left(z_{0}\right)$. At a holomorphic point $\frac{\partial f}{\partial\overline{z}}=0$, so from $\frac{\partial z}{\partial r}=e^{i\phi}$ and the chain rule, $\frac{\partial f}{\partial r}\left(z_{0}\right)=\frac{\partial f}{\partial z}\left(z_{0}\right)e^{i\phi_{0}}$, i.e.

$$
f'\left(z_{0}\right)=e^{-i\phi_{0}}\frac{\partial f}{\partial r}\left(z_{0}\right)=e^{-i\phi_{0}}\left(\frac{\partial u}{\partial r}\left(r_{0},\phi_{0}\right)+i\frac{\partial v}{\partial r}\left(r_{0},\phi_{0}\right)\right).
$$

This completes the proof. $\blacksquare$

---

## 3.4-7

Let $a,b,c\in\mathbb{C}$ and $f:\mathbb{C}\to\mathbb{C}$ be $f\left(z\right)=az^{2}+b\left|z\right|^{2}+c\overline{z}^{2}$. Prove: $f$ is differentiable at $z\in\mathbb{C}$ if and only if $bz+2c\overline{z}=0$.

### Solution 3.4-7

Since $\left|z\right|^{2}=z\overline{z}$, $f\left(z\right)=az^{2}+bz\overline{z}+c\overline{z}^{2}$. Compute the formal derivatives (**Definition 3.2.2 (Formal Derivatives)**): since $\frac{\partial\left(az^{2}\right)}{\partial\overline{z}}=0$, $\frac{\partial\left(z\overline{z}\right)}{\partial\overline{z}}=z$, $\frac{\partial\left(\overline{z}^{2}\right)}{\partial\overline{z}}=2\overline{z}$,

$$
\frac{\partial f}{\partial\overline{z}}\left(z\right)=bz+2c\overline{z}.
$$

By **Theorem 3.2.4 (Cauchy-Riemann Equations)**, $f$ is $\mathbb{C}$-differentiable at $z$ if and only if $\frac{\partial f}{\partial\overline{z}}\left(z\right)=0$, i.e. $bz+2c\overline{z}=0$; by **Theorem 3.3.3**, $\mathbb{C}$-differentiability is equivalent to differentiability. Hence $f$ is differentiable at $z$ if and only if $bz+2c\overline{z}=0$. $\blacksquare$

---

## 3.4-9

Find all functions holomorphic on $\mathbb{C}$ such that $\operatorname{Re}f\left(z\right)=e^{x}\left(x\cos y-y\sin y\right)$ for $z=x+iy$.

### Solution 3.4-9

Let $f=u+iv$, with $u\left(x,y\right)=e^{x}\left(x\cos y-y\sin y\right)$. Since $f$ is holomorphic, $u,v$ satisfy the Cauchy-Riemann equations (**Theorem 3.2.4 (Cauchy-Riemann Equations)**): $v_{y}=u_{x}$, $v_{x}=-u_{y}$. Compute

$$
u_{x}=e^{x}\left(x\cos y-y\sin y\right)+e^{x}\cos y=e^{x}\left(\cos y+x\cos y-y\sin y\right),
$$

$$
u_{y}=e^{x}\left(-x\sin y-\sin y-y\cos y\right)=-e^{x}\left(\sin y+x\sin y+y\cos y\right).
$$

From $v_{y}=u_{x}$, integrate with respect to $y$:

$$
v\left(x,y\right)=\int e^{x}\left(\cos y+x\cos y-y\sin y\right)\,dy=e^{x}\left(\sin y+x\sin y+\int\left(-y\sin y\right)\,dy\right)+C\left(x\right).
$$

Using $\int\left(-y\sin y\right)\,dy=y\cos y-\sin y$,

$$
v\left(x,y\right)=e^{x}\left(\sin y+x\sin y+y\cos y-\sin y\right)+C\left(x\right)=e^{x}\left(x\sin y+y\cos y\right)+C\left(x\right).
$$

From $v_{x}=-u_{y}$: $v_{x}=e^{x}\left(x\sin y+y\cos y\right)+e^{x}\sin y+C'\left(x\right)=e^{x}\left(x\sin y+\sin y+y\cos y\right)+C'\left(x\right)$, while $-u_{y}=e^{x}\left(\sin y+x\sin y+y\cos y\right)$. Equating gives $C'\left(x\right)=0$, i.e. $C\left(x\right)$ is constant. Therefore

$$
f\left(z\right)=e^{x}\left(x\cos y-y\sin y\right)+ie^{x}\left(x\sin y+y\cos y\right)+iC,\quad C\in\mathbb{R}.
$$

Note that $ze^{z}=\left(x+iy\right)e^{x}\left(\cos y+i\sin y\right)$ has real part $e^{x}\left(x\cos y-y\sin y\right)$ and imaginary part $e^{x}\left(x\sin y+y\cos y\right)$. Hence

$$
f\left(z\right)=ze^{z}+iC,\quad C\in\mathbb{R}.
$$

Verification: $f'\left(z\right)=\left(z+1\right)e^{z}$ is holomorphic on $\mathbb{C}$, and $\operatorname{Re}f=e^{x}\left(x\cos y-y\sin y\right)$, as required. $\blacksquare$
