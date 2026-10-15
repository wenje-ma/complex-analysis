# Assignment 24

> **Theorem 21.1.3** (Bloch)<br>There exists a constant $B>0$: if $f$ is holomorphic on the unit disk and $f'\left(0\right)=1$, then $f\left(\mathbb{D}\right)$ contains a disk of radius at least $B$.

> **Theorem 21.2.3** (Little Picard Theorem)<br>A nonconstant entire function takes every value in $\mathbb{C}$, or all but one value.

> **Theorem 21.2.4** (Little Picard Theorem, Meromorphic Form)<br>A nonconstant meromorphic function omits at most two values.

> **Theorem 21.4** (Great Picard Theorem)<br>A holomorphic function takes every value infinitely often in any punctured neighborhood of an essential singularity (omitting at most one value).

### Problem 1

(Problem 21.5-4) Using the result of Problem 21.5-3 (Landau), prove the Little Picard Theorem.

### Solution to Problem 1

Little Picard Theorem: a nonconstant entire function cannot omit two distinct values.

By **Problem 21.5-3 (Landau)**, there exists a positive function $R\left(a\right)>0$ ($a\in\mathbb{C}\setminus\left\{0,1\right\}$) such that: for any $a$, there is no holomorphic function $f$ on the closed disk $\left\{\left|z\right|\le R\left(a\right)\right\}$ satisfying $f\left(0\right)=a$, $f'\left(0\right)=1$, and $f$ omits the values $0$ and $1$.

Suppose $F$ is entire and omits the values $0,1$. If $F$ is nonconstant, choose $z_{0}$ such that $F'\left(z_{0}\right)\ne0$; let $a:=F\left(z_{0}\right)\in\mathbb{C}\setminus\left\{0,1\right\}$. Define $g\left(w\right):=F\left(z_{0}+\frac{w}{F'\left(z_{0}\right)}\right)$; then $g$ is holomorphic on $\mathbb{C}$ (hence on the closed disk $\left\{\left|w\right|\le R\left(a\right)\right\}$), $g\left(0\right)=F\left(z_{0}\right)=a$, $g'\left(0\right)=1$, and $g$ omits the values $0,1$, contradicting Landau's result. Hence $F$ must be constant, proving the Little Picard Theorem. $\blacksquare$

### Problem 2

(Problem 21.5-5) Let $f,g$ and $h$ all be entire functions satisfying the equation $e^{f}+e^{g}=h$. Prove: $h$ either has no zeros or has infinitely many zeros.

### Solution to Problem 2

Let $F:=e^{f}$, $G:=e^{g}$; both are zero-free entire functions, and $h=G\left(1+\frac{F}{G}\right)=G\left(1+e^{f-g}\right)$. Write $H:=e^{f-g}$; then $h=G\left(1+H\right)$, and $G$ has no zeros, so the zeros of $h$ are exactly the solutions of $1+H=0$, i.e. $e^{f-g}=-1$.

If $f-g$ is constant, then $H$ is constant: if $H\equiv-1$, then $h\equiv0$, with no zeros; if $H\equiv c\ne-1$, then $h=G\left(1+c\right)$ has no zeros. Hence $h$ has no zeros.

If $f-g$ is nonconstant, by **Theorem 21.2.3 (Little Picard Theorem)**, the range of the entire function $f-g$ is $\mathbb{C}$ or $\mathbb{C}$ minus one point, so it takes infinitely many values $\left(2k+1\right)\pi i$ ($k\in\mathbb{Z}$); hence $e^{f-g}$ takes the value $-1$ at infinitely many points, and $h$ has infinitely many zeros. $\blacksquare$

### Problem 3

(Problem 21.5-6) If $f,g$ are both entire, $p,q$ are both polynomials satisfying $e^{f}+p=e^{g}+q$, and $f\left(0\right)=g\left(0\right)$. Prove: $f=g$ and $p=q$.

### Solution to Problem 3

