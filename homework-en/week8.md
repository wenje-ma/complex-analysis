# week8

> **Theorem 8.3.1 (Cauchy Integral Formula)**
> 
> If $f$ is holomorphic on a domain containing a Jordan closed curve $\gamma$ and its interior, and $z$ lies in the interior of $\gamma$, then

> **Theorem 8.3.2 (Higher Derivative Formula)**
> 
> If $f$ is holomorphic on a simply connected domain $D$, $\gamma$ is a piecewise smooth Jordan closed curve in $D$, and $z$ lies in its interior, then $f$ has derivatives of all orders at $z$ and

> **Theorem 10.1.1 (Maximum Modulus Principle)**
> 
> If the modulus $\left|f\right|$ of a holomorphic function $f$ on a domain $D$ has a local maximum at $z_{0}\in D$, then $f$ is constant on $D$.

> **Definition 13.1.3 (Laurent Series)**
> 
> The Laurent series of $f$ on the annulus $A\left(a;r;R\right)$ is

$$
\sum_{n=-\infty}^{+\infty}c_{n}\left(z-a\right)^{n},
$$
with regular part $\sum_{n\ge0}c_{n}\left(z-a\right)^{n}$ and principal part $\sum_{n< 0}c_{n}\left(z-a\right)^{n}$.

> **Definition 13.2.2 (Classification of Isolated Singularities)**
> 
> $a$ is a removable singularity of $f$ if all principal-part coefficients vanish; a pole of order $m$ if $c_{-m}\ne0$ and $c_{n}=0$ for $n< -m$; an essential singularity if the principal part has infinitely many terms.

> **Theorem 13.2.4 (Riemann's Removable Singularity Theorem)**
> 
> $a$ is a removable singularity of $f$ if and only if $f$ is bounded on a punctured neighborhood of $a$.

> **Theorem 13.2.5**
> 
> $a$ is a removable singularity of $f$ if and only if $\lim_{z\to a}f\left(z\right)$ exists and is finite.

$$
\operatorname{Res}_{\infty}f=-\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right).
$$

> **Definition 14.1.1 (Residue)**
> 
> The residue $\operatorname{Res}_{a}f$ of $f$ at an isolated singularity $a$ is the coefficient $c_{-1}$ of the $\frac{1}{z-a}$ term in its Laurent expansion.

$$
f\left(a\right)=\frac{1}{2\pi i}\oint_{\left|z-a\right|=r}\frac{f\left(z\right)}{z-a}\,dz.
$$
$$
\int_{0}^{+\infty}\frac{x^{\alpha-1}}{x^{2}+a^{2}}\,dx=\frac{\pi a^{\alpha-2}}{2\sin\frac{\pi\alpha}{2}}.
$$

> **Theorem 14.1.3 (Residue Theorem)**
> 
> If $f$ is holomorphic on a domain $D$ except at finitely many isolated singularities, and $\gamma$ is a Jordan closed curve in $D$ enclosing all these singularities, then

$$
\int_{\gamma}f\,dz=2\pi i\sum\operatorname{Res}f.
$$

$$
\int_{\gamma}f\,dz=2\pi i\sum\operatorname{Res}f.
$$

## 13.4-18

Let $f$ be holomorphic on a domain $D$, let $\gamma$ be a Jordan closed curve in $D$ whose interior is entirely contained in $D$. Prove: for every point $z$ in the interior of $\gamma$, there is a point $w$ on $\gamma$ such that

$$
\left|\frac{f\left(z\right)-f\left(w\right)}{z-w}\right|\ge\left|f'\left(z\right)\right|.
$$

### Solution to 13.4-18

Let $G$ be the interior of $\gamma$, and fix $z\in G$. Define

$$
g\left(w\right)=\frac{f\left(w\right)-f\left(z\right)}{w-z},\quad w\in G\setminus\left\{z\right\}.
$$

Since $f$ is holomorphic on $G$, $z$ is a removable singularity of $g$ with $g\left(z\right)=f'\left(z\right)$; hence $g$ is holomorphic on $\overline{G}$ (continuously extended to $\partial G=\gamma$).

By **Theorem 10.1.1 (Maximum Modulus Principle)**, the maximum of $\left|g\right|$ on the compact closed region $\overline{G}$ is attained on the boundary $\gamma$; in particular,

