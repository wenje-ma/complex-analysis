# Assignment 23

> **Definition 20.1.1** (Riemann $\zeta$-Function)<br>$$\zeta\left(z\right)=\sum_{n=1}^{+\infty}\frac1{n^{z}},\quad\operatorname{Re}z>1;$$ by the Euler product $$\zeta\left(z\right)=\prod_{p}\left(1-p^{-z}\right)^{-1}$$ it has no zeros.

> **Theorem 20.1.6** (Meromorphic Continuation)<br>$\zeta$ extends meromorphically to $\mathbb{C}$, with a simple pole only at $z=1$, and $$\lim_{z\to1}\left(\zeta\left(z\right)-\frac1{z-1}\right)=\gamma$$ (Euler's constant).

> **Theorem 20.2.2** (Functional Equation)<br>$$\zeta\left(z\right)=2^{z}\pi^{z-1}\sin\frac{\pi z}{2}\,\Gamma\left(1-z\right)\zeta\left(1-z\right).$$

> **Corollary 20.2.3**<br>The trivial zeros of $\zeta$ are exactly $-2,-4,-6,\ldots$; all nontrivial zeros lie in the critical strip $0<\operatorname{Re}z<1$.

### Problem 1

(Problem 20.3-2) Let the sequence $a_{n}\in\mathbb{C}$, $n\in\mathbb{N}$, satisfy the estimate $\left|a_{n}\right|\le Cn^{k}$. Prove: the series $\sum_{n=1}^{+\infty}a_{n}n^{-z}$ is holomorphic on the half-plane $\left\{\operatorname{Re}z>k+1\right\}$.

### Solution to Problem 1

For $z$ with $\operatorname{Re}z>k+1$: $\left|a_{n}n^{-z}\right|=\left|a_{n}\right|n^{-\operatorname{Re}z}\le Cn^{-\left(\operatorname{Re}z-k\right)}$. Since $\operatorname{Re}z-k>1$, the series $\sum_{n}n^{-\left(\operatorname{Re}z-k\right)}$ converges, so the original series converges absolutely and uniformly on every compact subset of $\left\{\operatorname{Re}z>k+1\right\}$. The limit of a uniformly convergent series of holomorphic functions is holomorphic, so the series defines a holomorphic function on the half-plane $\left\{\operatorname{Re}z>k+1\right\}$. $\blacksquare$

### Problem 2

(Problem 20.3-3) Prove: (i) $\zeta\left(\bar z\right)=\overline{\zeta\left(z\right)}$ for all $\forall z\in\mathbb{C}\setminus\left\{1\right\}$; (ii) if $z\in\mathbb{C}\setminus\mathbb{R}$ is a zero of the $\zeta$-function, then $\bar z$, $1-z$, $1-\bar z$ are all zeros.

### Solution to Problem 2

(i) On $\operatorname{Re}z>1$, $n$ is real, $\overline{n^{-z}}=\overline{e^{-z\log n}}=e^{-\bar z\log n}=n^{-\bar z}$; taking conjugates term by term gives $\overline{\zeta\left(z\right)}=\sum_{n}n^{-\bar z}=\zeta\left(\bar z\right)$. By analytic continuation (identity theorem), the identity holding on $\operatorname{Re}z>1$ extends to $\mathbb{C}\setminus\left\{1\right\}$, so $\zeta\left(\bar z\right)=\overline{\zeta\left(z\right)}$ for all $\forall z\in\mathbb{C}\setminus\left\{1\right\}$.

(ii) Let $z$ be a non-real zero, $\zeta\left(z\right)=0$. By (i), $\zeta\left(\bar z\right)=\overline{\zeta\left(z\right)}=0$, so $\bar z$ is a zero. By **Theorem 20.2.2 (Functional Equation)**, $\zeta\left(z\right)=2^{z}\pi^{z-1}\sin\frac{\pi z}{2}\Gamma\left(1-z\right)\zeta\left(1-z\right)$. Since $z$ is non-real, $\sin\frac{\pi z}{2}\ne0$, $\Gamma\left(1-z\right)\ne0$, and the factors $2^{z}\pi^{z-1}\ne0$, so $\zeta\left(1-z\right)=0$. Again by (i), $\zeta\left(1-\bar z\right)=\overline{\zeta\left(1-z\right)}=0$. Hence $\bar z$, $1-z$, $1-\bar z$ are all zeros. $\blacksquare$

### Problem 3

(Problem 20.3-4, Riemann) Let $\xi\left(z\right)=\frac12 z\left(z-1\right)\pi^{-z/2}\Gamma\left(\frac z2\right)\zeta\left(z\right)$. Prove: (i) $\xi\left(z\right)$ is entire; (ii) the zeros of $\xi\left(z\right)$ are exactly the non-real zeros of $\zeta\left(z\right)$; (iii) $\xi\left(1-z\right)=\xi\left(z\right)$; (iv) $\xi\left(z\right)$ takes real values on the line $\operatorname{Re}z=\frac12$.

### Solution to Problem 3

(i) $\zeta$ has only a simple pole at $z=1$, and the factor $\frac12 z\left(z-1\right)$ vanishes at $z=1$, canceling this pole; the poles of $\Gamma\left(z/2\right)$ are at $z=0,-2,-4,\ldots$. At $z=0$, the factor $z$ vanishes, and $z\left(z-1\right)\to0$, $\Gamma\left(z/2\right)\sim\frac{2}{z}$, so $\frac12 z\left(z-1\right)\Gamma\left(z/2\right)$ is finite at $0$ (in fact $\xi\left(0\right)=\frac12$). At $z=-2k$ ($k\ge1$), $\Gamma\left(z/2\right)=\Gamma\left(-k\right)$ has a pole, but $\zeta\left(-2k\right)=0$ (trivial zeros, **Corollary 20.2.3**), canceling the pole. Hence all potential singularities of $\xi$ are removable, and $\xi$ is entire.

(ii) $\frac12 z\left(z-1\right)\pi^{-z/2}\Gamma\left(z/2\right)$ has no zeros (at $z=0,1$, $\xi$ takes finite nonzero values $\xi\left(0\right)=\frac12$, $\xi\left(1\right)=\frac12\Gamma\left(\frac12\right)\ne0$; $\pi^{-z/2},\Gamma\left(z/2\right)$ both have no zeros). Hence the zeros of $\xi$ are exactly the zeros of $\zeta$ with the real zeros removed (the trivial zeros $-2,-4,\ldots$ are canceled by the poles of $\Gamma$, and $z=0,1$ are not zeros of $\zeta$). Since all nontrivial zeros of $\zeta$ lie in the critical strip and are non-real, the zeros of $\xi$ are exactly the non-real zeros of $\zeta$.

(iii) By **Theorem 20.2.2**:

$$
\xi\left(z\right)=\frac12 z\left(z-1\right)2^{z}\pi^{\frac z2}\frac{\Gamma\left(1-z\right)}{\Gamma\left(1-\frac z2\right)}\zeta\left(1-z\right).
$$

Using Legendre's formula $\Gamma\left(1-z\right)=2^{1-z}\pi^{-\frac12}\Gamma\left(\frac{1-z}{2}\right)\Gamma\left(1-\frac z2\right)$, we get

$$
\xi\left(z\right)=\frac12 z\left(z-1\right)\pi^{\frac{z-1}{2}}\Gamma\left(\frac{1-z}{2}\right)\zeta\left(1-z\right)=\xi\left(1-z\right).
$$

(iv) The coefficients of $\xi$ are all real (since $\pi,\Gamma,\zeta$ take real values on the real axis), so $\xi\left(\bar z\right)=\overline{\xi\left(z\right)}$. For $z=\frac12+it$, $\bar z=1-z$, and by (iii), $\xi\left(z\right)=\xi\left(1-z\right)=\xi\left(\bar z\right)=\overline{\xi\left(z\right)}$, so $\xi\left(z\right)\in\mathbb{R}$ on $\operatorname{Re}z=\frac12$. $\blacksquare$

### Problem 4

(Problem 20.3-5, Dirichlet) Let $\zeta_{-}\left(z\right)=1-\frac1{2^{z}}+\frac1{3^{z}}-\cdots=\sum_{n=1}^{+\infty}\frac{\left(-1\right)^{n+1}}{n^{z}}$. Prove: (i) the series defining $\zeta_{-}\left(z\right)$ converges for all $\operatorname{Re}z>0$, giving a holomorphic function on the half-plane $\operatorname{Re}s>0$; (ii) if $z>1$, then $\zeta_{-}\left(z\right)=\left(1-2^{1-z}\right)\zeta\left(z\right)$; (iii) using the functional equation in (ii), verify that $\zeta_{-}\left(z\right)$ has no zeros in the right half-plane $\operatorname{Re}z>1$; (iv) using (ii), verify that $\zeta$ has no zeros on the real interval $\left(0,1\right)$.

### Solution to Problem 4

(i) For $\operatorname{Re}z>0$, $\left|\frac{\left(-1\right)^{n+1}}{n^{z}}\right|=n^{-\operatorname{Re}z}\to0$ and decreases monotonically, so the alternating series converges. On compact subsets $\left\{\operatorname{Re}z\ge\delta>0\right\}$, the remainder of the alternating series is bounded by the first term, so it converges uniformly; hence $\zeta_{-}$ is holomorphic on $\left\{\operatorname{Re}z>0\right\}$.

(ii) For $z>1$ the series converges absolutely; separate the even terms:

$$
\zeta_{-}\left(z\right)=\sum_{n=1}^{+\infty}\frac1{n^{z}}-2\sum_{n=1}^{+\infty}\frac1{\left(2n\right)^{z}}=\zeta\left(z\right)-2^{1-z}\zeta\left(z\right)=\left(1-2^{1-z}\right)\zeta\left(z\right).
$$

(iii) By (ii) and analytic continuation, for $\operatorname{Re}z>1$, $\zeta_{-}\left(z\right)=\left(1-2^{1-z}\right)\zeta\left(z\right)$. Since $\operatorname{Re}z>1$, $\left|2^{1-z}\right|=2^{1-\operatorname{Re}z}<1$, so $1-2^{1-z}\ne0$; also, by the Euler product in **Definition 20.1.1**, $\zeta\left(z\right)=\prod_{p}\left(1-p^{-z}\right)^{-1}\ne0$. Hence $\zeta_{-}\left(z\right)\ne0$ for $\operatorname{Re}z>1$.

(iv) By analytic continuation from (ii), for $x\in\left(0,1\right)$, $\zeta_{-}\left(x\right)=\left(1-2^{1-x}\right)\zeta\left(x\right)$. Since $0<x<1$, $1-x>0$, $2^{1-x}>1$, $1-2^{1-x}\ne0$; and $\zeta_{-}\left(x\right)=\sum_{n}\frac{\left(-1\right)^{n+1}}{n^{x}}>0$ (the alternating series has first term $1>0$, the absolute values decrease, and $\frac{1}{2^{x}}<1$). Hence $\zeta\left(x\right)\ne0$ on $\left(0,1\right)$. $\blacksquare$
