# Assignment 8

> **Definition 3.2.1** (Differentiability)<br>$f$ is called $\mathbb{R}$-differentiable (or $\mathbb{C}$-differentiable) at $z$ if $\Delta f=\ell\left(\Delta z\right)+o\left(\left|\Delta z\right|\right)$, where $\ell$ is an $\mathbb{R}$-linear (or $\mathbb{C}$-linear) function.

> **Definition 3.2.2** (Formal Derivatives)<br>$$\frac{\partial f}{\partial z}=\frac{1}{2}\left(\frac{\partial f}{\partial x}-i\frac{\partial f}{\partial y}\right),\quad\frac{\partial f}{\partial\overline{z}}=\frac{1}{2}\left(\frac{\partial f}{\partial x}+i\frac{\partial f}{\partial y}\right).$$

> **Theorem 3.2.4**<br>$f$ is $\mathbb{C}$-differentiable at $z$ if and only if $f$ is $\mathbb{R}$-differentiable at $z$ and $\frac{\partial f}{\partial\overline{z}}=0$; this is also equivalent to $u,v$ satisfying the Cauchy–Riemann equations.

> **Theorem 8.1.4** (Cauchy's Theorem)<br>If $f$ is holomorphic on a domain $D$ and $\gamma_{0},\gamma_{1}$ are homotopic paths in $D$ with the same endpoints (or homotopic closed paths), then $$\int_{\gamma_{0}}f\,dz=\int_{\gamma_{1}}f\,dz;$$ in particular, the integral of $f$ along any closed path in $D$ is zero.

> **Theorem 8.3.1** (Cauchy Integral Formula)<br>If $f$ is holomorphic on a simply connected domain $D$, $\gamma$ is a piecewise smooth Jordan closed curve in $D$, and $z$ lies in its interior, then $$f\left(z\right)=\frac{1}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.$$

> **Theorem 8.3.2** (Higher-Order Derivative Formula)<br>$$f^{\left(n\right)}\left(z\right)=\frac{n!}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\left(\zeta-z\right)^{n+1}}\,d\zeta,\quad n\ge1.$$

> **Theorem 7.2.3** (Existence of Primitives)<br>Every holomorphic function on a simply connected domain has a primitive, and $$\int_{\gamma}f\,dz=F\left(\gamma\left(b\right)\right)-F\left(\gamma\left(a\right)\right).$$

### Problem 1

(Problem 8.4-2) Let $f$ be holomorphic and nonvanishing on a simply connected domain $D$. Prove:

(i) there exists a holomorphic function $g$ on $D$ such that $e^{g\left(z\right)}=f\left(z\right)$, $\forall z\in D$;

(ii) for every positive integer $q\ge1$, there exists a holomorphic function $g_{q}$ on $D$ such that $\left(g_{q}\left(z\right)\right)^{q}=f\left(z\right)$, $\forall z\in D$.

### Solution to Problem 1

(i) Since $f$ is holomorphic and nonvanishing on $D$, $\frac{f'\left(z\right)}{f\left(z\right)}$ is holomorphic on $D$. Since $D$ is simply connected and by **Theorem 7.2.3 (Existence of Primitives)**, $\frac{f'}{f}$ has a primitive $g_{0}$ on $D$, i.e. $g_{0}'=\frac{f'}{f}$. Consider $F\left(z\right)=e^{-g_{0}\left(z\right)}f\left(z\right)$; then

