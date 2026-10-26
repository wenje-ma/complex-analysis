# Complex Analysis

## The Complex Plane and the Extended Complex Plane

**Definition 1.1.5** (Real Part, Imaginary Part, Conjugate, Modulus)

For $z=x+iy$, $x$ is called the real part, $y$ the imaginary part, denoted $x=\operatorname{Re}z$, $y=\operatorname{Im}z$; the conjugate of $z$ is $\overline{z}=x-iy$; the modulus of $z$ is

$$
\left|z\right|=\sqrt{x^{2}+y^{2}}.
$$

**Definition 1.2.2** (Polar Form of a Complex Number)

The polar form of a complex number $z=x+iy\ne0$ is

$$
z=re^{i\phi},
$$

where $r=\left|z\right|$, $\phi$ is the argument $\operatorname{Arg}z$ (determined up to an integer multiple of $2\pi$), and $e^{i\phi}=\cos\phi+i\sin\phi$.

**Definition 1.3.1** (Stereographic Projection)

On the unit sphere $S:\xi^{2}+\eta^{2}+\zeta^{2}=1$, the point $z=\left(x,y\right)$ of the complex plane corresponds to $Z=\left(\xi,\eta,\zeta\right)$, where

$$
\xi=\frac{2x}{1+\left|z\right|^{2}},\quad\eta=\frac{2y}{1+\left|z\right|^{2}},\quad\zeta=\frac{\left|z\right|^{2}-1}{1+\left|z\right|^{2}},
$$

establishing a one-to-one correspondence between $\mathbb{C}$ and $S\setminus\left\{N\right\}$ (with the north pole removed).

**Definition 1.4.2** (Chordal Metric)

For $z,w\in\mathbb{C}$, the chordal distance is

$$
\rho\left(z,w\right)=\frac{2\left|z-w\right|}{\sqrt{1+\left|z\right|^{2}}\sqrt{1+\left|w\right|^{2}}}.
$$

## Paths, Curves and Domains

**Definition 2.1.2** (Reparametrization of a Path)

A path $\gamma_{1}:\left[a_{1},b_{1}\right]\to\mathbb{C}$ is called a reparametrization of a path $\gamma_{2}:\left[a_{2},b_{2}\right]\to\mathbb{C}$ if there exists a monotonically increasing function $\tau:\left[a_{1},b_{1}\right]\to\left[a_{2},b_{2}\right]$ satisfying $\tau\left(a_{1}\right)=a_{2}$, $\tau\left(b_{1}\right)=b_{2}$, such that for any $t\in\left[a_{1},b_{1}\right]$ one has $\gamma_{1}\left(t\right)=\gamma_{2}\left(\tau\left(t\right)\right)$; if $\tau$ is discontinuous at some point $\overline{t}$, i.e. $\tau\left(\overline{t}-0\right)< \tau\left(\overline{t}+0\right)$, it is further required that $\gamma_{2}$ be constant on the interval $\left[\tau\left(\overline{t}-0\right),\tau\left(\overline{t}+0\right)\right]$.

**Definition 2.1.4** (Curve)

An equivalence class of paths under reparametrization is called a curve.

**Definition 2.2.4** (Domain)

A set $D\subset\mathbb{C}$ (or $\overline{\mathbb{C}}$) is called a domain if it has the following two properties: (i-1) $D$ is open; (i-2) path-connectedness, i.e. for any $a,b\in D$ there exists a path lying in $D$ with endpoints $a,b$.

**Theorem 2.2.6** (Jordan Curve Theorem)

Any Jordan closed curve in the complex plane divides the whole plane into two disjoint domains: a bounded one called its interior and an unbounded one called its exterior.

**Definition 2.2.7** (Simply and Multiply Connectedness)

Let $D$ be a domain in the complex plane $\mathbb{C}$. $D$ is called simply connected if the interior of every Jordan closed curve lying in $D$ is contained in $D$; otherwise it is called multiply connected.

**Definition 2.4.1** (Limit of a Function along a Set)

Let the function $f$ be defined on a set $M\subset\overline{\mathbb{C}}$, and let $a\in\overline{\mathbb{C}}$ be a limit point of $M$. $A\in\mathbb{C}$ is called the limit of $f$ as $z$ tends to $a$ along $M$, denoted $\lim_{z\to a,\ z\in M}f\left(z\right)=A$, if for any $\varepsilon> 0$ there exists $\delta> 0$ such that for any $z\in M$, whenever $0< \rho\left(z,a\right)< \delta$ one has $\rho\left(f\left(z\right),A\right)< \varepsilon$.

