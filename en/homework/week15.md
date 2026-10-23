# Assignment 15

> **Definition 13.1.3** (Laurent Series)<br>The Laurent series of $f$ on the annulus $A\left(a;r;R\right)$ is $$\sum_{n=-\infty}^{+\infty}c_{n}\left(z-a\right)^{n},$$ where the regular part is $\sum_{n\ge0}c_{n}\left(z-a\right)^{n}$ and the principal part is $\sum_{n<0}c_{n}\left(z-a\right)^{n}$.

> **Definition 13.2.2** (Classification of Isolated Singularities)<br>$a$ is a removable singularity of $f$ if all coefficients of the principal part are $0$; it is a pole of order $m$ if $c_{-m}\ne0$ and $c_{n}=0$ for $n<-m$; it is an essential singularity if the principal part has infinitely many terms.

> **Theorem 13.2.4** (Riemann)<br>$a$ is a removable singularity of $f$ if and only if $f$ is bounded on a punctured neighborhood of $a$.

> **Theorem 13.2.5**<br>$a$ is a removable singularity of $f$ if and only if $\lim_{z\to a}f\left(z\right)$ exists and is finite.

### Problem 1

(Problem 13.4-1) Let $f$ be holomorphic on the domain $\mathbb{C}\setminus\left\{0\right\}$ with $\left|f\left(z\right)\right|\le\frac{\left|z\right|+1}{\left|z\right|}$, $\forall z\in\mathbb{C}\setminus\left\{0\right\}$. Prove: $f$ is constant. (Note: the inequality in the original problem appeared as $\left|f\left(z\right)\right|\le\left|z\right|+\frac{1}{\left|z\right|}$ in the OCR, but taking $f\left(z\right)=z$ gives a counterexample, so it is interpreted as $\left|f\left(z\right)\right|\le\frac{\left|z\right|+1}{\left|z\right|}=1+\frac{1}{\left|z\right|}$.)

### Solution to Problem 1

From $\left|f\left(z\right)\right|\le1+\frac{1}{\left|z\right|}$, as $z\to0$, $\left|zf\left(z\right)\right|\le\left|z\right|+1\to1$, so $zf\left(z\right)$ is bounded on a punctured neighborhood of $0$. By **Theorem 13.2.4 (Riemann)**, $0$ is a removable singularity of $zf\left(z\right)$, so $f$ has at most a simple pole at $0$; also, $\left|f\left(z\right)\right|\le1+\frac{1}{\left|z\right|}$ near $0$ gives $\left|f\left(z\right)\right|\le\frac{C}{\left|z\right|}$, and since $0$ is an isolated singularity of $f$, $f$ has a removable singularity at $0$ and extends to an entire function.

Thus $f$ is entire and $\left|f\left(z\right)\right|\le1+\frac{1}{\left|z\right|}\le2$ ($\left|z\right|\ge1$), i.e. $f$ is bounded. By Liouville's theorem, $f$ is constant. $\blacksquare$

### Problem 2

(Problem 13.4-2) Find the finite isolated singularities of the following functions and classify them: (i) $\frac{1-\cos z}{\sin^{2}z}$; (ii) $e^{\cot\frac{\pi}{z}}$; (iii) $\frac{z+1}{\sin^{2}\left(\pi z\right)}$; (iv) $\frac{z}{1-\cos z}$.

### Solution to Problem 2

(i) The zeros of $\sin z$ are $z=k\pi$ ($k\in\mathbb{Z}$). At $z=2m\pi$, both $1-\cos z$ and $\sin^{2}z$ are zeros of order 2, so the ratio is finite; this is a removable singularity (limit value $\lim=\frac12$). At $z=\left(2m+1\right)\pi$, $1-\cos z\ne0$ while $\sin^{2}z$ has a zero of order 2, so this is a pole of order 2. Thus $z=2m\pi$ is removable, and $z=\left(2m+1\right)\pi$ is a pole of order 2.

(ii) The poles of $\cot\frac{\pi}{z}$ are $\frac{\pi}{z}=k\pi$, i.e. $z=\frac{1}{k}$, $k\in\mathbb{Z}\setminus\left\{0\right\}$. At $z=\frac1k$, $\cot\frac{\pi}{z}$ has a simple pole, so $e^{\cot\frac{\pi}{z}}$ has an essential singularity there (of the form $e^{1/\left(z-a\right)}$). $z=0$ is an accumulation point of these singularities, not an isolated singularity. Hence the finite isolated singularities are $z=\frac1k$ ($k\ne0$), all essential.

(iii) $\sin^{2}\left(\pi z\right)$ has zeros of order 2 at $z=n$ ($n\in\mathbb{Z}$). When $n\ne-1$, $z+1\ne0$, so $z=n$ is a pole of order 2; when $n=-1$, $z+1$ has a simple zero, which cancels the double zero, so $z=-1$ is a simple pole.

