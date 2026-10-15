# Assignment 4

> **Definition 4.1.2** (Conformal)<br>$f$ is said to be conformal at $z$ if $f$ is holomorphic on some neighborhood of $z$, univalent and $f'\left(z\right)\ne0$.

> **Theorem 4.1.5**<br>$f$ is conformal at $z$ if and only if $f$ is $\mathbb{C}$-differentiable at $z$ and $f'\left(z\right)\ne0$.

> **Definition 4.2.1** (Möbius Transformation)<br>A function of the form $$f\left(z\right)=\frac{az+b}{cz+d}$$ (where $a,b,c,d\in\mathbb{C}$ and $ad-bc\ne0$) is called a Möbius transformation (or fractional linear transformation); it is a bijection of the extended complex plane onto itself, and its inverse is also a Möbius transformation.

> **Theorem 4.3.4** (Circle-Preserving Property)<br>A Möbius transformation maps circles in the extended complex plane (generalized circles, i.e. circles or straight lines) to circles in the extended complex plane, and preserves the angle of intersection.

> **Definition 4.4.1** (Univalent)<br>$f$ is said to be univalent on a domain $D$ if $f$ is injective on $D$.

> **Theorem 4.4.2**<br>If $f$ is holomorphic at $z_{0}$ and $f'\left(z_{0}\right)=0$, then $f$ is not univalent on any neighborhood of $z_{0}$.

### Problem 1

(Problem 4.5-1) Prove: every Möbius transformation $\lambda$ has at least one fixed point on the extended complex plane, i.e. there exists at least one $z_{0}\in\hat{\mathbb{C}}$ such that $\lambda\left(z_{0}\right)=z_{0}$; if it has three fixed points, then it must be the identity map.

### Solution to Problem 1

Let $\lambda\left(z\right)=\frac{az+b}{cz+d}$, $ad-bc\ne0$. A fixed point $z$ satisfies $\frac{az+b}{cz+d}=z$, i.e.

$$
cz^{2}+\left(d-a\right)z-b=0.\tag{1}
$$

We consider two cases.

If $c\ne0$, then (1) is a genuine quadratic equation; by the fundamental theorem of algebra it has at least one solution in $\mathbb{C}$ (counting multiplicity), so $\lambda$ has at least one finite fixed point. In this case $\lambda\left(\infty\right)=\frac{a}{c}\in\mathbb{C}$, so $\infty$ is not a fixed point.

If $c=0$, then $ad\ne0$, and $\lambda$ is an entire linear transformation $\lambda\left(z\right)=\alpha z+\beta$ ($\alpha=\frac{a}{d}\ne0$, $\beta=\frac{b}{d}$), with $\lambda\left(\infty\right)=\infty$, so $\infty$ is a fixed point. If $\alpha\ne1$, there is also a finite fixed point $z=\frac{\beta}{1-\alpha}$; if $\alpha=1$, then $\lambda\left(z\right)=z+\beta$ is a translation (when $\beta\ne0$, only $\infty$ is a fixed point; when $\beta=0$, it is the identity map).

In summary, every Möbius transformation has at least one fixed point on the extended complex plane.

If $\lambda$ has three fixed points: if $c\ne0$, there are at most two finite fixed points (the quadratic equation (1) has at most two solutions, unless identically zero, but $c\ne0$), and $\infty$ is not a fixed point either, a contradiction. Hence $c=0$, $\lambda\left(z\right)=\alpha z+\beta$. In this case there is at most one finite fixed point ($\alpha\ne1$) or none ($\alpha=1,\beta\ne0$); to have three fixed points we must have $\alpha=1$, $\beta=0$, i.e. $\lambda$ is the identity map. $\blacksquare$

### Problem 2

(Problem 4.5-3) Describe the image of the half-plane $\left\{z\in\mathbb{C}:\operatorname{Re}z<1\right\}$ under each of the following Möbius transformations:

(i) $z\mapsto\left(1+i\right)z+1$; (ii) $z\mapsto\frac{z}{z-2}$; (iii) $z\mapsto\frac{4z}{z+1}$.