**Definition 2.4.2** (Boundedness and Continuity of a Function)

If there exists $C> 0$ such that $\forall z\in M$ one has $\left|f\left(z\right)\right|\le C$, then $f$ is said to be bounded on $M$; if $\lim_{z\to a,\ z\in M}f\left(z\right)=f\left(a\right)$, then $f$ is said to be continuous at the point $a$ (along $M$); if it is continuous at every $\forall a\in M$, then $f$ is said to be continuous on $M$.

## Holomorphy and Differentiability

**Definition 3.1.1** ($\mathbb{R}$-Linear and $\mathbb{C}$-Linear)

A map $\ell:\mathbb{C}\to\mathbb{C}$ is called $\mathbb{R}$-linear (or $\mathbb{C}$-linear) if $\ell\left(a+b\right)=\ell\left(a\right)+\ell\left(b\right)$ and, for $\lambda\in\mathbb{R}$ (or $\mathbb{C}$), $\ell\left(\lambda z\right)=\lambda\ell\left(z\right)$; a $\mathbb{C}$-linear function is necessarily $\mathbb{R}$-linear.

**Theorem 3.1.2** (Form of Linear Functions)

Any $\mathbb{R}$-linear function has the form $\ell\left(z\right)=az+b\overline{z}$, where

$$
a=\frac{\ell\left(1\right)-i\ell\left(i\right)}{2},\quad b=\frac{\ell\left(1\right)+i\ell\left(i\right)}{2};
$$

any $\mathbb{C}$-linear function has the form $\ell\left(z\right)=az$; an $\mathbb{R}$-linear $\ell$ is $\mathbb{C}$-linear if and only if $\ell\left(iz\right)=i\ell\left(z\right)$.

**Definition 3.2.1** (Differentiability)

A map $f:U\to\mathbb{C}$ is called $\mathbb{R}$-differentiable (or $\mathbb{C}$-differentiable) at $z$ if

$$
\Delta f=f\left(z+\Delta z\right)-f\left(z\right)=\ell\left(\Delta z\right)+o\left(\left|\Delta z\right|\right),
$$

where $\ell$ is an $\mathbb{R}$-linear (or $\mathbb{C}$-linear) function; $\ell\left(\Delta z\right)$ is called the real (complex) differential $df\left(z\right)$.

**Definition 3.2.2** (Formal Derivatives)

The formal derivative operators (Wirtinger derivatives) are

$$
\frac{\partial f}{\partial z}=\frac{1}{2}\left(\frac{\partial f}{\partial x}-i\frac{\partial f}{\partial y}\right),\quad\frac{\partial f}{\partial\overline{z}}=\frac{1}{2}\left(\frac{\partial f}{\partial x}+i\frac{\partial f}{\partial y}\right),
$$

and one has $df\left(z\right)=\frac{\partial f}{\partial z}\,dz+\frac{\partial f}{\partial\overline{z}}\,d\overline{z}$.

**Theorem 3.2.4**

$f=u\left(x,y\right)+iv\left(x,y\right)$ is $\mathbb{C}$-differentiable at $z=x+iy$ if and only if $f$ is $\mathbb{R}$-differentiable at $z$ and $\frac{\partial f}{\partial\overline{z}}=0$, which is also equivalent to $u,v$ being differentiable and satisfying the Cauchy–Riemann equations

$$
\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y},\quad\frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}.
$$

**Definition 3.3.1** (Derivability)

$f$ is said to be derivable at $a$ if

$$
\lim_{z\to a}\frac{f\left(z\right)-f\left(a\right)}{z-a}=A
$$

exists, and one writes $A=f'\left(a\right)$.

**Theorem 3.3.3**

$f$ is derivable at $a$ if and only if $f$ is $\mathbb{C}$-differentiable at $a$, in which case $f'\left(a\right)=\frac{\partial f}{\partial z}\left(a\right)$.

## Conformal Mappings and Möbius Transformations

**Definition 4.1.2** (Conformal)

$f$ is said to be conformal at $z$ if $f$ is holomorphic on some neighborhood of $z$, univalent and $f'\left(z\right)\ne0$.

