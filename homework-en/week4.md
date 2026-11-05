# week4

> **Definition 3.2.1 (Differentiability)**
> 
> $f$ is $\mathbb{R}$-differentiable (or $\mathbb{C}$-differentiable) at $z$ if $\Delta{f}=\ell\left(\Delta{z}\right)+o\left(\left|\Delta{z}\right|\right)$, where $\ell$ is $\mathbb{R}$-linear (or $\mathbb{C}$-linear).

> **Definition 3.2.2 (Formal Derivatives)**
> 
> The formal derivative operators are

$$
\frac{\partial{f}}{\partial{z}}=\frac{1}{2}\left(\frac{\partial{f}}{\partial{x}}-i\frac{\partial{f}}{\partial{y}}\right),\quad\frac{\partial{f}}{\partial\overline{z}}=\frac{1}{2}\left(\frac{\partial{f}}{\partial{x}}+i\frac{\partial{f}}{\partial{y}}\right).
$$

> **Theorem 3.2.4 (Cauchy-Riemann Equations)**
> 
> $f$ is $\mathbb{C}$-differentiable at $z$ if and only if $f$ is $\mathbb{R}$-differentiable at $z$ and $\frac{\partial{f}}{\partial\overline{z}}=0$, equivalently $u,v$ satisfy the Cauchy-Riemann equations.

> **Definition 7.1.1 (Path Integral)**
> 
> The integral of $f$ along a piecewise smooth path $\gamma:\left[a,b\right]\to\mathbb{C}$ is

> **Definition 7.2.1 (Antiderivative)**
> 
> A holomorphic function $F$ on a domain $D$ is called an antiderivative of $f$ if $F'=f$ on $D$; $f$ has an antiderivative if and only if its integral along every closed path in $D$ is zero.

> **Theorem 7.2.3**
> 
> $\frac{1}{z}$ has an antiderivative on a domain $D\subset\mathbb{C}\setminus\left\{0\right\}$ if and only if $D$ admits a holomorphic branch of $\operatorname{Ln}z$.

> **Theorem 7.2.3 (Existence of Antiderivatives)**
> 
> Every holomorphic function on a simply connected domain has an antiderivative, and

$$
\int_{\gamma}f\,dz=F\left(\gamma\left(b\right)\right)-F\left(\gamma\left(a\right)\right).
$$