$$
F'=e^{-g_{0}}f'-g_{0}'e^{-g_{0}}f=e^{-g_{0}}\left(f'-\frac{f'}{f}f\right)=0,
$$

so $F$ is constant on $D$, equal to a constant $c$. Also $F\ne0$; choose $w_{0}\in\mathbb{C}$ such that $e^{w_{0}}=c$, and set $g=g_{0}+w_{0}$; then

$$
e^{g\left(z\right)}=e^{g_{0}\left(z\right)}e^{w_{0}}=e^{g_{0}\left(z\right)}c=f\left(z\right),\quad\forall z\in D.
$$

(ii) From (i), choose a holomorphic $g$ such that $e^{g\left(z\right)}=f\left(z\right)$. Set $g_{q}\left(z\right)=e^{\frac{g\left(z\right)}{q}}$; then $g_{q}$ is holomorphic on $D$ and

$$
\left(g_{q}\left(z\right)\right)^{q}=\left(e^{\frac{g\left(z\right)}{q}}\right)^{q}=e^{g\left(z\right)}=f\left(z\right),\quad\forall z\in D.
$$

The proposition is proved. $\blacksquare$

### Problem 2

(Problem 8.4-4) Let $f$ be an $\mathbb{R}$-differentiable function on the domain $\mathbb{C}$, and suppose that for every circle $\gamma$, $\int_{\gamma}f\left(z\right)\,dz=0$. Prove: $f$ is a holomorphic function on $\mathbb{C}$.

### Solution to Problem 2

Take any $a\in\mathbb{C}$ and the circle $\gamma_{\varepsilon}\left(t\right)=a+\varepsilon e^{it}$ of radius $\varepsilon> 0$. Since $f$ is $\mathbb{R}$-differentiable at $a$, expand

$$
f\left(z\right)=f\left(a\right)+\frac{\partial f}{\partial z}\left(a\right)\left(z-a\right)+\frac{\partial f}{\partial\overline{z}}\left(a\right)\left(\overline{z-a}\right)+o\left(\varepsilon\right),
$$

substitute into $\int_{\gamma_{\varepsilon}}f\,dz$ and follow the calculation in (Problem 7.4-2), giving

$$
\int_{\left|z-a\right|=\varepsilon}f\left(z\right)\,dz=2\pi i\varepsilon^{2}\frac{\partial f}{\partial\overline{z}}\left(a\right)+o\left(\varepsilon^{2}\right).
$$

By assumption the left-hand side is zero for every $\varepsilon> 0$; dividing both sides by $\varepsilon^{2}$ and letting $\varepsilon\to0$ gives $\frac{\partial f}{\partial\overline{z}}\left(a\right)=0$. Since $a\in\mathbb{C}$ was arbitrary, $\frac{\partial f}{\partial\overline{z}}\equiv0$ on $\mathbb{C}$; by **Theorem 3.2.4**, $f$ is holomorphic on $\mathbb{C}$. $\blacksquare$

### Problem 3

(Problem 8.4-6) It is known that $\int_{0}^{\infty}e^{-x^{2}}\,dx=\frac{\sqrt{\pi}}{2}$. Compute (Fresnel integrals)

(i) $\int_{0}^{+\infty}\cos\left(x^{2}\right)\,dx$; (ii) $\int_{0}^{+\infty}\sin\left(x^{2}\right)\,dx$; (iii) $\int_{0}^{+\infty}e^{-x^{2}}\cos\left(2bx\right)\,dx$, $b> 0$.

### Solution to Problem 3

We combine (i) and (ii). Consider the contour: from $0$ along the real axis to $R$, then along the circular arc $Re^{i\theta}$, $\theta\in\left[0,\frac{\pi}{4}\right]$, and finally along the line segment $z=te^{i\pi/4}$, $t:R\to0$, back to $0$. Since $e^{iz^{2}}$ is entire, the contour integral is zero. On the large arc, $\left|e^{iz^{2}}\right|=e^{-\operatorname{Re}\left(iz^{2}\right)}=e^{-R^{2}\sin2\theta}\le e^{-R^{2}\sin2\theta}$; for $\theta\in\left[0,\frac{\pi}{4}\right]$ one has $\sin2\theta\ge\frac{2\theta}{\pi}\cdot...$ and $e^{-R^{2}\sin2\theta}\to0$ uniformly ($\theta> 0$), so the arc integral tends to $0$. Letting $R\to\infty$:

$$
\int_{0}^{\infty}e^{ix^{2}}\,dx=\int_{0}^{\infty}e^{-t^{2}}e^{i\pi/4}\,dt=e^{i\pi/4}\frac{\sqrt{\pi}}{2}.
$$

Taking real and imaginary parts gives

$$
\int_{0}^{+\infty}\cos\left(x^{2}\right)\,dx=\operatorname{Re}\left(e^{i\pi/4}\frac{\sqrt{\pi}}{2}\right)=\frac{\sqrt{\pi}}{2}\cdot\frac{1}{\sqrt{2}}=\frac{\sqrt{\pi}}{2\sqrt{2}},
$$

$$
\int_{0}^{+\infty}\sin\left(x^{2}\right)\,dx=\operatorname{Im}\left(e^{i\pi/4}\frac{\sqrt{\pi}}{2}\right)=\frac{\sqrt{\pi}}{2\sqrt{2}}.
$$

(iii) Write $I\left(b\right)=\int_{0}^{\infty}e^{-x^{2}}\cos\left(2bx\right)\,dx$. From $\int_{-\infty}^{\infty}e^{-x^{2}}e^{2ibx}\,dx=\sqrt{\pi}e^{-b^{2}}$ (completing the square: $x^{2}-2ibx=\left(x-ib\right)^{2}+b^{2}$, shifting the integration path to the real axis), taking real parts and using the evenness of the integrand:

$$
I\left(b\right)=\frac{1}{2}\int_{-\infty}^{\infty}e^{-x^{2}}\cos\left(2bx\right)\,dx=\frac{1}{2}\cdot\sqrt{\pi}e^{-b^{2}}=\frac{\sqrt{\pi}}{2}e^{-b^{2}}.
$$

In summary, $\int_{0}^{+\infty}\cos\left(x^{2}\right)\,dx=\int_{0}^{+\infty}\sin\left(x^{2}\right)\,dx=\frac{\sqrt{\pi}}{2\sqrt{2}}$, $\int_{0}^{+\infty}e^{-x^{2}}\cos\left(2bx\right)\,dx=\frac{\sqrt{\pi}}{2}e^{-b^{2}}$. $\blacksquare$

### Problem 4

(Problem 8.4-8) Let $D\subset\mathbb{C}$ be the exterior domain of a piecewise smooth Jordan closed curve, and let $f$ be holomorphic on $D$ with $\lim_{z\to\infty}f\left(z\right)=A\in\mathbb{C}$. Prove: $\forall z\in D$, $f\left(z\right)=-\frac{1}{2\pi i}\int_{\partial D}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta+A$, where $\partial D$ is oriented counterclockwise.

### Solution to Problem 4

Fix $z\in D$. Take $R$ large enough so that both $z$ and $\partial D$ lie inside $\left\{\left|w\right|< R\right\}$. Let $\Gamma_{R}$ be the counterclockwise circle $\left|\zeta\right|=R$; then $f$ is holomorphic on the annulus bounded by $\Gamma_{R}$ and $\partial D$ (including the boundary). By **Theorem 8.3.1 (Cauchy Integral Formula)** for the annulus (or applied separately on the inner and outer boundaries),

$$
f\left(z\right)=\frac{1}{2\pi i}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta-\frac{1}{2\pi i}\int_{\partial D}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.
$$

Let $R\to\infty$. We have

$$
\frac{1}{2\pi i}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta
=\frac{1}{2\pi i}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)-A}{\zeta-z}\,d\zeta+\frac{A}{2\pi i}\int_{\Gamma_{R}}\frac{d\zeta}{\zeta-z}.
$$