$$
\left|g\left(z\right)\right|=\left|f'\left(z\right)\right|\le\max_{w\in\gamma}\left|g\left(w\right)\right|=\max_{w\in\gamma}\left|\frac{f\left(w\right)-f\left(z\right)}{w-z}\right|.
$$

Therefore there exists $w\in\gamma$ such that

$$
\left|\frac{f\left(w\right)-f\left(z\right)}{w-z}\right|\ge\left|f'\left(z\right)\right|,
$$

i.e. $\left|\frac{f\left(z\right)-f\left(w\right)}{z-w}\right|\ge\left|f'\left(z\right)\right|$. $\blacksquare$

## 13.4-1

Let $f$ be holomorphic on $\mathbb{C}\setminus\left\{0\right\}$ with $\left|f\left(z\right)\right|\le\frac{\left|z\right|+1}{\left|z\right|}$ for all $z\in\mathbb{C}\setminus\left\{0\right\}$. Prove: $f$ is constant.

### Solution to 13.4-1

From $\left|f\left(z\right)\right|\le1+\frac{1}{\left|z\right|}$, as $z\to0$, $\left|zf\left(z\right)\right|\le\left|z\right|+1\to1$, so $zf\left(z\right)$ is bounded on a punctured neighborhood of $0$. By **Theorem 13.2.4 (Riemann's Removable Singularity Theorem)**, $0$ is a removable singularity of $zf\left(z\right)$, so $f$ has at most a simple pole at $0$; moreover $\left|f\left(z\right)\right|\le1+\frac{1}{\left|z\right|}$ near $0$ gives $\left|f\left(z\right)\right|\le\frac{C}{\left|z\right|}$, and since $0$ is an isolated singularity of $f$, $f$ is removable at $0$, extending to an entire function.

Thus $f$ is entire with $\left|f\left(z\right)\right|\le1+\frac{1}{\left|z\right|}\le2$ for $\left|z\right|\ge1$, i.e. $f$ is bounded. By Liouville's theorem, $f$ is constant. $\blacksquare$

## 13.4-2

Find the finite isolated singularities of the following functions and classify them: (i) $\frac{1-\cos z}{\sin^{2}z}$; (ii) $e^{\cot\frac{\pi}{z}}$; (iii) $\frac{z+1}{\sin^{2}\left(\pi z\right)}$; (iv) $\frac{z}{1-\cos z}$.

### Solution to 13.4-2

(i) The zeros of $\sin z$ are $z=k\pi$ ($k\in\mathbb{Z}$). At $z=2m\pi$, both $1-\cos z$ and $\sin^{2}z$ have second-order zeros, so the ratio is finite; removable (limit $\frac12$). At $z=\left(2m+1\right)\pi$, $1-\cos z\ne0$ while $\sin^{2}z$ has a second-order zero; pole of order $2$.

(ii) The poles of $\cot\frac{\pi}{z}$ occur at $\frac{\pi}{z}=k\pi$, i.e. $z=\frac{1}{k}$, $k\in\mathbb{Z}\setminus\left\{0\right\}$. At $z=\frac1k$, $\cot\frac{\pi}{z}$ has a simple pole, so $e^{\cot\frac{\pi}{z}}$ has an essential singularity there (type $e^{1/\left(z-a\right)}$). $z=0$ is an accumulation point, not isolated. Hence the finite isolated singularities are $z=\frac1k$ ($k\ne0$), all essential.

(iii) $\sin^{2}\left(\pi z\right)$ has second-order zeros at $z=n$ ($n\in\mathbb{Z}$). For $n\ne-1$, $z+1\ne0$, so $z=n$ is a pole of order $2$; for $n=-1$, $z+1$ has a simple zero, which cancels one order, so $z=-1$ is a simple pole.

(iv) The zeros of $1-\cos z$ are $z=2m\pi$ (second order). At $z=0$, the numerator $z$ has a simple zero, so $z=0$ is a simple pole; for $m\ne0$, $z=2m\pi\ne0$, numerator nonzero, so pole of order $2$. $\blacksquare$

## 13.4-3

Let $f$ be holomorphic on $\mathbb{C}\setminus\left\{0\right\}$. Is it possible that $\left|f\left(z\right)\right|> e^{\frac{1}{\left|z\right|}}$ for all $z\in\mathbb{C}\setminus\left\{0\right\}$? Explain.

### Solution to 13.4-3

No. If $\left|f\left(z\right)\right|> e^{1/\left|z\right|}$ for all $z\ne0$, then as $z\to0$, $\left|f\left(z\right)\right|\to+\infty$, so $0$ is a pole of $f$, say of order $m$. By **Definition 13.2.2 (Classification of Isolated Singularities)**, near $0$, $\left|f\left(z\right)\right|\sim\frac{C}{\left|z\right|^{m}}$. But $e^{1/\left|z\right|}$ grows faster than any power $\frac{1}{\left|z\right|^{m}}$ (since $\frac{e^{1/\left|z\right|}}{1/\left|z\right|^{m}}\to+\infty$), so for sufficiently small $\left|z\right|$, $\left|f\left(z\right)\right|\le\frac{2C}{\left|z\right|^{m}}< e^{1/\left|z\right|}$, contradicting $\left|f\left(z\right)\right|> e^{1/\left|z\right|}$. Hence the inequality is impossible. $\blacksquare$

## 13.4-4

Determine whether the following have an isolated singularity at $\infty$ and classify it: (i) $e^{\sin\frac{1}{z}}$; (ii) $\frac{1}{1+z^{6}}$; (iii) $z^{7}$; (iv) $\frac{\cos z}{1+z^{2}}$.

### Solution to 13.4-4

(i) As $z\to\infty$, $\frac1z\to0$, $\sin\frac1z\to0$, $e^{\sin\frac1z}\to1$. Hence $\infty$ is a removable singularity of $e^{\sin\frac1z}$ (finite limit).

(ii) $\frac{1}{1+z^{6}}$: as $z\to\infty$, it tends to $0$. Let $w=\frac1z$; $\frac{1}{1+z^{6}}=\frac{w^{6}}{w^{6}+1}$ has a zero of order $6$ at $w=0$, so $\infty$ is a removable singularity of $\frac{1}{1+z^{6}}$ (value $0$, zero of order $6$).

(iii) $z^{7}$: as $z\to\infty$, $z^{7}\to\infty$; the Laurent principal part is $z^{7}$, so $\infty$ is a pole of order $7$ of $z^{7}$.

(iv) $\frac{\cos z}{1+z^{2}}$: as $z\to\infty$, $\cos z$ oscillates and does not converge, while $\frac{1}{1+z^{2}}\to0$; hence $\lim_{z\to\infty}\frac{\cos z}{1+z^{2}}$ does not exist (finite or infinite), so $\infty$ is an essential singularity. $\blacksquare$

## 13.4-10

Let $\Omega=G\setminus\left\{a,b\right\}$, where $G$ is a bounded simply connected domain, $a,b\in G$, $a\ne b$. How many holomorphic automorphisms of $\Omega$ are there?

### Solution to 13.4-10

Let $\varphi\in\operatorname{Aut}\left(\Omega\right)$. Since $G$ is bounded, $\varphi$ is bounded on $\Omega$; by **Theorem 13.2.4 (Riemann's Removable Singularity Theorem)**, $\varphi$ has removable singularities at $a,b$, extending to a holomorphic function on $G$. Since $\varphi$ is biholomorphic from $\Omega$ to itself, after extension $\varphi$ maps $G$ to $G$ and maps $\left\{a,b\right\}$ to itself; hence $\varphi\in\operatorname{Aut}\left(G\right)$ with $\varphi\left(\left\{a,b\right\}\right)=\left\{a,b\right\}$.

$G$ is bounded, simply connected, and not $\mathbb{C}$; by the Riemann mapping theorem, $G\cong\mathbb{D}$, so $\operatorname{Aut}\left(G\right)\cong\operatorname{Aut}\left(\mathbb{D}\right)$. Let $p,q$ be the images of $a,b$ under the map to $\mathbb{D}$. Elements of $\operatorname{Aut}\left(\mathbb{D}\right)$ mapping $\left\{p,q\right\}$ to itself either fix $p,q$ pointwise or swap them. An automorphism of $\mathbb{D}$ fixing two distinct interior points is the identity; there is exactly one involution swapping $p$ and $q$. Hence there are exactly $2$ holomorphic automorphisms of $\Omega$ onto itself. $\blacksquare$

## 13.4-12

Let $a\in\mathbb{C}$ be an essential singularity of $f$. Prove: $\lim_{\varepsilon\to0}\varepsilon^{n}\max\left\{\left|f\left(z\right)\right|:\ \left|z-a\right|=\varepsilon\right\}=+\infty$ for all $n\in\mathbb{N}$.

### Solution to 13.4-12

Write $M\left(\varepsilon\right):=\max_{\left|z-a\right|=\varepsilon}\left|f\left(z\right)\right|$. Suppose for contradiction that for some $n\in\mathbb{N}$, $\varepsilon^{n}M\left(\varepsilon\right)$ is bounded above, i.e. there is $C> 0$ with $\varepsilon^{n}M\left(\varepsilon\right)\le C$; then

$$
\left|f\left(z\right)\right|\le\frac{C}{\left|z-a\right|^{n}},\quad 0< \left|z-a\right|\ \text{sufficiently small}.
$$

Thus $\left(z-a\right)^{n}f\left(z\right)$ is bounded on a punctured neighborhood of $a$; by **Theorem 13.2.4 (Riemann's Removable Singularity Theorem)**, $0$ is a removable singularity of $\left(z-a\right)^{n}f$, so $f$ has at most a pole of order $n$ at $a$, contradicting that $a$ is essential. Hence for every $n\in\mathbb{N}$, $\varepsilon^{n}M\left(\varepsilon\right)$ is unbounded, and by monotonicity in $\varepsilon$, $\lim_{\varepsilon\to0}\varepsilon^{n}M\left(\varepsilon\right)=+\infty$. $\blacksquare$

## 13.4-17

A set $\mathcal{E}\subset\mathbb{C}$ is said to have Hausdorff length zero if for every $\varepsilon> 0$ there is a countable open cover by open disks whose radii sum to at most $\varepsilon$. Let $G\subset\mathbb{C}$ be a domain, $\mathcal{E}\subset G$ a compact set of Hausdorff length zero, and $f$ holomorphic on the open set $G\setminus\mathcal{E}$. Suppose there is $M> 0$ with $\left|f\left(z\right)\right|\le M$ for all $z\in G\setminus\mathcal{E}$. Prove: there exists a holomorphic $g$ on $G$ with $g\left(z\right)=f\left(z\right)$ for all $z\in G\setminus\mathcal{E}$.

### Solution to 13.4-17

A compact set $\mathcal{E}$ of Hausdorff length zero has two-dimensional Lebesgue measure zero. Take any $z_{0}\in\mathcal{E}$ and $r> 0$ with $\overline{B\left(z_{0},r\right)}\subset G$. Since $\mathcal{E}$ has area zero, the circle $\left|w-z_{0}\right|=r$ can be chosen disjoint from $\mathcal{E}$ (otherwise $\mathcal{E}$ could be covered by open disks of arbitrarily small total radius and area, which would also be arbitrarily small). For $z\in B\left(z_{0},r\right)\setminus\mathcal{E}$, by the Cauchy integral formula

$$
f\left(z\right)=\frac{1}{2\pi i}\oint_{\left|w-z_{0}\right|=r}\frac{f\left(w\right)}{w-z}\,dw.
$$

The right-hand side defines a holomorphic function for every $z\in B\left(z_{0},r\right)$ (the integrand $w\mapsto\frac{f\left(w\right)}{w-z}$ is continuous on the circle, $\left|f\right|\le M$); call it $g_{0}$. When $z\in B\left(z_{0},r\right)\setminus\mathcal{E}$, $g_{0}\left(z\right)=f\left(z\right)$, so $g_{0}$ is an analytic continuation of $f$ near $z_{0}$; in particular $f$ is removable at $z_{0}$.

Continuing for every $z_{0}\in\mathcal{E}$ and gluing with the original $f$ on $G\setminus\mathcal{E}$ by uniqueness of analytic continuation yields a holomorphic function $g$ on $G$ with $g=f$ on $G\setminus\mathcal{E}$. $\blacksquare$

## 14.3-1

Compute: (i) $\int_{\partial B\left(0,4\right)}\frac{z^{2}+1}{z^{3}+2z^{2}-3z}\,dz$; (ii) $\int_{\partial B\left(0,\pi\right)}z^{2}\sin\frac{1}{z}\,dz$; (iv) $\int_{0}^{2\pi}\frac{1}{4\sin^{2}x+1}\,dx$.

### Solution to 14.3-1

(i) $z^{3}+2z^{2}-3z=z\left(z+3\right)\left(z-1\right)$; the singularities $0,1,-3$ all lie in $\left|z\right|< 4$, each a simple pole. The residues:

$$
\operatorname{Res}_{0}=\frac{1}{3\cdot\left(-1\right)}=-\frac13,\quad
\operatorname{Res}_{1}=\frac{1+1}{1\cdot4\cdot1}=\frac12,\quad
\operatorname{Res}_{-3}=\frac{9+1}{\left(-3\right)\cdot1\cdot\left(-4\right)}=\frac56.
$$

Sum: $-\frac13+\frac12+\frac56=1$. By **Theorem 14.1.3 (Residue Theorem)**, $\int_{\partial B\left(0,4\right)}=2\pi i\cdot1=2\pi i$.

(ii) $\sin\frac1z=\sum_{n=0}^{+\infty}\frac{\left(-1\right)^{n}}{\left(2n+1\right)!}\frac{1}{z^{2n+1}}$, so $z^{2}\sin\frac1z=\sum_{n=0}^{+\infty}\frac{\left(-1\right)^{n}}{\left(2n+1\right)!}z^{1-2n}$. The $z^{-1}$ coefficient (residue) comes from $1-2n=-1$, i.e. $n=1$: $\operatorname{Res}_{0}z^{2}\sin\frac1z=\frac{\left(-1\right)^{1}}{3!}=-\frac16$. Hence $\int_{\partial B\left(0,\pi\right)}z^{2}\sin\frac1z\,dz=2\pi i\cdot\left(-\frac16\right)=-\frac{\pi i}{3}$.

(iv) Let $z=e^{ix}$; then $\sin x=\frac{z-z^{-1}}{2i}$, $dz=iz\,dx$, with $\left|z\right|=1$ counterclockwise. $4\sin^{2}x+1=4\cdot\left(-\frac{\left(z-z^{-1}\right)^{2}}{4}\right)+1=3-z^{2}-z^{-2}$, so

$$
\int_{0}^{2\pi}\frac{dx}{4\sin^{2}x+1}=\oint_{\left|z\right|=1}\frac{1}{3-z^{2}-z^{-2}}\frac{dz}{iz}=\oint_{\left|z\right|=1}\frac{z}{i\left(3z^{2}-z^{4}-1\right)}\,dz.
$$

$3z^{2}-z^{4}-1=-\left(z^{4}-3z^{2}+1\right)$, and $z^{4}-3z^{2}+1=0$ gives $z^{2}=\frac{3\pm\sqrt5}{2}$. Inside $\left|z\right|=1$, only the two roots $\pm\sqrt{\frac{3-\sqrt5}{2}}$ from $z^{2}=\frac{3-\sqrt5}{2}$ (the other pair has $\left|z\right|> 1$). Write $a^{2}=u:=\frac{3-\sqrt5}{2}$; at $z=a$,

$$
\operatorname{Res}_{a}\frac{z}{i\left(3z^{2}-z^{4}-1\right)}=\frac{a}{i\left(-\left(4a^{3}-6a\right)\right)}=\frac{1}{i\left(-\left(4u-6\right)\right)}=\frac{1}{i\left(-\left(-2\sqrt5\right)\right)}=\frac{1}{2\sqrt5\,i},
$$

and the residue at $-a$ is the same. Sum: $\frac{1}{\sqrt5\,i}$. Hence

$$
\int_{0}^{2\pi}\frac{dx}{4\sin^{2}x+1}=2\pi i\cdot\frac{1}{\sqrt5\,i}=\frac{2\pi}{\sqrt5}.
$$

$\blacksquare$

## 14.3-2

Let $\gamma\subset\mathbb{C}$ be a Jordan closed curve, and $f$ holomorphic on $\mathbb{C}\setminus\left\{a_{1},\ldots,a_{n}\right\}$, where $a_{1},\ldots,a_{n}$ are interior points of the region bounded by $\gamma$. Prove: $\frac{1}{2\pi i}\int_{\gamma}f\left(z\right)\,dz=\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right)$.

### Solution to 14.3-2

The isolated singularities of $f$ are $a_{1},\ldots,a_{n}$ (all inside $\gamma$); by **Theorem 14.1.3 (Residue Theorem)**,

$$
\frac{1}{2\pi i}\int_{\gamma}f\left(z\right)\,dz=\sum_{j=1}^{n}\operatorname{Res}_{a_{j}}f.
$$

For the meromorphic $f$ on the whole plane, choose $R$ large enough that $\gamma$ and all $a_{j}$ lie in $\left\{\left|z\right|< R\right\}$. Applying the residue theorem on $\left\{\left|z\right|\le R\right\}$ and treating $\infty$ as a singularity gives $\sum_{j}\operatorname{Res}_{a_{j}}f+\operatorname{Res}_{\infty}f=0$. Also

$$
\operatorname{Res}_{\infty}f=-\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right),
$$

so $\sum_{j}\operatorname{Res}_{a_{j}}f=\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right)$, as claimed. $\blacksquare$