From the equation $e^{f}-e^{g}=q-p$, i.e. $e^{g}\left(e^{f-g}-1\right)=q-p$. Suppose, for contradiction, that $f-g$ is nonconstant. Then the zeros of $e^{f-g}-1$ satisfy $f-g=2\pi ik$, $k\in\mathbb{Z}$. By **Theorem 21.2.3 (Little Picard Theorem)**, the range of the nonconstant entire function $f-g$ is $\mathbb{C}$ or $\mathbb{C}$ minus one point, so it takes infinitely many values $2\pi ik$, and $e^{f-g}-1$ has infinitely many zeros. But on the left, $e^{g}$ has no zeros, while on the right $q-p$ is a polynomial with at most finitely many zeros; and $e^{g}\left(e^{f-g}-1\right)$ has the same zeros as $q-p$, a contradiction. Hence $f-g$ is a constant $c$.

From $f\left(0\right)=g\left(0\right)$, we get $c=0$, i.e. $f=g$. Substituting into the original equation $e^{f}+p=e^{f}+q$ gives $p=q$. $\blacksquare$

### Problem 4

(Problem 21.5-7) Let $\mathcal{E}\left(z\right)=\exp\left(2\pi i\cdot\exp\left(2\pi i z\right)\right)$, $z\in\mathbb{C}$, and let $f\left(z\right)$ and $g\left(z\right)$ both be nonconstant entire functions satisfying $\mathcal{E}\left(f\left(z\right)\right)=\mathcal{E}\left(g\left(z\right)\right)$, $\forall z\in\mathbb{C}$. Prove: there exists $m\in\mathbb{Z}$ such that $f\left(z\right)=g\left(z\right)+m$, $\forall z\in\mathbb{C}$.

### Solution to Problem 4

From the properties of $\exp$, $\exp\left(2\pi i\cdot e^{2\pi if}\right)=\exp\left(2\pi i\cdot e^{2\pi ig}\right)$ implies $e^{2\pi if}-e^{2\pi ig}\in\mathbb{Z}$, and since it is continuous, it is constant; write $e^{2\pi if}-e^{2\pi ig}=m\in\mathbb{Z}$.

Suppose, for contradiction, that $m\ne0$; then $e^{2\pi if}=e^{2\pi ig}+m$. Since $g$ is nonconstant and entire, by **Theorem 21.2.3**, the range of $g$ is $\mathbb{C}$ or $\mathbb{C}$ minus one point, so $e^{2\pi ig}$ takes every nonzero value (omitting at most one point); since $m\ne0$, $-m$ is a nonzero value, so there exists $z_{0}$ with $e^{2\pi ig\left(z_{0}\right)}=-m$, and then $e^{2\pi if\left(z_{0}\right)}=-m+m=0$, contradicting that $\exp$ has no zeros. Hence $m=0$, i.e. $e^{2\pi if}=e^{2\pi ig}$, so $2\pi i\left(f-g\right)=2\pi ik$, $k\in\mathbb{Z}$, i.e. $f\left(z\right)=g\left(z\right)+k$. $\blacksquare$

### Problem 5

(Problem 21.5-19) Let $f$ be an odd entire function on $\mathbb{C}$. Prove: $f\left(\mathbb{C}\right)=\mathbb{C}$.

### Solution to Problem 5

$f$ is entire; by **Theorem 21.2.3 (Little Picard Theorem)**, $f\left(\mathbb{C}\right)=\mathbb{C}$ or $f\left(\mathbb{C}\right)=\mathbb{C}\setminus\left\{a\right\}$ (omitting one value $a$). If $f$ is constant, the oddness $f\left(-z\right)=-f\left(z\right)$ forces $f\equiv0$, with range $\left\{0\right\}\ne\mathbb{C}$; hence suppose $f$ is nonconstant, so $f\left(\mathbb{C}\right)=\mathbb{C}$ or $\mathbb{C}\setminus\left\{a\right\}$.

Since $f$ is odd, $w\in f\left(\mathbb{C}\right)$ if and only if $-w\in f\left(\mathbb{C}\right)$ (take $-z$), so $f\left(\mathbb{C}\right)$ is symmetric about the origin. If $f\left(\mathbb{C}\right)=\mathbb{C}\setminus\left\{a\right\}$, symmetry requires $\mathbb{C}\setminus\left\{a\right\}=\mathbb{C}\setminus\left\{-a\right\}$, giving $a=-a$, i.e. $a=0$. But $f\left(0\right)=0$ (odd function), so $0\in f\left(\mathbb{C}\right)$, contradicting $a=0$. Hence $f\left(\mathbb{C}\right)=\mathbb{C}$. $\blacksquare$
