# Assignment 11

> **Definition 11.1.1** (Normal Convergence)<br>A sequence of holomorphic functions $\left\{f_{n}\right\}$ is said to converge normally on a domain $\Omega$ to $f$ if it converges uniformly to $f$ on every compact subset of $\Omega$.

> **Theorem 11.1.2**<br>If $\left\{f_{n}\right\}$ converges normally on $\Omega$ to a continuous function $f$, then $f$ is holomorphic on $\Omega$.

> **Theorem 11.1.3** (Montel)<br>If a sequence of holomorphic functions $\left\{f_{n}\right\}$ is uniformly bounded on every compact subset of a domain $D$, then there exists a subsequence that converges normally on $D$.

> **Theorem 9.3.2** (Identity Theorem)<br>If the zeros of a holomorphic function on a domain $D$ have an accumulation point in $D$, then $f\equiv0$.

> **Theorem 10.1.4** (Open Mapping Theorem)<br>A nonconstant holomorphic function maps domains onto domains.

> **Theorem 11.2.2** (Riemann Mapping Theorem)<br>Any simply connected domain that is not the whole plane is conformally equivalent to the open unit disk.

### Problem 1

(Problem 11.3-3) Let $f$ be a conformal equivalence from a simply connected domain $D\subset\mathbb{C}$ to the open unit disk $\mathbb{D}:=\left\{\left|z\right|<1\right\}$. Prove: if $D\ni z_{n}\to z\in\partial D$, then $\left|f\left(z_{n}\right)\right|\to1$.

### Solution to Problem 1

Suppose for contradiction that $\left|f\left(z_{n}\right)\right|\not\to1$. Since $\left|f\right|<1$, there exists a subsequence (still denoted $z_{n}$) and $\rho<1$ such that $\left|f\left(z_{n}\right)\right|\le\rho<1$. Then $\left\{f\left(z_{n}\right)\right\}$ is contained in the compact subset $\left\{\left|w\right|\le\rho\right\}$ of $\mathbb{D}$, so there exists a convergent subsequence $f\left(z_{n_{k}}\right)\to w_{0}\in\left\{\left|w\right|\le\rho\right\}\subset\mathbb{D}$.

$f$ is a conformal equivalence from $D$ to $\mathbb{D}$, so $f^{-1}:\mathbb{D}\to D$ is holomorphic and continuous. From $f\left(z_{n_{k}}\right)\to w_{0}\in\mathbb{D}$, we get

$$
z_{n_{k}}=f^{-1}\left(f\left(z_{n_{k}}\right)\right)\to f^{-1}\left(w_{0}\right)\in D,
$$

contradicting $z_{n_{k}}\to z\in\partial D\notin D$. Hence $\left|f\left(z_{n}\right)\right|\to1$. $\blacksquare$

### Problem 2

(Problem 11.3-4) Let $\left\{g_{n}\right\}$ be a sequence of holomorphic functions on a domain $D\subset\mathbb{C}$ with $g_{n}\left(D\right)\subset D$. Suppose $g_{n}$ converges normally on $D$ to $g$. Prove: $g\left(D\right)\subset D$ or $g\equiv z_{0}\in\partial D$.

### Solution to Problem 2

By **Theorem 11.1.2**, $g$ is holomorphic on $D$. Since $g_{n}\left(D\right)\subset D$ and $g_{n}\to g$, for each $z\in D$, $g\left(z\right)\in\bar{D}$ (the closure). Hence $g\left(D\right)\subset\bar{D}$.

If $g$ is not constant, by **Theorem 10.1.4 (Open Mapping Theorem)**, $g\left(D\right)$ is open. Since $g\left(D\right)\subset\bar{D}$ and $g\left(D\right)$ is nonempty and open, if $g\left(D\right)$ contained a point of $\partial D$, then $g\left(D\right)$ could not be open (because points in $g\left(D\right)$ should be contained in small neighborhoods within $g\left(D\right)$, but small neighborhoods near $\partial D$ are not entirely contained in $\bar D$). Hence $g\left(D\right)\subset D$.

If $g$ is constant, say $g\equiv z_{0}$, then $z_{0}\in\bar D$. If $z_{0}\in D$, then $g\left(D\right)=\left\{z_{0}\right\}\subset D$, which is the first case; if $z_{0}\in\partial D$, then $g\equiv z_{0}\in\partial D$, which is the second case. The proposition is proved. $\blacksquare$

### Problem 3

(Problem 11.3-5) (Vitali–Porter) Let $\left\{f_{n}\right\}$ be a sequence of holomorphic functions on a domain $D\subset\mathbb{C}$, uniformly bounded on every compact subset of $D$. Given a sequence $z_{m}\in D$ with $z_{m}\to z_{\infty}\in D$, suppose $\lim_{n\to\infty}f_{n}\left(z_{m}\right)=w_{m}$ for all $\forall m\in\mathbb{N}$. Prove: there exists a holomorphic function $f$ on $D$ such that $f_{n}$ converges normally on $D$ to $f$.

### Solution to Problem 3

By **Theorem 11.1.3 (Montel)**, $\left\{f_{n}\right\}$ is normal on $D$: every subsequence has a further subsequence converging normally on $D$. Suppose $f_{n_{k}}\to f$ normally; by **Theorem 11.1.2**, $f$ is holomorphic on $D$. For each $m$, from $f_{n_{k}}\to f$ uniformly near $\left\{z_{m}\right\}$ and the condition $\lim_{n}f_{n}\left(z_{m}\right)=w_{m}$, we get $f\left(z_{m}\right)=w_{m}$.

