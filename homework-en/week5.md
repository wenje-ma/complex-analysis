# week5

> **Theorem 8.3.2 (Higher Derivative Formula)**
> 
> If $f$ is holomorphic on a simply connected domain $D$, $\gamma$ is a piecewise smooth Jordan closed curve in $D$, and $z$ lies in its interior, then $f$ has derivatives of all orders at $z$ and

> **Theorem 9.1.3 (Liouville's Theorem)**
> 
> Every bounded entire function on $\mathbb{C}$ is constant.

> **Theorem 9.3.2 (Identity Theorem)**
> 
> If the zeros of a holomorphic function on a domain $D$ have an accumulation point in $D$, then $f\equiv0$.

> **Theorem 9.3.3 (Uniqueness Theorem)**
> 
> If two holomorphic functions $f,g$ on a domain $D$ agree on a set with an accumulation point in $D$, then $f\equiv{g}$.

> **Theorem 10.1.1 (Maximum Modulus Principle)**
> 
> If the modulus $\left|f\right|$ of a holomorphic function $f$ on a domain $D$ has a local maximum at $z_{0}\in{D}$, then $f$ is constant on $D$.

> **Theorem 10.1.4 (Open Mapping Theorem)**
> 
> A nonconstant holomorphic function maps domains onto domains.

> **Theorem 10.3.1 (Schwarz Lemma)**
> 
> If $f:\mathbb{D}\to\mathbb{D}$ is holomorphic with $f\left(0\right)=0$, then $\left|f\left(z\right)\right|\le\left|z\right|$ and $\left|f'\left(0\right)\right|\le1$; equality holds if and only if $f\left(z\right)=e^{i\theta}z$.

> **Definition 10.3.2 (Blaschke Factor)**
> 
> For $a\in\mathbb{D}$, the function

$$
\phi_{a}\left(z\right)=\frac{z-a}{1-\overline{a}z}
$$
is called a Blaschke factor; it is an automorphism of $\mathbb{D}$ satisfying $\left|\phi_{a}\left(e^{i\theta}\right)\right|=1$ and $\phi_{a}\left(a\right)=0$.

## 9.4-6

Let $f,g$ be holomorphic and nonzero on $\mathbb{D}:=\left\{z\in\mathbb{C}:\left|z\right|<1\right\}$. Prove: if $\frac{f'\left(x_{n}\right)}{f\left(x_{n}\right)}=\frac{g'\left(x_{n}\right)}{g\left(x_{n}\right)}$ for $x_{n}=\frac{1}{n}$, $n=2,3,\cdots$, then $f=cg$ for some $c\in\mathbb{C}$.

### Solution to 9.4-6

Since $f,g$ are nonzero on $\mathbb{D}$, $\frac{f'}{f}-\frac{g'}{g}$ is holomorphic on $\mathbb{D}$. By assumption it vanishes on $\left\{x_{n}\right\}$, and $x_{n}=\frac{1}{n}\to0\in\mathbb{D}$, so the zeros have an accumulation point $0$ in $\mathbb{D}$. By **Theorem 9.3.2 (Identity Theorem)**, $\frac{f'}{f}-\frac{g'}{g}\equiv0$, i.e. $\frac{f'}{f}=\frac{g'}{g}$ on $\mathbb{D}$.

Hence $\left(\log{f}\right)'=\left(\log{g}\right)'$ on $\mathbb{D}$ (taking any local logarithm branch), so $\log{f}-\log{g}$ is locally constant on $\mathbb{D}$; since $\mathbb{D}$ is connected, there is $c_{0}\in\mathbb{C}$ with $\log{f}=\log{g}+c_{0}$ on $\mathbb{D}$. Exponentiating, $f=e^{c_{0}}g$, i.e. $f=cg$ with $c=e^{c_{0}}$. $\blacksquare$

## 9.4-8

(Borel-Carathéodory inequality) Let $f$ be holomorphic on the closed disk $\left\{z\in\mathbb{C}:\left|z\right|\le{R}\right\}$, and $\sum_{k=0}^{\infty}a_{k}z^{k}$ its Taylor series at $0$. Prove:

$$
\left|a_{k}\right|R^{k}\le4\max_{0\le\theta\le2\pi}\operatorname{Re}f\left(Re^{i\theta}\right)+4\left|f\left(0\right)\right|,\quad\forall{k}\in\mathbb{N}.
$$

### Solution to 9.4-8

Write $A=\max_{0\le\theta\le2\pi}\operatorname{Re}f\left(Re^{i\theta}\right)$, $u=\operatorname{Re}f$. For $k\ge1$, from $f\left(Re^{i\theta}\right)=\sum_{j=0}^{\infty}a_{j}R^{j}e^{ij\theta}$ and the Fourier expansion of $u=\operatorname{Re}f$,

$$
\frac{1}{2\pi}\int_{0}^{2\pi}u\left(Re^{i\theta}\right)e^{-ik\theta}\,d\theta=\frac{1}{2}a_{k}R^{k},
$$

so $a_{k}R^{k}=\frac{1}{\pi}\int_{0}^{2\pi}u\left(Re^{i\theta}\right)e^{-ik\theta}\,d\theta$. Let $A_{+}=\max\left(A,0\right)$; then $u\left(Re^{i\theta}\right)\le{A}\le{A}_{+}$, and $\left|u\right|\le2A_{+}-u$. Hence

$$
\left|a_{k}\right|R^{k}\le\frac{1}{\pi}\int_{0}^{2\pi}\left|u\left(Re^{i\theta}\right)\right|\,d\theta\le\frac{1}{\pi}\int_{0}^{2\pi}\left(2A_{+}-u\left(Re^{i\theta}\right)\right)\,d\theta=4A_{+}-2\operatorname{Re}f\left(0\right).
$$

Since $-\operatorname{Re}f\left(0\right)\le\left|\operatorname{Re}f\left(0\right)\right|\le\left|f\left(0\right)\right|$ and $A\ge\operatorname{Re}f\left(0\right)\ge-\left|f\left(0\right)\right|$ implies $4A_{+}\le4A+4\left|f\left(0\right)\right|$,

$$
\left|a_{k}\right|R^{k}\le4A+4\left|f\left(0\right)\right|,\quad{k}\ge1.
$$

For $k=0$, $\left|a_{0}\right|=\left|f\left(0\right)\right|\le4A+4\left|f\left(0\right)\right|$ is immediate. $\blacksquare$

## 9.4-10

(L'Hôpital's rule) Let $D\subset\mathbb{C}$ be open, $f,g$ holomorphic on $D$, and $a\in{D}$ a common isolated zero. Prove:

(i) if both $f$ and $g$ have a zero of order $m$ at $a$, then $\lim_{z\to{a}}\frac{f\left(z\right)}{g\left(z\right)}=\lim_{z\to{a}}\frac{f^{\left(m\right)}\left(z\right)}{g^{\left(m\right)}\left(z\right)}$;

(ii) $\lim_{z\to{a}}\frac{f\left(z\right)}{g\left(z\right)}=\lim_{z\to{a}}\frac{f'\left(z\right)}{g'\left(z\right)}$ (including the case where the limit is $\infty$).

### Solution to 9.4-10

(i) Since $f$ has a zero of order $m$ at $a$, $f\left(z\right)=\left(z-a\right)^{m}f_{1}\left(z\right)$ with $f_{1}\left(a\right)\ne0$; similarly $g\left(z\right)=\left(z-a\right)^{m}g_{1}\left(z\right)$ with $g_{1}\left(a\right)\ne0$. Thus

$$
\frac{f\left(z\right)}{g\left(z\right)}=\frac{f_{1}\left(z\right)}{g_{1}\left(z\right)}\to\frac{f_{1}\left(a\right)}{g_{1}\left(a\right)}.
$$

On the other hand, by Leibniz's rule, $f^{\left(m\right)}\left(a\right)=m!f_{1}\left(a\right)$ and $g^{\left(m\right)}\left(a\right)=m!g_{1}\left(a\right)$, so

$$
\lim_{z\to{a}}\frac{f^{\left(m\right)}\left(z\right)}{g^{\left(m\right)}\left(z\right)}=\frac{m!f_{1}\left(a\right)}{m!g_{1}\left(a\right)}=\frac{f_{1}\left(a\right)}{g_{1}\left(a\right)}=\lim_{z\to{a}}\frac{f\left(z\right)}{g\left(z\right)}.
$$

(ii) Let $p$ be the order of $f$ at $a$, $q$ that of $g$. If $p>{}q$, then $f\left(z\right)=\left(z-a\right)^{p}f_{1}$, $g\left(z\right)=\left(z-a\right)^{q}g_{1}$ with $f_{1}\left(a\right)g_{1}\left(a\right)\ne0$, so $\frac{f}{g}=\left(z-a\right)^{p-q}\frac{f_{1}}{g_{1}}\to0$; meanwhile $f'$ has order $p-1$, $g'$ order $q-1$, and $\frac{f'}{g'}\to0$, so they agree. If $p<{}q$, similarly $\frac{f}{g}\to\infty$ and $\frac{f'}{g'}\to\infty$. If $p=q=m$, applying (i) to $f',g'$ (both zeros of order $m-1$) gives $\lim\frac{f'}{g'}=\lim\frac{f^{\left(m\right)}}{g^{\left(m\right)}}$, and by (i) $\lim\frac{f}{g}=\lim\frac{f^{\left(m\right)}}{g^{\left(m\right)}}$, so they agree. $\blacksquare$

## 9.4-13

Let $f$ be holomorphic on a domain $D\subset\mathbb{C}$. Suppose for every $z\in{D}$ there exist $m,n\in\mathbb{N}\setminus\left\{0\right\}$ such that $\left(f\left(z\right)\right)^{m}=\left(f\left(z\right)\right)^{n}$. Prove: $f$ is constant on $D$.

### Solution to 9.4-13

Assume without loss of generality $m>{}n$ (otherwise swap); then $\left(f\left(z\right)\right)^{m}=\left(f\left(z\right)\right)^{n}$ becomes

$$
\left(f\left(z\right)\right)^{n}\left(\left(f\left(z\right)\right)^{m-n}-1\right)=0,
$$

so for each $z$, either $f\left(z\right)=0$ or $\left(f\left(z\right)\right)^{m-n}=1$. The latter means $f\left(z\right)$ is a root of unity, hence $\left|f\left(z\right)\right|=1$. Therefore

$$
f\left(D\right)\subset\left\{0\right\}\cup\left\{w\in\mathbb{C}:\left|w\right|=1\right\}.
$$

The set $\left\{0\right\}\cup\left\{\left|w\right|=1\right\}$ has no interior points in $\mathbb{C}$. If $f$ were nonconstant, by **Theorem 10.1.4 (Open Mapping Theorem)**, $f\left(D\right)$ would be open and hence have interior points, a contradiction. Thus $f$ is constant on $D$. $\blacksquare$

## 9.4-15

Does there exist a holomorphic function $f\left(z\right)$ on $\mathbb{C}$ satisfying $\left|f\left(z\right)\right|>\left|z\right|$ for all $z\in\mathbb{C}$?

### Solution to 9.4-15

No. Suppose there were. At $z=0$, $\left|f\left(0\right)\right|>0$, so $f\left(0\right)\ne0$; for $z\ne0$, $\left|f\left(z\right)\right|>\left|z\right|>0$, so $f$ never vanishes on $\mathbb{C}$. Define the entire function

$$
g\left(z\right)=\frac{z}{f\left(z\right)},
$$

then $g\left(0\right)=0$, and for $z\ne0$, $\left|g\left(z\right)\right|=\frac{\left|z\right|}{\left|f\left(z\right)\right|}<1$. Hence $\left|g\left(z\right)\right|<1$ on all of $\mathbb{C}$, so $g$ is a bounded entire function. By **Theorem 9.1.3 (Liouville's Theorem)**, $g$ is constant; since $g\left(0\right)=0$, $g\equiv0$, contradicting $g\left(z\right)=\frac{z}{f\left(z\right)}\ne0$ for $z\ne0$. Hence no such function exists. $\blacksquare$

## 9.4-17

Let $f:\mathbb{C}\to\mathbb{D}=\left\{\left|z\right|<1\right\}$ be holomorphic on $\mathbb{C}$ with $f\left(2\right)=\frac{2+i}{8}$. Find $f\left(10\right)$.

### Solution to 9.4-17

Since $f:\mathbb{C}\to\mathbb{D}$ takes values in the open unit disk, $\left|f\left(z\right)\right|<1$ on $\mathbb{C}$, so $f$ is a bounded entire function. By **Theorem 9.1.3 (Liouville's Theorem)**, $f$ is constant on $\mathbb{C}$. Hence

$$
f\left(10\right)=f\left(2\right)=\frac{2+i}{8}.
$$

$\blacksquare$

## 9.4-18

Let $f$ be holomorphic on $\mathbb{C}$, and suppose there exist $a_{1},a_{2}\in\mathbb{C}$ with $\operatorname{Im}\frac{a_{1}}{a_{2}}\ne0$ such that $f\left(z+a_{1}\right)=f\left(z\right)=f\left(z+a_{2}\right)$ for all $z\in\mathbb{C}$. Prove: $f$ is constant.

### Solution to 9.4-18

$\operatorname{Im}\frac{a_{1}}{a_{2}}\ne0$ means $\frac{a_{1}}{a_{2}}\notin\mathbb{R}$, so $a_{1},a_{2}$ are linearly independent over $\mathbb{R}$. By periodicity, the parallelogram $\Pi=\left\{sa_{1}+ta_{2}:0\le{s},t\le1\right\}$ is a fundamental parallelogram for $f$; it is bounded (compact) in $\mathbb{C}$, so $\left|f\right|$ is bounded on $\Pi$. For any $z\in\mathbb{C}$, there exist $s,t\in\left[0,1\right)$ and $m,n\in\mathbb{Z}$ with $z=sa_{1}+ta_{2}+ma_{1}+na_{2}$; by double periodicity $f\left(z\right)=f\left(sa_{1}+ta_{2}\right)$, so $\left|f\right|$ is uniformly bounded on $\mathbb{C}$. Thus $f$ is a bounded entire function, and by **Theorem 9.1.3 (Liouville's Theorem)**, $f$ is constant. $\blacksquare$

## 10.4-2

Let $f,g$ be holomorphic on a domain $D\subset\mathbb{C}$. Suppose there is a point $z_{0}\in{D}$ and its $r$-neighborhood $B\left(z_{0},r\right)\subset{D}$, $r>0$, such that $\left|f\left(z_{0}\right)\right|+\left|g\left(z_{0}\right)\right|\ge\left|f\left(z\right)\right|+\left|g\left(z\right)\right|$ for all $z\in{B}\left(z_{0},r\right)$. Prove: both $f$ and $g$ are constant on $D$.

### Solution to 10.4-2

Write $M=\left|f\left(z_{0}\right)\right|+\left|g\left(z_{0}\right)\right|$. Choose $\theta_{1},\theta_{2}$ with $e^{i\theta_{1}}f\left(z_{0}\right)=\left|f\left(z_{0}\right)\right|$ and $e^{i\theta_{2}}g\left(z_{0}\right)=\left|g\left(z_{0}\right)\right|$, and set $h\left(z\right)=e^{i\theta_{1}}f\left(z\right)+e^{i\theta_{2}}g\left(z\right)$. Then $h$ is holomorphic on $D$, and

$$
h\left(z_{0}\right)=\left|f\left(z_{0}\right)\right|+\left|g\left(z_{0}\right)\right|=M,
$$

while $\left|h\left(z\right)\right|\le\left|f\left(z\right)\right|+\left|g\left(z\right)\right|\le{M}$ for all $z\in{B}\left(z_{0},r\right)$. Hence $\left|h\right|$ has a local maximum at $z_{0}$; by **Theorem 10.1.1 (Maximum Modulus Principle)**, $h$ is constant on $D$, say $h\left(z\right)\equiv{M}'$ with $\left|M'\right|=M$.

Thus $M=\left|h\left(z\right)\right|\le\left|f\left(z\right)\right|+\left|g\left(z\right)\right|\le{M}$ for all $z\in{B}\left(z_{0},r\right)$ (and hence $D$), so $\left|f\left(z\right)\right|+\left|g\left(z\right)\right|\equiv{M}$ and the triangle equality $\left|e^{i\theta_{1}}f\left(z\right)+e^{i\theta_{2}}g\left(z\right)\right|=\left|f\left(z\right)\right|+\left|g\left(z\right)\right|$ holds everywhere. The triangle equality requires $e^{i\theta_{1}}f\left(z\right)$ and $e^{i\theta_{2}}g\left(z\right)$ to point in the same direction, so $e^{i\left(\theta_{1}-\theta_{2}\right)}\frac{f\left(z\right)}{g\left(z\right)}\ge0$ is real (where $g\left(z\right)\ne0$). Hence $e^{i\left(\theta_{1}-\theta_{2}\right)}\frac{f}{g}$ is a real-valued meromorphic function; taking the imaginary part to zero gives (by the identity theorem) $e^{i\left(\theta_{1}-\theta_{2}\right)}\frac{f}{g}\equiv{c}\in\mathbb{R}_{\ge0}$, i.e. $f\equiv{c}'e^{i\theta}g$ is a constant multiple of $g$. From $\left|f\right|+\left|g\right|\equiv{M}$ we get $\left|g\right|\equiv\text{constant}$, so $g$ is constant (since $\left|g\right|$ is constant and $g$ is holomorphic, by **Theorem 10.1.4 (Open Mapping Theorem)** $g$ must be constant), and therefore $f$ is also constant. $\blacksquare$

## 10.4-4

Let $f$ be holomorphic on a bounded domain $D\subset\mathbb{C}$ and continuous on the closure $\overline{D}$. If $\left|f\left(z\right)\right|=\alpha$ for all $z\in\partial{D}$. Prove: either $f$ is constant or it has a zero in $D$.

### Solution to 10.4-4

Suppose $f$ has no zeros in $D$. If $\alpha=0$, then $\left|f\right|=0$ on $\partial{D}$, and by the maximum modulus principle $f\equiv0$ on $D$, constant. Assume $\alpha>0$. Since $\left|f\right|$ is continuous on $\overline{D}$, the maximum modulus principle (the maximum of $\left|f\right|$ on $\overline{D}$ is attained on the boundary) gives $\left|f\left(z\right)\right|\le\alpha$ for all $z\in{D}$.

Also $\frac{1}{f}$ is holomorphic on $D$ (since $f$ has no zeros) and continuous on $\overline{D}$, with $\left|\frac{1}{f}\right|=\frac{1}{\alpha}$ on the boundary. Similarly, $\left|\frac{1}{f\left(z\right)}\right|\le\frac{1}{\alpha}$, i.e. $\left|f\left(z\right)\right|\ge\alpha$ for all $z\in{D}$. Hence $\left|f\left(z\right)\right|\equiv\alpha$ on $D$, so $\left|f\right|$ is constant; by **Theorem 10.1.4 (Open Mapping Theorem)**, $f$ is constant. Thus either $f$ is constant or it has a zero in $D$. $\blacksquare$

## 10.4-6

(Hadamard's three-circles theorem) Let $0<{}r<{}R$, and let $f$ be holomorphic on the closed annulus $\left\{z\in\mathbb{C}:r\le\left|z\right|\le{R}\right\}$. Set $M\left(\rho\right)=\sup_{\theta\in\left[0,2\pi\right]}\left|f\left(\rho{e}^{i\theta}\right)\right|$ for $\rho\in\left[r,R\right]$. Prove: for every $s\in\left[0,1\right]$, $M\left(r^{s}R^{1-s}\right)\le{M}\left(r\right)^{s}M\left(R\right)^{1-s}$.

### Solution to 10.4-6

Write $\rho=r^{s}R^{1-s}$. If $M\left(r\right)=0$ or $M\left(R\right)=0$, the maximum modulus principle gives $f\equiv0$ and the inequality is trivial. Assume $M\left(r\right),M\left(R\right)>0$. Take the real number

$$
\lambda=\frac{\log{M}\left(r\right)-\log{M}\left(R\right)}{\log{R}-\log{r}},
$$

and set $g\left(z\right)=z^{\lambda}f\left(z\right)$, where $z^{\lambda}$ is taken as a fixed holomorphic branch on the annulus (cutting the annulus along a radius to make it simply connected, then taking the principal branch; $\left|z^{\lambda}\right|$ agrees on both sides of the cut). Then $g$ is holomorphic on the (cut) annulus, and on the inner boundary $\left|z\right|=r$ and outer boundary $\left|z\right|=R$,

$$
\left|g\left(z\right)\right|\le{r}^{\lambda}M\left(r\right)=R^{\lambda}M\left(R\right)=:K,
$$

(the last equality by the choice of $\lambda$). By the maximum modulus principle, $\left|g\left(z\right)\right|\le{K}$ on this region; in particular, for $\left|z\right|=\rho$, $\left|g\left(\rho{e}^{i\theta}\right)\right|\le{K}$. Hence

$$
M\left(\rho\right)\le{K}\rho^{-\lambda}=r^{\lambda}M\left(r\right)\rho^{-\lambda}=M\left(r\right)\left(\frac{r}{\rho}\right)^{\lambda}.
$$

Since $\frac{r}{\rho}=\left(r/R\right)^{1-s}$ and $\lambda\log\frac{r}{R}=\log{M}\left(R\right)-\log{M}\left(r\right)$, taking logs,

$$
\log{M}\left(\rho\right)\le\log{M}\left(r\right)+\left(1-s\right)\left(\log{M}\left(R\right)-\log{M}\left(r\right)\right)=s\log{M}\left(r\right)+\left(1-s\right)\log{M}\left(R\right).
$$

i.e. $M\left(\rho\right)\le{M}\left(r\right)^{s}M\left(R\right)^{1-s}$, which is $M\left(r^{s}R^{1-s}\right)\le{M}\left(r\right)^{s}M\left(R\right)^{1-s}$. $\blacksquare$

## 10.4-8

Let $f$ be holomorphic on $\mathbb{D}=\left\{\left|z\right|<1\right\}$, and let $z_{1},\cdots,z_{k}\in\mathbb{D}$ be all zeros of $f$ in $\mathbb{D}$ (counting multiplicity). Prove: $\left|f\left(0\right)\right|\le\sup_{\left|z\right|<1}\left|f\left(z\right)\right|\prod_{j=1}^{k}\left|z_{j}\right|$.

### Solution to 10.4-8

If $f\equiv0$, the inequality is trivial. Assume $f$ is nonconstant, and write $M=\sup_{\left|z\right|<1}\left|f\left(z\right)\right|$. By **Definition 10.3.2 (Blaschke Factor)**, construct

$$
B\left(z\right)=\prod_{j=1}^{k}\frac{z-z_{j}}{1-\overline{z}_{j}z},
$$

which is holomorphic on $\mathbb{D}$ (denominators $1-\overline{z}_{j}z\ne0$), has zeros exactly at $z_{1},\cdots,z_{k}$ (with multiplicity), and satisfies $\left|B\left(e^{i\theta}\right)\right|=1$ on the unit circle. Since all zeros of $f$ are canceled by $B$, $g\left(z\right)=\frac{f\left(z\right)}{B\left(z\right)}$ is holomorphic and nonzero on $\mathbb{D}$.

For $0<{}r<1$, on the circle $\left|z\right|=r$, the maximum modulus principle gives $\left|g\left(z\right)\right|\le\max_{\left|w\right|=r}\left|g\left(w\right)\right|=\frac{\max_{\left|w\right|=r}\left|f\left(w\right)\right|}{\min_{\left|w\right|=r}\left|B\left(w\right)\right|}$. Letting $r\to1^{-}$, $\max_{\left|w\right|=r}\left|f\left(w\right)\right|\to{M}$ and $\min_{\left|w\right|=r}\left|B\left(w\right)\right|\to1$, so $\left|g\left(z\right)\right|\le{M}$ for all $z\in\mathbb{D}$. In particular,

$$
\left|g\left(0\right)\right|=\frac{\left|f\left(0\right)\right|}{\left|B\left(0\right)\right|}\le{M},
$$

and $\left|B\left(0\right)\right|=\prod_{j=1}^{k}\left|z_{j}\right|$, so $\left|f\left(0\right)\right|\le{M}\prod_{j=1}^{k}\left|z_{j}\right|=\sup_{\left|z\right|<1}\left|f\left(z\right)\right|\prod_{j=1}^{k}\left|z_{j}\right|$. $\blacksquare$