> **Theorem 8.1.4 (Cauchy's Theorem)**
> 
> If $f$ is holomorphic on a domain $D$ and $\gamma_{0},\gamma_{1}$ are homotopic paths in $D$ with the same endpoints (or homotopic closed paths), then

$$
\int_{\gamma_{0}}f\,dz=\int_{\gamma_{1}}f\,dz;
$$
in particular, the integral of $f$ along any closed path in $D$ is zero.

> **Theorem 8.3.1 (Cauchy Integral Formula)**
> 
> If $f$ is holomorphic on a domain containing a Jordan closed curve $\gamma$ and its interior, and $z$ lies in the interior of $\gamma$, then

$$
f\left(z\right)=\frac{1}{2\pi{i}}\int_{\gamma}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.
$$

> **Theorem 8.3.2 (Higher Derivative Formula)**
> 
> If $f$ is holomorphic on a simply connected domain $D$, $\gamma$ is a piecewise smooth Jordan closed curve in $D$, and $z$ lies in its interior, then $f$ has derivatives of all orders at $z$ and

$$
f^{\left(n\right)}\left(z\right)=\frac{n!}{2\pi{i}}\int_{\gamma}\frac{f\left(\zeta\right)}{\left(\zeta-z\right)^{n+1}}\,d\zeta,\quad{n}\ge1.
$$

$$
f^{\left(n\right)}\left(z\right)=\frac{n!}{2\pi{i}}\int_{\gamma}\frac{f\left(\zeta\right)}{\left(\zeta-z\right)^{n+1}}\,d\zeta.
$$

> **Theorem 9.1.3 (Liouville's Theorem)**
> 
> Every bounded entire function on $\mathbb{C}$ is constant.

> **Theorem 9.3.2 (Identity Theorem)**
> 
> If the zeros of a holomorphic function on a domain $D$ have an accumulation point in $D$, then $f\equiv0$.

> **Theorem 9.3.3 (Uniqueness Theorem)**
> 
> If two holomorphic functions $f,g$ on a domain $D$ agree on a set with an accumulation point in $D$, then $f\equiv{g}$.

> **Theorem 10.1.4 (Open Mapping Theorem)**
> 
> A nonconstant holomorphic function maps domains onto domains.

## 7.4-7

Determine whether the following have antiderivatives on $\mathbb{C}\setminus\left\{0\right\}$: (i) $\sin\frac{1}{z}$; (ii) $\cos\frac{1}{z}$; (iii) $e^{\frac{1}{z^{3}}}$.

### Solution to 7.4-7

By **Definition 7.2.1 (Antiderivative)**, $f$ has an antiderivative on $\mathbb{C}\setminus\left\{0\right\}$ if and only if its integral along every closed curve winding around $0$ is zero, i.e. the residue of $f$ at $z=0$ (an essential singularity) is zero.

(i) $\sin\frac{1}{z}=\frac{1}{z}-\frac{1}{3!z^{3}}+\frac{1}{5!z^{5}}-\cdots$ contains a $z^{-1}$ term with coefficient (residue) $1\ne0$. Hence $\sin\frac1z$ has no antiderivative on $\mathbb{C}\setminus\left\{0\right\}$.

(ii) $\cos\frac{1}{z}=1-\frac{1}{2!z^{2}}+\frac{1}{4!z^{4}}-\cdots$ contains no $z^{-1}$ term, so the residue is $0$. Indeed $F\left(z\right)=z+\frac{1}{2z}-\frac{1}{72z^{3}}+\cdots$ (termwise integration) is single-valued holomorphic on $\mathbb{C}\setminus\left\{0\right\}$ with $F'=\cos\frac1z$. Hence $\cos\frac1z$ has an antiderivative on $\mathbb{C}\setminus\left\{0\right\}$.

(iii) $e^{\frac{1}{z^{3}}}=1+\frac{1}{z^{3}}+\frac{1}{2!z^{6}}+\cdots$ contains only $z^{-3k}$ ($k\ge0$) terms, no $z^{-1}$ term, so the residue is $0$. Its termwise integral $F\left(z\right)=z-\frac{1}{2z^{2}}+\cdots$ is single-valued holomorphic on $\mathbb{C}\setminus\left\{0\right\}$ with $F'=e^{1/z^{3}}$. Hence $e^{1/z^{3}}$ has an antiderivative on $\mathbb{C}\setminus\left\{0\right\}$. $\blacksquare$

## 7.4-9

Suppose $F\left(z\right)$ is an antiderivative of $f\left(z\right)=\frac{1}{z}$ on a domain $D\subset\mathbb{C}\setminus\left\{0\right\}$. Prove: there exists $c\in\mathbb{C}$ such that $F\left(z\right)+c\in\operatorname{Ln}z$ for all $z\in{D}$.

### Solution to 7.4-9

$F'=\frac{1}{z}$ on $D$. Let $G\left(z\right):=e^{F\left(z\right)}$; then $G$ is holomorphic on $D$ and

$$
G'\left(z\right)=e^{F\left(z\right)}F'\left(z\right)=\frac{e^{F\left(z\right)}}{z}=\frac{G\left(z\right)}{z}.
$$

Hence $\left(\frac{G\left(z\right)}{z}\right)'=\frac{G'\left(z\right)z-G\left(z\right)}{z^{2}}=\frac{G\left(z\right)-G\left(z\right)}{z^{2}}=0$, so $\frac{G\left(z\right)}{z}$ is constant on the connected domain $D$; write $\frac{G\left(z\right)}{z}=e^{c}$ ($c\in\mathbb{C}$). Then

$$
e^{F\left(z\right)}=e^{c}z=e^{c+\operatorname{Ln}z},
$$

so $e^{F\left(z\right)-c-\operatorname{Ln}z}=1$, i.e. $F\left(z\right)-c-\operatorname{Ln}z\in2\pi{i}\mathbb{Z}$, and thus $F\left(z\right)-c\in\operatorname{Ln}z$. Taking $c':=-c$, $F\left(z\right)+c'\in\operatorname{Ln}z$ for all $z\in{D}$. $\blacksquare$

## 8.4-2

Let $f$ be holomorphic and nonzero on a simply connected domain $D$. Prove:

(i) there exists a holomorphic function $g$ on $D$ such that $e^{g\left(z\right)}=f\left(z\right)$ for all $z\in{D}$;

(ii) for every integer $q\ge1$, there exists a holomorphic function $g_{q}$ on $D$ such that $\left(g_{q}\left(z\right)\right)^{q}=f\left(z\right)$ for all $z\in{D}$.

### Solution to 8.4-2

(i) Since $f$ is holomorphic and nonzero on $D$, $\frac{f'\left(z\right)}{f\left(z\right)}$ is holomorphic on $D$. Since $D$ is simply connected, by **Theorem 7.2.3 (Existence of Antiderivatives)**, $\frac{f'}{f}$ has an antiderivative $g_{0}$ on $D$, i.e. $g_{0}'=\frac{f'}{f}$. Consider $F\left(z\right)=e^{-g_{0}\left(z\right)}f\left(z\right)$; then

