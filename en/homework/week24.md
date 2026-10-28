# week24

> **Theorem 21.1.3 (Bloch's Theorem)**<br>There is a constant $B> 0$ such that if $f$ is holomorphic on the unit disk with $f'\left(0\right)=1$, then $f\left(\mathbb{D}\right)$ contains a disk of radius at least $B$.

> **Theorem 21.2.3 (Picard's Little Theorem)**<br>A nonconstant entire function takes every value in $\mathbb{C}$ or all but one value.

> **Theorem 21.2.4 (Picard's Little Theorem, Meromorphic Form)**<br>A nonconstant meromorphic function omits at most two values.

> **Theorem 21.4 (Picard's Great Theorem)**<br>In any punctured neighborhood of an essential singularity, a holomorphic function takes every value infinitely often (with at most one exception).

---

## 21.5-4

Use the result of Exercise 21.5-3 (Landau) to prove Picard's little theorem.

### Solution 21.5-4

Picard's little theorem: a nonconstant entire function cannot omit two distinct values.

By **Exercise 21.5-3 (Landau)**, there is a positive function $R\left(a\right)> 0$ ($a\in\mathbb{C}\setminus\left\{0,1\right\}$) such that for every $a$, there is no holomorphic $f$ on the closed disk $\left\{\left|z\right|\le R\left(a\right)\right\}$ satisfying $f\left(0\right)=a$, $f'\left(0\right)=1$, and taking neither $0$ nor $1$.

Let $F$ be entire and omit $0,1$. If $F$ is nonconstant, choose $z_{0}$ with $F'\left(z_{0}\right)\ne0$; set $a:=F\left(z_{0}\right)\in\mathbb{C}\setminus\left\{0,1\right\}$. Define $g\left(w\right):=F\left(z_{0}+\frac{w}{F'\left(z_{0}\right)}\right)$; then $g$ is holomorphic on $\mathbb{C}$ (hence on the closed disk $\left\{\left|w\right|\le R\left(a\right)\right\}$), $g\left(0\right)=F\left(z_{0}\right)=a$, $g'\left(0\right)=1$, and $g$ takes neither $0$ nor $1$, contradicting Landau's result. Hence $F$ must be constant, proving Picard's little theorem. $\blacksquare$

---

## 21.5-5

Let $f,g,h$ be entire functions satisfying $e^{f}+e^{g}=h$. Prove: $h$ has either no zeros or infinitely many zeros.

### Solution 21.5-5

Let $F:=e^{f}$, $G:=e^{g}$; both are zero-free entire functions, and $h=G\left(1+\frac{F}{G}\right)=G\left(1+e^{f-g}\right)$. Write $H:=e^{f-g}$; then $h=G\left(1+H\right)$. Since $G$ has no zeros, the zeros of $h$ are exactly the solutions of $1+H=0$, i.e. $e^{f-g}=-1$.

If $f-g$ is constant, then $H$ is constant: if $H\equiv-1$, then $h\equiv0$, which has no zeros; if $H\equiv c\ne-1$, then $h=G\left(1+c\right)$ has no zeros. Hence $h$ has no zeros.

If $f-g$ is nonconstant, by **Theorem 21.2.3 (Picard's Little Theorem)**, the range of the entire function $f-g$ is $\mathbb{C}$ or $\mathbb{C}$ minus one point, so it takes infinitely many values $\left(2k+1\right)\pi i$ ($k\in\mathbb{Z}$); hence $e^{f-g}$ equals $-1$ at infinitely many points, and $h$ has infinitely many zeros. $\blacksquare$

---

## 21.5-6

If $f,g$ are entire, $p,q$ are polynomials, and $e^{f}+p=e^{g}+q$ with $f\left(0\right)=g\left(0\right)$, prove: $f=g$ and $p=q$.

### Solution 21.5-6

From $e^{f}-e^{g}=q-p$, i.e. $e^{g}\left(e^{f-g}-1\right)=q-p$. Suppose for contradiction that $f-g$ is nonconstant. Then the zeros of $e^{f-g}-1$ satisfy $f-g=2\pi ik$, $k\in\mathbb{Z}$. By **Theorem 21.2.3 (Picard's Little Theorem)**, the nonconstant entire function $f-g$ has range $\mathbb{C}$ or $\mathbb{C}$ minus one point, so it takes infinitely many values $2\pi ik$, and $e^{f-g}-1$ has infinitely many zeros. But $e^{g}$ on the left has no zeros, while $q-p$ on the right is a polynomial with at most finitely many zeros; since $e^{g}\left(e^{f-g}-1\right)$ and $q-p$ have the same zeros, this is a contradiction. Hence $f-g$ is a constant $c$.

From $f\left(0\right)=g\left(0\right)$, $c=0$, i.e. $f=g$. Substituting into $e^{f}+p=e^{f}+q$ gives $p=q$. $\blacksquare$

---

## 21.5-7

Let $\mathcal{E}\left(z\right)=\exp\left(2\pi i\cdot\exp\left(2\pi i z\right)\right)$, $z\in\mathbb{C}$, and let $f\left(z\right)$ and $g\left(z\right)$ be nonconstant entire functions with $\mathcal{E}\left(f\left(z\right)\right)=\mathcal{E}\left(g\left(z\right)\right)$ for all $z\in\mathbb{C}$. Prove: there exists $m\in\mathbb{Z}$ such that $f\left(z\right)=g\left(z\right)+m$ for all $z\in\mathbb{C}$.

### Solution 21.5-7

From the property of $\exp$, $\exp\left(2\pi i\cdot e^{2\pi if}\right)=\exp\left(2\pi i\cdot e^{2\pi ig}\right)$ implies $e^{2\pi if}-e^{2\pi ig}\in\mathbb{Z}$; since this is continuous, it is constant, say $e^{2\pi if}-e^{2\pi ig}=m\in\mathbb{Z}$.

Suppose for contradiction $m\ne0$; then $e^{2\pi if}=e^{2\pi ig}+m$. Since $g$ is nonconstant entire, by **Theorem 21.2.3 (Picard's Little Theorem)**, the range of $g$ is $\mathbb{C}$ or $\mathbb{C}$ minus one point, so $e^{2\pi ig}$ takes every nonzero value (with at most one exception); since $m\ne0$, $-m$ is a nonzero value, so there is $z_{0}$ with $e^{2\pi ig\left(z_{0}\right)}=-m$, and then $e^{2\pi if\left(z_{0}\right)}=-m+m=0$, contradicting that $\exp$ has no zeros. Hence $m=0$, i.e. $e^{2\pi if}=e^{2\pi ig}$, so $2\pi i\left(f-g\right)=2\pi ik$, $k\in\mathbb{Z}$, i.e. $f\left(z\right)=g\left(z\right)+k$. $\blacksquare$

---

## 21.5-19

Let $f$ be an odd entire function on $\mathbb{C}$. Prove: $f\left(\mathbb{C}\right)=\mathbb{C}$.

### Solution 21.5-19

$f$ is entire; by **Theorem 21.2.3 (Picard's Little Theorem)**, $f\left(\mathbb{C}\right)=\mathbb{C}$ or $f\left(\mathbb{C}\right)=\mathbb{C}\setminus\left\{a\right\}$ (omitting one value $a$). If $f$ is constant, oddness $f\left(-z\right)=-f\left(z\right)$ forces $f\equiv0$, whose range $\left\{0\right\}\ne\mathbb{C}$; so suppose $f$ is nonconstant, hence $f\left(\mathbb{C}\right)=\mathbb{C}$ or $\mathbb{C}\setminus\left\{a\right\}$.

Since $f$ is odd, $w\in f\left(\mathbb{C}\right)$ iff $-w\in f\left(\mathbb{C}\right)$ (replace $z$ by $-z$), so $f\left(\mathbb{C}\right)$ is symmetric about the origin. If $f\left(\mathbb{C}\right)=\mathbb{C}\setminus\left\{a\right\}$, symmetry requires $\mathbb{C}\setminus\left\{a\right\}=\mathbb{C}\setminus\left\{-a\right\}$, giving $a=-a$, i.e. $a=0$. But $f\left(0\right)=0$ (odd), so $0\in f\left(\mathbb{C}\right)$, contradicting $a=0$. Hence $f\left(\mathbb{C}\right)=\mathbb{C}$. $\blacksquare$
