# week10

> **Theorem 10.1.1 (Maximum Modulus Principle)**<br>If the modulus $\left|f\right|$ of a holomorphic function $f$ on a domain $D$ has a local maximum at $z_{0}\in D$, then $f$ is constant on $D$.

> **Theorem 10.1.4 (Open Mapping Theorem)**<br>A nonconstant holomorphic function maps domains onto domains.

> **Theorem 10.3.1 (Schwarz Lemma)**<br>If $f:\mathbb{D}\to\mathbb{D}$ is holomorphic with $f\left(0\right)=0$, then $\left|f\left(z\right)\right|\le\left|z\right|$ and $\left|f'\left(0\right)\right|\le1$; equality at some point (or $\left|f'\left(0\right)\right|=1$) holds if and only if $f\left(z\right)=e^{i\theta}z$.

> **Definition 10.3.2 (Blaschke Factor)**<br>For $a\in\mathbb{D}$, the function

$$
\phi_{a}\left(z\right)=\frac{z-a}{1-\overline{a}z}
$$

is called a Blaschke factor; it is an automorphism of $\mathbb{D}$ satisfying $\left|\phi_{a}\left(e^{i\theta}\right)\right|=1$ and $\phi_{a}\left(a\right)=0$.

---

## 10.4-2

Let $f,g$ be holomorphic on a domain $D\subset\mathbb{C}$. Suppose there is a point $z_{0}\in D$ and its $r$-neighborhood $B\left(z_{0},r\right)\subset D$, $r> 0$, such that $\left|f\left(z_{0}\right)\right|+\left|g\left(z_{0}\right)\right|\ge\left|f\left(z\right)\right|+\left|g\left(z\right)\right|$ for all $z\in B\left(z_{0},r\right)$. Prove: both $f$ and $g$ are constant on $D$.

### Solution 10.4-2

Write $M=\left|f\left(z_{0}\right)\right|+\left|g\left(z_{0}\right)\right|$. Choose $\theta_{1},\theta_{2}$ with $e^{i\theta_{1}}f\left(z_{0}\right)=\left|f\left(z_{0}\right)\right|$ and $e^{i\theta_{2}}g\left(z_{0}\right)=\left|g\left(z_{0}\right)\right|$, and set $h\left(z\right)=e^{i\theta_{1}}f\left(z\right)+e^{i\theta_{2}}g\left(z\right)$. Then $h$ is holomorphic on $D$, and

$$
h\left(z_{0}\right)=\left|f\left(z_{0}\right)\right|+\left|g\left(z_{0}\right)\right|=M,
$$

while $\left|h\left(z\right)\right|\le\left|f\left(z\right)\right|+\left|g\left(z\right)\right|\le M$ for all $z\in B\left(z_{0},r\right)$. Hence $\left|h\right|$ has a local maximum at $z_{0}$; by **Theorem 10.1.1 (Maximum Modulus Principle)**, $h$ is constant on $D$, say $h\left(z\right)\equiv M'$ with $\left|M'\right|=M$.

Thus $M=\left|h\left(z\right)\right|\le\left|f\left(z\right)\right|+\left|g\left(z\right)\right|\le M$ for all $z\in B\left(z_{0},r\right)$ (and hence $D$), so $\left|f\left(z\right)\right|+\left|g\left(z\right)\right|\equiv M$ and the triangle equality $\left|e^{i\theta_{1}}f\left(z\right)+e^{i\theta_{2}}g\left(z\right)\right|=\left|f\left(z\right)\right|+\left|g\left(z\right)\right|$ holds everywhere. The triangle equality requires $e^{i\theta_{1}}f\left(z\right)$ and $e^{i\theta_{2}}g\left(z\right)$ to point in the same direction, so $e^{i\left(\theta_{1}-\theta_{2}\right)}\frac{f\left(z\right)}{g\left(z\right)}\ge0$ is real (where $g\left(z\right)\ne0$). Hence $e^{i\left(\theta_{1}-\theta_{2}\right)}\frac{f}{g}$ is a real-valued meromorphic function; taking the imaginary part to zero gives (by the identity theorem) $e^{i\left(\theta_{1}-\theta_{2}\right)}\frac{f}{g}\equiv c\in\mathbb{R}_{\ge0}$, i.e. $f\equiv c'e^{i\theta}g$ is a constant multiple of $g$. From $\left|f\right|+\left|g\right|\equiv M$ we get $\left|g\right|\equiv\text{constant}$, so $g$ is constant (since $\left|g\right|$ is constant and $g$ is holomorphic, by **Theorem 10.1.4 (Open Mapping Theorem)** $g$ must be constant), and therefore $f$ is also constant. $\blacksquare$

---

## 10.4-4

