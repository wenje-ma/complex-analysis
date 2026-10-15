# Assignment 25

> **Definition 22.1.5** (Normal Family)<br>A family $\mathcal{F}$ of meromorphic functions on a domain $D$ is called normal on $D$ if every sequence in $\mathcal{F}$ has a convergent subsequence in $\mathfrak{C}\left(D,\hat{\mathbb{C}}\right)$ (converging uniformly on compact subsets of $D$, in the spherical metric, to a meromorphic function or to $\infty$).

> **Theorem 22.1.7** (Marty)<br>$\mathcal{F}$ is normal on $D$ if and only if for every compact subset $K$ of $D$, the spherical derivative $$f^{\#}\left(z\right)=\frac{2\left|f'\left(z\right)\right|}{1+\left|f\left(z\right)\right|^{2}}$$ is uniformly bounded on $K$ (over $f\in\mathcal{F}$).

> **Theorem 22.2.1** (Zalcman)<br>$\mathcal{F}$ is not normal if and only if there exist $f_{n}\in\mathcal{F}$, $z_{n}\to z_{0}\in D$, $\rho_{n}\to0^{+}$ such that $g_{n}\left(w\right):=f_{n}\left(z_{n}+\rho_{n}w\right)$ converges locally uniformly on compacta to a nonconstant entire or meromorphic function.

> **Theorem 22.2.3** (Montel)<br>A family of meromorphic functions on a domain $D$ that uniformly omits three distinct values (in the extended complex plane) is normal.

### Problem 1

(Problem 22.4-1) Let $\mathcal{F}$ be a family of meromorphic functions on a domain $D\subset\mathbb{C}$, and suppose that for every $a\in D$, there exists a neighborhood $U\subset D$ such that $\mathcal{F}$ is a normal family on $U$. Prove: $\mathcal{F}$ is a normal family on $D$.

### Solution to Problem 1

Take an exhaustion $\left\{K_{m}\right\}$ of $D$: compact sets $K_{1}\subset K_{2}\subset\cdots\subset D$, $\bigcup_{m}K_{m}=D$, and $K_{m}\subset K_{m+1}^{\circ}$. Fix $m$: by compactness, $K_{m}$ is covered by finitely many neighborhoods $U_{a}$, and $\mathcal{F}$ is normal on each $U_{a}$.

First prove that $\mathcal{F}$ is normal on $K_{m}$. Take any sequence $\left\{f_{n}\right\}\subset\mathcal{F}$. Since $\mathcal{F}$ is normal on each $U_{a}$, by finite covering and a diagonal extraction, we can successively extract subsequences $\left\{f_{n}^{\left(j\right)}\right\}$ such that $\left\{f_{n}^{\left(j\right)}\right\}$ converges locally uniformly on $U_{a_{j}}$ ($j=1,\ldots,N$). Hence there exists a subsequence of $\left\{f_{n}\right\}$ that converges locally uniformly on $K_{m}$.

Then apply a diagonal argument to the whole $D$: for each $m$, extract a subsequence converging locally uniformly on $K_{m}$; the diagonal subsequence converges locally uniformly on every $K_{m}$. Since $\left\{K_{m}\right\}$ exhausts $D$, this subsequence converges locally uniformly on $D$. By **Definition 22.1.5**, $\mathcal{F}$ is normal on $D$. $\blacksquare$

### Problem 2

(Problem 22.4-2) Let $\mathcal{F}$ be a family of holomorphic functions on a domain $D\subset\mathbb{C}$, and suppose there exist distinct $a,b\in\mathbb{C}$ and a natural number $n\ge1$ such that for every $f\in\mathcal{F}$, $f\left(D\right)\subset\mathbb{C}\setminus\left\{a\right\}$ and $f^{-1}\left(b\right)\cap D$ has at most $n$ elements. Prove: $\mathcal{F}$ is a normal family on $D$.

### Solution to Problem 2

Suppose, for contradiction, that $\mathcal{F}$ is not normal. By **Theorem 22.2.1 (Zalcman)**, there exist $f_{n}\in\mathcal{F}$, $z_{n}\to z_{0}\in D$, $\rho_{n}\to0^{+}$ such that $g_{n}\left(w\right):=f_{n}\left(z_{n}+\rho_{n}w\right)$ converges locally uniformly on compacta to a nonconstant entire function $g$.

Since each $f_{n}$ omits $a$, the limit $g$ also omits $a$ ($g\left(\mathbb{C}\right)\subset\mathbb{C}\setminus\left\{a\right\}$). By **Theorem 21.2.3 (Little Picard Theorem)**, the range of the nonconstant entire function $g$ is $\mathbb{C}$ or $\mathbb{C}$ minus one point; since $a$ is already omitted, $g$ takes the value $b$ ($b\ne a$) infinitely often: $g$ has infinitely many $b$-points, which have no accumulation points.

Take a compact disk $K$ containing $n+1$ of the $b$-points of $g$. Since $g_{n}\to g$ uniformly on $K$ and $g$ takes the value $b$ at these points (which have no accumulation points, so we can choose disjoint small neighborhoods inside $K$), for sufficiently large $n$, $g_{n}$ has at least $n+1$ $b$-points inside $K$ (Rouché/uniform convergence preserves the number of zeros). But the $b$-points of $g_{n}$ are exactly the points of $f_{n}^{-1}\left(b\right)$ lying in $z_{n}+\rho_{n}K$, which are at most $n$, a contradiction. Hence $\mathcal{F}$ is normal. $\blacksquare$

### Problem 3

(Problem 22.4-4) Let $\mathcal{F}$ be a family of meromorphic functions on a domain $D\subset\mathbb{C}$. Prove: $\mathcal{F}$ is a normal family on $D$ if and only if for every $z\in D$, there exists a neighborhood $U\left(z\right)\subset D$ such that either $\left|f\left(\zeta\right)\right|<2$ or $\frac1{\left|f\left(\zeta\right)\right|}<2$, $\forall\zeta\in U\left(z\right)$, $\forall f\in\mathcal{F}$ (the same case holds for the whole family).

### Solution to Problem 3

Sufficiency. Suppose that for every point $z_{0}\in D$, there exists a neighborhood $U=U\left(z_{0}\right)$ such that for all $f\in\mathcal{F}$ and $\zeta\in U$, either $\left|f\left(\zeta\right)\right|<2$ or $\left|f\left(\zeta\right)\right|>\frac12$.

Case 1: $\left|f\left(\zeta\right)\right|<2$ on $U$ (uniformly bounded). Take a compact sub-neighborhood $K\ni z_{0}$; by Cauchy's estimates, $f'$ is uniformly bounded on $K$, so the spherical derivative $f^{\#}=\frac{2\left|f'\right|}{1+\left|f\right|^{2}}\le2\left|f'\right|$ is uniformly bounded.

Case 2: $\left|f\left(\zeta\right)\right|>\frac12$ on $U$, i.e. $\left|f\right|$ has a positive lower bound; $g:=\frac1f$ is uniformly bounded, by Cauchy's estimates $g'$ is uniformly bounded, so $f'=\frac{g'}{g^{2}}$ is uniformly bounded ($\left|g^{2}\right|>\frac14$), and $f^{\#}\le2\left|f'\right|$ is uniformly bounded.

Hence the spherical derivative is uniformly bounded in a neighborhood of every point; by compactness, the spherical derivative is uniformly bounded on every compact subset $K\subset D$. By **Theorem 22.1.7 (Marty)**, $\mathcal{F}$ is normal on $D$.

Necessity. Suppose $\mathcal{F}$ is normal on $D$. By Marty's theorem, for every $z_{0}\in D$ there exists a compact neighborhood $K$ and $M$ such that $f^{\#}\left(\zeta\right)\le M$, $\forall f\in\mathcal{F}$, $\forall\zeta\in K$. Suppose, for contradiction, that for every small neighborhood $U\ni z_{0}$ there exist $f\in\mathcal{F}$ and $\zeta\in U$ with $\left|f\left(\zeta\right)\right|\ge2$ and $\frac1{\left|f\left(\zeta\right)\right|}\ge2$ (i.e. $\left|f\left(\zeta\right)\right|\le\frac12$). This cannot hold at a single point, so at every point $z_{0}$ there exists a neighborhood $U$ such that $\forall f\in\mathcal{F},\forall\zeta\in U$, either $\left|f\left(\zeta\right)\right|<2$ or $\frac1{\left|f\left(\zeta\right)\right|}<2$ (take a smaller neighborhood, since the bounded spherical derivative prevents $\left|f\right|$ from crossing between $2$ and $\frac12$). $\blacksquare$
