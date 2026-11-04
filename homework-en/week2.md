# week2

> **Definition 2.1.2 (Reparametrization of a Path)**
> 
> A path $\gamma_{1}:\left[a_{1},b_{1}\right]\to\mathbb{C}$ is a reparametrization of $\gamma_{2}:\left[a_{2},b_{2}\right]\to\mathbb{C}$ if there is a monotonically increasing function $\tau:\left[a_{1},b_{1}\right]\to\left[a_{2},b_{2}\right]$ with $\tau\left(a_{1}\right)=a_{2}$, $\tau\left(b_{1}\right)=b_{2}$, such that $\gamma_{1}\left(t\right)=\gamma_{2}\left(\tau\left(t\right)\right)$ for all $t\in\left[a_{1},b_{1}\right]$; if $\tau$ has a jump discontinuity at $\overline{t}$, i.e. $\tau\left(\overline{t}-0\right)< \tau\left(\overline{t}+0\right)$, then $\gamma_{2}$ must be constant on the interval $\left[\tau\left(\overline{t}-0\right),\tau\left(\overline{t}+0\right)\right]$.

> **Definition 2.1.4 (Curve)**
> 
> An equivalence class of paths under reparametrization is called a curve.

> **Definition 2.2.4 (Domain)**
> 
> A set $D\subset\mathbb{C}$ (or $\overline{\mathbb{C}}$) is called a domain if: (i-1) $D$ is open; (i-2) $D$ is path-connected, i.e. for any $a,b\in D$ there is a path in $D$ with endpoints $a,b$.

> **Theorem 2.2.6 (Jordan Curve Theorem)**
> 
> Every Jordan curve in the complex plane divides the plane into two disjoint domains: a bounded one called its interior, and an unbounded one called its exterior.

> **Definition 2.2.7 (Simply Connected and Multiply Connected)**
> 
> A domain $D\subset\mathbb{C}$ is called simply connected if the interior of every Jordan curve in $D$ is contained in $D$; otherwise it is multiply connected.

> **Definition 2.4.1 (Limit of a Function Along a Set)**
> 
> Let $f$ be defined on $M\subset\overline{\mathbb{C}}$, and let $a\in\overline{\mathbb{C}}$ be a limit point of $M$. We say $A\in\mathbb{C}$ is the limit of $f$ as $z\to a$ along $M$, written $\lim_{z\to a,\ z\in M}f\left(z\right)=A$, if for every $\varepsilon> 0$ there exists $\delta> 0$ such that for all $z\in M$, $0< \rho\left(z,a\right)< \delta$ implies $\rho\left(f\left(z\right),A\right)< \varepsilon$.

> **Definition 2.4.2 (Boundedness and Continuity)**
> 
> If there exists $C> 0$ such that $\left|f\left(z\right)\right|\le C$ for all $z\in M$, then $f$ is bounded on $M$; if $\lim_{z\to a,\ z\in M}f\left(z\right)=f\left(a\right)$, then $f$ is continuous at $a$ (along $M$); if $f$ is continuous at every $a\in M$, then $f$ is continuous on $M$.

> **Definition 3.1.1 ($\mathbb{R}$-linear and $\mathbb{C}$-linear)**
> 
> A map $\ell:\mathbb{C}\to\mathbb{C}$ is called $\mathbb{R}$-linear (or $\mathbb{C}$-linear) if $\ell\left(a+b\right)=\ell\left(a\right)+\ell\left(b\right)$ and $\ell\left(\lambda z\right)=\lambda\ell\left(z\right)$ for $\lambda\in\mathbb{R}$ (or $\mathbb{C}$); a $\mathbb{C}$-linear map is necessarily $\mathbb{R}$-linear.

> **Theorem 3.1.2 (Form of Linear Maps)**
> 
> Every $\mathbb{R}$-linear map has the form $\ell\left(z\right)=az+b\overline{z}$, where

$$
a=\frac{\ell\left(1\right)-i\ell\left(i\right)}{2},\quad b=\frac{\ell\left(1\right)+i\ell\left(i\right)}{2};
$$
every $\mathbb{C}$-linear map has the form $\ell\left(z\right)=az$; an $\mathbb{R}$-linear map $\ell$ is $\mathbb{C}$-linear if and only if $\ell\left(iz\right)=i\ell\left(z\right)$.

> **Definition 3.2.1 (Differentiability)**
> 
> $f$ is $\mathbb{R}$-differentiable (or $\mathbb{C}$-differentiable) at $z$ if $\Delta f=\ell\left(\Delta z\right)+o\left(\left|\Delta z\right|\right)$, where $\ell$ is $\mathbb{R}$-linear (or $\mathbb{C}$-linear).