**Theorem 4.1.5**

$f$ is conformal at $z$ if and only if $f$ is $\mathbb{C}$-differentiable at $z$ and $f'\left(z\right)\ne0$.

**Definition 4.2.1** (Möbius Transformation)

A function of the form

$$
f\left(z\right)=\frac{az+b}{cz+d}
$$

(where $a,b,c,d\in\mathbb{C}$ and $ad-bc\ne0$) is called a Möbius transformation (or fractional linear transformation); it is a bijection of the extended complex plane onto itself, and its inverse is also a Möbius transformation.

**Theorem 4.3.4** (Circle-Preserving Property)

A Möbius transformation maps circles in the extended complex plane (generalized circles, i.e. circles or straight lines) to circles in the extended complex plane, and preserves the angle of intersection.

**Definition 4.4.1** (Univalent)

$f$ is said to be univalent on a domain $D$ if $f$ is injective on $D$.

**Theorem 4.4.2**

If $f$ is holomorphic at $z_{0}$ and $f'\left(z_{0}\right)=0$, then $f$ is not univalent on any neighborhood of $z_{0}$.

## The Exponential and Trigonometric Functions

**Proposition 5.3.1**

(i) The exponential function $e^{z}$ is holomorphic on $\mathbb{C}$ and never vanishes; (iv) $e^{z}$ has minimal period $2\pi i$; (v) $e^{z}$ is univalent on a domain if and only if the difference between any two distinct points in that domain is not an integer multiple of $2\pi i$.

**Definition 5.4.1** (Complex Sine and Cosine)

$$
\cos z=\frac{e^{iz}+e^{-iz}}{2},\quad\sin z=\frac{e^{iz}-e^{-iz}}{2i},\quad z\in\mathbb{C}.
$$

**Proposition 5.4.2**

$\sin z,\cos z$ are holomorphic on $\mathbb{C}$, $\left(\sin z\right)'=\cos z$, $\left(\cos z\right)'=-\sin z$.

## Multivalued Functions

**Definition 6.1.1** (Continuous Branch of the Argument Function)

A single-valued continuous function on a domain $D\subset\mathbb{C}\setminus\left\{0\right\}$ is called a continuous branch of $\operatorname{Arg}z$ if $\forall z\in D$ there exists $k\in\mathbb{Z}$ such that $f\left(z\right)=\arg z+2k\pi$.

**Definition 6.2.1** (Complex Logarithm)

A complex number $w$ satisfying $e^{w}=z$ is called a logarithm of $z$, denoted $\operatorname{Ln}z$; it is infinitely multivalued.

**Proposition 6.2.5** (Holomorphic Branches of the Logarithm)

A continuous logarithmic branch on a domain $D\subset\mathbb{C}\setminus\left\{0\right\}$ is necessarily holomorphic; hence a single-valued continuous branch of the logarithm is a holomorphic branch.

**Definition 6.2.7** (Branch Points)

The branch points of the multivalued function $\operatorname{Ln}z$ (or of the power function) are $0$ and $\infty$, and a single-valued branch can be defined along any cut connecting them.

**Definition 6.3.1** (Power Function)

$$
z^{\alpha}=e^{\alpha\operatorname{Ln}z};
$$

on $\mathbb{C}\setminus\left(-\infty,0\right]$ one takes the principal branch, i.e. $z^{\alpha}=e^{\alpha\operatorname{Log}z}$.

## Path Integrals and Primitives

**Definition 7.1.1** (Path Integral)

The integral of $f$ along a piecewise smooth path $\gamma:\left[a,b\right]\to\mathbb{C}$ is

$$
\int_{\gamma}f\,dz=\int_{a}^{b}f\left(\gamma\left(t\right)\right)\gamma'\left(t\right)\,dt.
$$

**Definition 7.2.1** (Primitive)

A holomorphic function $F$ on a domain $D$ is called a primitive of $f$ if $F'=f$ on $D$; $f$ has a primitive if and only if the integral of $f$ along any closed path in $D$ is zero.

**Theorem 7.2.3**

$\frac{1}{z}$ has a primitive on a domain $D\subset\mathbb{C}\setminus\left\{0\right\}$ if and only if there exists a holomorphic branch of $\operatorname{Ln}z$ on $D$; in particular, every holomorphic function on a simply connected domain has a primitive, and

