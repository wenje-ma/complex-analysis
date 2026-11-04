# week7

> **Theorem 4.3.4 (Circles Map to Circles)**
> 
> A Mobius transformation maps generalized circles (circles or lines) in the extended plane to generalized circles, and preserves angles of intersection.

> **Proposition 4.3.7**
> 
> When a Mobius transformation maps the two intersection points to $0$ and $\infty$, two intersecting circles are mapped to two lines through the origin, and the region is mapped to an angular sector.

> **Proposition 5.2.2 (Exponential Map on a Strip)**
> 
> $z\mapsto e^{z}$ maps the horizontal strip $\left\{0< \operatorname{Im}z< 2\pi\right\}$ conformally onto $\mathbb{C}\setminus\left[0,+\infty\right)$.

> **Proposition 5.2.3 (Apollonius Circles)**
> 
> The Mobius transformation

$$
z\mapsto\frac{z-\alpha}{z-\beta}
$$
($\alpha,\beta\in\mathbb{C}$) maps circles not containing $\alpha,\beta$ to circles, and $\left|z-\alpha\right|/\left|z-\beta\right|$ is constant on Apollonius circles.

> **Definition 6.2.4 (Power Function)**
> 
> $z^{\alpha}=e^{\alpha\log z}$ maps the angular sector $\left\{0< \arg z< \beta\right\}$ conformally onto the sector $\left\{0< \arg w< \alpha\beta\right\}$ (with a suitable holomorphic branch).

> **Theorem 8.3.1 (Cauchy Integral Formula)**
> 
> If $f$ is holomorphic on a domain containing a Jordan closed curve $\gamma$ and its interior, and $z$ lies in the interior of $\gamma$, then

$$
f\left(z\right)=\frac{1}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.
$$

> **Theorem 8.3.2 (Higher Derivative Formula)**
> 
> If $f$ is holomorphic on a simply connected domain $D$, $\gamma$ is a piecewise smooth Jordan closed curve in $D$, and $z$ lies in its interior, then $f$ has derivatives of all orders at $z$ and

$$
f^{\left(n\right)}\left(z\right)=\frac{n!}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\left(\zeta-z\right)^{n+1}}\,d\zeta.
$$

> **Theorem 10.1.1 (Maximum Modulus Principle)**
> 
> If the modulus $\left|f\right|$ of a holomorphic function $f$ on a domain $D$ has a local maximum at $z_{0}\in D$, then $f$ is constant on $D$.

> **Theorem 10.3.1 (Schwarz Lemma)**
> 
> If $f:\mathbb{D}\to\mathbb{D}$ is holomorphic with $f\left(0\right)=0$, then $\left|f\left(z\right)\right|\le\left|z\right|$ and $\left|f'\left(0\right)\right|\le1$; equality holds if and only if $f\left(z\right)=e^{i\theta}z$.

> **Definition 10.3.2 (Blaschke Factor)**
> 
> For $a\in\mathbb{D}$, the function

> **Theorem 10.3.4 (Schwarz-Pick Lemma)**
> 
> For holomorphic $f:\mathbb{D}\to\mathbb{D}$,

> **Theorem 11.2.2 (Riemann Mapping Theorem)**
> 
> Every simply connected domain other than the whole plane is conformally equivalent to the open unit disk.

> **Definition 11.2.6 (Mapping Radius)**
> 
> For a simply connected domain $D$ with $\mathbb{C}\setminus D\ne\varnothing$ and $a\in D$, the positive number $\rho$ for which there exists a unique conformal equivalence $f:D\to\mathbb{D}_{\rho}:=\left\{\left|z\right|< \rho\right\}$ with $f\left(a\right)=0$, $f'\left(a\right)=1$, is called the mapping radius of $D$ at $a$, denoted $\rho\left(D,a\right)$.

## 11.3-11

Let $U\subset\mathbb{C}$ be a connected open set, $U\ne\mathbb{C}$, and suppose every holomorphic function on $U$ has an antiderivative. Prove: $U$ is conformally equivalent to the open unit disk.

