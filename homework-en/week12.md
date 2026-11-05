# week12

> **Definition 20.1.1 (Riemann Zeta Function)**
> 
> The Riemann zeta function is defined for $\operatorname{Re}z>1$ by the Dirichlet series

> **Theorem 20.1.6 (Meromorphic Continuation)**
> 
> $\zeta$ extends meromorphically to $\mathbb{C}$, with only a simple pole at $z=1$, and

> **Theorem 20.2.2 (Functional Equation)**
> 
> The Riemann zeta function satisfies the functional equation

> **Corollary 20.2.3 (Trivial Zeros and Critical Strip)**
> 
> The trivial zeros of $\zeta$ are exactly $-2,-4,-6,\ldots$; all nontrivial zeros lie in the critical strip $0<\operatorname{Re}z<1$.

> **Theorem 21.1.3 (Bloch's Theorem)**
> 
> There is a constant $B>0$ such that if $f$ is holomorphic on the unit disk with $f'\left(0\right)=1$, then $f\left(\mathbb{D}\right)$ contains a disk of radius at least $B$.

> **Theorem 21.2.3 (Picard's Little Theorem)**
> 
> A nonconstant entire function takes every value in $\mathbb{C}$ or all but one value.

> **Theorem 21.2.4 (Picard's Little Theorem, Meromorphic Form)**
> 
> A nonconstant meromorphic function omits at most two values.

> **Theorem 21.4 (Picard's Great Theorem)**
> 
> In any punctured neighborhood of an essential singularity, a holomorphic function takes every value infinitely often (with at most one exception).

> **Definition 22.1.5 (Normal Family)**
> 
> A family $\mathcal{F}$ of meromorphic functions on a domain $D$ is called normal on $D$ if every sequence in $\mathcal{F}$ has a subsequence converging in $\mathfrak{C}\left(D,\widehat{\mathbb{C}}\right)$ (uniformly on compact subsets of $D$ in the spherical chordal metric to a meromorphic function or to $\infty$).

> **Theorem 22.1.7 (Marty's Criterion)**
> 
> $\mathcal{F}$ is normal on $D$ iff for every compact subset $K\subset{D}$, the spherical derivative

$$
f^{\#}\left(z\right)=\frac{2\left|f'\left(z\right)\right|}{1+\left|f\left(z\right)\right|^{2}}
$$
is uniformly bounded on $K$ for $f\in\mathcal{F}$.

> **Theorem 22.2.1 (Zalcman's Lemma)**
> 
> $\mathcal{F}$ is not normal iff there exist $f_{n}\in\mathcal{F}$, $z_{n}\to{z}_{0}\in{D}$, $\rho_{n}\to0^{+}$ such that $g_{n}\left(w\right):=f_{n}\left(z_{n}+\rho_{n}w\right)$ converges locally uniformly to a nonconstant entire or meromorphic function.

> **Theorem 22.2.3 (Montel's Theorem)**
> 
> A family of meromorphic functions on a domain $D$ that uniformly omits three distinct values (points of the extended plane) is normal.

## 20.3-3

Prove: (i) $\zeta\left(\overline{z}\right)=\overline{\zeta\left(z\right)}$ for all $z\in\mathbb{C}\setminus\left\{1\right\}$; (ii) if $z\in\mathbb{C}\setminus\mathbb{R}$ is a zero of the zeta function, then $\overline{z}$, $1-z$, and $1-\overline{z}$ are all zeros.

### Solution to 20.3-3

(i) On $\operatorname{Re}z>1$, since $n$ is real, $\overline{n^{-z}}=\overline{e^{-z\log{n}}}=e^{-\overline{z}\log{n}}=n^{-\overline{z}}$; taking conjugates term by term gives $\overline{\zeta\left(z\right)}=\sum_{n}n^{-\overline{z}}=\zeta\left(\overline{z}\right)$. By analytic continuation (identity theorem), the equality on $\operatorname{Re}z>1$ extends to $\mathbb{C}\setminus\left\{1\right\}$, so $\zeta\left(\overline{z}\right)=\overline{\zeta\left(z\right)}$ for all $z\in\mathbb{C}\setminus\left\{1\right\}$.

(ii) Let $z$ be a non-real zero, $\zeta\left(z\right)=0$. By (i), $\zeta\left(\overline{z}\right)=\overline{\zeta\left(z\right)}=0$, so $\overline{z}$ is a zero. By **Theorem 20.2.2 (Functional Equation)** $\zeta\left(z\right)=2^{z}\pi^{z-1}\sin\frac{\pi{z}}{2}\Gamma\left(1-z\right)\zeta\left(1-z\right)$. Since $z$ is non-real, $\sin\frac{\pi{z}}{2}\ne0$, $\Gamma\left(1-z\right)\ne0$, and the factors $2^{z}\pi^{z-1}\ne0$, so $\zeta\left(1-z\right)=0$. Again by (i), $\zeta\left(1-\overline{z}\right)=\overline{\zeta\left(1-z\right)}=0$. Hence $\overline{z}$, $1-z$, and $1-\overline{z}$ are all zeros. $\blacksquare$

## 20.3-4

Let $\xi\left(z\right)=\frac12z\left(z-1\right)\pi^{-z/2}\Gamma\left(\frac{z}2\right)\zeta\left(z\right)$. Prove: (i) $\xi\left(z\right)$ is entire; (ii) the zeros of $\xi\left(z\right)$ are exactly the non-real zeros of $\zeta\left(z\right)$; (iii) $\xi\left(1-z\right)=\xi\left(z\right)$; (iv) $\xi\left(z\right)$ is real-valued on the line $\operatorname{Re}z=\frac12$.

### Solution to 20.3-4

(i) $\zeta$ has only a simple pole at $z=1$, which is canceled by the factor $\frac12z\left(z-1\right)$ vanishing at $z=1$; the poles of $\Gamma\left(z/2\right)$ are at $z=0,-2,-4,\ldots$. At $z=0$, the factor $z$ vanishes, while $z\left(z-1\right)\to0$ and $\Gamma\left(z/2\right)\sim\frac{2}{z}$, so $\frac12z\left(z-1\right)\Gamma\left(z/2\right)$ is finite at $0$ (in fact $\xi\left(0\right)=\frac12$). At $z=-2k$ ($k\ge1$), $\Gamma\left(z/2\right)=\Gamma\left(-k\right)$ has a pole, but $\zeta\left(-2k\right)=0$ (trivial zero, **Corollary 20.2.3 (Trivial Zeros and Critical Strip)**), canceling the pole. Hence all potential singularities of $\xi$ are removable, and $\xi$ is entire.

(ii) The factor $\frac12z\left(z-1\right)\pi^{-z/2}\Gamma\left(z/2\right)$ has no zeros (at $z=0,1$, $\xi$ takes finite nonzero values $\xi\left(0\right)=\frac12$, $\xi\left(1\right)=\frac12\Gamma\left(\frac12\right)\ne0$; $\pi^{-z/2}$ and $\Gamma\left(z/2\right)$ have no zeros). Hence the zeros of $\xi$ are exactly the zeros of $\zeta$ with the real zeros removed (the trivial zeros $-2,-4,\ldots$ are canceled by the poles of $\Gamma$, and $z=0,1$ are not zeros of $\zeta$). Since all nontrivial zeros of $\zeta$ lie in the critical strip and are non-real, the zeros of $\xi$ are exactly the non-real zeros of $\zeta$.

(iii) By **Theorem 20.2.2 (Functional Equation)**:

$$
\xi\left(z\right)=\frac12z\left(z-1\right)2^{z}\pi^{\frac{z}2}\frac{\Gamma\left(1-z\right)}{\Gamma\left(1-\frac{z}2\right)}\zeta\left(1-z\right).
$$

Using the Legendre duplication formula $\Gamma\left(1-z\right)=2^{1-z}\pi^{-\frac12}\Gamma\left(\frac{1-z}{2}\right)\Gamma\left(1-\frac{z}2\right)$, we get

$$
\xi\left(z\right)=\frac12z\left(z-1\right)\pi^{\frac{z-1}{2}}\Gamma\left(\frac{1-z}{2}\right)\zeta\left(1-z\right)=\xi\left(1-z\right).
$$

(iv) The coefficients of $\xi$ are all real (since $\pi,\Gamma,\zeta$ are real on the real axis), so $\xi\left(\overline{z}\right)=\overline{\xi\left(z\right)}$. For $z=\frac12+it$, $\overline{z}=1-z$; by (iii), $\xi\left(z\right)=\xi\left(1-z\right)=\xi\left(\overline{z}\right)=\overline{\xi\left(z\right)}$, so $\xi\left(z\right)\in\mathbb{R}$ on $\operatorname{Re}z=\frac12$. $\blacksquare$

## 20.3-5

Let $\zeta_{-}\left(z\right)=1-\frac1{2^{z}}+\frac1{3^{z}}-\cdots=\sum_{n=1}^{+\infty}\frac{\left(-1\right)^{n+1}}{n^{z}}$. Prove: (i) the series defining $\zeta_{-}\left(z\right)$ converges for all $\operatorname{Re}z>0$ and gives a holomorphic function on $\operatorname{Re}s>0$; (ii) if $z>1$, then $\zeta_{-}\left(z\right)=\left(1-2^{1-z}\right)\zeta\left(z\right)$; (iii) use the functional equation in (ii) to verify that $\zeta_{-}\left(z\right)$ has no zeros on the right half-plane $\operatorname{Re}z>1$; (iv) use (ii) to verify that $\zeta$ has no zeros on the real interval $\left(0,1\right)$.

### Solution to 20.3-5

(i) For $\operatorname{Re}z>0$, $\left|\frac{\left(-1\right)^{n+1}}{n^{z}}\right|=n^{-\operatorname{Re}z}\to0$ and decreases monotonically, so the alternating series converges. On compact subsets $\left\{\operatorname{Re}z\ge\delta>0\right\}$, the remainder of the alternating series is bounded by the first term, so convergence is uniform; hence $\zeta_{-}$ is holomorphic on $\left\{\operatorname{Re}z>0\right\}$.

(ii) For $z>1$ the series converges absolutely; separating the even terms:

$$
\zeta_{-}\left(z\right)=\sum_{n=1}^{+\infty}\frac1{n^{z}}-2\sum_{n=1}^{+\infty}\frac1{\left(2n\right)^{z}}=\zeta\left(z\right)-2^{1-z}\zeta\left(z\right)=\left(1-2^{1-z}\right)\zeta\left(z\right).
$$

(iii) By (ii) and analytic continuation, for $\operatorname{Re}z>1$, $\zeta_{-}\left(z\right)=\left(1-2^{1-z}\right)\zeta\left(z\right)$. Since $\operatorname{Re}z>1$, $\left|2^{1-z}\right|=2^{1-\operatorname{Re}z}<1$, so $1-2^{1-z}\ne0$; also by the Euler product in **Definition 20.1.1 (Riemann Zeta Function)**, $\zeta\left(z\right)=\prod_{p}\left(1-p^{-z}\right)^{-1}\ne0$. Hence $\zeta_{-}\left(z\right)\ne0$ for $\operatorname{Re}z>1$.

(iv) By analytic continuation from (ii), for $x\in\left(0,1\right)$, $\zeta_{-}\left(x\right)=\left(1-2^{1-x}\right)\zeta\left(x\right)$. Since $0<{}x<1$, $1-x>0$, $2^{1-x}>1$, so $1-2^{1-x}\ne0$; and $\zeta_{-}\left(x\right)=\sum_{n}\frac{\left(-1\right)^{n+1}}{n^{x}}>0$ (the alternating series has first term $1>0$, with decreasing absolute values and $\frac{1}{2^{x}}<1$). Hence $\zeta\left(x\right)\ne0$ on $\left(0,1\right)$. $\blacksquare$

## 21.5-4

Use the result of Exercise 21.5-3 (Landau) to prove Picard's little theorem.

### Solution to 21.5-4

Picard's little theorem: a nonconstant entire function cannot omit two distinct values.

By **Exercise 21.5-3 (Landau)**, there is a positive function $R\left(a\right)>0$ ($a\in\mathbb{C}\setminus\left\{0,1\right\}$) such that for every $a$, there is no holomorphic $f$ on the closed disk $\left\{\left|z\right|\le{R}\left(a\right)\right\}$ satisfying $f\left(0\right)=a$, $f'\left(0\right)=1$, and taking neither $0$ nor $1$.

Let $F$ be entire and omit $0,1$. If $F$ is nonconstant, choose $z_{0}$ with $F'\left(z_{0}\right)\ne0$; set $a:=F\left(z_{0}\right)\in\mathbb{C}\setminus\left\{0,1\right\}$. Define $g\left(w\right):=F\left(z_{0}+\frac{w}{F'\left(z_{0}\right)}\right)$; then $g$ is holomorphic on $\mathbb{C}$ (hence on the closed disk $\left\{\left|w\right|\le{R}\left(a\right)\right\}$), $g\left(0\right)=F\left(z_{0}\right)=a$, $g'\left(0\right)=1$, and $g$ takes neither $0$ nor $1$, contradicting Landau's result. Hence $F$ must be constant, proving Picard's little theorem. $\blacksquare$

## 21.5-5

Let $f,g,h$ be entire functions satisfying $e^{f}+e^{g}=h$. Prove: $h$ has either no zeros or infinitely many zeros.

### Solution to 21.5-5

Let $F:=e^{f}$, $G:=e^{g}$; both are zero-free entire functions, and $h=G\left(1+\frac{F}{G}\right)=G\left(1+e^{f-g}\right)$. Write $H:=e^{f-g}$; then $h=G\left(1+H\right)$. Since $G$ has no zeros, the zeros of $h$ are exactly the solutions of $1+H=0$, i.e. $e^{f-g}=-1$.

If $f-g$ is constant, then $H$ is constant: if $H\equiv-1$, then $h\equiv0$, which has no zeros; if $H\equiv{c}\ne-1$, then $h=G\left(1+c\right)$ has no zeros. Hence $h$ has no zeros.

If $f-g$ is nonconstant, by **Theorem 21.2.3 (Picard's Little Theorem)**, the range of the entire function $f-g$ is $\mathbb{C}$ or $\mathbb{C}$ minus one point, so it takes infinitely many values $\left(2k+1\right)\pi{i}$ ($k\in\mathbb{Z}$); hence $e^{f-g}$ equals $-1$ at infinitely many points, and $h$ has infinitely many zeros. $\blacksquare$

## 21.5-6

If $f,g$ are entire, $p,q$ are polynomials, and $e^{f}+p=e^{g}+q$ with $f\left(0\right)=g\left(0\right)$, prove: $f=g$ and $p=q$.

### Solution to 21.5-6

From $e^{f}-e^{g}=q-p$, i.e. $e^{g}\left(e^{f-g}-1\right)=q-p$. Suppose for contradiction that $f-g$ is nonconstant. Then the zeros of $e^{f-g}-1$ satisfy $f-g=2\pi{i}k$, $k\in\mathbb{Z}$. By **Theorem 21.2.3 (Picard's Little Theorem)**, the nonconstant entire function $f-g$ has range $\mathbb{C}$ or $\mathbb{C}$ minus one point, so it takes infinitely many values $2\pi{i}k$, and $e^{f-g}-1$ has infinitely many zeros. But $e^{g}$ on the left has no zeros, while $q-p$ on the right is a polynomial with at most finitely many zeros; since $e^{g}\left(e^{f-g}-1\right)$ and $q-p$ have the same zeros, this is a contradiction. Hence $f-g$ is a constant $c$.

From $f\left(0\right)=g\left(0\right)$, $c=0$, i.e. $f=g$. Substituting into $e^{f}+p=e^{f}+q$ gives $p=q$. $\blacksquare$

## 21.5-7

Let $\mathcal{E}\left(z\right)=\exp\left(2\pi{i}\cdot\exp\left(2\pi{i}z\right)\right)$, $z\in\mathbb{C}$, and let $f\left(z\right)$ and $g\left(z\right)$ be nonconstant entire functions with $\mathcal{E}\left(f\left(z\right)\right)=\mathcal{E}\left(g\left(z\right)\right)$ for all $z\in\mathbb{C}$. Prove: there exists $m\in\mathbb{Z}$ such that $f\left(z\right)=g\left(z\right)+m$ for all $z\in\mathbb{C}$.

### Solution to 21.5-7

From the property of $\exp$, $\exp\left(2\pi{i}\cdot{e}^{2\pi{i}f}\right)=\exp\left(2\pi{i}\cdot{e}^{2\pi{i}g}\right)$ implies $e^{2\pi{i}f}-e^{2\pi{i}g}\in\mathbb{Z}$; since this is continuous, it is constant, say $e^{2\pi{i}f}-e^{2\pi{i}g}=m\in\mathbb{Z}$.

Suppose for contradiction $m\ne0$; then $e^{2\pi{i}f}=e^{2\pi{i}g}+m$. Since $g$ is nonconstant entire, by **Theorem 21.2.3 (Picard's Little Theorem)**, the range of $g$ is $\mathbb{C}$ or $\mathbb{C}$ minus one point, so $e^{2\pi{i}g}$ takes every nonzero value (with at most one exception); since $m\ne0$, $-m$ is a nonzero value, so there is $z_{0}$ with $e^{2\pi{i}g\left(z_{0}\right)}=-m$, and then $e^{2\pi{i}f\left(z_{0}\right)}=-m+m=0$, contradicting that $\exp$ has no zeros. Hence $m=0$, i.e. $e^{2\pi{i}f}=e^{2\pi{i}g}$, so $2\pi{i}\left(f-g\right)=2\pi{i}k$, $k\in\mathbb{Z}$, i.e. $f\left(z\right)=g\left(z\right)+k$. $\blacksquare$

## 21.5-19

Let $f$ be an odd entire function on $\mathbb{C}$. Prove: $f\left(\mathbb{C}\right)=\mathbb{C}$.

### Solution to 21.5-19

$f$ is entire; by **Theorem 21.2.3 (Picard's Little Theorem)**, $f\left(\mathbb{C}\right)=\mathbb{C}$ or $f\left(\mathbb{C}\right)=\mathbb{C}\setminus\left\{a\right\}$ (omitting one value $a$). If $f$ is constant, oddness $f\left(-z\right)=-f\left(z\right)$ forces $f\equiv0$, whose range $\left\{0\right\}\ne\mathbb{C}$; so suppose $f$ is nonconstant, hence $f\left(\mathbb{C}\right)=\mathbb{C}$ or $\mathbb{C}\setminus\left\{a\right\}$.

Since $f$ is odd, $w\in{f}\left(\mathbb{C}\right)$ iff $-w\in{f}\left(\mathbb{C}\right)$ (replace $z$ by $-z$), so $f\left(\mathbb{C}\right)$ is symmetric about the origin. If $f\left(\mathbb{C}\right)=\mathbb{C}\setminus\left\{a\right\}$, symmetry requires $\mathbb{C}\setminus\left\{a\right\}=\mathbb{C}\setminus\left\{-a\right\}$, giving $a=-a$, i.e. $a=0$. But $f\left(0\right)=0$ (odd), so $0\in{f}\left(\mathbb{C}\right)$, contradicting $a=0$. Hence $f\left(\mathbb{C}\right)=\mathbb{C}$. $\blacksquare$

## 22.4-1

Let $\mathcal{F}$ be a family of meromorphic functions on a domain $D\subset\mathbb{C}$, and suppose that for every $a\in{D}$ there is a neighborhood $U\subset{D}$ on which $\mathcal{F}$ is normal. Prove: $\mathcal{F}$ is normal on $D$.

### Solution to 22.4-1

Take an exhaustion $\left\{K_{m}\right\}$ of $D$: compact sets $K_{1}\subset{K}_{2}\subset\cdots\subset{D}$, $\bigcup_{m}K_{m}=D$, and $K_{m}\subset{K}_{m+1}^{\circ}$. Fix $m$: by compactness, $K_{m}$ is covered by finitely many neighborhoods $U_{a}$, and $\mathcal{F}$ is normal on each $U_{a}$.

First show that $\mathcal{F}$ is normal on $K_{m}$. Take any sequence $\left\{f_{n}\right\}\subset\mathcal{F}$. Since $\mathcal{F}$ is normal on the $U_{a}$, by a finite-cover diagonal argument one can successively extract subsequences $\left\{f_{n}^{\left(j\right)}\right\}$ converging locally uniformly on $U_{a_{j}}$ ($j=1,\ldots,N$). Hence there is a subsequence of $\left\{f_{n}\right\}$ converging uniformly on compact subsets of $K_{m}$.

Then apply a diagonal argument on all of $D$: for each $m$, extract a subsequence converging locally uniformly on $K_{m}$; the diagonal subsequence converges locally uniformly on every $K_{m}$. Since $\left\{K_{m}\right\}$ exhausts $D$, this subsequence converges uniformly on compact subsets of $D$. By **Definition 22.1.5 (Normal Family)**, $\mathcal{F}$ is normal on $D$. $\blacksquare$

## 22.4-2

Let $\mathcal{F}$ be a family of holomorphic functions on a domain $D\subset\mathbb{C}$, and suppose there are distinct $a,b\in\mathbb{C}$ and an integer $n\ge1$ such that for every $f\in\mathcal{F}$, $f\left(D\right)\subset\mathbb{C}\setminus\left\{a\right\}$ and $f^{-1}\left(b\right)\cap{D}$ has at most $n$ points. Prove: $\mathcal{F}$ is normal on $D$.

### Solution to 22.4-2

Suppose for contradiction that $\mathcal{F}$ is not normal. By **Theorem 22.2.1 (Zalcman's Lemma)**, there exist $f_{n}\in\mathcal{F}$, $z_{n}\to{z}_{0}\in{D}$, $\rho_{n}\to0^{+}$ such that $g_{n}\left(w\right):=f_{n}\left(z_{n}+\rho_{n}w\right)$ converges locally uniformly to a nonconstant entire function $g$.

Since each $f_{n}$ omits $a$, the limit $g$ also omits $a$ ($g\left(\mathbb{C}\right)\subset\mathbb{C}\setminus\left\{a\right\}$). By **Theorem 21.2.3 (Picard's Little Theorem)**, the nonconstant entire function $g$ has range $\mathbb{C}$ or $\mathbb{C}$ minus one point; since $a$ is already omitted, $g$ takes $b$ ($b\ne{a}$) infinitely often: $g$ has infinitely many $b$-points, with no accumulation point.

Take a compact disk $K$ containing $n+1$ of the $b$-points of $g$. Since $g_{n}\to{g}$ uniformly on $K$ and $g$ takes the value $b$ at these points (which have no accumulation, so disjoint small neighborhoods fit inside $K$), for large $n$, $g_{n}$ has at least $n+1$ $b$-points in $K$ (by Rouche's theorem / persistence of zeros under uniform convergence). But the $b$-points of $g_{n}$ are exactly the points of $f_{n}^{-1}\left(b\right)$ lying in $z_{n}+\rho_{n}K$, which are at most $n$; contradiction. Hence $\mathcal{F}$ is normal. $\blacksquare$

## 22.4-4

Let $\mathcal{F}$ be a family of meromorphic functions on a domain $D\subset\mathbb{C}$. Prove: $\mathcal{F}$ is normal on $D$ iff for every $z\in{D}$ there is a neighborhood $U\left(z\right)\subset{D}$ such that either $\left|f\left(\zeta\right)\right|<2$ or $\frac1{\left|f\left(\zeta\right)\right|}<2$ for all $\zeta\in{U}\left(z\right)$ and all $f\in\mathcal{F}$ (the same alternative for the whole family).

### Solution to 22.4-4

Sufficiency. Suppose for every $z_{0}\in{D}$ there is a neighborhood $U=U\left(z_{0}\right)$ such that for all $f\in\mathcal{F}$ and $\zeta\in{U}$, either $\left|f\left(\zeta\right)\right|<2$ or $\left|f\left(\zeta\right)\right|>\frac12$.

Case 1: $\left|f\left(\zeta\right)\right|<2$ on $U$ (uniformly bounded). Take a compact sub-neighborhood $K\ni{z}_{0}$; by Cauchy estimates, $f'$ is uniformly bounded on $K$, so the spherical derivative $f^{\#}=\frac{2\left|f'\right|}{1+\left|f\right|^{2}}\le2\left|f'\right|$ is uniformly bounded.

Case 2: $\left|f\left(\zeta\right)\right|>\frac12$ on $U$, i.e. $\left|f\right|$ has a positive lower bound; then $g:=\frac1f$ is uniformly bounded, and by Cauchy estimates $g'$ is uniformly bounded, so $f'=\frac{g'}{g^{2}}$ is uniformly bounded ($\left|g^{2}\right|>\frac14$), and $f^{\#}\le2\left|f'\right|$ is uniformly bounded.

Thus the spherical derivative is uniformly bounded in a neighborhood of every point; by compactness, it is uniformly bounded on every compact subset $K\subset{D}$. By **Theorem 22.1.7 (Marty's Criterion)**, $\mathcal{F}$ is normal on $D$.

Necessity. Suppose $\mathcal{F}$ is normal on $D$. By Marty's criterion, for every $z_{0}\in{D}$ there is a compact neighborhood $K$ and $M$ such that $f^{\#}\left(\zeta\right)\le{M}$ for all $f\in\mathcal{F}$ and $\zeta\in{K}$. Suppose for contradiction that in every small neighborhood $U\ni{z}_{0}$ there are $f\in\mathcal{F}$ and $\zeta\in{U}$ with $\left|f\left(\zeta\right)\right|\ge2$ and $\frac1{\left|f\left(\zeta\right)\right|}\ge2$ (i.e. $\left|f\left(\zeta\right)\right|\le\frac12$). These cannot hold simultaneously at a single point, so at each $z_{0}$ there is a neighborhood $U$ such that for all $f\in\mathcal{F}$ and $\zeta\in{U}$, either $\left|f\left(\zeta\right)\right|<2$ or $\frac1{\left|f\left(\zeta\right)\right|}<2$ (shrinking $U$ suffices, since bounded spherical derivative prevents $\left|f\right|$ from crossing the values between $2$ and $\frac12$). $\blacksquare$