> **Definition 3.2.2 (Formal Derivatives)**
> 
> The formal derivative operators are

$$
\frac{\partial f}{\partial z}=\frac{1}{2}\left(\frac{\partial f}{\partial x}-i\frac{\partial f}{\partial y}\right),\quad\frac{\partial f}{\partial\overline{z}}=\frac{1}{2}\left(\frac{\partial f}{\partial x}+i\frac{\partial f}{\partial y}\right),
$$
and $df\left(z\right)=\frac{\partial f}{\partial z}\,dz+\frac{\partial f}{\partial\overline{z}}\,d\overline{z}$.

> **Theorem 3.2.4 (Cauchy-Riemann Equations)**
> 
> $f$ is $\mathbb{C}$-differentiable at $z$ if and only if $f$ is $\mathbb{R}$-differentiable at $z$ and $\frac{\partial f}{\partial\overline{z}}=0$, equivalently $u,v$ satisfy the Cauchy-Riemann equations.

$$
\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y},\quad\frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}.
$$

> **Definition 3.3.1 (Complex Differentiability)**
> 
> $f$ is differentiable at $a$ if

$$
\lim_{z\to a}\frac{f\left(z\right)-f\left(a\right)}{z-a}=A
$$
exists; write $A=f'\left(a\right)$.

> **Theorem 3.3.3**
> 
> $f$ is differentiable at $a$ if and only if $f$ is $\mathbb{C}$-differentiable at $a$, in which case $f'\left(a\right)=\frac{\partial f}{\partial z}\left(a\right)$.

> **Definition 4.1.2 (Conformal)**
> 
> $f$ is conformal at $z$ if it is holomorphic and univalent on a neighborhood of $z$ and $f'\left(z\right)\ne0$.

> **Theorem 4.1.5 (Criterion for Conformality)**
> 
> $f$ is conformal at $z$ if and only if $f$ is $\mathbb{C}$-differentiable at $z$ and $f'\left(z\right)\ne0$.

> **Definition 4.2.1 (Mobius Transformation)**
> 
> A function of the form

$$
f\left(z\right)=\frac{az+b}{cz+d}
$$
(where $a,b,c,d\in\mathbb{C}$ and $ad-bc\ne0$) is called a Mobius transformation (or fractional linear transformation); it is a bijection of the extended complex plane onto itself, and its inverse is also a Mobius transformation.

> **Theorem 4.3.4 (Circles Map to Circles)**
> 
> A Mobius transformation maps generalized circles (circles or lines) in the extended plane to generalized circles, and preserves angles of intersection.

> **Definition 4.4.1 (Univalent)**
> 
> $f$ is univalent on a domain $D$ if it is injective on $D$.

> **Theorem 4.4.2**
> 
> If $f$ is holomorphic at $z_{0}$ and $f'\left(z_{0}\right)=0$, then $f$ is not univalent on any neighborhood of $z_{0}$.

> **Theorem 10.2.4 (Inverse of a Univalent Holomorphic Map)**
> 
> If $f$ is holomorphic and univalent on an open set $\Omega$, then $f\left(\Omega\right)$ is open and $f^{-1}$ is holomorphic on $f\left(\Omega\right)$.

## 2.5-10

Give an example of a domain $D\subset\mathbb{C}$ such that $\mathbb{C}\setminus D$ is connected but $D$ is not simply connected.

### Solution to 2.5-10

Take the exterior of the closed unit disk

$$
D=\left\{z\in\mathbb{C}:\left|z\right|> 1\right\}.
$$

First verify $D$ is a domain (**Definition 2.2.4 (Domain)**): $D$ is open (the set $\left\{\left|z\right|> 1\right\}$ is open); and for any $a,b\in D$, there exists $R> \max\left\{\left|a\right|,\left|b\right|\right\}$; take an arc $\gamma_{1}$ connecting $a$ to a point of modulus $R$, an arc $\gamma_{2}$ along the circle $\left|z\right|=R$, and an arc $\gamma_{3}$ connecting back to $b$; all three segments lie in $D$, so $D$ is path-connected. Hence $D$ is a domain.

Next, $\mathbb{C}\setminus D=\left\{z\in\mathbb{C}:\left|z\right|\le1\right\}$ is the closed unit disk, clearly connected.