### Solution to 11.3-11

If every holomorphic function on $U$ has an antiderivative, then the integral around every closed path in $U$ is zero, i.e. $U$ is simply connected (holomorphic functions on simply connected domains have antiderivatives, and conversely existence of antiderivatives implies simple connectivity). Since $U\ne\mathbb{C}$, $U$ is a simply connected domain other than the whole plane. By **Theorem 11.2.2 (Riemann Mapping Theorem)**, $U$ is conformally equivalent to the open unit disk. $\blacksquare$

## 11.3-14

Let $D\subset\mathbb{C}$ be simply connected with $\mathbb{C}\setminus D\ne\varnothing$. Prove:

(i) for every $a\in D$ there is a unique $\rho> 0$ such that there is a unique conformal equivalence $f:D\to\mathbb{D}_{\rho}:=\left\{\left|z\right|< \rho\right\}$ with $f\left(a\right)=0$, $f'\left(a\right)=1$; $\rho$ is the mapping radius $\rho\left(D,a\right)$;

(ii) if $D'\subset D$ is also simply connected, then $\rho\left(D',a\right)\le\rho\left(D,a\right)$ for all $a\in D'$; if equality holds at some $b\in D'$, then $D'=D$;

(iii) if $g:D\to\mathbb{C}$ is univalent holomorphic, then $\rho\left(g\left(D\right),g\left(a\right)\right)=\left|g'\left(a\right)\right|\rho\left(D,a\right)$ for all $a\in D$.

### Solution to 11.3-14

(i) Existence: by **Theorem 11.2.2 (Riemann Mapping Theorem)**, there is a conformal equivalence $F:D\to\mathbb{D}$; adjust by an automorphism so that $F\left(a\right)=0$. Let $c=F'\left(a\right)\ne0$ and set $f\left(z\right)=\frac{F\left(z\right)}{c}$; then $f:D\to\left\{\left|w\right|< \frac{1}{\left|c\right|}\right\}=\mathbb{D}_{\rho}$ ($\rho=\frac{1}{\left|c\right|}$), with $f\left(a\right)=0$, $f'\left(a\right)=1$.

Uniqueness: let $f_{1}:D\to\mathbb{D}_{\rho_{1}}$, $f_{2}:D\to\mathbb{D}_{\rho_{2}}$ both be conformal equivalences with $f_{i}\left(a\right)=0$, $f_{i}'\left(a\right)=1$. Then $h=f_{2}\circ f_{1}^{-1}:\mathbb{D}_{\rho_{1}}\to\mathbb{D}_{\rho_{2}}$ is a conformal equivalence with $h\left(0\right)=0$, $h'\left(0\right)=\frac{f_{2}'\left(a\right)}{f_{1}'\left(a\right)}=1$. Set $\psi\left(w\right)=\frac{\rho_{1}}{\rho_{2}}h\left(\rho_{1}w\right):\mathbb{D}\to\mathbb{D}$; then $\psi\left(0\right)=0$, $\psi'\left(0\right)=\frac{\rho_{1}}{\rho_{2}}$. By **Theorem 10.3.1 (Schwarz Lemma)** $\left|\psi'\left(0\right)\right|\le1$, i.e. $\rho_{1}\le\rho_{2}$; symmetrically $\rho_{2}\le\rho_{1}$, so $\rho_{1}=\rho_{2}$ and $\left|\psi'\left(0\right)\right|=1$. Equality in Schwarz gives $\psi\left(w\right)=e^{i\theta}w$; since $\psi'\left(0\right)=1$, $\theta=0$, $\psi=\text{id}$, $h=\text{id}$, $f_{1}=f_{2}$.

