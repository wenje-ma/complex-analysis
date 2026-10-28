# week9

> **Theorem 8.3.2 (Higher Derivative Formula)**<br>If $f$ is holomorphic on a simply connected domain $D$, $\gamma$ is a piecewise smooth Jordan closed curve in $D$, and $z$ lies in its interior, then $f$ has derivatives of all orders at $z$ and

$$
f^{\left(n\right)}\left(z\right)=\frac{n!}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\left(\zeta-z\right)^{n+1}}\,d\zeta.
$$

> **Theorem 9.1.3 (Liouville's Theorem)**<br>Every bounded entire function on $\mathbb{C}$ is constant.

> **Theorem 9.3.2 (Identity Theorem)**<br>If the zeros of a holomorphic function $f$ on a domain $D$ have an accumulation point in $D$, then $f\equiv0$.

> **Theorem 9.3.3 (Uniqueness Theorem)**<br>If two holomorphic functions $f,g$ on a domain $D$ agree on a set with an accumulation point in $D$, then $f\equiv g$.

> **Theorem 10.1.4 (Open Mapping Theorem)**<br>A nonconstant holomorphic function maps domains onto domains (open sets).

---

## 9.4-2

Let $f$ be holomorphic on the unit disk $\mathbb{D}:=\left\{z\in\mathbb{C}:\left|z\right|< 1\right\}$ with $\left|f'\left(z\right)\right|\le\frac{1}{1-\left|z\right|}$ for all $z\in\mathbb{D}$. Prove: every Taylor coefficient $c_{n}$ of $f$ at $z=0$ satisfies $\left|c_{n}\right|< e$ for all $n\in\mathbb{N}\setminus\left\{0\right\}$.

### Solution 9.4-2

The Taylor coefficients at $0$ are $c_{n}=\frac{f^{\left(n\right)}\left(0\right)}{n!}$. By **Theorem 8.3.2 (Higher Derivative Formula)** applied to $f'$ at order $n-1$, taking $0< r< 1$,

$$
f^{\left(n\right)}\left(0\right)=\frac{\left(n-1\right)!}{2\pi i}\int_{\left|z\right|=r}\frac{f'\left(z\right)}{z^{n}}\,dz.
$$

Hence

$$
\left|c_{n}\right|=\frac{\left|f^{\left(n\right)}\left(0\right)\right|}{n!}\le\frac{\left(n-1\right)!}{n!}\cdot\frac{1}{2\pi}\cdot\frac{1}{1-r}\cdot\frac{2\pi r}{r^{n}}=\frac{1}{n}\cdot\frac{r^{1-n}}{1-r}.
$$

Optimize over $r\in\left(0,1\right)$. Let $h\left(r\right)=\frac{r^{1-n}}{1-r}$; $h'\left(r\right)=0$ gives $r=\frac{n-1}{n}$, and

$$
h\left(\frac{n-1}{n}\right)=\frac{\left(\frac{n-1}{n}\right)^{1-n}}{1-\frac{n-1}{n}}=n\left(1+\frac{1}{n-1}\right)^{n-1}.
$$

Thus $\left|c_{n}\right|\le\left(1+\frac{1}{n-1}\right)^{n-1}< e$ (since $\left(1+\frac{1}{m}\right)^{m}< e$). $\blacksquare$

---

## 9.4-4

Let $D$ be a domain containing the origin, and $f\left(x\right):=\begin{cases}e^{-1/x^{2}},&x\ne0\\0,&x=0\end{cases}$. Does there exist a holomorphic function on $D$ whose restriction to the real axis equals $f$?

### Solution 9.4-4

No. Suppose there were a holomorphic $F$ on $D$ with $F\left(x\right)=f\left(x\right)$ on the real axis. From real analysis, $f$ has derivatives of all orders at $0$ with $f^{\left(n\right)}\left(0\right)=0$ for all $n\ge0$ (the function $e^{-1/x^{2}}$ is the standard example of a real-smooth but non-real-analytic function). Since $F$ agrees with $f$ on the real axis, $F^{\left(n\right)}\left(0\right)=f^{\left(n\right)}\left(0\right)=0$, so all Taylor coefficients of $F$ at $0$ vanish, and $F\equiv0$ near $0$. By **Theorem 9.3.2 (Identity Theorem)**, $F\equiv0$ on $D$. But for real $x\ne0$, $F\left(x\right)=0\ne e^{-1/x^{2}}=f\left(x\right)$, a contradiction. Hence no such function exists. $\blacksquare$

---

## 9.4-6

Let $f,g$ be holomorphic and nonzero on $\mathbb{D}:=\left\{z\in\mathbb{C}:\left|z\right|< 1\right\}$. Prove: if $\frac{f'\left(x_{n}\right)}{f\left(x_{n}\right)}=\frac{g'\left(x_{n}\right)}{g\left(x_{n}\right)}$ for $x_{n}=\frac{1}{n}$, $n=2,3,\cdots$, then $f=cg$ for some $c\in\mathbb{C}$.

### Solution 9.4-6

Since $f,g$ are nonzero on $\mathbb{D}$, $\frac{f'}{f}-\frac{g'}{g}$ is holomorphic on $\mathbb{D}$. By assumption it vanishes on $\left\{x_{n}\right\}$, and $x_{n}=\frac{1}{n}\to0\in\mathbb{D}$, so the zeros have an accumulation point $0$ in $\mathbb{D}$. By **Theorem 9.3.2 (Identity Theorem)**, $\frac{f'}{f}-\frac{g'}{g}\equiv0$, i.e. $\frac{f'}{f}=\frac{g'}{g}$ on $\mathbb{D}$.

Hence $\left(\log f\right)'=\left(\log g\right)'$ on $\mathbb{D}$ (taking any local logarithm branch), so $\log f-\log g$ is locally constant on $\mathbb{D}$; since $\mathbb{D}$ is connected, there is $c_{0}\in\mathbb{C}$ with $\log f=\log g+c_{0}$ on $\mathbb{D}$. Exponentiating, $f=e^{c_{0}}g$, i.e. $f=cg$ with $c=e^{c_{0}}$. $\blacksquare$

---

## 9.4-8

(Borel-Carathéodory inequality) Let $f$ be holomorphic on the closed disk $\left\{z\in\mathbb{C}:\left|z\right|\le R\right\}$, and $\sum_{k=0}^{\infty}a_{k}z^{k}$ its Taylor series at $0$. Prove:

$$
\left|a_{k}\right|R^{k}\le4\max_{0\le\theta\le2\pi}\operatorname{Re}f\left(Re^{i\theta}\right)+4\left|f\left(0\right)\right|,\quad\forall k\in\mathbb{N}.
$$

### Solution 9.4-8

Write $A=\max_{0\le\theta\le2\pi}\operatorname{Re}f\left(Re^{i\theta}\right)$, $u=\operatorname{Re}f$. For $k\ge1$, from $f\left(Re^{i\theta}\right)=\sum_{j=0}^{\infty}a_{j}R^{j}e^{ij\theta}$ and the Fourier expansion of $u=\operatorname{Re}f$,

$$
\frac{1}{2\pi}\int_{0}^{2\pi}u\left(Re^{i\theta}\right)e^{-ik\theta}\,d\theta=\frac{1}{2}a_{k}R^{k},
$$

so $a_{k}R^{k}=\frac{1}{\pi}\int_{0}^{2\pi}u\left(Re^{i\theta}\right)e^{-ik\theta}\,d\theta$. Let $A_{+}=\max\left(A,0\right)$; then $u\left(Re^{i\theta}\right)\le A\le A_{+}$, and $\left|u\right|\le2A_{+}-u$. Hence

$$
\left|a_{k}\right|R^{k}\le\frac{1}{\pi}\int_{0}^{2\pi}\left|u\left(Re^{i\theta}\right)\right|\,d\theta\le\frac{1}{\pi}\int_{0}^{2\pi}\left(2A_{+}-u\left(Re^{i\theta}\right)\right)\,d\theta=4A_{+}-2\operatorname{Re}f\left(0\right).
$$

Since $-\operatorname{Re}f\left(0\right)\le\left|\operatorname{Re}f\left(0\right)\right|\le\left|f\left(0\right)\right|$ and $A\ge\operatorname{Re}f\left(0\right)\ge-\left|f\left(0\right)\right|$ implies $4A_{+}\le4A+4\left|f\left(0\right)\right|$,

$$
\left|a_{k}\right|R^{k}\le4A+4\left|f\left(0\right)\right|,\quad k\ge1.
$$

For $k=0$, $\left|a_{0}\right|=\left|f\left(0\right)\right|\le4A+4\left|f\left(0\right)\right|$ is immediate. $\blacksquare$

---

## 9.4-10

(L'Hôpital's rule) Let $D\subset\mathbb{C}$ be open, $f,g$ holomorphic on $D$, and $a\in D$ a common isolated zero. Prove:

(i) if both $f$ and $g$ have a zero of order $m$ at $a$, then $\lim_{z\to a}\frac{f\left(z\right)}{g\left(z\right)}=\lim_{z\to a}\frac{f^{\left(m\right)}\left(z\right)}{g^{\left(m\right)}\left(z\right)}$;

(ii) $\lim_{z\to a}\frac{f\left(z\right)}{g\left(z\right)}=\lim_{z\to a}\frac{f'\left(z\right)}{g'\left(z\right)}$ (including the case where the limit is $\infty$).

### Solution 9.4-10

(i) Since $f$ has a zero of order $m$ at $a$, $f\left(z\right)=\left(z-a\right)^{m}f_{1}\left(z\right)$ with $f_{1}\left(a\right)\ne0$; similarly $g\left(z\right)=\left(z-a\right)^{m}g_{1}\left(z\right)$ with $g_{1}\left(a\right)\ne0$. Thus

$$
\frac{f\left(z\right)}{g\left(z\right)}=\frac{f_{1}\left(z\right)}{g_{1}\left(z\right)}\to\frac{f_{1}\left(a\right)}{g_{1}\left(a\right)}.
$$

On the other hand, by Leibniz's rule, $f^{\left(m\right)}\left(a\right)=m!f_{1}\left(a\right)$ and $g^{\left(m\right)}\left(a\right)=m!g_{1}\left(a\right)$, so

$$
\lim_{z\to a}\frac{f^{\left(m\right)}\left(z\right)}{g^{\left(m\right)}\left(z\right)}=\frac{m!f_{1}\left(a\right)}{m!g_{1}\left(a\right)}=\frac{f_{1}\left(a\right)}{g_{1}\left(a\right)}=\lim_{z\to a}\frac{f\left(z\right)}{g\left(z\right)}.
$$

(ii) Let $p$ be the order of $f$ at $a$, $q$ that of $g$. If $p> q$, then $f\left(z\right)=\left(z-a\right)^{p}f_{1}$, $g\left(z\right)=\left(z-a\right)^{q}g_{1}$ with $f_{1}\left(a\right)g_{1}\left(a\right)\ne0$, so $\frac{f}{g}=\left(z-a\right)^{p-q}\frac{f_{1}}{g_{1}}\to0$; meanwhile $f'$ has order $p-1$, $g'$ order $q-1$, and $\frac{f'}{g'}\to0$, so they agree. If $p< q$, similarly $\frac{f}{g}\to\infty$ and $\frac{f'}{g'}\to\infty$. If $p=q=m$, applying (i) to $f',g'$ (both zeros of order $m-1$) gives $\lim\frac{f'}{g'}=\lim\frac{f^{\left(m\right)}}{g^{\left(m\right)}}$, and by (i) $\lim\frac{f}{g}=\lim\frac{f^{\left(m\right)}}{g^{\left(m\right)}}$, so they agree. $\blacksquare$

---

## 9.4-13

Let $f$ be holomorphic on a domain $D\subset\mathbb{C}$. Suppose for every $z\in D$ there exist $m,n\in\mathbb{N}\setminus\left\{0\right\}$ such that $\left(f\left(z\right)\right)^{m}=\left(f\left(z\right)\right)^{n}$. Prove: $f$ is constant on $D$.

### Solution 9.4-13

Assume without loss of generality $m> n$ (otherwise swap); then $\left(f\left(z\right)\right)^{m}=\left(f\left(z\right)\right)^{n}$ becomes

$$
\left(f\left(z\right)\right)^{n}\left(\left(f\left(z\right)\right)^{m-n}-1\right)=0,
$$

so for each $z$, either $f\left(z\right)=0$ or $\left(f\left(z\right)\right)^{m-n}=1$. The latter means $f\left(z\right)$ is a root of unity, hence $\left|f\left(z\right)\right|=1$. Therefore

$$
f\left(D\right)\subset\left\{0\right\}\cup\left\{w\in\mathbb{C}:\left|w\right|=1\right\}.
$$

The set $\left\{0\right\}\cup\left\{\left|w\right|=1\right\}$ has no interior points in $\mathbb{C}$. If $f$ were nonconstant, by **Theorem 10.1.4 (Open Mapping Theorem)**, $f\left(D\right)$ would be open and hence have interior points, a contradiction. Thus $f$ is constant on $D$. $\blacksquare$

---

## 9.4-15

Does there exist a holomorphic function $f\left(z\right)$ on $\mathbb{C}$ satisfying $\left|f\left(z\right)\right|> \left|z\right|$ for all $z\in\mathbb{C}$?

### Solution 9.4-15

No. Suppose there were. At $z=0$, $\left|f\left(0\right)\right|> 0$, so $f\left(0\right)\ne0$; for $z\ne0$, $\left|f\left(z\right)\right|> \left|z\right|> 0$, so $f$ never vanishes on $\mathbb{C}$. Define the entire function

$$
g\left(z\right)=\frac{z}{f\left(z\right)},
$$

then $g\left(0\right)=0$, and for $z\ne0$, $\left|g\left(z\right)\right|=\frac{\left|z\right|}{\left|f\left(z\right)\right|}< 1$. Hence $\left|g\left(z\right)\right|< 1$ on all of $\mathbb{C}$, so $g$ is a bounded entire function. By **Theorem 9.1.3 (Liouville's Theorem)**, $g$ is constant; since $g\left(0\right)=0$, $g\equiv0$, contradicting $g\left(z\right)=\frac{z}{f\left(z\right)}\ne0$ for $z\ne0$. Hence no such function exists. $\blacksquare$

---

## 9.4-17

Let $f:\mathbb{C}\to\mathbb{D}=\left\{\left|z\right|< 1\right\}$ be holomorphic on $\mathbb{C}$ with $f\left(2\right)=\frac{2+i}{8}$. Find $f\left(10\right)$.

### Solution 9.4-17

Since $f:\mathbb{C}\to\mathbb{D}$ takes values in the open unit disk, $\left|f\left(z\right)\right|< 1$ on $\mathbb{C}$, so $f$ is a bounded entire function. By **Theorem 9.1.3 (Liouville's Theorem)**, $f$ is constant on $\mathbb{C}$. Hence

$$
f\left(10\right)=f\left(2\right)=\frac{2+i}{8}.
$$

$\blacksquare$

---

## 9.4-18

Let $f$ be holomorphic on $\mathbb{C}$, and suppose there exist $a_{1},a_{2}\in\mathbb{C}$ with $\operatorname{Im}\frac{a_{1}}{a_{2}}\ne0$ such that $f\left(z+a_{1}\right)=f\left(z\right)=f\left(z+a_{2}\right)$ for all $z\in\mathbb{C}$. Prove: $f$ is constant.

### Solution 9.4-18

$\operatorname{Im}\frac{a_{1}}{a_{2}}\ne0$ means $\frac{a_{1}}{a_{2}}\notin\mathbb{R}$, so $a_{1},a_{2}$ are linearly independent over $\mathbb{R}$. By periodicity, the parallelogram $\Pi=\left\{sa_{1}+ta_{2}:0\le s,t\le1\right\}$ is a fundamental parallelogram for $f$; it is bounded (compact) in $\mathbb{C}$, so $\left|f\right|$ is bounded on $\Pi$. For any $z\in\mathbb{C}$, there exist $s,t\in\left[0,1\right)$ and $m,n\in\mathbb{Z}$ with $z=sa_{1}+ta_{2}+ma_{1}+na_{2}$; by double periodicity $f\left(z\right)=f\left(sa_{1}+ta_{2}\right)$, so $\left|f\right|$ is uniformly bounded on $\mathbb{C}$. Thus $f$ is a bounded entire function, and by **Theorem 9.1.3 (Liouville's Theorem)**, $f$ is constant. $\blacksquare$