Let $f$ be holomorphic on a bounded domain $D\subset\mathbb{C}$ and continuous on the closure $\overline{D}$. If $\left|f\left(z\right)\right|=\alpha$ for all $z\in\partial D$. Prove: either $f$ is constant or it has a zero in $D$.

### Solution 10.4-4

Suppose $f$ has no zeros in $D$. If $\alpha=0$, then $\left|f\right|=0$ on $\partial D$, and by the maximum modulus principle $f\equiv0$ on $D$, constant. Assume $\alpha> 0$. Since $\left|f\right|$ is continuous on $\overline{D}$, the maximum modulus principle (the maximum of $\left|f\right|$ on $\overline{D}$ is attained on the boundary) gives $\left|f\left(z\right)\right|\le\alpha$ for all $z\in D$.

Also $\frac{1}{f}$ is holomorphic on $D$ (since $f$ has no zeros) and continuous on $\overline{D}$, with $\left|\frac{1}{f}\right|=\frac{1}{\alpha}$ on the boundary. Similarly, $\left|\frac{1}{f\left(z\right)}\right|\le\frac{1}{\alpha}$, i.e. $\left|f\left(z\right)\right|\ge\alpha$ for all $z\in D$. Hence $\left|f\left(z\right)\right|\equiv\alpha$ on $D$, so $\left|f\right|$ is constant; by **Theorem 10.1.4 (Open Mapping Theorem)**, $f$ is constant. Thus either $f$ is constant or it has a zero in $D$. $\blacksquare$

---

## 10.4-6