(ii) Write $\rho=\rho\left(D,a\right)$, and take $f:D\to\mathbb{D}_{\rho}$ with $f\left(a\right)=0$, $f'\left(a\right)=1$. Since $D'\subset D$, $f|_{D'}$ is univalent holomorphic. By (i), there is a conformal equivalence $F:D'\to\mathbb{D}_{\rho\left(D',a\right)}$ with $F\left(a\right)=0$, $F'\left(a\right)=1$. If $\rho\left(D',a\right)> \rho$, then $f\circ F^{-1}:\mathbb{D}_{\rho\left(D',a\right)}\to\mathbb{D}_{\rho}$, restricted to $\mathbb{D}_{\rho}$, gives a conformal equivalence $\mathbb{D}_{\rho}\to\mathbb{D}_{\rho}$ with derivative at $0$ equal to $\frac{f'\left(a\right)}{F'\left(a\right)}=1$; by Schwarz it is the identity, so $F^{-1}\left(\mathbb{D}_{\rho}\right)=D'$ and $f\left(D'\right)=\mathbb{D}_{\rho}$, contradicting $f\left(D'\right)\subsetneq\mathbb{D}_{\rho}$ when $D'\subsetneq D$. Hence $\rho\left(D',a\right)\le\rho\left(D,a\right)$. If equality holds at some $b$, the same argument gives $f\left(D'\right)=\mathbb{D}_{\rho}$, i.e. $D'=D$.

(iii) Let $f:D\to\mathbb{D}_{\rho\left(D,a\right)}$ with $f\left(a\right)=0$, $f'\left(a\right)=1$. Since $g$ is univalent, $g\left(D\right)$ is simply connected, and $\widetilde f\left(z\right):=g'\left(a\right)\,f\left(g^{-1}\left(z\right)\right)$ maps $g\left(D\right)$ conformally onto $\mathbb{D}_{\left|g'\left(a\right)\right|\rho\left(D,a\right)}$, with $\widetilde f\left(g\left(a\right)\right)=0$ and $\widetilde f'\left(g\left(a\right)\right)=g'\left(a\right)f'\left(a\right)\cdot\frac{1}{g'\left(a\right)}=1$. By uniqueness in (i), $\rho\left(g\left(D\right),g\left(a\right)\right)\le\left|g'\left(a\right)\right|\rho\left(D,a\right)$. Applying the same argument to $g^{-1}$ gives the reverse inequality, so $\rho\left(g\left(D\right),g\left(a\right)\right)=\left|g'\left(a\right)\right|\rho\left(D,a\right)$. $\blacksquare$

## 11.3-19

Let $D\subset\mathbb{C}$ be simply connected bounded by a Jordan closed curve. Suppose $f,g$ are holomorphic on $D$ with: (i) both extend continuously to $\partial D$; (ii) both are conformal equivalences from $D$ onto some domains; (iii) there are three distinct points $z_{1},z_{2},z_{3}\in\partial D$ with $f\left(z_{j}\right)=g\left(z_{j}\right)$, $j=1,2,3$. Prove $f=g$ on $D$, and give an example showing that three points in (iii) cannot be reduced to two.

### Solution to 11.3-19

Since $f,g$ are conformal equivalences and extend continuously to the boundary, they map $\partial D$ homeomorphically onto $f\left(\partial D\right)$ and $g\left(\partial D\right)$. Consider $h=g\circ f^{-1}:f\left(D\right)\to g\left(D\right)$, a conformal equivalence extending continuously to the boundary of $\overline{f\left(D\right)}$. At the three points $f\left(z_{1}\right),f\left(z_{2}\right),f\left(z_{3}\right)\in f\left(\partial D\right)$,

$$
h\left(f\left(z_{j}\right)\right)=g\left(f^{-1}\left(f\left(z_{j}\right)\right)\right)=g\left(z_{j}\right)=f\left(z_{j}\right),
$$

i.e. $h$ fixes three distinct points on $f\left(\partial D\right)$.

$f\left(D\right)$ is also bounded by a Jordan curve. Take a conformal equivalence $\Psi:f\left(D\right)\to\mathbb{D}$; then $\widetilde h=\Psi\circ h\circ\Psi^{-1}:\mathbb{D}\to\mathbb{D}$ is a holomorphic automorphism equal to the identity at three distinct points $\Psi\left(f\left(z_{1}\right)\right),\Psi\left(f\left(z_{2}\right)\right),\Psi\left(f\left(z_{3}\right)\right)\in\partial\mathbb{D}$. Automorphisms of $\mathbb{D}$ are Mobius transformations, and a Mobius transformation is uniquely determined by three pairs of corresponding points, so $\widetilde h=\text{id}$, hence $h=\text{id}$, $g=f$.

Counterexample (two points do not suffice): take $D=\mathbb{D}$, $f\left(z\right)=z$, $g\left(z\right)=\phi_{a}\left(z\right)=\frac{z-a}{1-az}$ for real $0< a< 1$. Both are automorphisms of $\mathbb{D}$ extending continuously to the boundary. At $z=1$, $\phi_{a}\left(1\right)=1=f\left(1\right)$; at $z=-1$, $\phi_{a}\left(-1\right)=-1=f\left(-1\right)$; so $f,g$ agree at two boundary points, but $f\ne g$ when $a\ne0$. Hence three points cannot be reduced to two. $\blacksquare$

## 12.3-1

Find a conformal equivalence from the region $\left\{0< \operatorname{Im}z< \pi\right\}\setminus\left\{x+\frac{\pi}{2}i:x\le0\right\}$ to the open unit disk.

### Solution to 12.3-1

Write $D=\left\{z:0< \operatorname{Im}z< \pi\right\}\setminus\left\{x+\frac{\pi}{2}i:x\le0\right\}$.

Step 1, $w=e^{z}$: maps the horizontal strip $\left\{0< \operatorname{Im}z< \pi\right\}$ to the upper half-plane $\mathbb{H}=\left\{\operatorname{Im}w> 0\right\}$; the ray $z=x+\frac{\pi}{2}i$ ($x\le0$) maps to $w=e^{x}e^{i\pi/2}=ie^{x}$, $x\le0$, i.e. the vertical segment $\left\{iy:0< y\le1\right\}$. Hence $w=e^{z}$ maps $D$ to $D_{1}:=\mathbb{H}\setminus\left(0,i\right]$.

Step 2, $u=w^{2}$: maps $\mathbb{H}$ to $\mathbb{C}\setminus\left[0,+\infty\right)$, and the segment $\left(0,i\right]$ maps to $\left\{u=-y^{2}:0< y\le1\right\}=\left[-1,0\right)$. Hence $u$ maps $D_{1}$ to $D_{2}:=\mathbb{C}\setminus\left[-1,+\infty\right)$.

Step 3, $t=\sqrt{u+1}$ (principal branch on $\mathbb{C}\setminus\left[0,+\infty\right)$): since $u+1\in\mathbb{C}\setminus\left[0,+\infty\right)$, the principal square root maps $\mathbb{C}\setminus\left[0,+\infty\right)$ to the right half-plane $\left\{\operatorname{Re}t> 0\right\}$.

Step 4, the Mobius map $s\mapsto\frac{s-1}{s+1}$ maps the right half-plane to the open unit disk. In summary,

$$
F\left(z\right)=\frac{\sqrt{e^{2z}+1}-1}{\sqrt{e^{2z}+1}+1},
$$

with the principal branch (by the construction, $e^{2z}+1\in\mathbb{C}\setminus\left[0,+\infty\right)$, so the branch is well defined). $\blacksquare$

## 12.3-2

Find a conformal equivalence from the region bounded by the circles $\left\{\left|z\right|=1\right\}$ and $\left\{\left|z-1\right|=\frac{5}{2}\right\}$ to a standard annulus (with concentric circular boundaries).

### Solution to 12.3-2

The circles $C_{1}:\left|z\right|=1$ and $C_{2}:\left|z-1\right|=\frac{5}{2}$ are disjoint (both centers on the real axis), with $C_{1}$ inside the interior region of $C_{2}$; they bound the region $D=\left\{1< \left|z\right|< 3.5\ \text{\left(annular\right)}\right\}$ (i.e. $\left|z\right|> 1$ and $\left|z-1\right|< 2.5$).

Use the fractional linear map $T\left(z\right)=\frac{z-\alpha}{z-\beta}$ ($\alpha,\beta\in\mathbb{R}$) to map the two circles to concentric circles centered at the origin, i.e. require $\frac{\left|z-\alpha\right|}{\left|z-\beta\right|}$ to be constant $r_{1}$ on $C_{1}$ and $r_{2}$ on $C_{2}$.

On $C_{1}$: $\left|z-\alpha\right|^{2}=r_{1}^{2}\left|z-\beta\right|^{2}$ identically on $\left|z\right|=1$, expanding gives $\alpha=r_{1}^{2}\beta$ and $1+\alpha^{2}=r_{1}^{2}\left(1+\beta^{2}\right)$. On $C_{2}$: $\left|z-\alpha\right|^{2}=r_{2}^{2}\left|z-\beta\right|^{2}$ identically on $\left|z-1\right|=\frac{5}{2}$, expanding gives $1-\alpha=r_{2}^{2}\left(1-\beta\right)$ and $\frac{25}{4}+\left(1-\alpha\right)^{2}=r_{2}^{2}\left(\frac{25}{4}+\left(1-\beta\right)^{2}\right)$. The first pair gives $\alpha\beta=-1$; the second pair, with $\beta=-\frac{1}{\alpha}$, gives $\frac{25}{4}=\left(1-\alpha\right)\left(1-\beta\right)=\frac{1}{\alpha}-\alpha$, i.e.

$$
\alpha^{2}+\frac{25}{4}\alpha-1=0,\quad \alpha=\frac{-25\pm\sqrt{689}}{8}.
$$

Take $\alpha=\frac{-25+\sqrt{689}}{8}$, $\beta=-\frac{1}{\alpha}$. Then $T$ maps $C_{1},C_{2}$ to the concentric circles $\left|w\right|=r_{1}$, $\left|w\right|=r_{2}$, where $r_{1}^{2}=\frac{1+\alpha^{2}}{1+\beta^{2}}$, and $D$ to the annulus $\left\{r_{1}< \left|w\right|< r_{2}\right\}$. After scaling,

$$
F\left(z\right)=\frac{1}{r_{1}}\cdot\frac{z-\alpha}{z-\beta},
$$

maps $D$ to the standard annulus $\left\{1< \left|w\right|< \frac{r_{2}}{r_{1}}\right\}$. $\blacksquare$

## 12.3-3

Find a conformal equivalence from the region $\left\{\operatorname{Re}z> 0\right\}\setminus\left\{\left|z-0.5\right|\le1\right\}$ to the open unit disk.

### Solution to 12.3-3

Write $D=\left\{\operatorname{Re}z> 0\right\}\setminus\left\{\left|z-\frac{1}{2}\right|\le1\right\}$. Its boundary is the imaginary axis and the circle $\left|z-\frac{1}{2}\right|=1$, which intersect at $z=\pm\frac{\sqrt{3}}{2}i$. This is a simply connected region bounded by two generalized circles.

Step 1: use a Mobius map to send the two intersection points to $0$ and $\infty$:

$$
w\left(z\right)=\frac{z-\frac{\sqrt{3}}{2}i}{z+\frac{\sqrt{3}}{2}i}.
$$

By **Proposition 4.3.7**, $w$ maps the two circles to two lines through the origin, and $D$ to an angular sector with vertex at the origin. The angle between the imaginary axis and the circle $\left|z-\frac{1}{2}\right|=1$ at $\frac{\sqrt{3}}{2}i$: the tangent direction of the circle there has angle $\frac{\pi}{6}$ (the radius from center $\frac12$ to the point has direction $\frac{2\pi}{3}$), and the tangent to the imaginary axis has direction $\frac{\pi}{2}$, so the angle is $\frac{\pi}{3}$. Thus $D$ maps to the sector $\left\{0< \arg w< \frac{\pi}{3}\right\}$.

Step 2: the power map $w\mapsto w^{3}$ maps the sector $\left\{0< \arg w< \frac{\pi}{3}\right\}$ to the upper half-plane $\left\{\operatorname{Im}u> 0\right\}$.

Step 3: the Mobius map $u\mapsto\frac{u-i}{u+i}$ maps the upper half-plane to the open unit disk. Hence

$$
F\left(z\right)=\frac{\left(\frac{z-\frac{\sqrt{3}}{2}i}{z+\frac{\sqrt{3}}{2}i}\right)^{3}-i}{\left(\frac{z-\frac{\sqrt{3}}{2}i}{z+\frac{\sqrt{3}}{2}i}\right)^{3}+i}.
$$

$\blacksquare$

## 12.3-4

Find a conformal equivalence between the region $\left\{z\in\mathbb{C}:\operatorname{Re}z> 0\ \text{and}\ \arg z\in\left(0,1\right)\right\}$ and the unit disk.

### Solution to 12.3-4

Since $0< 1< \frac{\pi}{2}$, the condition $\arg z\in\left(0,1\right)$ already implies $\operatorname{Re}z=\rho\cos\arg z> 0$, so the region is the sector

$$
D=\left\{z=\rho e^{i\theta}:\rho> 0,\ 0< \theta< 1\right\}.
$$

Step 1: the power map $z\mapsto z^{\pi}$ (holomorphic branch) maps the sector $\left\{0< \arg z< 1\right\}$ to the sector $\left\{0< \arg u< \pi\right\}$, i.e. the upper half-plane $\left\{\operatorname{Im}u> 0\right\}$.

Step 2: the Mobius map $u\mapsto\frac{u-i}{u+i}$ maps the upper half-plane to the open unit disk. Hence

$$
F\left(z\right)=\frac{z^{\pi}-i}{z^{\pi}+i},
$$

maps $D$ conformally onto the open unit disk. $\blacksquare$

## 13.4-8

Let $D\subset\mathbb{C}$ be the region bounded by Jordan closed curves $\gamma_{1}$ and $\gamma_{2}$, with $\gamma_{1}$ contained in the interior of $\gamma_{2}$, and let $f$ be holomorphic on the closed region $\overline{D}$. Prove:

$$
f\left(z\right)=f_{1}\left(z\right)+f_{2}\left(z\right),\quad\forall z\in D,
$$

where $f_{1}$ is holomorphic on the exterior of $\gamma_{1}$ and $f_{2}$ is holomorphic on the interior of $\gamma_{2}$.

### Solution to 13.4-8

For $z\in D$ (between $\gamma_{1}$ and $\gamma_{2}$), by **Theorem 8.3.1 (Cauchy Integral Formula)** applied to the annulus (both $\gamma_{1},\gamma_{2}$ counterclockwise),

$$
f\left(z\right)=\frac{1}{2\pi i}\int_{\gamma_{2}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta-\frac{1}{2\pi i}\int_{\gamma_{1}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.
$$

Define

$$
f_{2}\left(z\right):=\frac{1}{2\pi i}\int_{\gamma_{2}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta,\quad
f_{1}\left(z\right):=-\frac{1}{2\pi i}\int_{\gamma_{1}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.
$$

For $z$ in the interior of $\gamma_{2}$, the integrand $\frac{f\left(\zeta\right)}{\zeta-z}$ is holomorphic in $z$ inside $\gamma_{2}$ (parameter integral), so $f_{2}$ is holomorphic on the interior of $\gamma_{2}$; similarly $f_{1}$ is holomorphic on the exterior of $\gamma_{1}$. Since $z\in D$ lies both in the interior of $\gamma_{2}$ and the exterior of $\gamma_{1}$, $f\left(z\right)=f_{1}\left(z\right)+f_{2}\left(z\right)$ for all $z\in D$. $\blacksquare$
