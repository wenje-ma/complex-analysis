# week4

> **Definition 4.1.2 (Conformal)**<br>$f$ is conformal at $z$ if it is holomorphic and univalent on a neighborhood of $z$ and $f'\left(z\right)\ne0$.

> **Theorem 4.1.5 (Criterion for Conformality)**<br>$f$ is conformal at $z$ if and only if $f$ is $\mathbb{C}$-differentiable at $z$ and $f'\left(z\right)\ne0$.

> **Definition 4.2.1 (Mobius Transformation)**<br>A function of the form

$$
f\left(z\right)=\frac{az+b}{cz+d}
$$

(where $a,b,c,d\in\mathbb{C}$ and $ad-bc\ne0$) is called a Mobius transformation (or fractional linear transformation); it is a bijection of the extended complex plane onto itself, and its inverse is also a Mobius transformation.

> **Theorem 4.3.4 (Circles Map to Circles)**<br>A Mobius transformation maps circles (generalized circles, i.e. circles or lines) in the extended plane to circles, and preserves angles of intersection.

> **Definition 4.4.1 (Univalent)**<br>$f$ is univalent on a domain $D$ if it is injective on $D$.

> **Theorem 4.4.2**<br>If $f$ is holomorphic at $z_{0}$ and $f'\left(z_{0}\right)=0$, then $f$ is not univalent on any neighborhood of $z_{0}$.

---

## 4.5-1

Prove: every Mobius transformation $\lambda$ has at least one fixed point on the extended complex plane, i.e. there exists at least one $z_{0}\in\widehat{\mathbb{C}}$ such that $\lambda\left(z_{0}\right)=z_{0}$; if it has three fixed points, then it must be the identity.

### Solution 4.5-1

Let $\lambda\left(z\right)=\frac{az+b}{cz+d}$, $ad-bc\ne0$. A fixed point $z$ satisfies $\frac{az+b}{cz+d}=z$, i.e.

$$
cz^{2}+\left(d-a\right)z-b=0.\tag{1}
$$

Two cases.

If $c\ne0$, then (1) is a genuine quadratic equation, which by the fundamental theorem of algebra has at least one solution in $\mathbb{C}$ (with multiplicity), so $\lambda$ has at least one finite fixed point. In this case $\lambda\left(\infty\right)=\frac{a}{c}\in\mathbb{C}$, and $\infty$ is not a fixed point.

If $c=0$, then $ad\ne0$, $\lambda$ is the affine transformation $\lambda\left(z\right)=\alpha z+\beta$ ($\alpha=\frac{a}{d}\ne0$, $\beta=\frac{b}{d}$), and $\lambda\left(\infty\right)=\infty$, so $\infty$ is a fixed point. If $\alpha\ne1$, there is also the finite fixed point $z=\frac{\beta}{1-\alpha}$; if $\alpha=1$, then $\lambda\left(z\right)=z+\beta$ is a translation (with only $\infty$ as fixed point when $\beta\ne0$, and the identity when $\beta=0$).

Thus every Mobius transformation has at least one fixed point on the extended plane.

If $\lambda$ has three fixed points: if $c\ne0$, there are at most two finite fixed points (the quadratic (1) has at most two solutions, unless identically zero, but $c\ne0$), and $\infty$ is not a fixed point, a contradiction. Hence $c=0$, $\lambda\left(z\right)=\alpha z+\beta$. Then there is at most one finite fixed point ($\alpha\ne1$) or none ($\alpha=1,\beta\ne0$); to have three fixed points we must have $\alpha=1$, $\beta=0$, i.e. $\lambda$ is the identity. $\blacksquare$

---

## 4.5-3

Describe the image of the half-plane $\left\{z\in\mathbb{C}:\operatorname{Re}z< 1\right\}$ under each of the following Mobius transformations:

(i) $z\mapsto\left(1+i\right)z+1$; (ii) $z\mapsto\frac{z}{z-2}$; (iii) $z\mapsto\frac{4z}{z+1}$.

### Solution 4.5-3

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

---

## 4.5-5

Let $f:\mathbb{C}\to\mathbb{C}$ be $f\left(z\right)=z^{2}-2z+2$.

(i) Find all $w\in\mathbb{C}$ such that $f'\left(w\right)=0$;

(ii) Prove $f$ cannot be univalent on any neighborhood of the point $w$ in (i);

(iii) Prove $f$ cannot be conformal at the point $w$ in (i).

### Solution 4.5-5

(i) $f'\left(z\right)=2z-2$, so $f'\left(w\right)=0$ if and only if $w=1$. The only such point is $w=1$.

(ii) Since $f'\left(1\right)=0$, by **Theorem 4.4.2**, $f$ is not univalent on any neighborhood of $1$. (More directly, $f\left(z\right)=\left(z-1\right)^{2}+1$; for any $\delta\ne0$, $f\left(1+\delta\right)=f\left(1-\delta\right)$ while $1+\delta\ne1-\delta$, so any neighborhood containing $1$ is not univalent.)

(iii) By **Theorem 4.1.5 (Criterion for Conformality)**, $f$ is conformal at $z$ if and only if $f'\left(z\right)\ne0$; here $f'\left(1\right)=0$, so $f$ is not conformal at $1$. $\blacksquare$

---

## 4.5-14

Consider the Mobius transformation $w\left(z\right)=\frac{az+b}{cz+d}$ and the matrix $M=\begin{bmatrix}a&b\\c&d\end{bmatrix}$. Prove: the vector $\binom{z_{1}}{z_{2}}\in\mathbb{C}^{2}$ is an eigenvector of $M$ if and only if $\zeta=\frac{z_{1}}{z_{2}}$ is a fixed point of $w$, where if $z_{2}=0$, then $\zeta=\infty$.

### Solution 4.5-14

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

---

## 4.5-16

Let $f=u\left(z\right)+iv\left(z\right)$ be holomorphic at $z_{0}\in\mathbb{C}$ with $f'\left(z_{0}\right)\ne0$. Prove: the level sets of $u$ and $v$ (sets of points where the function takes a given constant value) intersect at angle $\frac{\pi}{2}$ at $z_{0}$.

### Solution 4.5-16

The tangent lines to the level sets of $u,v$ at $z_{0}$ are perpendicular to the gradients $\nabla u=\left(u_{x},u_{y}\right)$ and $\nabla v=\left(v_{x},v_{y}\right)$. Since $f$ is holomorphic at $z_{0}$, $u,v$ satisfy the Cauchy-Riemann equations $u_{x}=v_{y}$, $u_{y}=-v_{x}$, so

$$
\nabla u\cdot\nabla v=u_{x}v_{x}+u_{y}v_{y}=u_{x}\left(-u_{y}\right)+u_{y}u_{x}=0.
$$

Hence $\nabla u\perp\nabla v$, the two gradients are orthogonal, and therefore the tangent lines to the two level sets are also orthogonal, meeting at angle $\frac{\pi}{2}$.

Since $f'\left(z_{0}\right)\ne0$, from $f'\left(z_{0}\right)=u_{x}\left(z_{0}\right)+iv_{x}\left(z_{0}\right)$ we see that $\nabla u,\nabla v$ are both nonzero at $z_{0}$, so both level sets have well-defined tangent lines at $z_{0}$. $\blacksquare$