## 14.3-3

Prove: $\int_{\partial B\left(0,1\right)}e^{z+\frac{1}{z}}\,dz=2\pi i\sum_{n=0}^{+\infty}\frac{1}{n!\left(n+1\right)!}$.

### Solution to 14.3-3

$e^{z+\frac1z}=e^{z}e^{\frac1z}=\left(\sum_{m=0}^{+\infty}\frac{z^{m}}{m!}\right)\left(\sum_{k=0}^{+\infty}\frac{1}{k!}\frac{1}{z^{k}}\right)$. The $z^{-1}$ coefficient satisfies $m-k=-1$, i.e. $m=k-1$, so

$$
\operatorname{Res}_{0}e^{z+\frac1z}=\sum_{k=1}^{+\infty}\frac{1}{\left(k-1\right)!k!}=\sum_{n=0}^{+\infty}\frac{1}{n!\left(n+1\right)!}.
$$

By **Theorem 14.1.3 (Residue Theorem)**,

$$
\int_{\partial B\left(0,1\right)}e^{z+\frac1z}\,dz=2\pi i\operatorname{Res}_{0}e^{z+\frac1z}=2\pi i\sum_{n=0}^{+\infty}\frac{1}{n!\left(n+1\right)!}.
$$

$\blacksquare$