Finally, $D$ is not simply connected: the circle $\gamma\left(t\right)=2e^{it}$, $t\in\left[0,2\pi\right]$, lies in $D$ and is a Jordan curve, and its interior $\left\{\left|z\right|< 2\right\}$ contains the closed unit disk $\left\{\left|z\right|\le1\right\}\subset\mathbb{C}\setminus D$, so $\left\{\left|z\right|< 2\right\}\not\subset D$. By **Definition 2.2.7 (Simply Connected and Multiply Connected)**, $D$ is not simply connected.

Thus $D=\left\{z:\left|z\right|> 1\right\}$ satisfies the requirements. $\blacksquare$

## 3.4-1

Let $f$ be a function of a complex variable, $\mathbb{R}$-differentiable at $z_{0}\in\mathbb{C}$. Prove: as $z\to z_{0}$, the set of limit points of

$$
\left\{\frac{f\left(z\right)-f\left(z_{0}\right)}{z-z_{0}}\right\}
$$

is a circle centered at $\frac{\partial f}{\partial z}\left(z_{0}\right)$ with radius $\left|\frac{\partial f}{\partial\overline{z}}\left(z_{0}\right)\right|$.

### Solution to 3.4-1

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

## 3.4-3

Let $f$ be $\mathbb{C}$-differentiable at $z_{0}\in\mathbb{C}$ with $f'\left(z_{0}\right)\ne0$. Suppose $f$ is defined on the disk $B\left(z_{0},r\right)$ centered at $z_{0}$ with radius $r> 0$, and let $l$ be any line through $f\left(z_{0}\right)$. Prove: the image $f\left(B\left(z_{0},r\right)\right)$ cannot lie entirely on one side of $l$.

### Solution to 3.4-3

Proof by contradiction. Suppose $f\left(B\left(z_{0},r\right)\right)$ lies entirely on one side of a line $l$ through $f\left(z_{0}\right)$. After translation and rotation, assume $f\left(z_{0}\right)=0$ and $l$ is the real axis, so $\operatorname{Im}f\left(z\right)\ge0$ (or $\le0$) for all $z\in B\left(z_{0},r\right)$, i.e. $f\left(z_{0}\right)=0$ is a boundary point of $f\left(B\left(z_{0},r\right)\right)$.

Since $f$ is $\mathbb{C}$-differentiable at $z_{0}$ with $f'\left(z_{0}\right)\ne0$, by **Theorem 4.1.5 (Criterion for Conformality)**, $f$ is conformal at $z_{0}$. Since $f'\left(z_{0}\right)\ne0$, $f$ is locally univalent on some open neighborhood $U\subset B\left(z_{0},r\right)$ of $z_{0}$; by **Theorem 10.2.4 (Inverse of a Univalent Holomorphic Map)**, $f\left(U\right)$ is open and contains $f\left(z_{0}\right)=0$ as an interior point. Hence there exists $\delta> 0$ such that $f\left(U\right)$ contains the disk $\left\{w:\left|w\right|< \delta\right\}$ centered at $0$, which contains points on both sides of the real axis, contradicting the assumption that $f\left(B\left(z_{0},r\right)\right)$ lies on one side of the real axis.

Thus $f\left(B\left(z_{0},r\right)\right)$ cannot lie entirely on one side of $l$. $\blacksquare$

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

### Solution to 3.4-5

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

## 3.4-7

Let $a,b,c\in\mathbb{C}$ and $f:\mathbb{C}\to\mathbb{C}$ be $f\left(z\right)=az^{2}+b\left|z\right|^{2}+c\overline{z}^{2}$. Prove: $f$ is differentiable at $z\in\mathbb{C}$ if and only if $bz+2c\overline{z}=0$.

### Solution to 3.4-7

Since $\left|z\right|^{2}=z\overline{z}$, $f\left(z\right)=az^{2}+bz\overline{z}+c\overline{z}^{2}$. Compute the formal derivatives (**Definition 3.2.2 (Formal Derivatives)**): since $\frac{\partial\left(az^{2}\right)}{\partial\overline{z}}=0$, $\frac{\partial\left(z\overline{z}\right)}{\partial\overline{z}}=z$, $\frac{\partial\left(\overline{z}^{2}\right)}{\partial\overline{z}}=2\overline{z}$,

$$
\frac{\partial f}{\partial\overline{z}}\left(z\right)=bz+2c\overline{z}.
$$

By **Theorem 3.2.4 (Cauchy-Riemann Equations)**, $f$ is $\mathbb{C}$-differentiable at $z$ if and only if $\frac{\partial f}{\partial\overline{z}}\left(z\right)=0$, i.e. $bz+2c\overline{z}=0$; by **Theorem 3.3.3**, $\mathbb{C}$-differentiability is equivalent to differentiability. Hence $f$ is differentiable at $z$ if and only if $bz+2c\overline{z}=0$. $\blacksquare$