(iv) The zeros of $1-\cos z$ are $z=2m\pi$ (order 2). At $z=0$, the numerator $z$ has a simple zero, so $z=0$ is a simple pole; when $m\ne0$, $z=2m\pi\ne0$, the numerator is nonzero, so it is a pole of order 2. $\blacksquare$

### Problem 3

(Problem 13.4-3) Let $f$ be holomorphic on $\mathbb{C}\setminus\left\{0\right\}$. Is it possible that the inequality $\left|f\left(z\right)\right|>e^{\frac{1}{\left|z\right|}}$ holds, $\forall z\in\mathbb{C}\setminus\left\{0\right\}$? Explain your reasoning.

### Solution to Problem 3

No. If $\left|f\left(z\right)\right|>e^{1/\left|z\right|}$ for all $z\ne0$, then as $z\to0$, $\left|f\left(z\right)\right|\to+\infty$, so $0$ is a pole of $f$, say of order $m$. By **Definition 13.2.2**, near $0$, $\left|f\left(z\right)\right|\sim\frac{C}{\left|z\right|^{m}}$. But $e^{1/\left|z\right|}$ grows faster than any power $\frac{1}{\left|z\right|^{m}}$ (since $\frac{e^{1/\left|z\right|}}{1/\left|z\right|^{m}}\to+\infty$), so for sufficiently small $\left|z\right|$, $\left|f\left(z\right)\right|\le\frac{2C}{\left|z\right|^{m}}<e^{1/\left|z\right|}$, contradicting $\left|f\left(z\right)\right|>e^{1/\left|z\right|}$. Hence the inequality is impossible. $\blacksquare$

### Problem 4

(Problem 13.4-4) Determine whether the following functions have an isolated singularity at $\infty$ and classify it: (i) $e^{\sin\frac{1}{z}}$; (ii) $\frac{1}{1+z^{6}}$; (iii) $z^{7}$; (iv) $\frac{\cos z}{1+z^{2}}$.

### Solution to Problem 4

(i) As $z\to\infty$, $\frac1z\to0$, $\sin\frac1z\to0$, $e^{\sin\frac1z}\to1$. Hence $\infty$ is a removable singularity of $e^{\sin\frac1z}$ (the limit exists and is finite).

(ii) $\frac{1}{1+z^{6}}$: as $z\to\infty$, $\to0$. Let $w=\frac1z$; $\frac{1}{1+z^{6}}=\frac{w^{6}}{w^{6}+1}$ has a zero of order 6 at $w=0$, so $\infty$ is a removable singularity of $\frac{1}{1+z^{6}}$ (value $0$, a zero of order 6).

(iii) $z^{7}$: as $z\to\infty$, $z^{7}\to\infty$; the principal part of the Laurent series is $z^{7}$, so $\infty$ is a pole of order 7 of $z^{7}$.

(iv) $\frac{\cos z}{1+z^{2}}$: as $z\to\infty$, $\cos z$ oscillates and does not converge, while $\frac{1}{1+z^{2}}\to0$, so $\lim_{z\to\infty}\frac{\cos z}{1+z^{2}}$ does not exist and has neither a finite nor an infinite limit; $\infty$ is an essential singularity. $\blacksquare$

### Problem 5

(Problem 13.4-10) Let $\Omega=G\setminus\left\{a,b\right\}$, where $G$ is a bounded simply connected domain, $a,b\in G$ and $a\ne b$. How many holomorphic self-homeomorphisms of $\Omega$ onto itself are there?

### Solution to Problem 5

Let $\varphi\in\operatorname{Aut}\left(\Omega\right)$. Since $G$ is bounded, $\varphi$ is bounded on $\Omega$; by **Theorem 13.2.4 (Riemann)**, $\varphi$ has removable singularities at both $a,b$, and extends to a holomorphic function on $G$. Also, $\varphi$ is a biholomorphic map from $\Omega$ to itself; after extension, $\varphi$ maps $G$ to $G$ and maps the set $\left\{a,b\right\}$ to itself, so $\varphi\in\operatorname{Aut}\left(G\right)$ and $\varphi\left(\left\{a,b\right\}\right)=\left\{a,b\right\}$.