$$
\int_{\gamma}f\,dz=F\left(\gamma\left(b\right)\right)-F\left(\gamma\left(a\right)\right).
$$

## Cauchy's Theorem and the Integral Formula

**Theorem 8.1.4** (Cauchy's Theorem)

If $f$ is holomorphic on a domain $D$ and $\gamma_{0},\gamma_{1}$ are homotopic paths in $D$ with the same endpoints (or homotopic closed paths), then $\int_{\gamma_{0}}f\,dz=\int_{\gamma_{1}}f\,dz$; in particular, the integral of $f$ along any closed path in $D$ is zero.

**Theorem 8.3.1** (Cauchy Integral Formula)

If $f$ is holomorphic on a simply connected domain $D$, $\gamma$ is a piecewise smooth Jordan closed curve in $D$, and $z$ lies in its interior, then

$$
f\left(z\right)=\frac{1}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.
$$

**Theorem 8.3.2** (Higher-Order Derivative Formula)

$$
f^{\left(n\right)}\left(z\right)=\frac{n!}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\left(\zeta-z\right)^{n+1}}\,d\zeta,\quad n\ge1.
$$

## Fundamental Theorems of Holomorphic Functions

**Theorem 5.1.2** (Fundamental Theorem of Algebra)

Any polynomial of degree $n\ge1$ has at least one root in the complex field $\mathbb{C}$.

**Theorem 9.1.3** (Liouville)

Every bounded entire function on $\mathbb{C}$ must be constant.

**Theorem 9.3.2** (Identity Theorem)

If the zeros of a holomorphic function $f$ on a domain $D$ have an accumulation point in $D$, then $f\equiv0$.

**Theorem 9.3.3** (Uniqueness Theorem)

If two holomorphic functions $f,g$ on a domain $D$ agree on a set that has an accumulation point in $D$, then $f\equiv g$.

**Theorem 10.1.4** (Open Mapping Theorem)

A nonconstant holomorphic function maps domains onto domains (open sets).

**Theorem 10.2.4**

If $f$ is holomorphic and univalent on an open set $\Omega$, then $f\left(\Omega\right)$ is open and $f^{-1}$ is holomorphic on $f\left(\Omega\right)$.

## The Maximum Modulus Principle and Schwarz's Lemma

**Theorem 10.1.1** (Maximum Modulus Principle)

If the modulus $\left|f\right|$ of a holomorphic function $f$ on a domain $D$ has a local maximum at $z_{0}\in D$, then $f$ is constant on $D$; in particular, the maximum of $\left|f\right|$ on a compact closed domain is attained on the boundary.

**Theorem 10.3.1** (Schwarz's Lemma)

If $f:\mathbb{D}\to\mathbb{D}$ is holomorphic and $f\left(0\right)=0$, then $\left|f\left(z\right)\right|\le\left|z\right|$ and $\left|f'\left(0\right)\right|\le1$; equality holds at some point (or $\left|f'\left(0\right)\right|=1$) if and only if

$$
f\left(z\right)=e^{i\theta}z.
$$

**Definition 10.3.2** (Blaschke Factor)

For $a\in\mathbb{D}$, the function

$$
\phi_{a}\left(z\right)=\frac{z-a}{1-\overline{a}z}
$$

is called a Blaschke factor; it is an automorphism of $\mathbb{D}$ satisfying $\left|\phi_{a}\left(e^{i\theta}\right)\right|=1$ and $\phi_{a}\left(a\right)=0$.

**Theorem 10.3.4** (Schwarz–Pick)

For a holomorphic $f$ on $\mathbb{D}\to\mathbb{D}$,

$$
\left|\frac{f\left(z\right)-f\left(w\right)}{1-\overline{f\left(w\right)}f\left(z\right)}\right|\le\left|\frac{z-w}{1-\overline{w}z}\right|;
$$

the differential form is

$$
\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\le\frac{1}{1-\left|z\right|^{2}},
$$

with equality if and only if $f\in\operatorname{auto}\left(\mathbb{D}\right)$.

## Normal Convergence and the Riemann Mapping Theorem

**Definition 11.1.1** (Normal Convergence)

A sequence of holomorphic functions $\left\{f_{n}\right\}$ is said to converge normally on a domain $\Omega$ to $f$ if it converges uniformly to $f$ on every compact subset of $\Omega$.