Since $z$ is inside $\Gamma_{R}$, $\int_{\Gamma_{R}}\frac{d\zeta}{\zeta-z}=2\pi i$; on $\left|\zeta\right|=R$, $\frac{1}{\left|\zeta-z\right|}\le\frac{C}{R}$, and $f\left(\zeta\right)\to A$ gives $\sup_{\left|\zeta\right|=R}\left|f\left(\zeta\right)-A\right|\to0$, so the first integral $\to0$. Therefore $\frac{1}{2\pi i}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta\to A$. Letting $R\to\infty$ gives

$$
f\left(z\right)=A-\frac{1}{2\pi i}\int_{\partial D}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta,
$$

i.e. $f\left(z\right)=-\frac{1}{2\pi i}\int_{\partial D}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta+A$. $\blacksquare$

### Problem 5

(Problem 8.4-10) (Taylor expansion with integral remainder) Let $D\subset\mathbb{C}$ be a domain and $f$ holomorphic on $D$. Prove: for any $z_{0},z_{1}\in D$ and any smooth path $\gamma$ in $D$ connecting $z_{0}$ and $z_{1}$ (i.e. $\gamma\left(0\right)=z_{0}$ and $\gamma\left(1\right)=z_{1}$),

$$
f\left(z_{1}\right)=f\left(z_{0}\right)+\sum_{k=1}^{n}\frac{f^{\left(k\right)}\left(z_{0}\right)}{k!}\left(z_{1}-z_{0}\right)^{k}+\frac{1}{n!}\int_{\gamma}\left(z_{1}-\zeta\right)^{n}f^{\left(n+1\right)}\left(\zeta\right)\,d\zeta,\quad\forall n\in\mathbb{N}.
$$