## 14.3-6

Compute $\int_{0}^{+\infty}\frac{x^{1/n}}{x^{2}+a^{2}}\,dx$, where $2\le n\in\mathbb{N}$, $a> 0$.

### Solution to 14.3-6

Take the $\operatorname{Log}$ branch of $z^{1/n}$ (cut along the positive real axis), and use Standard Integral $\int_{0}^{+\infty}\frac{x^{\alpha-1}}{x^{2}+a^{2}}dx=\frac{\pi a^{\alpha-2}}{2\sin\frac{\pi\alpha}{2}}$, with $\alpha-1=\frac1n$, i.e. $\alpha=1+\frac1n$. Then

$$
\int_{0}^{+\infty}\frac{x^{1/n}}{x^{2}+a^{2}}\,dx
=\frac{\pi a^{\frac1n-1}}{2\sin\left(\frac{\pi}{2}\left(1+\frac1n\right)\right)}
=\frac{\pi a^{\frac{1-n}{n}}}{2\cos\frac{\pi}{2n}}.
$$

(Outline: apply a wedge contour of angle $\frac{2\pi}{n}$ to $f\left(z\right)=\frac{z^{1/n}}{z^{2}+a^{2}}$, let the radius $R\to\infty$, subtract the integrals along the two sides with factor $e^{2\pi i/n}$, and add the residues at the two poles.) $\blacksquare$

## 14.3-7

Compute $\int_{0}^{+\infty}\frac{1}{\sqrt{x}\left(1+x\right)}\,dx$.

### Solution to 14.3-7

Let $x=t^{2}$, $t> 0$; then $\sqrt{x}=t$, $dx=2t\,dt$:

$$
\int_{0}^{+\infty}\frac{dx}{\sqrt{x}\left(1+x\right)}=\int_{0}^{+\infty}\frac{2t\,dt}{t\left(1+t^{2}\right)}=2\int_{0}^{+\infty}\frac{dt}{1+t^{2}}=2\cdot\frac{\pi}{2}=\pi.
$$

$\blacksquare$
