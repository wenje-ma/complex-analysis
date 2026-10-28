# week14

> **Theorem 8.3.1 (Cauchy Integral Formula)**<br>If $f$ is holomorphic on a domain containing a Jordan closed curve $\gamma$ and its interior, and $z$ lies in the interior of $\gamma$, then

$$
f\left(z\right)=\frac{1}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.
$$

> **Theorem 8.3.2 (Higher Derivative Formula)**<br>If $f$ is holomorphic on a domain containing a Jordan closed curve $\gamma$ and its interior, and $z$ lies in the interior of $\gamma$, then $f$ has derivatives of all orders at $z$ and

$$
f^{\left(n\right)}\left(z\right)=\frac{n!}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\left(\zeta-z\right)^{n+1}}\,d\zeta.
$$

> **Theorem 10.1.1 (Maximum Modulus Principle)**<br>If the modulus $\left|f\right|$ of a holomorphic function $f$ on a domain $D$ has a local maximum in $D$, then $f$ is constant on $D$; in particular, the maximum of $\left|f\right|$ on a compact closed region is attained on the boundary.

---

## 13.4-8

Let $D\subset\mathbb{C}$ be the region bounded by Jordan closed curves $\gamma_{1}$ and $\gamma_{2}$, with $\gamma_{1}$ contained in the interior of $\gamma_{2}$, and let $f$ be holomorphic on the closed region $\overline{D}$. Prove:

$$
f\left(z\right)=f_{1}\left(z\right)+f_{2}\left(z\right),\quad\forall z\in D,
$$

where $f_{1}$ is holomorphic on the exterior of $\gamma_{1}$ and $f_{2}$ is holomorphic on the interior of $\gamma_{2}$.

### Solution 13.4-8

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

---

## 13.4-18

Let $f$ be holomorphic on a domain $D$, let $\gamma$ be a Jordan closed curve in $D$ whose interior is entirely contained in $D$. Prove: for every point $z$ in the interior of $\gamma$, there is a point $w$ on $\gamma$ such that

$$
\left|\frac{f\left(z\right)-f\left(w\right)}{z-w}\right|\ge\left|f'\left(z\right)\right|.
$$

### Solution 13.4-18

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