### Solution to Problem 5

We induct on $n$. When $n=0$, by **Theorem 7.2.3 (Existence of Primitives)** and the fact that $f$ is a primitive of $f'$,

$$
f\left(z_{1}\right)=f\left(z_{0}\right)+\int_{\gamma}f'\left(\zeta\right)\,d\zeta,
$$

so the proposition holds for $n=0$.

Assume the proposition holds for $n-1$, and write

$$
R_{n-1}=\frac{1}{\left(n-1\right)!}\int_{\gamma}\left(z_{1}-\zeta\right)^{n-1}f^{\left(n\right)}\left(\zeta\right)\,d\zeta.
$$

Integrate $R_{n-1}$ by parts (using $d f^{\left(n\right)}=f^{\left(n+1\right)}d\zeta$ and $d\left(z_{1}-\zeta\right)^{n-1}=-\left(n-1\right)\left(z_{1}-\zeta\right)^{n-2}d\zeta$):

$$
\int_{\gamma}\left(z_{1}-\zeta\right)^{n-1}f^{\left(n\right)}\left(\zeta\right)\,d\zeta
=\left[\left(z_{1}-\zeta\right)^{n-1}f^{\left(n\right)}\left(\zeta\right)\right]_{\gamma\left(0\right)}^{\gamma\left(1\right)}
-\int_{\gamma}f^{\left(n\right)}\left(\zeta\right)\,d\left[\left(z_{1}-\zeta\right)^{n-1}\right]=-\left(z_{1}-z_{0}\right)^{n-1}f^{\left(n\right)}\left(z_{0}\right)
+\left(n-1\right)\int_{\gamma}\left(z_{1}-\zeta\right)^{n-2}f^{\left(n\right)}\left(\zeta\right)\,d\zeta,
$$

where the boundary term vanishes at $\zeta=z_{1}$ because $\left(z_{1}-z_{1}\right)^{n-1}=0$ ($n\ge1$). Hence

$$
R_{n-1}=\frac{f^{\left(n\right)}\left(z_{0}\right)}{\left(n-1\right)!}\left(z_{1}-z_{0}\right)^{n-1}\cdot\left(-1\right)+R_{n-2}.
$$

Substituting back into the induction hypothesis,

$$
f\left(z_{1}\right)=f\left(z_{0}\right)+\sum_{k=1}^{n-1}\frac{f^{\left(k\right)}\left(z_{0}\right)}{k!}\left(z_{1}-z_{0}\right)^{k}+R_{n-1}.
$$

From the above, $R_{n-1}=R_{n-2}-\frac{f^{\left(n\right)}\left(z_{0}\right)}{\left(n-1\right)!}\left(z_{1}-z_{0}\right)^{n-1}$; noting that the recursion reduces $R_{n-1}$ to $R_{n-2}$, repeating this $n$ times cancels the integral remainder term by term, and finally gives

$$
f\left(z_{1}\right)=f\left(z_{0}\right)+\sum_{k=1}^{n}\frac{f^{\left(k\right)}\left(z_{0}\right)}{k!}\left(z_{1}-z_{0}\right)^{k}+R_{n},
$$

where $R_{n}=\frac{1}{n!}\int_{\gamma}\left(z_{1}-\zeta\right)^{n}f^{\left(n+1\right)}\left(\zeta\right)\,d\zeta$. This completes the induction. $\blacksquare$