## 3.4-9

Find all functions holomorphic on $\mathbb{C}$ such that $\operatorname{Re}f\left(z\right)=e^{x}\left(x\cos y-y\sin y\right)$ for $z=x+iy$.

### Solution to 3.4-9

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

## 4.5-1

Prove: every Mobius transformation $\lambda$ has at least one fixed point on the extended complex plane, i.e. there exists at least one $z_{0}\in\widehat{\mathbb{C}}$ such that $\lambda\left(z_{0}\right)=z_{0}$; if it has three fixed points, then it must be the identity.

### Solution to 4.5-1

Let $\lambda\left(z\right)=\frac{az+b}{cz+d}$, $ad-bc\ne0$. A fixed point $z$ satisfies $\frac{az+b}{cz+d}=z$, i.e.

$$
cz^{2}+\left(d-a\right)z-b=0.\tag{1}
$$

Two cases.

If $c\ne0$, then (1) is a genuine quadratic equation, which by the fundamental theorem of algebra has at least one solution in $\mathbb{C}$ (with multiplicity), so $\lambda$ has at least one finite fixed point. In this case $\lambda\left(\infty\right)=\frac{a}{c}\in\mathbb{C}$, and $\infty$ is not a fixed point.

If $c=0$, then $ad\ne0$, $\lambda$ is the affine transformation $\lambda\left(z\right)=\alpha z+\beta$ ($\alpha=\frac{a}{d}\ne0$, $\beta=\frac{b}{d}$), and $\lambda\left(\infty\right)=\infty$, so $\infty$ is a fixed point. If $\alpha\ne1$, there is also the finite fixed point $z=\frac{\beta}{1-\alpha}$; if $\alpha=1$, then $\lambda\left(z\right)=z+\beta$ is a translation (with only $\infty$ as fixed point when $\beta\ne0$, and the identity when $\beta=0$).

Thus every Mobius transformation has at least one fixed point on the extended plane.

If $\lambda$ has three fixed points: if $c\ne0$, there are at most two finite fixed points (the quadratic (1) has at most two solutions, unless identically zero, but $c\ne0$), and $\infty$ is not a fixed point, a contradiction. Hence $c=0$, $\lambda\left(z\right)=\alpha z+\beta$. Then there is at most one finite fixed point ($\alpha\ne1$) or none ($\alpha=1,\beta\ne0$); to have three fixed points we must have $\alpha=1$, $\beta=0$, i.e. $\lambda$ is the identity. $\blacksquare$

## 4.5-3

Describe the image of the half-plane $\left\{z\in\mathbb{C}:\operatorname{Re}z< 1\right\}$ under each of the following Mobius transformations:

(i) $z\mapsto\left(1+i\right)z+1$; (ii) $z\mapsto\frac{z}{z-2}$; (iii) $z\mapsto\frac{4z}{z+1}$.

### Solution to 4.5-3

The boundary $\operatorname{Re}z=1$ (the line $x=1$) is mapped by a Mobius transformation to a generalized circle (**Theorem 4.3.4 (Circles Map to Circles)**); the image region has this generalized circle as boundary, and one test point determines the side.

(i) For $\lambda\left(z\right)=\left(1+i\right)z+1$, take a boundary point $z=1+iy$: $\lambda\left(1+iy\right)=\left(1+i\right)\left(1+iy\right)+1=\left(2-y\right)+i\left(1+y\right)$. Let $u=2-y$, $v=1+y$; eliminating $y$ gives $u+v=3$, so the boundary maps to the line $u+v=3$. Take an interior point $z=0\in\left\{\operatorname{Re}z< 1\right\}$: $\lambda\left(0\right)=1$, and $1+0=1< 3$. Hence the image is

$$
\left\{w:\operatorname{Re}w+\operatorname{Im}w< 3\right\}.
$$

(ii) For $\lambda\left(z\right)=\frac{z}{z-2}$, the pole $z=2$ is not on the boundary $x=1$, so the boundary maps to a circle. $\lambda\left(\infty\right)=1$, $\lambda\left(1\right)=-1$, $\lambda\left(1+i\right)=\frac{1+i}{-1+i}=-i$, so the boundary maps to the circle through $1,-1,-i$, namely the unit circle $\left|w\right|=1$. Take $z=0$: $\lambda\left(0\right)=0$, $\left|0\right|=0< 1$. Hence the image is the open unit disk

$$
\left\{w:\left|w\right|< 1\right\}.
$$