### Solution to Problem 2

The boundary $\operatorname{Re}z=1$ (the line $x=1$) is mapped by the Möbius transformation to a generalized circle (**Theorem 4.3.4 (Circle-Preserving Property)**), and the half-plane is mapped to a region bounded by that generalized circle; we use one point to determine which side.

(i) For $\lambda\left(z\right)=\left(1+i\right)z+1$, take the boundary point $z=1+iy$: $\lambda\left(1+iy\right)=\left(1+i\right)\left(1+iy\right)+1=\left(2-y\right)+i\left(1+y\right)$. Letting $u=2-y$, $v=1+y$ and eliminating $y$ gives $u+v=3$, so the boundary maps to the line $u+v=3$. Take the interior point $z=0\in\left\{\operatorname{Re}z<1\right\}$; $\lambda\left(0\right)=1$, and $1+0=1<3$. Hence the image is

$$
\left\{w:\operatorname{Re}w+\operatorname{Im}w<3\right\}.
$$

(ii) For $\lambda\left(z\right)=\frac{z}{z-2}$, the pole $z=2$ does not lie on the boundary $x=1$, so the boundary maps to a circle. $\lambda\left(\infty\right)=1$, $\lambda\left(1\right)=-1$, $\lambda\left(1+i\right)=\frac{1+i}{-1+i}=-i$, so the boundary maps to the circle through $1,-1,-i$, i.e. the unit circle $\left|w\right|=1$. Take $z=0$: $\lambda\left(0\right)=0$, $\left|0\right|=0<1$. Hence the image is the open unit disk

$$
\left\{w:\left|w\right|<1\right\}.
$$

(iii) For $\lambda\left(z\right)=\frac{4z}{z+1}$, the pole $z=-1$ does not lie on the boundary $x=1$, so the boundary maps to a circle. $\lambda\left(\infty\right)=4$, $\lambda\left(1\right)=2$, $\lambda\left(1+i\right)=\frac{4\left(1+i\right)}{2+i}=\frac{12+4i}{5}$, so the boundary maps to the circle through $4,2,\frac{12+4i}{5}$. Let the circle be $x^{2}+y^{2}+ax+by+c=0$; substituting $\left(4,0\right),\left(2,0\right),\left(2.4,0.8\right)$ gives $a=-6$, $b=0$, $c=8$, i.e. $\left(x-3\right)^{2}+y^{2}=1$, center $3$, radius $1$. Take $z=0$: $\lambda\left(0\right)=0$, $\left|0-3\right|=3>1$, outside the circle; also $-1\in\left\{\operatorname{Re}z<1\right\}$ and $\lambda\left(-1\right)=\infty$. Hence the image is the exterior of the circle

$$
\left\{w:\left|w-3\right|>1\right\}\cup\left\{\infty\right\}.
$$

$\blacksquare$

### Problem 3

(Problem 4.5-5) Let $f:\mathbb{C}\to\mathbb{C}$ be defined by $f\left(z\right)=z^{2}-2z+2$.

(i) Find all $w\in\mathbb{C}$ such that $f'\left(w\right)=0$;

(ii) prove that $f$ cannot be univalent on any neighborhood of the point $w$ in (i);

(iii) prove that $f$ cannot be angle-preserving at the point $w$ in (i).

### Solution to Problem 3

(i) $f'\left(z\right)=2z-2$, so $f'\left(w\right)=0$ if and only if $w=1$. The unique point is $w=1$.

(ii) Since $f'\left(1\right)=0$, by **Theorem 4.4.2**, $f$ is not univalent on any neighborhood of $1$. (More directly, $f\left(z\right)=\left(z-1\right)^{2}+1$; for any $\delta\ne0$, $f\left(1+\delta\right)=f\left(1-\delta\right)$ while $1+\delta\ne1-\delta$, so it is not univalent on any neighborhood containing $1$.)