(Hadamard's three-circles theorem) Let $0< r< R$, and let $f$ be holomorphic on the closed annulus $\left\{z\in\mathbb{C}:r\le\left|z\right|\le R\right\}$. Set $M\left(\rho\right)=\sup_{\theta\in\left[0,2\pi\right]}\left|f\left(\rho e^{i\theta}\right)\right|$ for $\rho\in\left[r,R\right]$. Prove: for every $s\in\left[0,1\right]$, $M\left(r^{s}R^{1-s}\right)\le M\left(r\right)^{s}M\left(R\right)^{1-s}$.

### Solution 10.4-6

Write $\rho=r^{s}R^{1-s}$. If $M\left(r\right)=0$ or $M\left(R\right)=0$, the maximum modulus principle gives $f\equiv0$ and the inequality is trivial. Assume $M\left(r\right),M\left(R\right)> 0$. Take the real number

$$
\lambda=\frac{\log M\left(r\right)-\log M\left(R\right)}{\log R-\log r},
$$

and set $g\left(z\right)=z^{\lambda}f\left(z\right)$, where $z^{\lambda}$ is taken as a fixed holomorphic branch on the annulus (cutting the annulus along a radius to make it simply connected, then taking the principal branch; $\left|z^{\lambda}\right|$ agrees on both sides of the cut). Then $g$ is holomorphic on the (cut) annulus, and on the inner boundary $\left|z\right|=r$ and outer boundary $\left|z\right|=R$,

$$
\left|g\left(z\right)\right|\le r^{\lambda}M\left(r\right)=R^{\lambda}M\left(R\right)=:K,
$$

(the last equality by the choice of $\lambda$). By the maximum modulus principle, $\left|g\left(z\right)\right|\le K$ on this region; in particular, for $\left|z\right|=\rho$, $\left|g\left(\rho e^{i\theta}\right)\right|\le K$. Hence

$$
M\left(\rho\right)\le K\rho^{-\lambda}=r^{\lambda}M\left(r\right)\rho^{-\lambda}=M\left(r\right)\left(\frac{r}{\rho}\right)^{\lambda}.
$$

Since $\frac{r}{\rho}=\left(r/R\right)^{1-s}$ and $\lambda\log\frac{r}{R}=\log M\left(R\right)-\log M\left(r\right)$, taking logs,

$$
\log M\left(\rho\right)\le\log M\left(r\right)+\left(1-s\right)\left(\log M\left(R\right)-\log M\left(r\right)\right)=s\log M\left(r\right)+\left(1-s\right)\log M\left(R\right).
$$

i.e. $M\left(\rho\right)\le M\left(r\right)^{s}M\left(R\right)^{1-s}$, which is $M\left(r^{s}R^{1-s}\right)\le M\left(r\right)^{s}M\left(R\right)^{1-s}$. $\blacksquare$

---

## 10.4-8

Let $f$ be holomorphic on $\mathbb{D}=\left\{\left|z\right|< 1\right\}$, and let $z_{1},\cdots,z_{k}\in\mathbb{D}$ be all zeros of $f$ in $\mathbb{D}$ (counting multiplicity). Prove: $\left|f\left(0\right)\right|\le\sup_{\left|z\right|< 1}\left|f\left(z\right)\right|\prod_{j=1}^{k}\left|z_{j}\right|$.

### Solution 10.4-8

If $f\equiv0$, the inequality is trivial. Assume $f$ is nonconstant, and write $M=\sup_{\left|z\right|< 1}\left|f\left(z\right)\right|$. By **Definition 10.3.2 (Blaschke Factor)**, construct

$$
B\left(z\right)=\prod_{j=1}^{k}\frac{z-z_{j}}{1-\overline{z}_{j}z},
$$

which is holomorphic on $\mathbb{D}$ (denominators $1-\overline{z}_{j}z\ne0$), has zeros exactly at $z_{1},\cdots,z_{k}$ (with multiplicity), and satisfies $\left|B\left(e^{i\theta}\right)\right|=1$ on the unit circle. Since all zeros of $f$ are canceled by $B$, $g\left(z\right)=\frac{f\left(z\right)}{B\left(z\right)}$ is holomorphic and nonzero on $\mathbb{D}$.

For $0< r< 1$, on the circle $\left|z\right|=r$, the maximum modulus principle gives $\left|g\left(z\right)\right|\le\max_{\left|w\right|=r}\left|g\left(w\right)\right|=\frac{\max_{\left|w\right|=r}\left|f\left(w\right)\right|}{\min_{\left|w\right|=r}\left|B\left(w\right)\right|}$. Letting $r\to1^{-}$, $\max_{\left|w\right|=r}\left|f\left(w\right)\right|\to M$ and $\min_{\left|w\right|=r}\left|B\left(w\right)\right|\to1$, so $\left|g\left(z\right)\right|\le M$ for all $z\in\mathbb{D}$. In particular,

$$
\left|g\left(0\right)\right|=\frac{\left|f\left(0\right)\right|}{\left|B\left(0\right)\right|}\le M,
$$

and $\left|B\left(0\right)\right|=\prod_{j=1}^{k}\left|z_{j}\right|$, so $\left|f\left(0\right)\right|\le M\prod_{j=1}^{k}\left|z_{j}\right|=\sup_{\left|z\right|< 1}\left|f\left(z\right)\right|\prod_{j=1}^{k}\left|z_{j}\right|$. $\blacksquare$

---

## 10.4-10

Let $\mathbb{D}=\left\{\left|z\right|< 1\right\}$, and let $f:\mathbb{D}\to\mathbb{D}$ be nonconstant holomorphic. Prove:

$$
\frac{\left|f\left(0\right)\right|-\left|z\right|}{1+\left|f\left(0\right)\right|\left|z\right|}\le\left|f\left(z\right)\right|\le\frac{\left|f\left(0\right)\right|+\left|z\right|}{1-\left|f\left(0\right)\right|\left|z\right|},\quad\forall\left|z\right|< 1.
$$

### Solution 10.4-10

Write $a=f\left(0\right)$, $t=\left|a\right|$. By **Definition 10.3.2 (Blaschke Factor)**, $\phi_{a}\left(w\right)=\frac{w-a}{1-\overline{a}w}$ is an automorphism of $\mathbb{D}$ with $\phi_{a}\left(a\right)=0$. Then $\phi_{a}\circ f:\mathbb{D}\to\mathbb{D}$ is holomorphic and $\left(\phi_{a}\circ f\right)\left(0\right)=0$. By **Theorem 10.3.1 (Schwarz Lemma)**:

$$
\left|\frac{f\left(z\right)-a}{1-\overline{a}f\left(z\right)}\right|\le\left|z\right|.
$$

Let $u=f\left(z\right)$, so $\left|u\right|< 1$. From $\left|u-a\right|\le\left|z\right|\left|1-\overline{a}u\right|\le\left|z\right|\left(1+t\left|u\right|\right)$ and $\left|u-a\right|\ge\left|\right|u\left|-t\right|$,

$$
\left|\right|u\left|-t\right|\le\left|z\right|\left(1+t\left|u\right|\right).
$$

Two cases:

If $\left|u\right|\le t$, then $t-\left|u\right|\le\left|z\right|\left(1+t\left|u\right|\right)$, and rearranging, $\left|u\right|\left(1+t\left|z\right|\right)\ge t-\left|z\right|$, i.e.

$$
\left|u\right|\ge\frac{t-\left|z\right|}{1+t\left|z\right|}.
$$

If $\left|u\right|\ge t$, then $\left|u\right|-t\le\left|z\right|\left(1+t\left|u\right|\right)$, and rearranging, $\left|u\right|\left(1-t\left|z\right|\right)\le t+\left|z\right|$, i.e.

$$
\left|u\right|\le\frac{t+\left|z\right|}{1-t\left|z\right|}.
$$

Combining,

$$
\frac{\left|f\left(0\right)\right|-\left|z\right|}{1+\left|f\left(0\right)\right|\left|z\right|}\le\left|f\left(z\right)\right|\le\frac{\left|f\left(0\right)\right|+\left|z\right|}{1-\left|f\left(0\right)\right|\left|z\right|}.
$$

$\blacksquare$