**Theorem 11.1.2**

If $\left\{f_{n}\right\}$ converges normally on $\Omega$ to a continuous function $f$, then $f$ is holomorphic on $\Omega$.

**Theorem 11.1.3** (Montel)

If a sequence of holomorphic functions $\left\{f_{n}\right\}$ is uniformly bounded on every compact subset of a domain $D$, then there exists a subsequence that converges normally on $D$.

**Theorem 11.2.2** (Riemann Mapping Theorem)

Any simply connected domain that is not the whole plane is conformally equivalent to the open unit disk.

**Definition 11.2.6** (Mapping Radius)

For a simply connected domain $D$ with $\mathbb{C}\setminus D\ne\varnothing$ and a point $a\in D$, the positive number $\rho$ for which there exists a unique conformal equivalence $f:D\to\mathbb{D}_{\rho}:=\left\{\left|z\right|< \rho\right\}$ with $f\left(a\right)=0$, $f'\left(a\right)=1$ is called the mapping radius $\rho\left(D,a\right)$ of $D$ relative to $a$.

## Conformal Mappings onto Standard Domains

**Proposition 5.2.2** (The Exponential Map on a Strip)

$z\mapsto e^{z}$ maps the horizontal strip $\left\{0< \operatorname{Im}z< 2\pi\right\}$ conformally onto $\mathbb{C}\setminus\left[0,+\infty\right)$.

**Proposition 5.2.3**

The Möbius transformation $z\mapsto\frac{z-\alpha}{z-\beta}$ ($\alpha,\beta\in\mathbb{C}$) maps circles not passing through $\alpha,\beta$ to circles, and $\left|z-\alpha\right|/\left|z-\beta\right|$ is constant on the Apollonius circles.

**Proposition 4.3.7**

When a Möbius transformation maps two intersection points to $0$ and $\infty$, two intersecting circles are mapped to two straight lines through the origin, and the region is mapped to an angular sector.

**Definition 6.2.4** (Power Function)

$z^{\alpha}=e^{\alpha\log z}$ maps the angular sector $\left\{0< \arg z< \beta\right\}$ conformally onto the angular sector $\left\{0< \arg w< \alpha\beta\right\}$ (taking a suitable holomorphic branch).

## Laurent Series and Isolated Singularities

**Definition 13.1.3** (Laurent Series)

The Laurent series of $f$ on the annulus $A\left(a;r;R\right)$ is

$$
\sum_{n=-\infty}^{+\infty}c_{n}\left(z-a\right)^{n},
$$

where the regular part is $\sum_{n\ge0}c_{n}\left(z-a\right)^{n}$ and the principal part is $\sum_{n< 0}c_{n}\left(z-a\right)^{n}$.

**Definition 13.2.2** (Classification of Isolated Singularities)

$a$ is a removable singularity of $f$ if all coefficients of the principal part are $0$; it is a pole of order $m$ if $c_{-m}\ne0$ and $c_{n}=0$ for $n< -m$; it is an essential singularity if the principal part has infinitely many terms.

**Theorem 13.2.4** (Riemann)

$a$ is a removable singularity of $f$ if and only if $f$ is bounded on a punctured neighborhood of $a$.

**Theorem 13.2.5**

$a$ is a removable singularity of $f$ if and only if $\lim_{z\to a}f\left(z\right)$ exists and is finite.

## Residues and the Residue Theorem

**Definition 14.1.1** (Residue)

The residue of $f$ at an isolated singularity $a$, denoted $\operatorname{Res}_{a}f$, equals the coefficient $c_{-1}$ of the $\frac{1}{z-a}$ term in its Laurent expansion.

**Theorem 14.1.3** (Residue Theorem)

If $f$ is holomorphic on a domain $D$ except at finitely many isolated singularities, and $\gamma$ is a Jordan closed curve in $D$ with all these singularities lying inside $\gamma$, then

$$
\int_{\gamma}f\,dz=2\pi i\sum\operatorname{Res}f.
$$

**Formula for the Sum of Residues**

The sum of all finite residues of a meromorphic function $f$ on the whole complex plane together with the residue at $\infty$ is zero, and

$$
\operatorname{Res}_{\infty}f=-\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right).
$$

## Entire Functions, Meromorphic Functions and the Argument Principle

**Definition 15.1.1**