(iii) By **Theorem 4.1.5**, $f$ is conformal at $z$ if and only if $f'\left(z\right)\ne0$; now $f'\left(1\right)=0$, so $f$ is not angle-preserving at $1$. $\blacksquare$

### Problem 4

(Problem 4.5-14) Consider the Möbius transformation $w\left(z\right)=\frac{az+b}{cz+d}$ and the matrix $M=\begin{pmatrix}a&b\\c&d\end{pmatrix}$. Prove: a vector $\binom{z_{1}}{z_{2}}\in\mathbb{C}^{2}$ is an eigenvector of $M$ if and only if $\zeta=\frac{z_{1}}{z_{2}}$ is a fixed point of $w$, where if $z_{2}=0$ then $\zeta=\infty$.

### Solution to Problem 4

Let $\binom{z_{1}}{z_{2}}$ be nonzero. If $z_{2}\ne0$, write $\zeta=\frac{z_{1}}{z_{2}}$. $\binom{z_{1}}{z_{2}}$ is an eigenvector of $M$ if and only if there exists $\lambda$ such that

$$
\begin{pmatrix}a&b\\c&d\end{pmatrix}\binom{z_{1}}{z_{2}}=\lambda\binom{z_{1}}{z_{2}},
$$

i.e. $az_{1}+bz_{2}=\lambda z_{1}$ and $cz_{1}+dz_{2}=\lambda z_{2}$. Dividing both equations by $z_{2}$: $a\zeta+b=\lambda\zeta$, $c\zeta+d=\lambda$. Eliminating $\lambda$:

$$
a\zeta+b=\zeta\left(c\zeta+d\right),
$$

i.e. $c\zeta^{2}+\left(d-a\right)\zeta-b=0$, which is exactly the fixed-point equation $w\left(\zeta\right)=\frac{a\zeta+b}{c\zeta+d}=\zeta$. Hence the claim holds when $z_{2}\ne0$.

If $z_{2}=0$, then $\zeta=\infty$ and $z_{1}\ne0$. $M\binom{z_{1}}{0}=\binom{az_{1}}{cz_{1}}$ is a scalar multiple of $\binom{z_{1}}{0}$ if and only if $c=0$. On the other hand, $w\left(\infty\right)=\lim_{z\to\infty}\frac{az+b}{cz+d}=\frac{a}{c}$ (when $c\ne0$) or $\infty$ (when $c=0$), i.e. $w\left(\infty\right)=\infty$ if and only if $c=0$. Hence the claim also holds when $z_{2}=0$. $\blacksquare$

### Problem 5

(Problem 4.5-16) Let $f=u\left(z\right)+iv\left(z\right)$ be holomorphic at $z_{0}\in\mathbb{C}$ and $f'\left(z_{0}\right)\ne0$. Prove: the level sets of $u$ and $v$ (the sets of points at which they take a given constant value) meet at angle $\frac{\pi}{2}$ at $z_{0}$.

### Solution to Problem 5

The tangent lines to the level sets of $u,v$ at $z_{0}$ are respectively perpendicular to the gradients $\nabla u=\left(u_{x},u_{y}\right)$ and $\nabla v=\left(v_{x},v_{y}\right)$. Since $f$ is holomorphic at $z_{0}$, $u,v$ satisfy the Cauchy–Riemann equations $u_{x}=v_{y}$, $u_{y}=-v_{x}$, and thus

$$
\nabla u\cdot\nabla v=u_{x}v_{x}+u_{y}v_{y}=u_{x}\left(-u_{y}\right)+u_{y}u_{x}=0.
$$

Hence $\nabla u\perp\nabla v$; the two gradients are orthogonal, and therefore the tangent lines to the two level sets are also orthogonal, meeting at angle $\frac{\pi}{2}$.

Also, since $f'\left(z_{0}\right)\ne0$, from $f'\left(z_{0}\right)=u_{x}\left(z_{0}\right)+iv_{x}\left(z_{0}\right)$ we see that $\nabla u,\nabla v$ are both nonzero at $z_{0}$, so both level sets have well-defined tangent lines at $z_{0}$. $\blacksquare$
