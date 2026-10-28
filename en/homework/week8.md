# week8

> **Definition 3.2.1 (Differentiability)**<br>$f$ is $\mathbb{R}$-differentiable (or $\mathbb{C}$-differentiable) at $z$ if $\Delta f=\ell\left(\Delta z\right)+o\left(\left|\Delta z\right|\right)$, where $\ell$ is $\mathbb{R}$-linear (or $\mathbb{C}$-linear).

> **Definition 3.2.2 (Formal Derivatives)**<br>Let $f=u+iv$ be real-differentiable. Its formal (Wirtinger) derivatives are defined by

$$
\frac{\partial f}{\partial z}=\frac{1}{2}\left(\frac{\partial f}{\partial x}-i\frac{\partial f}{\partial y}\right),\quad\frac{\partial f}{\partial\overline{z}}=\frac{1}{2}\left(\frac{\partial f}{\partial x}+i\frac{\partial f}{\partial y}\right).
$$

> **Theorem 3.2.4 (Cauchy-Riemann Equations)**<br>$f$ is $\mathbb{C}$-differentiable at $z$ if and only if $f$ is $\mathbb{R}$-differentiable at $z$ and $\frac{\partial f}{\partial\overline{z}}=0$, equivalently $u,v$ satisfy the Cauchy-Riemann equations.

> **Theorem 7.2.3 (Existence of Antiderivatives)**<br>Every holomorphic function on a simply connected domain has an antiderivative, and

$$
\int_{\gamma}f\,dz=F\left(\gamma\left(b\right)\right)-F\left(\gamma\left(a\right)\right).
$$

> **Theorem 8.1.4 (Cauchy's Theorem)**<br>If $f$ is holomorphic on a domain $D$ and $\gamma_{0},\gamma_{1}$ are homotopic paths in $D$ with the same endpoints (or homotopic closed paths), then

$$
\int_{\gamma_{0}}f\,dz=\int_{\gamma_{1}}f\,dz;
$$

in particular, the integral of $f$ along any closed path in $D$ is zero.

> **Theorem 8.3.1 (Cauchy Integral Formula)**<br>If $f$ is holomorphic on a simply connected domain $D$, $\gamma$ is a piecewise smooth Jordan closed curve in $D$, and $z$ lies in its interior, then

$$
f\left(z\right)=\frac{1}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.
$$

> **Theorem 8.3.2 (Higher Derivative Formula)**<br>If $f$ is holomorphic on a simply connected domain $D$, $\gamma$ is a piecewise smooth Jordan closed curve in $D$, and $z$ lies in its interior, then $f$ has derivatives of all orders at $z$ and

$$
f^{\left(n\right)}\left(z\right)=\frac{n!}{2\pi i}\int_{\gamma}\frac{f\left(\zeta\right)}{\left(\zeta-z\right)^{n+1}}\,d\zeta,\quad n\ge1.
$$

---

## 8.4-2

Let $f$ be holomorphic and nonzero on a simply connected domain $D$. Prove:

(i) there exists a holomorphic function $g$ on $D$ such that $e^{g\left(z\right)}=f\left(z\right)$ for all $z\in D$;

(ii) for every integer $q\ge1$, there exists a holomorphic function $g_{q}$ on $D$ such that $\left(g_{q}\left(z\right)\right)^{q}=f\left(z\right)$ for all $z\in D$.

### Solution 8.4-2

(i) Since $f$ is holomorphic and nonzero on $D$, $\frac{f'\left(z\right)}{f\left(z\right)}$ is holomorphic on $D$. Since $D$ is simply connected, by **Theorem 7.2.3 (Existence of Antiderivatives)**, $\frac{f'}{f}$ has an antiderivative $g_{0}$ on $D$, i.e. $g_{0}'=\frac{f'}{f}$. Consider $F\left(z\right)=e^{-g_{0}\left(z\right)}f\left(z\right)$; then

