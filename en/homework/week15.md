# week15

> **Definition 13.1.3 (Laurent Series)**<br>The Laurent series of $f$ on the annulus $A\left(a;r;R\right)$ is

$$
\sum_{n=-\infty}^{+\infty}c_{n}\left(z-a\right)^{n},
$$

with regular part $\sum_{n\ge0}c_{n}\left(z-a\right)^{n}$ and principal part $\sum_{n< 0}c_{n}\left(z-a\right)^{n}$.

> **Definition 13.2.2 (Classification of Isolated Singularities)**<br>$a$ is a removable singularity of $f$ if all principal-part coefficients vanish; a pole of order $m$ if $c_{-m}\ne0$ and $c_{n}=0$ for $n< -m$; an essential singularity if the principal part has infinitely many terms.

> **Theorem 13.2.4 (Riemann's Removable Singularity Theorem)**<br>$a$ is a removable singularity of $f$ if and only if $f$ is bounded on a punctured neighborhood of $a$.

> **Theorem 13.2.5**<br>$a$ is a removable singularity of $f$ if and only if $\lim_{z\to a}f\left(z\right)$ exists and is finite.

---

## 13.4-1

Let $f$ be holomorphic on $\mathbb{C}\setminus\left\{0\right\}$ with $\left|f\left(z\right)\right|\le\frac{\left|z\right|+1}{\left|z\right|}$ for all $z\in\mathbb{C}\setminus\left\{0\right\}$. Prove: $f$ is constant.

### Solution 13.4-1

From $\left|f\left(z\right)\right|\le1+\frac{1}{\left|z\right|}$, as $z\to0$, $\left|zf\left(z\right)\right|\le\left|z\right|+1\to1$, so $zf\left(z\right)$ is bounded on a punctured neighborhood of $0$. By **Theorem 13.2.4 (Riemann's Removable Singularity Theorem)**, $0$ is a removable singularity of $zf\left(z\right)$, so $f$ has at most a simple pole at $0$; moreover $\left|f\left(z\right)\right|\le1+\frac{1}{\left|z\right|}$ near $0$ gives $\left|f\left(z\right)\right|\le\frac{C}{\left|z\right|}$, and since $0$ is an isolated singularity of $f$, $f$ is removable at $0$, extending to an entire function.

Thus $f$ is entire with $\left|f\left(z\right)\right|\le1+\frac{1}{\left|z\right|}\le2$ for $\left|z\right|\ge1$, i.e. $f$ is bounded. By Liouville's theorem, $f$ is constant. $\blacksquare$

---

## 13.4-2

Find the finite isolated singularities of the following functions and classify them: (i) $\frac{1-\cos z}{\sin^{2}z}$; (ii) $e^{\cot\frac{\pi}{z}}$; (iii) $\frac{z+1}{\sin^{2}\left(\pi z\right)}$; (iv) $\frac{z}{1-\cos z}$.

### Solution 13.4-2

(i) The zeros of $\sin z$ are $z=k\pi$ ($k\in\mathbb{Z}$). At $z=2m\pi$, both $1-\cos z$ and $\sin^{2}z$ have second-order zeros, so the ratio is finite; removable (limit $\frac12$). At $z=\left(2m+1\right)\pi$, $1-\cos z\ne0$ while $\sin^{2}z$ has a second-order zero; pole of order $2$.

(ii) The poles of $\cot\frac{\pi}{z}$ occur at $\frac{\pi}{z}=k\pi$, i.e. $z=\frac{1}{k}$, $k\in\mathbb{Z}\setminus\left\{0\right\}$. At $z=\frac1k$, $\cot\frac{\pi}{z}$ has a simple pole, so $e^{\cot\frac{\pi}{z}}$ has an essential singularity there (type $e^{1/\left(z-a\right)}$). $z=0$ is an accumulation point, not isolated. Hence the finite isolated singularities are $z=\frac1k$ ($k\ne0$), all essential.

(iii) $\sin^{2}\left(\pi z\right)$ has second-order zeros at $z=n$ ($n\in\mathbb{Z}$). For $n\ne-1$, $z+1\ne0$, so $z=n$ is a pole of order $2$; for $n=-1$, $z+1$ has a simple zero, which cancels one order, so $z=-1$ is a simple pole.

(iv) The zeros of $1-\cos z$ are $z=2m\pi$ (second order). At $z=0$, the numerator $z$ has a simple zero, so $z=0$ is a simple pole; for $m\ne0$, $z=2m\pi\ne0$, numerator nonzero, so pole of order $2$. $\blacksquare$

---

## 13.4-3

Let $f$ be holomorphic on $\mathbb{C}\setminus\left\{0\right\}$. Is it possible that $\left|f\left(z\right)\right|> e^{\frac{1}{\left|z\right|}}$ for all $z\in\mathbb{C}\setminus\left\{0\right\}$? Explain.

### Solution 13.4-3

No. If $\left|f\left(z\right)\right|> e^{1/\left|z\right|}$ for all $z\ne0$, then as $z\to0$, $\left|f\left(z\right)\right|\to+\infty$, so $0$ is a pole of $f$, say of order $m$. By **Definition 13.2.2 (Classification of Isolated Singularities)**, near $0$, $\left|f\left(z\right)\right|\sim\frac{C}{\left|z\right|^{m}}$. But $e^{1/\left|z\right|}$ grows faster than any power $\frac{1}{\left|z\right|^{m}}$ (since $\frac{e^{1/\left|z\right|}}{1/\left|z\right|^{m}}\to+\infty$), so for sufficiently small $\left|z\right|$, $\left|f\left(z\right)\right|\le\frac{2C}{\left|z\right|^{m}}< e^{1/\left|z\right|}$, contradicting $\left|f\left(z\right)\right|> e^{1/\left|z\right|}$. Hence the inequality is impossible. $\blacksquare$

---

## 13.4-4

Determine whether the following have an isolated singularity at $\infty$ and classify it: (i) $e^{\sin\frac{1}{z}}$; (ii) $\frac{1}{1+z^{6}}$; (iii) $z^{7}$; (iv) $\frac{\cos z}{1+z^{2}}$.

### Solution 13.4-4

(i) As $z\to\infty$, $\frac1z\to0$, $\sin\frac1z\to0$, $e^{\sin\frac1z}\to1$. Hence $\infty$ is a removable singularity of $e^{\sin\frac1z}$ (finite limit).

(ii) $\frac{1}{1+z^{6}}$: as $z\to\infty$, it tends to $0$. Let $w=\frac1z$; $\frac{1}{1+z^{6}}=\frac{w^{6}}{w^{6}+1}$ has a zero of order $6$ at $w=0$, so $\infty$ is a removable singularity of $\frac{1}{1+z^{6}}$ (value $0$, zero of order $6$).

(iii) $z^{7}$: as $z\to\infty$, $z^{7}\to\infty$; the Laurent principal part is $z^{7}$, so $\infty$ is a pole of order $7$ of $z^{7}$.

(iv) $\frac{\cos z}{1+z^{2}}$: as $z\to\infty$, $\cos z$ oscillates and does not converge, while $\frac{1}{1+z^{2}}\to0$; hence $\lim_{z\to\infty}\frac{\cos z}{1+z^{2}}$ does not exist (finite or infinite), so $\infty$ is an essential singularity. $\blacksquare$

---

## 13.4-10

Let $\Omega=G\setminus\left\{a,b\right\}$, where $G$ is a bounded simply connected domain, $a,b\in G$, $a\ne b$. How many holomorphic automorphisms of $\Omega$ are there?

### Solution 13.4-10

Let $\varphi\in\operatorname{Aut}\left(\Omega\right)$. Since $G$ is bounded, $\varphi$ is bounded on $\Omega$; by **Theorem 13.2.4 (Riemann's Removable Singularity Theorem)**, $\varphi$ has removable singularities at $a,b$, extending to a holomorphic function on $G$. Since $\varphi$ is biholomorphic from $\Omega$ to itself, after extension $\varphi$ maps $G$ to $G$ and maps $\left\{a,b\right\}$ to itself; hence $\varphi\in\operatorname{Aut}\left(G\right)$ with $\varphi\left(\left\{a,b\right\}\right)=\left\{a,b\right\}$.

$G$ is bounded, simply connected, and not $\mathbb{C}$; by the Riemann mapping theorem, $G\cong\mathbb{D}$, so $\operatorname{Aut}\left(G\right)\cong\operatorname{Aut}\left(\mathbb{D}\right)$. Let $p,q$ be the images of $a,b$ under the map to $\mathbb{D}$. Elements of $\operatorname{Aut}\left(\mathbb{D}\right)$ mapping $\left\{p,q\right\}$ to itself either fix $p,q$ pointwise or swap them. An automorphism of $\mathbb{D}$ fixing two distinct interior points is the identity; there is exactly one involution swapping $p$ and $q$. Hence there are exactly $2$ holomorphic automorphisms of $\Omega$ onto itself. $\blacksquare$

---

## 13.4-12

Let $a\in\mathbb{C}$ be an essential singularity of $f$. Prove: $\lim_{\varepsilon\to0}\varepsilon^{n}\max\left\{\left|f\left(z\right)\right|:\ \left|z-a\right|=\varepsilon\right\}=+\infty$ for all $n\in\mathbb{N}$.

### Solution 13.4-12

Write $M\left(\varepsilon\right):=\max_{\left|z-a\right|=\varepsilon}\left|f\left(z\right)\right|$. Suppose for contradiction that for some $n\in\mathbb{N}$, $\varepsilon^{n}M\left(\varepsilon\right)$ is bounded above, i.e. there is $C> 0$ with $\varepsilon^{n}M\left(\varepsilon\right)\le C$; then

$$
\left|f\left(z\right)\right|\le\frac{C}{\left|z-a\right|^{n}},\quad 0< \left|z-a\right|\ \text{sufficiently small}.
$$

Thus $\left(z-a\right)^{n}f\left(z\right)$ is bounded on a punctured neighborhood of $a$; by **Theorem 13.2.4 (Riemann's Removable Singularity Theorem)**, $0$ is a removable singularity of $\left(z-a\right)^{n}f$, so $f$ has at most a pole of order $n$ at $a$, contradicting that $a$ is essential. Hence for every $n\in\mathbb{N}$, $\varepsilon^{n}M\left(\varepsilon\right)$ is unbounded, and by monotonicity in $\varepsilon$, $\lim_{\varepsilon\to0}\varepsilon^{n}M\left(\varepsilon\right)=+\infty$. $\blacksquare$

---

## 13.4-17

A set $\mathcal{E}\subset\mathbb{C}$ is said to have Hausdorff length zero if for every $\varepsilon> 0$ there is a countable open cover by open disks whose radii sum to at most $\varepsilon$. Let $G\subset\mathbb{C}$ be a domain, $\mathcal{E}\subset G$ a compact set of Hausdorff length zero, and $f$ holomorphic on the open set $G\setminus\mathcal{E}$. Suppose there is $M> 0$ with $\left|f\left(z\right)\right|\le M$ for all $z\in G\setminus\mathcal{E}$. Prove: there exists a holomorphic $g$ on $G$ with $g\left(z\right)=f\left(z\right)$ for all $z\in G\setminus\mathcal{E}$.

### Solution 13.4-17

A compact set $\mathcal{E}$ of Hausdorff length zero has two-dimensional Lebesgue measure zero. Take any $z_{0}\in\mathcal{E}$ and $r> 0$ with $\overline{B\left(z_{0},r\right)}\subset G$. Since $\mathcal{E}$ has area zero, the circle $\left|w-z_{0}\right|=r$ can be chosen disjoint from $\mathcal{E}$ (otherwise $\mathcal{E}$ could be covered by open disks of arbitrarily small total radius and area, which would also be arbitrarily small). For $z\in B\left(z_{0},r\right)\setminus\mathcal{E}$, by the Cauchy integral formula

$$
f\left(z\right)=\frac{1}{2\pi i}\oint_{\left|w-z_{0}\right|=r}\frac{f\left(w\right)}{w-z}\,dw.
$$

The right-hand side defines a holomorphic function for every $z\in B\left(z_{0},r\right)$ (the integrand $w\mapsto\frac{f\left(w\right)}{w-z}$ is continuous on the circle, $\left|f\right|\le M$); call it $g_{0}$. When $z\in B\left(z_{0},r\right)\setminus\mathcal{E}$, $g_{0}\left(z\right)=f\left(z\right)$, so $g_{0}$ is an analytic continuation of $f$ near $z_{0}$; in particular $f$ is removable at $z_{0}$.

Continuing for every $z_{0}\in\mathcal{E}$ and gluing with the original $f$ on $G\setminus\mathcal{E}$ by uniqueness of analytic continuation yields a holomorphic function $g$ on $G$ with $g=f$ on $G\setminus\mathcal{E}$. $\blacksquare$