$G$ is bounded, simply connected, and not $\mathbb{C}$; by the Riemann mapping theorem $G\cong\mathbb{D}$, so $\operatorname{Aut}\left(G\right)\cong\operatorname{Aut}\left(\mathbb{D}\right)$. Let $p,q$ be the images of $a,b$ under the identification with $\mathbb{D}$. The elements of $\operatorname{Aut}\left(\mathbb{D}\right)$ that map $\left\{p,q\right\}$ to itself can only: fix $p,q$ pointwise, or swap $p,q$. The only automorphism of $\operatorname{Aut}\left(\mathbb{D}\right)$ fixing two distinct interior points is the identity; and there is exactly one involution swapping $p,q$ (mapping $p\mapsto q$, $q\mapsto p$). Hence there are exactly $2$ holomorphic self-homeomorphisms of $\Omega$ onto itself. $\blacksquare$

### Problem 6

(Problem 13.4-12) Let $a\in\mathbb{C}$ be an essential singularity of $f$. Prove: $\lim_{\varepsilon\to0}\varepsilon^{n}\max\left\{\left|f\left(z\right)\right|:\ \left|z-a\right|=\varepsilon\right\}=+\infty$, $\forall n\in\mathbb{N}$.

### Solution to Problem 6

Write $M\left(\varepsilon\right):=\max_{\left|z-a\right|=\varepsilon}\left|f\left(z\right)\right|$. Suppose for contradiction that there exists $n\in\mathbb{N}$ such that $\varepsilon^{n}M\left(\varepsilon\right)$ is bounded above, i.e. there exists $C>0$ such that $\varepsilon^{n}M\left(\varepsilon\right)\le C$; then

$$
\left|f\left(z\right)\right|\le\frac{C}{\left|z-a\right|^{n}},\quad 0<\left|z-a\right|\ \text{充分小}.
$$

Hence $\left(z-a\right)^{n}f\left(z\right)$ is bounded on a punctured neighborhood of $a$; by **Theorem 13.2.4 (Riemann)**, $0$ is a removable singularity of $\left(z-a\right)^{n}f$, so $f$ has at most a pole of order $n$ at $a$. But $a$ is an essential singularity of $f$, a contradiction. Hence for every $n\in\mathbb{N}$, $\varepsilon^{n}M\left(\varepsilon\right)$ is unbounded above; together with the monotone behavior of $\varepsilon^{n}M\left(\varepsilon\right)$ as $\varepsilon$ varies, $\lim_{\varepsilon\to0}\varepsilon^{n}M\left(\varepsilon\right)=+\infty$. $\blacksquare$

### Problem 7

(Problem 13.4-17, Pólya) A set $\mathcal{E}\subset\mathbb{C}$ is said to have Hausdorff length zero if for every $\varepsilon>0$ there exists an open cover of it by countably many open disks whose radii sum to at most $\varepsilon$. Let $G\subset\mathbb{C}$ be a domain, $\mathcal{E}\subset G$ a compact subset of Hausdorff length zero, and $f$ holomorphic on the open set $G\setminus\mathcal{E}$. Suppose there exists $M>0$ such that $\left|f\left(z\right)\right|\le M$, $\forall z\in G\setminus\mathcal{E}$. Prove: there exists a holomorphic function $g$ on $G$ such that $g\left(z\right)=f\left(z\right)$, $\forall z\in G\setminus\mathcal{E}$.

### Solution to Problem 7

A compact set $\mathcal{E}$ of Hausdorff length zero has two-dimensional Lebesgue measure zero. Take any $z_{0}\in\mathcal{E}$, and choose $r>0$ such that $\overline{B\left(z_{0},r\right)}\subset G$. Since $\mathcal{E}$ has area zero, we can choose a circle $\left|w-z_{0}\right|=r$ disjoint from $\mathcal{E}$ (otherwise one could cover $\mathcal{E}$ by open disks whose total radius is arbitrarily small, and whose area is also arbitrarily small). For $z\in B\left(z_{0},r\right)\setminus\mathcal{E}$, by Cauchy's integral formula,

$$
f\left(z\right)=\frac{1}{2\pi i}\oint_{\left|w-z_{0}\right|=r}\frac{f\left(w\right)}{w-z}\,dw.
$$

The right-hand side defines a holomorphic function for each $z\in B\left(z_{0},r\right)$ (the integrand $w\mapsto\frac{f\left(w\right)}{w-z}$ is continuous on the circle, with $\left|f\right|\le M$); call it $g_{0}$. When $z\in B\left(z_{0},r\right)\setminus\mathcal{E}$, $g_{0}\left(z\right)=f\left(z\right)$, so $g_{0}$ is an analytic continuation of $f$ near $z_{0}$; in particular, $f$ is removable at $z_{0}$.

Continuing this way at every $z_{0}\in\mathcal{E}$ and gluing with the original $f$ on $G\setminus\mathcal{E}$, by uniqueness of analytic continuation we obtain a holomorphic function $g$ on $G$, with $g=f$ on $G\setminus\mathcal{E}$. $\blacksquare$