$$
F'=e^{-g_{0}}f'-g_{0}'e^{-g_{0}}f=e^{-g_{0}}\left(f'-\frac{f'}{f}f\right)=0,
$$

so $F$ is constant on $D$, say $F=c$. Since $F\ne0$, choose $w_{0}\in\mathbb{C}$ with $e^{w_{0}}=c$, and set $g=g_{0}+w_{0}$; then

$$
e^{g\left(z\right)}=e^{g_{0}\left(z\right)}e^{w_{0}}=e^{g_{0}\left(z\right)}c=f\left(z\right),\quad\forall z\in D.
$$

(ii) From (i), take holomorphic $g$ with $e^{g\left(z\right)}=f\left(z\right)$. Set $g_{q}\left(z\right)=e^{\frac{g\left(z\right)}{q}}$; then $g_{q}$ is holomorphic on $D$ and

$$
\left(g_{q}\left(z\right)\right)^{q}=\left(e^{\frac{g\left(z\right)}{q}}\right)^{q}=e^{g\left(z\right)}=f\left(z\right),\quad\forall z\in D.
$$

This completes the proof. $\blacksquare$

---

## 8.4-4

Let $f$ be $\mathbb{R}$-differentiable on $\mathbb{C}$, with $\int_{\gamma}f\left(z\right)\,dz=0$ for every circle $\gamma$. Prove: $f$ is holomorphic on $\mathbb{C}$.

### Solution 8.4-4

Take any $a\in\mathbb{C}$ and the circle $\gamma_{\varepsilon}\left(t\right)=a+\varepsilon e^{it}$ of radius $\varepsilon> 0$. Since $f$ is $\mathbb{R}$-differentiable at $a$ (**Definition 3.2.1 (Differentiability)**), expand

$$
f\left(z\right)=f\left(a\right)+\frac{\partial f}{\partial z}\left(a\right)\left(z-a\right)+\frac{\partial f}{\partial\overline{z}}\left(a\right)\left(\overline{z-a}\right)+o\left(\varepsilon\right),
$$

Substituting into $\int_{\gamma_{\varepsilon}}f\,dz$ and following the computation in (Exercise 7.4-2),

$$
\int_{\left|z-a\right|=\varepsilon}f\left(z\right)\,dz=2\pi i\varepsilon^{2}\frac{\partial f}{\partial\overline{z}}\left(a\right)+o\left(\varepsilon^{2}\right).
$$

By assumption the left side is zero for every $\varepsilon> 0$; dividing by $\varepsilon^{2}$ and letting $\varepsilon\to0$ gives $\frac{\partial f}{\partial\overline{z}}\left(a\right)=0$. Since $a\in\mathbb{C}$ is arbitrary, $\frac{\partial f}{\partial\overline{z}}\equiv0$ on $\mathbb{C}$, and by **Theorem 3.2.4 (Cauchy-Riemann Equations)**, $f$ is holomorphic on $\mathbb{C}$. $\blacksquare$

---

## 8.4-6

Given $\int_{0}^{\infty}e^{-x^{2}}\,dx=\frac{\sqrt{\pi}}{2}$. Compute (Fresnel integrals)

(i) $\int_{0}^{+\infty}\cos\left(x^{2}\right)\,dx$; (ii) $\int_{0}^{+\infty}\sin\left(x^{2}\right)\,dx$; (iii) $\int_{0}^{+\infty}e^{-x^{2}}\cos\left(2bx\right)\,dx$, $b> 0$.

### Solution 8.4-6

(i) and (ii) combined. Consider the contour: from $0$ along the real axis to $R$, then along the arc $Re^{i\theta}$, $\theta\in\left[0,\frac{\pi}{4}\right]$, then back along the segment $z=te^{i\pi/4}$, $t:R\to0$, to $0$. Since $e^{iz^{2}}$ is entire, the contour integral is zero. On the large arc, $\left|e^{iz^{2}}\right|=e^{-\operatorname{Re}\left(iz^{2}\right)}=e^{-R^{2}\sin2\theta}$; for $\theta\in\left[0,\frac{\pi}{4}\right]$, $\sin2\theta\ge\frac{2\theta}{\pi}$ and $e^{-R^{2}\sin2\theta}\to0$ uniformly ($\theta> 0$), so the arc integral tends to $0$. Letting $R\to\infty$:

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

---

## 8.4-8

Let $D\subset\mathbb{C}$ be the exterior region of a piecewise smooth Jordan closed curve, $f$ holomorphic on $D$, and $\lim_{z\to\infty}f\left(z\right)=A\in\mathbb{C}$. Prove: for all $z\in D$, $f\left(z\right)=-\frac{1}{2\pi i}\int_{\partial D}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta+A$, where $\partial D$ is oriented counterclockwise.

### Solution 8.4-8

Fix $z\in D$. Take $R$ large enough that both $z$ and $\partial D$ lie inside $\left\{\left|w\right|< R\right\}$. Let $\Gamma_{R}$ be the counterclockwise circle $\left|\zeta\right|=R$; then $f$ is holomorphic on the annular region (including boundary) between $\Gamma_{R}$ and $\partial D$. By **Theorem 8.3.1 (Cauchy Integral Formula)** applied to the annulus (or separately on inner and outer boundaries),

$$
f\left(z\right)=\frac{1}{2\pi i}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta-\frac{1}{2\pi i}\int_{\partial D}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta.
$$

Let $R\to\infty$. Write

$$
\frac{1}{2\pi i}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta
=\frac{1}{2\pi i}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)-A}{\zeta-z}\,d\zeta+\frac{A}{2\pi i}\int_{\Gamma_{R}}\frac{d\zeta}{\zeta-z}.
$$