(iii) For $\lambda\left(z\right)=\frac{4z}{z+1}$, the pole $z=-1$ is not on the boundary $x=1$, so the boundary maps to a circle. $\lambda\left(\infty\right)=4$, $\lambda\left(1\right)=2$, $\lambda\left(1+i\right)=\frac{4\left(1+i\right)}{2+i}=\frac{12+4i}{5}$, so the boundary maps to the circle through $4,2,\frac{12+4i}{5}$. Let the circle be $x^{2}+y^{2}+ax+by+c=0$; substituting $\left(4,0\right),\left(2,0\right),\left(2.4,0.8\right)$ gives $a=-6$, $b=0$, $c=8$, i.e. $\left(x-3\right)^{2}+y^{2}=1$, center $3$, radius $1$. Take $z=0$: $\lambda\left(0\right)=0$, $\left|0-3\right|=3> 1$, outside the circle; also $-1\in\left\{\operatorname{Re}z< 1\right\}$ and $\lambda\left(-1\right)=\infty$. Hence the image is the exterior region

$$
\left\{w:\left|w-3\right|> 1\right\}\cup\left\{\infty\right\}.
$$

$\blacksquare$

## 4.5-5

Let $f:\mathbb{C}\to\mathbb{C}$ be $f\left(z\right)=z^{2}-2z+2$.

(i) Find all $w\in\mathbb{C}$ such that $f'\left(w\right)=0$;

(ii) Prove $f$ cannot be univalent on any neighborhood of the point $w$ in (i);

(iii) Prove $f$ cannot be conformal at the point $w$ in (i).

### Solution to 4.5-5

(i) $f'\left(z\right)=2z-2$, so $f'\left(w\right)=0$ if and only if $w=1$. The only such point is $w=1$.

(ii) Since $f'\left(1\right)=0$, by **Theorem 4.4.2**, $f$ is not univalent on any neighborhood of $1$. (More directly, $f\left(z\right)=\left(z-1\right)^{2}+1$; for any $\delta\ne0$, $f\left(1+\delta\right)=f\left(1-\delta\right)$ while $1+\delta\ne1-\delta$, so any neighborhood containing $1$ is not univalent.)

(iii) By **Theorem 4.1.5 (Criterion for Conformality)**, $f$ is conformal at $z$ if and only if $f'\left(z\right)\ne0$; here $f'\left(1\right)=0$, so $f$ is not conformal at $1$. $\blacksquare$

## 4.5-14

Consider the Mobius transformation $w\left(z\right)=\frac{az+b}{cz+d}$ and the matrix $M=\begin{bmatrix}a&b\\c&d\end{bmatrix}$. Prove: the vector $\binom{z_{1}}{z_{2}}\in\mathbb{C}^{2}$ is an eigenvector of $M$ if and only if $\zeta=\frac{z_{1}}{z_{2}}$ is a fixed point of $w$, where if $z_{2}=0$, then $\zeta=\infty$.

### Solution to 4.5-14

Let $\binom{z_{1}}{z_{2}}$ be nonzero. If $z_{2}\ne0$, write $\zeta=\frac{z_{1}}{z_{2}}$. $\binom{z_{1}}{z_{2}}$ is an eigenvector of $M$ if and only if there exists $\lambda$ such that

$$
\begin{bmatrix}a&b\\c&d\end{bmatrix}\binom{z_{1}}{z_{2}}=\lambda\binom{z_{1}}{z_{2}},
$$

i.e. $az_{1}+bz_{2}=\lambda z_{1}$ and $cz_{1}+dz_{2}=\lambda z_{2}$. Dividing by $z_{2}$: $a\zeta+b=\lambda\zeta$, $c\zeta+d=\lambda$. Eliminating $\lambda$:

$$
a\zeta+b=\zeta\left(c\zeta+d\right),
$$

i.e. $c\zeta^{2}+\left(d-a\right)\zeta-b=0$, which is exactly the fixed point equation $w\left(\zeta\right)=\frac{a\zeta+b}{c\zeta+d}=\zeta$. Thus the claim holds when $z_{2}\ne0$.

If $z_{2}=0$, then $\zeta=\infty$, and $z_{1}\ne0$. $M\binom{z_{1}}{0}=\binom{az_{1}}{cz_{1}}$ is a scalar multiple of $\binom{z_{1}}{0}$ if and only if $c=0$. On the other hand, $w\left(\infty\right)=\lim_{z\to\infty}\frac{az+b}{cz+d}=\frac{a}{c}$ (when $c\ne0$) or $\infty$ (when $c=0$), i.e. $w\left(\infty\right)=\infty$ if and only if $c=0$. Thus the claim also holds when $z_{2}=0$. $\blacksquare$