$$
F'=e^{-g_{0}}f'-g_{0}'e^{-g_{0}}f=e^{-g_{0}}\left(f'-\frac{f'}{f}f\right)=0,
$$

so $F$ is constant on $D$, say $F=c$. Since $F\ne0$, choose $w_{0}\in\mathbb{C}$ with $e^{w_{0}}=c$, and set $g=g_{0}+w_{0}$; then

$$
e^{g\left(z\right)}=e^{g_{0}\left(z\right)}e^{w_{0}}=e^{g_{0}\left(z\right)}c=f\left(z\right),\quad\forall{z}\in{D}.
$$

(ii) From (i), take holomorphic $g$ with $e^{g\left(z\right)}=f\left(z\right)$. Set $g_{q}\left(z\right)=e^{\frac{g\left(z\right)}{q}}$; then $g_{q}$ is holomorphic on $D$ and

$$
\left(g_{q}\left(z\right)\right)^{q}=\left(e^{\frac{g\left(z\right)}{q}}\right)^{q}=e^{g\left(z\right)}=f\left(z\right),\quad\forall{z}\in{D}.
$$

This completes the proof. $\blacksquare$

## 8.4-4

Let $f$ be $\mathbb{R}$-differentiable on $\mathbb{C}$, with $\int_{\gamma}f\left(z\right)\,dz=0$ for every circle $\gamma$. Prove: $f$ is holomorphic on $\mathbb{C}$.

### Solution to 8.4-4

Take any $a\in\mathbb{C}$ and the circle $\gamma_{\varepsilon}\left(t\right)=a+\varepsilon{e}^{it}$ of radius $\varepsilon>0$. Since $f$ is $\mathbb{R}$-differentiable at $a$ (**Definition 3.2.1 (Differentiability)**), expand

$$
f\left(z\right)=f\left(a\right)+\frac{\partial{f}}{\partial{z}}\left(a\right)\left(z-a\right)+\frac{\partial{f}}{\partial\overline{z}}\left(a\right)\left(\overline{z-a}\right)+o\left(\varepsilon\right),
$$

Substituting into $\int_{\gamma_{\varepsilon}}f\,dz$ and following the computation in (Exercise 7.4-2),

$$
\int_{\left|z-a\right|=\varepsilon}f\left(z\right)\,dz=2\pi{i}\varepsilon^{2}\frac{\partial{f}}{\partial\overline{z}}\left(a\right)+o\left(\varepsilon^{2}\right).
$$

By assumption the left side is zero for every $\varepsilon>0$; dividing by $\varepsilon^{2}$ and letting $\varepsilon\to0$ gives $\frac{\partial{f}}{\partial\overline{z}}\left(a\right)=0$. Since $a\in\mathbb{C}$ is arbitrary, $\frac{\partial{f}}{\partial\overline{z}}\equiv0$ on $\mathbb{C}$, and by **Theorem 3.2.4 (Cauchy-Riemann Equations)**, $f$ is holomorphic on $\mathbb{C}$. $\blacksquare$

## 8.4-6

Given $\int_{0}^{\infty}e^{-x^{2}}\,dx=\frac{\sqrt{\pi}}{2}$. Compute (Fresnel integrals)

(i) $\int_{0}^{+\infty}\cos\left(x^{2}\right)\,dx$; (ii) $\int_{0}^{+\infty}\sin\left(x^{2}\right)\,dx$; (iii) $\int_{0}^{+\infty}e^{-x^{2}}\cos\left(2bx\right)\,dx$, $b>0$.

### Solution to 8.4-6

(i) and (ii) combined. Consider the contour: from $0$ along the real axis to $R$, then along the arc $Re^{i\theta}$, $\theta\in\left[0,\frac{\pi}{4}\right]$, then back along the segment $z=te^{i\pi/4}$, $t:R\to0$, to $0$. Since $e^{iz^{2}}$ is entire, the contour integral is zero. On the large arc, $\left|e^{iz^{2}}\right|=e^{-\operatorname{Re}\left(iz^{2}\right)}=e^{-R^{2}\sin2\theta}$; for $\theta\in\left[0,\frac{\pi}{4}\right]$, $\sin2\theta\ge\frac{2\theta}{\pi}$ and $e^{-R^{2}\sin2\theta}\to0$ uniformly ($\theta>0$), so the arc integral tends to $0$. Letting $R\to\infty$:

$$
\int_{0}^{\infty}e^{ix^{2}}\,dx=\int_{0}^{\infty}e^{-t^{2}}e^{i\pi/4}\,dt=e^{i\pi/4}\frac{\sqrt{\pi}}{2}.
$$

Taking real and imaginary parts,

$$
\int_{0}^{+\infty}\cos\left(x^{2}\right)\,dx=\operatorname{Re}\left(e^{i\pi/4}\frac{\sqrt{\pi}}{2}\right)=\frac{\sqrt{\pi}}{2}\cdot\frac{1}{\sqrt{2}}=\frac{\sqrt{\pi}}{2\sqrt{2}},
$$

$$
\int_{0}^{+\infty}\sin\left(x^{2}\right)\,dx=\operatorname{Im}\left(e^{i\pi/4}\frac{\sqrt{\pi}}{2}\right)=\frac{\sqrt{\pi}}{2\sqrt{2}}.
$$

(iii) Write $I\left(b\right)=\int_{0}^{\infty}e^{-x^{2}}\cos\left(2bx\right)\,dx$. From $\int_{-\infty}^{\infty}e^{-x^{2}}e^{2ibx}\,dx=\sqrt{\pi}e^{-b^{2}}$ (completing the square: $x^{2}-2ibx=\left(x-ib\right)^{2}+b^{2}$, shifting the contour to the real axis), taking real parts and using evenness,

$$
I\left(b\right)=\frac{1}{2}\int_{-\infty}^{\infty}e^{-x^{2}}\cos\left(2bx\right)\,dx=\frac{1}{2}\cdot\sqrt{\pi}e^{-b^{2}}=\frac{\sqrt{\pi}}{2}e^{-b^{2}}.
$$

In summary, $\int_{0}^{+\infty}\cos\left(x^{2}\right)\,dx=\int_{0}^{+\infty}\sin\left(x^{2}\right)\,dx=\frac{\sqrt{\pi}}{2\sqrt{2}}$, and $\int_{0}^{+\infty}e^{-x^{2}}\cos\left(2bx\right)\,dx=\frac{\sqrt{\pi}}{2}e^{-b^{2}}$. $\blacksquare$

## 8.4-8

Let $D\subset\mathbb{C}$ be the exterior region of a piecewise smooth Jordan closed curve, $f$ holomorphic on $D$, and $\lim_{z\to\infty}f\left(z\right)=A\in\mathbb{C}$. Prove: for all $z\in{D}$, $f\left(z\right)=-\frac{1}{2\pi{i}}\int_{\partial{D}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta+A$, where $\partial{D}$ is oriented counterclockwise.

### Solution to 8.4-8

Fix $z\in{D}$. Take $R$ large enough that both $z$ and $\partial{D}$ lie inside $\left\{\left|w\right|<{}R\right\}$. Let $\Gamma_{R}$ be the counterclockwise circle $\left|\zeta\right|=R$; then $f$ is holomorphic on the annular region (including boundary) between $\Gamma_{R}$ and $\partial{D}$. By **Theorem 8.3.1 (Cauchy Integral Formula)** applied to the annulus (or separately on inner and outer boundaries),

$$
f\left(z\right)=\frac{1}{2\pi{i}}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta-\frac{1}{2\pi{i}}\int_{\partial{D}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.
$$

Let $R\to\infty$. Write

$$
\frac{1}{2\pi{i}}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta
=\frac{1}{2\pi{i}}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)-A}{\zeta-z}\,d\zeta+\frac{A}{2\pi{i}}\int_{\Gamma_{R}}\frac{d\zeta}{\zeta-z}.
$$

Since $z$ lies inside $\Gamma_{R}$, $\int_{\Gamma_{R}}\frac{d\zeta}{\zeta-z}=2\pi{i}$; on $\left|\zeta\right|=R$, $\frac{1}{\left|\zeta-z\right|}\le\frac{C}{R}$, and $f\left(\zeta\right)\to{A}$ gives $\sup_{\left|\zeta\right|=R}\left|f\left(\zeta\right)-A\right|\to0$, so the first integral $\to0$. Hence $\frac{1}{2\pi{i}}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta\to{A}$. Letting $R\to\infty$,

$$
f\left(z\right)=A-\frac{1}{2\pi{i}}\int_{\partial{D}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta,
$$

i.e. $f\left(z\right)=-\frac{1}{2\pi{i}}\int_{\partial{D}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta+A$. $\blacksquare$

## 8.4-10

(Taylor expansion with integral remainder) Let $D\subset\mathbb{C}$ be a domain and $f$ holomorphic on $D$. Prove: for any $z_{0},z_{1}\in{D}$ and a smooth path $\gamma$ in $D$ joining $z_{0}$ to $z_{1}$ ($\gamma\left(0\right)=z_{0}$, $\gamma\left(1\right)=z_{1}$),

$$
f\left(z_{1}\right)=f\left(z_{0}\right)+\sum_{k=1}^{n}\frac{f^{\left(k\right)}\left(z_{0}\right)}{k!}\left(z_{1}-z_{0}\right)^{k}+\frac{1}{n!}\int_{\gamma}\left(z_{1}-\zeta\right)^{n}f^{\left(n+1\right)}\left(\zeta\right)\,d\zeta,\quad\forall{n}\in\mathbb{N}.
$$

### Solution to 8.4-10

Induct on $n$. For $n=0$, by **Theorem 7.2.3 (Existence of Antiderivatives)** and since $f$ is an antiderivative of $f'$,

$$
f\left(z_{1}\right)=f\left(z_{0}\right)+\int_{\gamma}f'\left(\zeta\right)\,d\zeta,
$$

so the claim holds for $n=0$.

Assume the claim holds for $n-1$, and write

$$
R_{n-1}=\frac{1}{\left(n-1\right)!}\int_{\gamma}\left(z_{1}-\zeta\right)^{n-1}f^{\left(n\right)}\left(\zeta\right)\,d\zeta.
$$

Integrate $R_{n-1}$ by parts (using $df^{\left(n\right)}=f^{\left(n+1\right)}d\zeta$ and $d\left(z_{1}-\zeta\right)^{n-1}=-\left(n-1\right)\left(z_{1}-\zeta\right)^{n-2}d\zeta$):

$$
\int_{\gamma}\left(z_{1}-\zeta\right)^{n-1}f^{\left(n\right)}\left(\zeta\right)\,d\zeta
=\left[\left(z_{1}-\zeta\right)^{n-1}f^{\left(n\right)}\left(\zeta\right)\right]_{\gamma\left(0\right)}^{\gamma\left(1\right)}
-\int_{\gamma}f^{\left(n\right)}\left(\zeta\right)\,d\left[\left(z_{1}-\zeta\right)^{n-1}\right]
$$

$$
=-\left(z_{1}-z_{0}\right)^{n-1}f^{\left(n\right)}\left(z_{0}\right)
+\left(n-1\right)\int_{\gamma}\left(z_{1}-\zeta\right)^{n-2}f^{\left(n\right)}\left(\zeta\right)\,d\zeta,
$$

where the boundary term at $\zeta=z_{1}$ vanishes because $\left(z_{1}-z_{1}\right)^{n-1}=0$ ($n\ge1$). Hence

$$
R_{n-1}=-\frac{f^{\left(n\right)}\left(z_{0}\right)}{\left(n-1\right)!}\left(z_{1}-z_{0}\right)^{n-1}+R_{n-2}.
$$

Substituting back into the induction hypothesis,

$$
f\left(z_{1}\right)=f\left(z_{0}\right)+\sum_{k=1}^{n-1}\frac{f^{\left(k\right)}\left(z_{0}\right)}{k!}\left(z_{1}-z_{0}\right)^{k}+R_{n-1}.
$$

From the recurrence $R_{n-1}=R_{n-2}-\frac{f^{\left(n\right)}\left(z_{0}\right)}{\left(n-1\right)!}\left(z_{1}-z_{0}\right)^{n-1}$, repeating $n$ times cancels the integral remainders term by term, yielding

$$
f\left(z_{1}\right)=f\left(z_{0}\right)+\sum_{k=1}^{n}\frac{f^{\left(k\right)}\left(z_{0}\right)}{k!}\left(z_{1}-z_{0}\right)^{k}+R_{n},
$$

where $R_{n}=\frac{1}{n!}\int_{\gamma}\left(z_{1}-\zeta\right)^{n}f^{\left(n+1\right)}\left(\zeta\right)\,d\zeta$. This completes the induction. $\blacksquare$

## 9.4-2

Let $f$ be holomorphic on the unit disk $\mathbb{D}:=\left\{z\in\mathbb{C}:\left|z\right|<1\right\}$ with $\left|f'\left(z\right)\right|\le\frac{1}{1-\left|z\right|}$ for all $z\in\mathbb{D}$. Prove: every Taylor coefficient $c_{n}$ of $f$ at $z=0$ satisfies $\left|c_{n}\right|<{}e$ for all $n\in\mathbb{N}\setminus\left\{0\right\}$.

### Solution to 9.4-2

The Taylor coefficients at $0$ are $c_{n}=\frac{f^{\left(n\right)}\left(0\right)}{n!}$. By **Theorem 8.3.2 (Higher Derivative Formula)** applied to $f'$ at order $n-1$, taking $0<{}r<1$,

$$
f^{\left(n\right)}\left(0\right)=\frac{\left(n-1\right)!}{2\pi{i}}\int_{\left|z\right|=r}\frac{f'\left(z\right)}{z^{n}}\,dz.
$$

Hence

$$
\left|c_{n}\right|=\frac{\left|f^{\left(n\right)}\left(0\right)\right|}{n!}\le\frac{\left(n-1\right)!}{n!}\cdot\frac{1}{2\pi}\cdot\frac{1}{1-r}\cdot\frac{2\pi{r}}{r^{n}}=\frac{1}{n}\cdot\frac{r^{1-n}}{1-r}.
$$

Optimize over $r\in\left(0,1\right)$. Let $h\left(r\right)=\frac{r^{1-n}}{1-r}$; $h'\left(r\right)=0$ gives $r=\frac{n-1}{n}$, and

$$
h\left(\frac{n-1}{n}\right)=\frac{\left(\frac{n-1}{n}\right)^{1-n}}{1-\frac{n-1}{n}}=n\left(1+\frac{1}{n-1}\right)^{n-1}.
$$

Thus $\left|c_{n}\right|\le\left(1+\frac{1}{n-1}\right)^{n-1}<{}e$ (since $\left(1+\frac{1}{m}\right)^{m}<{}e$). $\blacksquare$

## 9.4-4

Let $D$ be a domain containing the origin, and $f\left(x\right):=\begin{cases}e^{-1/x^{2}},&x\ne0\\0,&x=0\end{cases}$. Does there exist a holomorphic function on $D$ whose restriction to the real axis equals $f$?

### Solution to 9.4-4

No. Suppose there were a holomorphic $F$ on $D$ with $F\left(x\right)=f\left(x\right)$ on the real axis. From real analysis, $f$ has derivatives of all orders at $0$ with $f^{\left(n\right)}\left(0\right)=0$ for all $n\ge0$ (the function $e^{-1/x^{2}}$ is the standard example of a real-smooth but non-real-analytic function). Since $F$ agrees with $f$ on the real axis, $F^{\left(n\right)}\left(0\right)=f^{\left(n\right)}\left(0\right)=0$, so all Taylor coefficients of $F$ at $0$ vanish, and $F\equiv0$ near $0$. By **Theorem 9.3.2 (Identity Theorem)**, $F\equiv0$ on $D$. But for real $x\ne0$, $F\left(x\right)=0\ne{e}^{-1/x^{2}}=f\left(x\right)$, a contradiction. Hence no such function exists. $\blacksquare$
