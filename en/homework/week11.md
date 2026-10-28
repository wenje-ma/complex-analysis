# week11

> **Theorem 9.3.2 (Identity Theorem)**<br>If the zeros of a holomorphic function on a domain $D$ have an accumulation point in $D$, then $f\equiv0$.

> **Theorem 10.1.4 (Open Mapping Theorem)**<br>A nonconstant holomorphic function maps domains onto domains.

> **Definition 11.1.1 (Locally Uniform Convergence)**<br>A sequence $\left\{f_{n}\right\}$ of holomorphic functions converges locally uniformly to $f$ on a domain $\Omega$ if it converges uniformly to $f$ on every compact subset of $\Omega$.

> **Theorem 11.1.2 (Weierstrass Theorem)**<br>If $\left\{f_{n}\right\}$ converges locally uniformly to a continuous function $f$ on $\Omega$, then $f$ is holomorphic on $\Omega$.

> **Theorem 11.1.3 (Montel's Theorem)**<br>If a sequence $\left\{f_{n}\right\}$ of holomorphic functions is uniformly bounded on every compact subset of a domain $D$, then a subsequence converges locally uniformly on $D$.

> **Theorem 11.2.2 (Riemann Mapping Theorem)**<br>Every simply connected domain other than the whole complex plane is conformally equivalent to the open unit disk.

---

## 11.3-3

Let $f$ be a conformal equivalence from a simply connected domain $D\subset\mathbb{C}$ to the open unit disk $\mathbb{D}:=\left\{\left|z\right|< 1\right\}$. Prove: if $D\ni z_{n}\to z\in\partial D$, then $\left|f\left(z_{n}\right)\right|\to1$.

### Solution 11.3-3

Suppose $\left|f\left(z_{n}\right)\right|\not\to1$. Since $\left|f\right|< 1$, there is a subsequence (still denoted $z_{n}$) and $\rho< 1$ such that $\left|f\left(z_{n}\right)\right|\le\rho< 1$. Then $\left\{f\left(z_{n}\right)\right\}$ lies in the compact subset $\left\{\left|w\right|\le\rho\right\}$ of $\mathbb{D}$, so a subsequence converges: $f\left(z_{n_{k}}\right)\to w_{0}\in\left\{\left|w\right|\le\rho\right\}\subset\mathbb{D}$.

Since $f$ is a conformal equivalence $D\to\mathbb{D}$, $f^{-1}:\mathbb{D}\to D$ is holomorphic and continuous. From $f\left(z_{n_{k}}\right)\to w_{0}\in\mathbb{D}$,

$$
z_{n_{k}}=f^{-1}\left(f\left(z_{n_{k}}\right)\right)\to f^{-1}\left(w_{0}\right)\in D,
$$

contradicting $z_{n_{k}}\to z\in\partial D\notin D$. Hence $\left|f\left(z_{n}\right)\right|\to1$. $\blacksquare$

---

## 11.3-4

Let $\left\{g_{n}\right\}$ be holomorphic on a domain $D\subset\mathbb{C}$, with $g_{n}\left(D\right)\subset D$. Suppose $g_{n}$ converges locally uniformly to $g$ on $D$. Prove: either $g\left(D\right)\subset D$ or $g\equiv z_{0}\in\partial D$.

### Solution 11.3-4

By **Theorem 11.1.2 (Weierstrass Theorem)**, $g$ is holomorphic on $D$. Since $g_{n}\left(D\right)\subset D$ and $g_{n}\to g$, for each $z\in D$, $g\left(z\right)\in\overline{D}$ (closure). Hence $g\left(D\right)\subset\overline{D}$.

If $g$ is nonconstant, by **Theorem 10.1.4 (Open Mapping Theorem)**, $g\left(D\right)$ is open. Since $g\left(D\right)\subset\overline{D}$ and $g\left(D\right)$ is nonempty open, if $g\left(D\right)$ contained a point of $\partial D$, then $g\left(D\right)$ could not be open (points of $g\left(D\right)$ should be contained in a small neighborhood inside $g\left(D\right)$, but a small neighborhood near $\partial D$ is not entirely contained in $\overline D$). Hence $g\left(D\right)\subset D$.

If $g$ is constant, $g\equiv z_{0}$, then $z_{0}\in\overline D$. If $z_{0}\in D$, then $g\left(D\right)=\left\{z_{0}\right\}\subset D$, the first case; if $z_{0}\in\partial D$, then $g\equiv z_{0}\in\partial D$, the second case. $\blacksquare$

---

## 11.3-5

(Vitali-Porter theorem) Let $\left\{f_{n}\right\}$ be holomorphic on a domain $D\subset\mathbb{C}$, uniformly bounded on every compact subset of $D$. Let $z_{m}\in D$ with $z_{m}\to z_{\infty}\in D$, and suppose $\lim_{n\to\infty}f_{n}\left(z_{m}\right)=w_{m}$ for all $m\in\mathbb{N}$. Prove: there exists a holomorphic $f$ on $D$ such that $f_{n}$ converges locally uniformly to $f$ on $D$.

### Solution 11.3-5

By **Theorem 11.1.3 (Montel's Theorem)**, $\left\{f_{n}\right\}$ is normal on $D$: every subsequence has a further subsequence converging locally uniformly on $D$. Let $f_{n_{k}}\to f$ locally uniformly; by **Theorem 11.1.2 (Weierstrass Theorem)**, $f$ is holomorphic on $D$. For each $m$, from $f_{n_{k}}\to f$ uniformly near $\left\{z_{m}\right\}$ and the assumption $\lim_{n}f_{n}\left(z_{m}\right)=w_{m}$, we get $f\left(z_{m}\right)=w_{m}$.

Now show the whole sequence converges to $f$. Otherwise, there exist a compact set $K\subset D$, $\varepsilon> 0$, and a subsequence $f_{n'_{j}}$ with $\sup_{K}\left|f_{n'_{j}}-f\right|\ge\varepsilon$. By Montel, $f_{n'_{j}}$ has a subsubsequence converging locally uniformly to some holomorphic $\widetilde f$. Then $\widetilde f\left(z_{m}\right)=w_{m}=f\left(z_{m}\right)$ for all $m$; since $z_{m}\to z_{\infty}\in D$ has an accumulation point, by **Theorem 9.3.2 (Identity Theorem)** $\widetilde f=f$. This contradicts $\sup_{K}\left|f_{n'_{j}}-f\right|\ge\varepsilon$ while $f_{n'_{j}}\to f$ on $K$. Hence $f_{n}\to f$ locally uniformly on $D$. $\blacksquare$

---

## 11.3-6

Let $D\subset\mathbb{C}$ be a domain, $f$ holomorphic on $D$, and $f:D\to f\left(D\right)$ a conformal map. Prove: the area of $f\left(D\right)$ equals $\iint_{D}\left|f'\left(z\right)\right|^{2}\,dx\,dy$.

### Solution 11.3-6

Write $f\left(z\right)=u\left(x,y\right)+iv\left(x,y\right)$. Since $f:D\to f\left(D\right)$ is conformal, $f$ is univalent with $f'\ne0$, so $f$ is a $C^{1}$ diffeomorphism $D\to f\left(D\right)$. By the change-of-variables formula for double integrals,

$$
\operatorname{Area}\left(f\left(D\right)\right)=\iint_{D}\left|\det J_{f}\left(x,y\right)\right|\,dx\,dy,
$$

where $J_{f}=\begin{bmatrix}u_{x}&u_{y}\\v_{x}&v_{y}\end{bmatrix}$ is the Jacobian. By the Cauchy-Riemann equations $u_{x}=v_{y}$, $u_{y}=-v_{x}$,

$$
\det J_{f}=u_{x}v_{y}-u_{y}v_{x}=u_{x}^{2}+u_{y}^{2}=\left|f'\left(z\right)\right|^{2}.
$$

Hence $\operatorname{Area}\left(f\left(D\right)\right)=\iint_{D}\left|f'\left(z\right)\right|^{2}\,dx\,dy$. $\blacksquare$

---

## 11.3-15

Let $\left\{f_{n}\right\}$ be holomorphic on an open set $\Omega\subset\mathbb{C}$. Suppose there are positive real numbers $c_{n}> 0$ with $\sum_{n=1}^{+\infty}c_{n}< +\infty$ and $\left|f_{n}\left(z\right)-1\right|\le c_{n}$ for all $z\in\Omega$. Prove:

(i) the infinite product $\prod_{n=1}^{+\infty}f_{n}\left(z\right)$ converges uniformly on $\Omega$ to a holomorphic function $f$;

(ii) if no $f_{n}\left(z\right)$ vanishes on $\Omega$, then $\frac{f'\left(z\right)}{f\left(z\right)}=\sum_{n=1}^{+\infty}\frac{f_{n}'\left(z\right)}{f_{n}\left(z\right)}$.

### Solution 11.3-15

(i) Write $P_{n}\left(z\right)=\prod_{k=1}^{n}f_{k}\left(z\right)$. From $\left|f_{k}\left(z\right)-1\right|\le c_{k}$, $\left|f_{k}\left(z\right)\right|\le1+c_{k}$, so

$$
\left|P_{n}\left(z\right)\right|\le\prod_{k=1}^{n}\left(1+c_{k}\right)\le\exp\left(\sum_{k=1}^{n}c_{k}\right)\le e^{C},
$$

where $C=\sum_{k=1}^{+\infty}c_{k}< +\infty$. Thus

$$
\left|P_{n}\left(z\right)-P_{n-1}\left(z\right)\right|=\left|P_{n-1}\left(z\right)\right|\left|f_{n}\left(z\right)-1\right|\le e^{C}c_{n}.
$$

Since $\sum c_{n}$ converges, $\sum\left|P_{n}-P_{n-1}\right|$ converges uniformly on $\Omega$, so $P_{n}\to f$ uniformly on $\Omega$. By **Theorem 11.1.2 (Weierstrass Theorem)**, $f$ is holomorphic on $\Omega$.

(ii) Take $N_{0}$ large enough that $\sum_{n> N_{0}}c_{n}< \frac{1}{2}$. For $n> N_{0}$, $\left|f_{n}\left(z\right)-1\right|\le c_{n}$ with $c_{n}$ small (by convergence) gives $f_{n}\left(z\right)\ne0$; also $\left|P_{n}\left(z\right)\right|\ge\prod_{k=1}^{n}\left(1-c_{k}\right)> 0$ locally, so $f$ has no zeros on $\Omega$. Since $P_{n}\to f$ locally uniformly and $P_{n}\ne0$ locally, the logarithmic derivatives $\frac{P_{n}'}{P_{n}}\to\frac{f'}{f}$ locally uniformly. For finite products,

$$
\frac{P_{n}'\left(z\right)}{P_{n}\left(z\right)}=\sum_{k=1}^{n}\frac{f_{k}'\left(z\right)}{f_{k}\left(z\right)},
$$

and letting $n\to\infty$, $\frac{f'\left(z\right)}{f\left(z\right)}=\sum_{n=1}^{+\infty}\frac{f_{n}'\left(z\right)}{f_{n}\left(z\right)}$. $\blacksquare$