Since $z$ lies inside $\Gamma_{R}$, $\int_{\Gamma_{R}}\frac{d\zeta}{\zeta-z}=2\pi i$; on $\left|\zeta\right|=R$, $\frac{1}{\left|\zeta-z\right|}\le\frac{C}{R}$, and $f\left(\zeta\right)\to A$ gives $\sup_{\left|\zeta\right|=R}\left|f\left(\zeta\right)-A\right|\to0$, so the first integral $\to0$. Hence $\frac{1}{2\pi i}\int_{\Gamma_{R}}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta\to A$. Letting $R\to\infty$,

$$
f\left(z\right)=A-\frac{1}{2\pi i}\int_{\partial D}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta,
$$

i.e. $f\left(z\right)=-\frac{1}{2\pi i}\int_{\partial D}\frac{f\left(\zeta\right)}{\zeta-z}\,d\zeta+A$. $\blacksquare$

---

## 8.4-10

(Taylor expansion with integral remainder) Let $D\subset\mathbb{C}$ be a domain and $f$ holomorphic on $D$. Prove: for any $z_{0},z_{1}\in D$ and a smooth path $\gamma$ in $D$ joining $z_{0}$ to $z_{1}$ ($\gamma\left(0\right)=z_{0}$, $\gamma\left(1\right)=z_{1}$),

$$
f\left(z_{1}\right)=f\left(z_{0}\right)+\sum_{k=1}^{n}\frac{f^{\left(k\right)}\left(z_{0}\right)}{k!}\left(z_{1}-z_{0}\right)^{k}+\frac{1}{n!}\int_{\gamma}\left(z_{1}-\zeta\right)^{n}f^{\left(n+1\right)}\left(\zeta\right)\,d\zeta,\quad\forall n\in\mathbb{N}.
$$

### Solution 8.4-10

Induct on $n$. For $n=0$, by **Theorem 7.2.3 (Existence of Antiderivatives)** and since $f$ is an antiderivative of $f'$,

$$
f\left(z_{1}\right)=f\left(z_{0}\right)+\int_{\gamma}f'\left(\zeta\right)\,d\zeta,
$$

so the claim holds for $n=0$.

Assume the claim holds for $n-1$, and write

$$
R_{n-1}=\frac{1}{\left(n-1\right)!}\int_{\gamma}\left(z_{1}-\zeta\right)^{n-1}f^{\left(n\right)}\left(\zeta\right)\,d\zeta.
$$

Integrate $R_{n-1}$ by parts (using $d f^{\left(n\right)}=f^{\left(n+1\right)}d\zeta$ and $d\left(z_{1}-\zeta\right)^{n-1}=-\left(n-1\right)\left(z_{1}-\zeta\right)^{n-2}d\zeta$):

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