Now we show that the whole sequence converges to $f$. If not, there exist a compact set $K\subset D$, $\varepsilon>0$, and a subsequence $f_{n'_{j}}$ such that $\sup_{K}\left|f_{n'_{j}}-f\right|\ge\varepsilon$. By Montel, $f_{n'_{j}}$ has a subsequence converging normally to some holomorphic $\widetilde f$. Then $\widetilde f\left(z_{m}\right)=w_{m}=f\left(z_{m}\right)$ for all $m$; since $z_{m}\to z_{\infty}\in D$ has an accumulation point, by **Theorem 9.3.2 (Identity Theorem)** $\widetilde f=f$. This contradicts $\sup_{K}\left|f_{n'_{j}}-f\right|\ge\varepsilon$ while $f_{n'_{j}}\to f$ on $K$. Hence $f_{n}\to f$ normally on $D$. $\blacksquare$

### Problem 4

(Problem 11.3-6) Let $D\subset\mathbb{C}$ be a domain, $f$ holomorphic on $D$, and $f:D\to f\left(D\right)$ a conformal map. Prove: the area of the domain $f\left(D\right)$ equals $\iint_{D}\left|f'\left(z\right)\right|^{2}\,dx\,dy$.

### Solution to Problem 4

Write $f\left(z\right)=u\left(x,y\right)+iv\left(x,y\right)$. Since $f:D\to f\left(D\right)$ is conformal, $f$ is univalent and $f'\ne0$, so $f$ is a $C^{1}$ diffeomorphism from $D$ to $f\left(D\right)$. By the change-of-variables formula for double integrals,

$$
\operatorname{Area}\left(f\left(D\right)\right)=\iint_{D}\left|\det J_{f}\left(x,y\right)\right|\,dx\,dy,
$$

where $J_{f}=\begin{bmatrix}u_{x}&u_{y}\\v_{x}&v_{y}\end{bmatrix}$ is the Jacobian matrix. By the Cauchy–Riemann equations $u_{x}=v_{y}$, $u_{y}=-v_{x}$,

$$
\det J_{f}=u_{x}v_{y}-u_{y}v_{x}=u_{x}^{2}+u_{y}^{2}=\left|f'\left(z\right)\right|^{2}.
$$

Hence $\operatorname{Area}\left(f\left(D\right)\right)=\iint_{D}\left|f'\left(z\right)\right|^{2}\,dx\,dy$. $\blacksquare$

### Problem 5

(Problem 11.3-15) Let $\left\{f_{n}\right\}$ be a sequence of holomorphic functions on an open set $\Omega\subset\mathbb{C}$. Suppose there exists a sequence of positive real numbers $c_{n}>0$ such that $\sum_{n=1}^{+\infty}c_{n}<+\infty$ and $\left|f_{n}\left(z\right)-1\right|\le c_{n}$ for all $\forall z\in\Omega$. Prove:

(i) the infinite product $\prod_{n=1}^{+\infty}f_{n}\left(z\right)$ converges uniformly on $\Omega$ to a holomorphic function $f$ on $\Omega$;

(ii) if none of the $f_{n}\left(z\right)$ vanishes on $\Omega$, then $\frac{f'\left(z\right)}{f\left(z\right)}=\sum_{n=1}^{+\infty}\frac{f_{n}'\left(z\right)}{f_{n}\left(z\right)}$.

### Solution to Problem 5

(i) Write $P_{n}\left(z\right)=\prod_{k=1}^{n}f_{k}\left(z\right)$. From $\left|f_{k}\left(z\right)-1\right|\le c_{k}$, we have $\left|f_{k}\left(z\right)\right|\le1+c_{k}$, hence

$$
\left|P_{n}\left(z\right)\right|\le\prod_{k=1}^{n}\left(1+c_{k}\right)\le\exp\left(\sum_{k=1}^{n}c_{k}\right)\le e^{C},
$$

where $C=\sum_{k=1}^{+\infty}c_{k}<+\infty$. Then

$$
\left|P_{n}\left(z\right)-P_{n-1}\left(z\right)\right|=\left|P_{n-1}\left(z\right)\right|\left|f_{n}\left(z\right)-1\right|\le e^{C}c_{n}.
$$

Since $\sum c_{n}$ converges, $\sum\left|P_{n}-P_{n-1}\right|$ converges uniformly on $\Omega$, so $P_{n}\to f$ uniformly on $\Omega$. By **Theorem 11.1.2**, $f$ is holomorphic on $\Omega$.

(ii) Choose $N_{0}$ large enough so that $\sum_{n>N_{0}}c_{n}<\frac{1}{2}$. For $n>N_{0}$, $\left|f_{n}\left(z\right)-1\right|\le c_{n}$; taking $c_{n}$ small enough (by convergence) ensures $f_{n}\left(z\right)\ne0$; and $\left|P_{n}\left(z\right)\right|\ge\prod_{k=1}^{n}\left(1-c_{k}\right)>0$ locally, so $f$ is nonvanishing on $\Omega$. Since $P_{n}\to f$ normally and locally $P_{n}\ne0$, the logarithmic derivatives satisfy $\frac{P_{n}'}{P_{n}}\to\frac{f'}{f}$ normally. For a finite product,

$$
\frac{P_{n}'\left(z\right)}{P_{n}\left(z\right)}=\sum_{k=1}^{n}\frac{f_{k}'\left(z\right)}{f_{k}\left(z\right)},
$$

and letting $n\to\infty$ gives $\frac{f'\left(z\right)}{f\left(z\right)}=\sum_{n=1}^{+\infty}\frac{f_{n}'\left(z\right)}{f_{n}\left(z\right)}$. $\blacksquare$