A function holomorphic everywhere on the complex plane $\mathbb{C}$ is called an entire function; a function holomorphic everywhere except at poles is called a meromorphic function.

**Theorem 15.2.7** (Argument Principle)

If $f$ is meromorphic on a domain $D$, the zeros $a_{j}$ have orders $r_{j}$, the poles $p_{k}$ have orders $s_{k}$, and $\Gamma$ is a Jordan closed curve in $D$ avoiding these points, then

$$
\frac{1}{2\pi i}\int_{\Gamma}\frac{f'}{f}\,dz=\sum r_{j}-\sum s_{k}.
$$

## Harmonic Functions and the Dirichlet Problem

**Definition 16.1.1** (Harmonic Function)

A real-valued $C^{2}$ function $u$ on a domain $D$ is called harmonic if $\Delta u=u_{xx}+u_{yy}=0$ on $D$.

**Proposition 16.1.6** (Mean Value Property)

For a harmonic function $u$ on $B\left(a,R\right)$,

$$
u\left(a\right)=\frac{1}{2\pi}\int_{0}^{2\pi}u\left(a+Re^{i\theta}\right)d\theta.
$$

**Theorem 16.2.9** (Poisson Integral)

The Dirichlet problem on the disk $B\left(a,R\right)$ has the solution

$$
u\left(z\right)=\frac{R^{2}-\left|z-a\right|^{2}}{2\pi R}\int_{0}^{2\pi}\frac{f\left(a+Re^{i\theta}\right)}{\left|z-a-Re^{i\theta}\right|^{2}}d\theta.
$$

**Theorem 16.2.10**

The Dirichlet problem on a bounded Jordan domain is solvable.

## Holomorphic Continuation

**Definition 17.2.1** (Function Element)

$\left(f,U\right)$ is called a function element if $U$ is a nonempty open set of $\mathbb{C}$ and $f$ is holomorphic on $U$.

**Definition 17.2.2** (Direct Holomorphic Continuation)

The function element $\left(f_{1},U_{1}\right)$ is a direct holomorphic continuation of $\left(f_{0},U_{0}\right)$ if $U_{0}\cap U_{1}\ne\emptyset$ and $f_{0}=f_{1}$ on $U_{0}\cap U_{1}$.

**Definition 17.2.3** (Holomorphic Continuation)

$\left(f_{0},U_{0}\right)$ is holomorphically continued along a path $\gamma$ to $\left(f_{1},U_{1}\right)$ if there exists a family of function elements $\left(f_{t},U_{t}\right)_{t\in\left[0,1\right]}$ such that each step is a direct continuation and $f_{0},f_{1}$ are the initial and terminal elements.

**Theorem 17.3.6** (Monodromy Theorem)

If $D$ is a simply connected domain and $\left(f,U\right)$ can be holomorphically continued along every path in $D$, then $f$ extends to a single-valued holomorphic function on $D$.

## Schwarz's Symmetry Principle

**Lemma 18.1.1** (Gluing Lemma)

Let the domains $D_{1},D_{2}$ be disjoint and share a common boundary segment $\gamma$, and let $f_{1},f_{2}$ be holomorphic on them respectively and continuous up to $\gamma$. If $f_{1}=f_{2}$ on $\gamma$, then the glued function is holomorphic on $D_{1}\cup\gamma\cup D_{2}$.

**Theorem 18.1.2** (Schwarz Symmetry Principle I)

If $D$ is symmetric about the real axis, $f$ is holomorphic on $D^{+}:=D\cap\left\{\operatorname{Im}z> 0\right\}$, continuous up to $D^{+}\cap\mathbb{R}$ and real-valued there, then $f$ extends to a holomorphic function on $D$.

**Theorem 18.1.3** (Schwarz Symmetry Principle II)

If $f$ is holomorphic on $D^{+}$, continuous up to the boundary segment $I\subset\mathbb{R}$ and real-valued there, then $f$ extends to $D^{+}\cup I\cup D^{-}$, where $D^{-}$ is the reflection of $D^{+}$ about the real axis, and the extension satisfies $f\left(z\right)=\overline{f\left(\overline z\right)}$.

## The Gamma Function

**Definition 19.1.1** (Gamma Function)

$$
\Gamma\left(s\right)=\int_{0}^{+\infty}e^{-t}t^{s-1}dt,\quad s> 0.
$$

**Proposition 19.1.3**

If $\operatorname{Re}z> 0$, then $\Gamma\left(z+1\right)=z\Gamma\left(z\right)$; it can be extended to a meromorphic function on $\mathbb{C}$ with simple poles only at $0,-1,-2,\ldots$.

**Theorem 19.2.1** (Reflection Formula)

$$
\Gamma\left(z\right)\Gamma\left(1-z\right)=\frac{\pi}{\sin\pi z},\quad z\in\mathbb{C}\setminus\mathbb{Z}.
$$

**Theorem 19.2.3** (Weierstrass)

$$
\frac{1}{\Gamma\left(z\right)}=ze^{\gamma z}\prod_{n=1}^{+\infty}\left(1+\frac{z}{n}\right)e^{-\frac{z}{n}}.
$$

**Theorem 19.2.4** (Euler–Gauss)

$$
\Gamma\left(z\right)=\lim_{n\to+\infty}\frac{n!\,n^{z}}{z\left(z+1\right)\cdots\left(z+n\right)}.
$$

## The Riemann Zeta Function

**Definition 20.1.1** (Riemann $\zeta$-Function)

$$
\zeta\left(z\right)=\sum_{n=1}^{+\infty}\frac1{n^{z}},\quad\operatorname{Re}z> 1;
$$

by the Euler product

$$
\zeta\left(z\right)=\prod_{p}\left(1-p^{-z}\right)^{-1}
$$

it has no zeros.

**Theorem 20.1.6** (Meromorphic Continuation)

$\zeta$ extends meromorphically to $\mathbb{C}$ with a simple pole only at $z=1$, and

$$
\lim_{z\to1}\left(\zeta\left(z\right)-\frac1{z-1}\right)=\gamma
$$

(Euler's constant).

**Theorem 20.2.2** (Functional Equation)

$$
\zeta\left(z\right)=2^{z}\pi^{z-1}\sin\frac{\pi z}{2}\,\Gamma\left(1-z\right)\zeta\left(1-z\right).
$$

**Corollary 20.2.3**

The trivial zeros of $\zeta$ are exactly $-2,-4,-6,\ldots$; all nontrivial zeros lie in the critical strip $0< \operatorname{Re}z< 1$.

## Picard's Theorems

**Theorem 21.1.3** (Bloch)

There exists a constant $B> 0$: if $f$ is holomorphic on the unit disk and $f'\left(0\right)=1$, then $f\left(\mathbb{D}\right)$ contains a disk of radius at least $B$.

**Theorem 21.2.3** (Picard's Little Theorem)

A nonconstant entire function takes every value in $\mathbb{C}$ or every value except one.

**Theorem 21.2.4** (Picard's Little Theorem, Meromorphic Form)

A nonconstant meromorphic function omits at most two values.

**Theorem 21.4** (Picard's Great Theorem)

A holomorphic function takes every value infinitely often in any punctured neighborhood of an essential singularity (omitting at most one value).

## Normal Families

**Definition 22.1.5** (Normal Family)

A family $\mathcal{F}$ of meromorphic functions on a domain $D$ is called normal on $D$ if every sequence in $\mathcal{F}$ has a convergent subsequence in $\mathfrak{C}\left(D,\widehat{\mathbb{C}}\right)$ (converging uniformly on compact subsets of $D$ with respect to the chordal metric to a meromorphic function or to $\infty$).

**Theorem 22.1.7** (Marty)

$\mathcal{F}$ is normal on $D$ if and only if for every compact subset $K$ of $D$, the spherical derivative

$$
f^{\#}\left(z\right)=\frac{2\left|f'\left(z\right)\right|}{1+\left|f\left(z\right)\right|^{2}}
$$

is uniformly bounded on $K$ (for $f\in\mathcal{F}$).

**Theorem 22.2.1** (Zalcman)

$\mathcal{F}$ is not normal if and only if there exist $f_{n}\in\mathcal{F}$, $z_{n}\to z_{0}\in D$, $\rho_{n}\to0^{+}$ such that $g_{n}\left(w\right):=f_{n}\left(z_{n}+\rho_{n}w\right)$ converges normally to a nonconstant entire or meromorphic function.

**Theorem 22.2.3** (Montel)

A family of meromorphic functions on a domain $D$ that uniformly omits three distinct values (points in the extended complex plane) is normal.
