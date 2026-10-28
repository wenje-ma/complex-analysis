# week25

> **Theorem 21.2.3 (Picard's Little Theorem)**<br>The range of a nonconstant entire function omits at most one complex number; equivalently, a nonconstant entire function assumes every complex value except at most one point infinitely many times.

> **Definition 22.1.5 (Normal Family)**<br>A family $\mathcal{F}$ of meromorphic functions on a domain $D$ is called normal on $D$ if every sequence in $\mathcal{F}$ has a subsequence converging in $\mathfrak{C}\left(D,\widehat{\mathbb{C}}\right)$ (uniformly on compact subsets of $D$ in the spherical chordal metric to a meromorphic function or to $\infty$).

> **Theorem 22.1.7 (Marty's Criterion)**<br>$\mathcal{F}$ is normal on $D$ iff for every compact subset $K\subset D$, the spherical derivative

$$
f^{\#}\left(z\right)=\frac{2\left|f'\left(z\right)\right|}{1+\left|f\left(z\right)\right|^{2}}
$$

is uniformly bounded on $K$ for $f\in\mathcal{F}$.

> **Theorem 22.2.1 (Zalcman's Lemma)**<br>$\mathcal{F}$ is not normal iff there exist $f_{n}\in\mathcal{F}$, $z_{n}\to z_{0}\in D$, $\rho_{n}\to0^{+}$ such that $g_{n}\left(w\right):=f_{n}\left(z_{n}+\rho_{n}w\right)$ converges locally uniformly to a nonconstant entire or meromorphic function.

> **Theorem 22.2.3 (Montel's Theorem)**<br>A family of meromorphic functions on a domain $D$ that uniformly omits three distinct values (points of the extended plane) is normal.

---

## 22.4-1

Let $\mathcal{F}$ be a family of meromorphic functions on a domain $D\subset\mathbb{C}$, and suppose that for every $a\in D$ there is a neighborhood $U\subset D$ on which $\mathcal{F}$ is normal. Prove: $\mathcal{F}$ is normal on $D$.

### Solution 22.4-1

Take an exhaustion $\left\{K_{m}\right\}$ of $D$: compact sets $K_{1}\subset K_{2}\subset\cdots\subset D$, $\bigcup_{m}K_{m}=D$, and $K_{m}\subset K_{m+1}^{\circ}$. Fix $m$: by compactness, $K_{m}$ is covered by finitely many neighborhoods $U_{a}$, and $\mathcal{F}$ is normal on each $U_{a}$.

First show that $\mathcal{F}$ is normal on $K_{m}$. Take any sequence $\left\{f_{n}\right\}\subset\mathcal{F}$. Since $\mathcal{F}$ is normal on the $U_{a}$, by a finite-cover diagonal argument one can successively extract subsequences $\left\{f_{n}^{\left(j\right)}\right\}$ converging locally uniformly on $U_{a_{j}}$ ($j=1,\ldots,N$). Hence there is a subsequence of $\left\{f_{n}\right\}$ converging uniformly on compact subsets of $K_{m}$.

Then apply a diagonal argument on all of $D$: for each $m$, extract a subsequence converging locally uniformly on $K_{m}$; the diagonal subsequence converges locally uniformly on every $K_{m}$. Since $\left\{K_{m}\right\}$ exhausts $D$, this subsequence converges uniformly on compact subsets of $D$. By **Definition 22.1.5 (Normal Family)**, $\mathcal{F}$ is normal on $D$. $\blacksquare$

---

## 22.4-2

Let $\mathcal{F}$ be a family of holomorphic functions on a domain $D\subset\mathbb{C}$, and suppose there are distinct $a,b\in\mathbb{C}$ and an integer $n\ge1$ such that for every $f\in\mathcal{F}$, $f\left(D\right)\subset\mathbb{C}\setminus\left\{a\right\}$ and $f^{-1}\left(b\right)\cap D$ has at most $n$ points. Prove: $\mathcal{F}$ is normal on $D$.

### Solution 22.4-2

Suppose for contradiction that $\mathcal{F}$ is not normal. By **Theorem 22.2.1 (Zalcman's Lemma)**, there exist $f_{n}\in\mathcal{F}$, $z_{n}\to z_{0}\in D$, $\rho_{n}\to0^{+}$ such that $g_{n}\left(w\right):=f_{n}\left(z_{n}+\rho_{n}w\right)$ converges locally uniformly to a nonconstant entire function $g$.

Since each $f_{n}$ omits $a$, the limit $g$ also omits $a$ ($g\left(\mathbb{C}\right)\subset\mathbb{C}\setminus\left\{a\right\}$). By **Theorem 21.2.3 (Picard's Little Theorem)**, the nonconstant entire function $g$ has range $\mathbb{C}$ or $\mathbb{C}$ minus one point; since $a$ is already omitted, $g$ takes $b$ ($b\ne a$) infinitely often: $g$ has infinitely many $b$-points, with no accumulation point.

Take a compact disk $K$ containing $n+1$ of the $b$-points of $g$. Since $g_{n}\to g$ uniformly on $K$ and $g$ takes the value $b$ at these points (which have no accumulation, so disjoint small neighborhoods fit inside $K$), for large $n$, $g_{n}$ has at least $n+1$ $b$-points in $K$ (by Rouche's theorem / persistence of zeros under uniform convergence). But the $b$-points of $g_{n}$ are exactly the points of $f_{n}^{-1}\left(b\right)$ lying in $z_{n}+\rho_{n}K$, which are at most $n$; contradiction. Hence $\mathcal{F}$ is normal. $\blacksquare$

---

## 22.4-4

Let $\mathcal{F}$ be a family of meromorphic functions on a domain $D\subset\mathbb{C}$. Prove: $\mathcal{F}$ is normal on $D$ iff for every $z\in D$ there is a neighborhood $U\left(z\right)\subset D$ such that either $\left|f\left(\zeta\right)\right|< 2$ or $\frac1{\left|f\left(\zeta\right)\right|}< 2$ for all $\zeta\in U\left(z\right)$ and all $f\in\mathcal{F}$ (the same alternative for the whole family).

### Solution 22.4-4

Sufficiency. Suppose for every $z_{0}\in D$ there is a neighborhood $U=U\left(z_{0}\right)$ such that for all $f\in\mathcal{F}$ and $\zeta\in U$, either $\left|f\left(\zeta\right)\right|< 2$ or $\left|f\left(\zeta\right)\right|> \frac12$.

Case 1: $\left|f\left(\zeta\right)\right|< 2$ on $U$ (uniformly bounded). Take a compact sub-neighborhood $K\ni z_{0}$; by Cauchy estimates, $f'$ is uniformly bounded on $K$, so the spherical derivative $f^{\#}=\frac{2\left|f'\right|}{1+\left|f\right|^{2}}\le2\left|f'\right|$ is uniformly bounded.

Case 2: $\left|f\left(\zeta\right)\right|> \frac12$ on $U$, i.e. $\left|f\right|$ has a positive lower bound; then $g:=\frac1f$ is uniformly bounded, and by Cauchy estimates $g'$ is uniformly bounded, so $f'=\frac{g'}{g^{2}}$ is uniformly bounded ($\left|g^{2}\right|> \frac14$), and $f^{\#}\le2\left|f'\right|$ is uniformly bounded.

Thus the spherical derivative is uniformly bounded in a neighborhood of every point; by compactness, it is uniformly bounded on every compact subset $K\subset D$. By **Theorem 22.1.7 (Marty's Criterion)**, $\mathcal{F}$ is normal on $D$.

Necessity. Suppose $\mathcal{F}$ is normal on $D$. By Marty's criterion, for every $z_{0}\in D$ there is a compact neighborhood $K$ and $M$ such that $f^{\#}\left(\zeta\right)\le M$ for all $f\in\mathcal{F}$ and $\zeta\in K$. Suppose for contradiction that in every small neighborhood $U\ni z_{0}$ there are $f\in\mathcal{F}$ and $\zeta\in U$ with $\left|f\left(\zeta\right)\right|\ge2$ and $\frac1{\left|f\left(\zeta\right)\right|}\ge2$ (i.e. $\left|f\left(\zeta\right)\right|\le\frac12$). These cannot hold simultaneously at a single point, so at each $z_{0}$ there is a neighborhood $U$ such that for all $f\in\mathcal{F}$ and $\zeta\in U$, either $\left|f\left(\zeta\right)\right|< 2$ or $\frac1{\left|f\left(\zeta\right)\right|}< 2$ (shrinking $U$ suffices, since bounded spherical derivative prevents $\left|f\right|$ from crossing the values between $2$ and $\frac12$). $\blacksquare$
