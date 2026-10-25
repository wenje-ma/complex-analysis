# Assignment 9

> **Theorem 8.3.2** (Higher-Order Derivative Formula)<br>$$f^{\left(n\right)}\left(z\right)=\frac{n!}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\left(\zeta-z\right)^{n+1}}\,d\zeta.$$

> **Theorem 9.1.3** (Liouville)<br>Every bounded entire function on $\mathbb{C}$ must be constant.

> **Theorem 9.3.2** (Identity Theorem)<br>If the zeros of a holomorphic function $f$ on a domain $D$ have an accumulation point in $D$, then $f\equiv0$.

> **Theorem 9.3.3** (Uniqueness Theorem)<br>If two holomorphic functions $f,g$ on a domain $D$ agree on a set that has an accumulation point in $D$, then $f\equiv g$.

> **Theorem 10.1.4** (Open Mapping Theorem)<br>A nonconstant holomorphic function maps domains onto domains (open sets).

### Problem 1

(Problem 9.4-2) Let $f$ be holomorphic on the unit disk $\mathbb{D}:=\left\{z\in\mathbb{C}:\left|z\right|< 1\right\}$ with $\left|f'\left(z\right)\right|\le\frac{1}{1-\left|z\right|}$, $\forall z\in\mathbb{D}$. Prove: every coefficient $c_{n}$ of the Taylor series of $f$ at $z=0$ satisfies $\left|c_{n}\right|< e$, $\forall n\in\mathbb{N}\setminus\left\{0\right\}$.

### Solution to Problem 1

The Taylor coefficients of $f$ at $0$ are $c_{n}=\frac{f^{\left(n\right)}\left(0\right)}{n!}$. Applying **Theorem 8.3.2 (Higher-Order Derivative Formula)** to $f'$ for the $n-1$-th derivative, and taking $0< r< 1$:

$$
f^{\left(n\right)}\left(0\right)=\frac{\left(n-1\right)!}{2\pi i}\int_{\left|z\right|=r}\frac{f'\left(z\right)}{z^{n}}\,dz.
$$

Hence

$$
\left|c_{n}\right|=\frac{\left|f^{\left(n\right)}\left(0\right)\right|}{n!}\le\frac{\left(n-1\right)!}{n!}\cdot\frac{1}{2\pi}\cdot\frac{1}{1-r}\cdot\frac{2\pi r}{r^{n}}=\frac{1}{n}\cdot\frac{r^{1-n}}{1-r}.
$$

Optimize over $r\in\left(0,1\right)$. Let $h\left(r\right)=\frac{r^{1-n}}{1-r}$; from $h'\left(r\right)=0$ we get $r=\frac{n-1}{n}$, at which

$$
h\left(\frac{n-1}{n}\right)=\frac{\left(\frac{n-1}{n}\right)^{1-n}}{1-\frac{n-1}{n}}=n\left(1+\frac{1}{n-1}\right)^{n-1}.
$$

Hence $\left|c_{n}\right|\le\left(1+\frac{1}{n-1}\right)^{n-1}< e$ (since $\left(1+\frac{1}{m}\right)^{m}< e$). The proposition is proved. $\blacksquare$

### Problem 2

(Problem 9.4-4) Let $D$ be a domain containing the origin, and let $f\left(x\right):=\begin{cases}e^{-1/x^{2}},&x\ne0\\0,&x=0\end{cases}$. Does there exist a holomorphic function on $D$ whose restriction to the real axis equals $f$?

### Solution to Problem 2

No. Suppose there exists a holomorphic function $F$ on $D$ such that $F\left(x\right)=f\left(x\right)$ for all points on the real axis. It is known from real analysis that $f$ has derivatives of all orders at $0$ and $f^{\left(n\right)}\left(0\right)=0$, $\forall n\ge0$ (the function $e^{-1/x^{2}}$ is a standard example of a real smooth but not real analytic function). Since $F$ and $f$ agree on the real axis, $F^{\left(n\right)}\left(0\right)=f^{\left(n\right)}\left(0\right)=0$, so all coefficients of the Taylor series of $F$ at $0$ are $0$; hence $F$ is identically $0$ on some neighborhood of $0$. By **Theorem 9.3.2 (Identity Theorem)**, $F\equiv0$ on $D$. But taking $x\ne0$ on the real axis, $F\left(x\right)=0\ne e^{-1/x^{2}}=f\left(x\right)$, a contradiction. Hence no such function exists. $\blacksquare$

### Problem 3

(Problem 9.4-6) Let $f,g$ be holomorphic and nonvanishing on $\mathbb{D}:=\left\{z\in\mathbb{C}:\left|z\right|< 1\right\}$. Prove: if $\frac{f'\left(x_{n}\right)}{f\left(x_{n}\right)}=\frac{g'\left(x_{n}\right)}{g\left(x_{n}\right)}$, where $x_{n}=\frac{1}{n}$, $n=2,3,\cdots$, then $f=cg$ for some $c\in\mathbb{C}$.

### Solution to Problem 3

Since $f,g$ are nonvanishing on $\mathbb{D}$, $\frac{f'}{f}-\frac{g'}{g}$ is holomorphic on $\mathbb{D}$. By assumption it vanishes on the sequence $\left\{x_{n}\right\}$, and $x_{n}=\frac{1}{n}\to0\in\mathbb{D}$, i.e. the zeros have an accumulation point $0$ inside $\mathbb{D}$. By **Theorem 9.3.2 (Identity Theorem)**, $\frac{f'}{f}-\frac{g'}{g}\equiv0$, i.e. $\frac{f'}{f}=\frac{g'}{g}$ on $\mathbb{D}$.

Hence $\left(\log f\right)'=\left(\log g\right)'$ on $\mathbb{D}$ (taking any local logarithmic branch), so $\log f-\log g$ is locally constant on $\mathbb{D}$; since $\mathbb{D}$ is connected, there exists $c_{0}\in\mathbb{C}$ such that $\log f=\log g+c_{0}$ on $\mathbb{D}$. Exponentiating gives $f=e^{c_{0}}g$, i.e. $f=cg$ with $c=e^{c_{0}}$. $\blacksquare$

### Problem 4

(Problem 9.4-8) (Borel–Carathéodory) Let $f$ be holomorphic on the closed disk $\left\{z\in\mathbb{C}:\left|z\right|\le R\right\}$, and let $\sum_{k=0}^{\infty}a_{k}z^{k}$ be the Taylor series of $f$ at $0$. Prove:

$$
\left|a_{k}\right|R^{k}\le4\max_{0\le\theta\le2\pi}\operatorname{Re}f\left(Re^{i\theta}\right)+4\left|f\left(0\right)\right|,\quad\forall k\in\mathbb{N}.
$$

### Solution to Problem 4

Write $A=\max_{0\le\theta\le2\pi}\operatorname{Re}f\left(Re^{i\theta}\right)$, $u=\operatorname{Re}f$. For $k\ge1$, from $f\left(Re^{i\theta}\right)=\sum_{j=0}^{\infty}a_{j}R^{j}e^{ij\theta}$ and the Fourier expansion of $u=\operatorname{Re}f$, for $k\ge1$ we have

$$
\frac{1}{2\pi}\int_{0}^{2\pi}u\left(Re^{i\theta}\right)e^{-ik\theta}\,d\theta=\frac{1}{2}a_{k}R^{k},
$$

so $a_{k}R^{k}=\frac{1}{\pi}\int_{0}^{2\pi}u\left(Re^{i\theta}\right)e^{-ik\theta}\,d\theta$. Let $A_{+}=\max\left(A,0\right)$; then $u\left(Re^{i\theta}\right)\le A\le A_{+}$, and hence $\left|u\right|\le2A_{+}-u$. Therefore

$$
\left|a_{k}\right|R^{k}\le\frac{1}{\pi}\int_{0}^{2\pi}\left|u\left(Re^{i\theta}\right)\right|\,d\theta\le\frac{1}{\pi}\int_{0}^{2\pi}\left(2A_{+}-u\left(Re^{i\theta}\right)\right)\,d\theta=4A_{+}-2\operatorname{Re}f\left(0\right).
$$

Also, $-\operatorname{Re}f\left(0\right)\le\left|\operatorname{Re}f\left(0\right)\right|\le\left|f\left(0\right)\right|$, and $A\ge\operatorname{Re}f\left(0\right)\ge-\left|f\left(0\right)\right|$ ensures $4A_{+}\le4A+4\left|f\left(0\right)\right|$, so

$$
\left|a_{k}\right|R^{k}\le4A+4\left|f\left(0\right)\right|,\quad k\ge1.
$$

For $k=0$, $\left|a_{0}\right|=\left|f\left(0\right)\right|\le4A+4\left|f\left(0\right)\right|$ is obvious. The proposition is proved. $\blacksquare$

### Problem 5

(Problem 9.4-10) (L'Hôpital's rule) Let $D\subset\mathbb{C}$ be open, $f,g$ holomorphic on $D$, and let $a\in D$ be a common isolated zero of both. Prove:

(i) if both $f$ and $g$ have a zero of order $m$ at $a$, then $\lim_{z\to a}\frac{f\left(z\right)}{g\left(z\right)}=\lim_{z\to a}\frac{f^{\left(m\right)}\left(z\right)}{g^{\left(m\right)}\left(z\right)}$;

(ii) $\lim_{z\to a}\frac{f\left(z\right)}{g\left(z\right)}=\lim_{z\to a}\frac{f'\left(z\right)}{g'\left(z\right)}$ (including the case where the limit is $\infty$).

### Solution to Problem 5

(i) Since $f$ has a zero of order $m$ at $a$, $f\left(z\right)=\left(z-a\right)^{m}f_{1}\left(z\right)$ with $f_{1}\left(a\right)\ne0$; similarly $g\left(z\right)=\left(z-a\right)^{m}g_{1}\left(z\right)$ with $g_{1}\left(a\right)\ne0$. Hence

$$
\frac{f\left(z\right)}{g\left(z\right)}=\frac{f_{1}\left(z\right)}{g_{1}\left(z\right)}\to\frac{f_{1}\left(a\right)}{g_{1}\left(a\right)}.
$$

On the other hand, by Leibniz's rule, $f^{\left(m\right)}\left(a\right)=m!f_{1}\left(a\right)$, $g^{\left(m\right)}\left(a\right)=m!g_{1}\left(a\right)$, so

$$
\lim_{z\to a}\frac{f^{\left(m\right)}\left(z\right)}{g^{\left(m\right)}\left(z\right)}=\frac{m!f_{1}\left(a\right)}{m!g_{1}\left(a\right)}=\frac{f_{1}\left(a\right)}{g_{1}\left(a\right)}=\lim_{z\to a}\frac{f\left(z\right)}{g\left(z\right)}.
$$

(ii) Let the order of the zero of $f$ at $a$ be $p$, and that of $g$ be $q$. If $p> q$, then $f\left(z\right)=\left(z-a\right)^{p}f_{1}$, $g\left(z\right)=\left(z-a\right)^{q}g_{1}$, $f_{1}\left(a\right)g_{1}\left(a\right)\ne0$, so $\frac{f}{g}=\left(z-a\right)^{p-q}\frac{f_{1}}{g_{1}}\to0$; meanwhile $f'$ has a zero of order $p-1$ and $g'$ of order $q-1$, and $\frac{f'}{g'}\to0$, so the two are equal. If $p< q$, similarly $\frac{f}{g}\to\infty$ and $\frac{f'}{g'}\to\infty$, so they are equal. If $p=q=m$, applying (i) to $f',g'$ (both zeros of order $m-1$) gives $\lim\frac{f'}{g'}=\lim\frac{f^{\left(m\right)}}{g^{\left(m\right)}}$, and applying (i) again gives $\lim\frac{f}{g}=\lim\frac{f^{\left(m\right)}}{g^{\left(m\right)}}$, so the two are equal. $\blacksquare$

### Problem 6

(Problem 9.4-13) Let $f$ be holomorphic on a domain $D\subset\mathbb{C}$. Suppose that for every $z\in D$ there exist $m,n\in\mathbb{N}\setminus\left\{0\right\}$ such that $\left(f\left(z\right)\right)^{m}=\left(f\left(z\right)\right)^{n}$. Prove: $f$ is constant on $D$.

### Solution to Problem 6

Without loss of generality, assume $m> n$ (otherwise swap); then $\left(f\left(z\right)\right)^{m}=\left(f\left(z\right)\right)^{n}$ becomes

$$
\left(f\left(z\right)\right)^{n}\left(\left(f\left(z\right)\right)^{m-n}-1\right)=0,
$$

so for each $z$, either $f\left(z\right)=0$, or $\left(f\left(z\right)\right)^{m-n}=1$. The latter means $f\left(z\right)$ is a root of unity, satisfying $\left|f\left(z\right)\right|=1$. Therefore

$$
f\left(D\right)\subset\left\{0\right\}\cup\left\{w\in\mathbb{C}:\left|w\right|=1\right\}.
$$

The set $\left\{0\right\}\cup\left\{\left|w\right|=1\right\}$ has no interior points in $\mathbb{C}$. If $f$ were nonconstant, by **Theorem 10.1.4 (Open Mapping Theorem)**, $f\left(D\right)$ would be an open set and hence would have interior points, a contradiction. Therefore $f$ is constant on $D$. $\blacksquare$

### Problem 7

(Problem 9.4-15) Does there exist a holomorphic function $f\left(z\right)$ on $\mathbb{C}$ satisfying $\left|f\left(z\right)\right|> \left|z\right|$, $\forall z\in\mathbb{C}$?

### Solution to Problem 7

No. Suppose such a function exists. Taking $z=0$ gives $\left|f\left(0\right)\right|> 0$, so $f\left(0\right)\ne0$; for $z\ne0$, $\left|f\left(z\right)\right|> \left|z\right|> 0$, so $f$ is nowhere zero on $\mathbb{C}$. Define the entire function

$$
g\left(z\right)=\frac{z}{f\left(z\right)},
$$

then $g\left(0\right)=0$, and for $z\ne0$, $\left|g\left(z\right)\right|=\frac{\left|z\right|}{\left|f\left(z\right)\right|}< 1$. Hence $\left|g\left(z\right)\right|< 1$ on $\mathbb{C}$, so $g$ is a bounded entire function. By **Theorem 9.1.3 (Liouville)**, $g$ is constant; since $g\left(0\right)=0$, $g\equiv0$, which contradicts $g\left(z\right)=\frac{z}{f\left(z\right)}\ne0$ ($z\ne0$). Hence no such function exists. $\blacksquare$

### Problem 8

(Problem 9.4-17) Let $f:\mathbb{C}\to\mathbb{D}=\left\{\left|z\right|< 1\right\}$ be holomorphic on $\mathbb{C}$ and satisfy $f\left(2\right)=\frac{2+i}{8}$. Find the value of $f\left(10\right)$.

### Solution to Problem 8

$f:\mathbb{C}\to\mathbb{D}$ takes values in the open unit disk, so $\left|f\left(z\right)\right|< 1$ on $\mathbb{C}$; $f$ is a bounded entire function. By **Theorem 9.1.3 (Liouville)**, $f$ is constant on $\mathbb{C}$. Hence

$$
f\left(10\right)=f\left(2\right)=\frac{2+i}{8}.
$$

$\blacksquare$

### Problem 9

(Problem 9.4-18) Let $f$ be holomorphic on $\mathbb{C}$, and suppose there exist $a_{1},a_{2}\in\mathbb{C}$ with $\operatorname{Im}\frac{a_{1}}{a_{2}}\ne0$ such that $f\left(z+a_{1}\right)=f\left(z\right)=f\left(z+a_{2}\right)$, $\forall z\in\mathbb{C}$. Prove: $f$ is constant.

### Solution to Problem 9

$\operatorname{Im}\frac{a_{1}}{a_{2}}\ne0$ means $\frac{a_{1}}{a_{2}}\notin\mathbb{R}$, so $a_{1},a_{2}$ are linearly independent over $\mathbb{R}$. By periodicity, the parallelogram $\Pi=\left\{sa_{1}+ta_{2}:0\le s,t\le1\right\}$ is a fundamental parallelogram of $f$; it is bounded (compact) in $\mathbb{C}$, so $\left|f\right|$ is bounded on $\Pi$. Also, for any $z\in\mathbb{C}$, there exist $s,t\in\left[0,1\right)$ and $m,n\in\mathbb{Z}$ such that $z=sa_{1}+ta_{2}+ma_{1}+na_{2}$; by double periodicity $f\left(z\right)=f\left(sa_{1}+ta_{2}\right)$, so $\left|f\right|$ is uniformly bounded on $\mathbb{C}$. $f$ is a bounded entire function; by **Theorem 9.1.3 (Liouville)**, $f$ is constant. $\blacksquare$
