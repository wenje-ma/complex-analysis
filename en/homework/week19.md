# week19

> **Definition 16.1.1 (Harmonic Function)**<br>A real-valued $C^{2}$ function $u$ on a domain $D$ is called harmonic if $\Delta u=u_{xx}+u_{yy}=0$ on $D$.

> **Proposition 16.1.6 (Mean Value Property)**<br>A harmonic function $u$ on $B\left(a,R\right)$ satisfies

$$
u\left(a\right)=\frac{1}{2\pi}\int_{0}^{2\pi}u\left(a+Re^{i\theta}\right)d\theta.
$$

> **Theorem 16.2.9 (Poisson Integral)**<br>The Dirichlet problem on the disk $B\left(a,R\right)$ has solution

$$
u\left(z\right)=\frac{R^{2}-\left|z-a\right|^{2}}{2\pi R}\int_{0}^{2\pi}\frac{f\left(a+Re^{i\theta}\right)}{\left|z-a-Re^{i\theta}\right|^{2}}d\theta.
$$

> **Theorem 16.2.10 (Dirichlet Problem on Bounded Jordan Domains)**<br>The Dirichlet problem on a bounded Jordan domain is solvable.

---

## 16.3-1

Prove: (i) in polar coordinates $\left(r,\theta\right)$, $\Delta u=\frac{\partial^{2}u}{\partial r^{2}}+\frac1r\frac{\partial u}{\partial r}+\frac{1}{r^{2}}\frac{\partial^{2}u}{\partial\theta^{2}}$; (ii) directly using **Definition 16.1.1 (Harmonic Function)** and the identity in (i), verify **Proposition 16.1.6 (Mean Value Property)**.

### Solution 16.3-1

(i) From $x=r\cos\theta$, $y=r\sin\theta$, the chain rule:

$$
\frac{\partial}{\partial x}=\cos\theta\frac{\partial}{\partial r}-\frac{\sin\theta}{r}\frac{\partial}{\partial\theta},\quad
\frac{\partial}{\partial y}=\sin\theta\frac{\partial}{\partial r}+\frac{\cos\theta}{r}\frac{\partial}{\partial\theta}.
$$

Squaring and adding (using $\frac{\partial}{\partial r}\circ\frac{\partial}{\partial\theta}=\frac{\partial}{\partial\theta}\circ\frac{\partial}{\partial r}$):

$$
\Delta u=\left(\frac{\partial^{2}}{\partial x^{2}}+\frac{\partial^{2}}{\partial y^{2}}\right)u=\frac{\partial^{2}u}{\partial r^{2}}+\frac1r\frac{\partial u}{\partial r}+\frac{1}{r^{2}}\frac{\partial^{2}u}{\partial\theta^{2}}.
$$

(ii) Fix $a$, write $M\left(r\right):=\frac{1}{2\pi}\int_{0}^{2\pi}u\left(a+re^{i\theta}\right)d\theta$. From (i) and $\Delta u=0$: $u_{rr}+\frac1r u_r+\frac1{r^{2}}u_{\theta\theta}=0$; multiply by $r$ to get $\frac{\partial}{\partial r}\left(r u_r\right)=-\frac1r u_{\theta\theta}$. Hence

$$
\frac{d}{dr}\left(rM'\left(r\right)\right)=\frac{1}{2\pi}\int_{0}^{2\pi}\frac{\partial}{\partial r}\left(r u_r\right)d\theta=-\frac{1}{2\pi r}\int_{0}^{2\pi}u_{\theta\theta}d\theta=0,
$$

so $rM'\left(r\right)$ is constant. As $r\to0$, $M'\left(r\right)\to u_r\left(a\right)$ (smooth), $rM'\left(r\right)\to0$, so the constant is $0$, $M'\left(r\right)\equiv0$, and $M$ is constant. Since $\lim_{r\to0}M\left(r\right)=u\left(a\right)$, $M\left(R\right)=u\left(a\right)$, i.e. $u\left(a\right)=\frac{1}{2\pi}\int_{0}^{2\pi}u\left(a+Re^{i\theta}\right)d\theta$. $\blacksquare$

---

## 16.3-2

Let $u=\frac{1}{2\pi}\log\left|z\right|$, $z\in A\left(0;0;1\right):=\left\{0< \left|z\right|< 1\right\}$. Prove: (i) $u$ is harmonic on the annulus $A\left(0;0;1\right)$; (ii) there is no holomorphic $f$ on $A\left(0;0;1\right)$ with $\operatorname{Re}f=u$; (iii) if $f$ is a smooth (real) function with compact support on the open disk $\mathbb{D}$, then $\int_{\mathbb{D}}u\left(z\right)\Delta f\left(z\right)\,dx\,dy=f\left(0\right)$.

### Solution 16.3-2

(i) In polar coordinates, $u=\frac{1}{2\pi}\ln r$. $u_{r}=\frac{1}{2\pi r}$, $u_{rr}=-\frac{1}{2\pi r^{2}}$, $u_{\theta\theta}=0$. By the polar Laplacian in **Solution 16.3-1 (i)**,

$$
\Delta u=u_{rr}+\frac1r u_{r}+\frac1{r^{2}}u_{\theta\theta}=-\frac1{2\pi r^{2}}+\frac{1}{2\pi r^{2}}+0=0,
$$

so $u$ is harmonic on $A\left(0;0;1\right)$.

(ii) Suppose for contradiction that a holomorphic $f=f_{1}+if_{2}$ exists with $f_{1}=u$. By the Cauchy-Riemann equations (in polar form), the conjugate harmonic $f_{2}$ satisfies $r\frac{\partial f_{2}}{\partial r}=\frac{\partial u}{\partial\theta}=0$ and $\frac{\partial f_{2}}{\partial\theta}=r\frac{\partial u}{\partial r}=\frac{1}{2\pi}$. Hence $f_{2}$ is independent of $r$ and $\frac{\partial f_{2}}{\partial\theta}=\frac{1}{2\pi}$, i.e. $f_{2}=\frac{\theta}{2\pi}+c$. Along a closed curve in $A$ going once around the origin, $\theta$ increases by $2\pi$ and $f_{2}$ increases by $1$, failing to return to its value; this contradicts that $f_{2}$ is single-valued. Hence no such holomorphic $f$ exists.

(iii) $f$ has compact support in $\mathbb{D}$, so on the boundary $f=\frac{\partial f}{\partial n}=0$. Remove the origin by a small disk $B\left(0,\varepsilon\right)$; on $\mathbb{D}\setminus B\left(0,\varepsilon\right)$, $u$ is harmonic. By Green's second identity:

$$
\int_{\mathbb{D}\setminus B\left(0,\varepsilon\right)}u\Delta f\,dx\,dy=\int_{\partial B\left(0,\varepsilon\right)}\left(u\frac{\partial f}{\partial n}-f\frac{\partial u}{\partial n}\right)ds,
$$

(the integral over $\partial\mathbb{D}$ is $0$). On the small circle, $u=\frac{1}{2\pi}\ln\varepsilon$, $\frac{\partial u}{\partial n}=\frac{1}{2\pi\varepsilon}$, so

$$
\int_{\partial B\left(0,\varepsilon\right)}u\frac{\partial f}{\partial n}ds=\frac{1}{2\pi}\ln\varepsilon\int_{\partial B\left(0,\varepsilon\right)}\frac{\partial f}{\partial n}ds\to0,
$$

and $-\int_{\partial B\left(0,\varepsilon\right)}f\frac{\partial u}{\partial n}ds=-\frac{1}{2\pi\varepsilon}\int_{\partial B\left(0,\varepsilon\right)}f\,ds\to-f\left(0\right)$. Letting $\varepsilon\to0$ gives $\int_{\mathbb{D}}u\Delta f\,dx\,dy=f\left(0\right)$. $\blacksquare$

---

## 16.3-7

Let $\mathbb{H}:=\left\{\operatorname{Im}z> 0\right\}$, and let $f$ be continuous on $\partial\mathbb{H}$ with $\lim_{z\to\infty,\,z\in\partial\mathbb{H}}f\left(z\right)$ existing and finite. Find the solution $u$ of the Dirichlet problem on $\mathbb{H}$ with $u|_{\partial\mathbb{H}}=f$.

### Solution 16.3-7

The solution is given by the Poisson integral on the upper half-plane:

$$
u\left(x+iy\right)=\frac{y}{\pi}\int_{-\infty}^{+\infty}\frac{f\left(t\right)}{\left(t-x\right)^{2}+y^{2}}\,dt,\quad y> 0.
$$

Verification: the Poisson kernel $P_{y}\left(t-x\right):=\frac{y}{\pi\left(\left(t-x\right)^{2}+y^{2}\right)}$ is harmonic in $\left(x,y\right)$ (it is $\frac1\pi\operatorname{Im}\frac{1}{t-z}$), so $u$ is harmonic on $\mathbb{H}$. Also $\int_{-\infty}^{+\infty}P_{y}\left(t-x\right)dt=1$, and uniformly for $x$ near $x_{0}$, $P_{y}\left(t-x\right)\to0$ when $t$ is away from $x_{0}$, so

$$
\lim_{y\to0^{+}}u\left(x_{0}+iy\right)=\lim_{y\to0^{+}}\int f\left(t\right)P_{y}\left(t-x_{0}\right)dt=f\left(x_{0}\right),
$$

i.e. $u|_{\partial\mathbb{H}}=f$ (approximation property). Since $f$ has a finite limit $L$ at $\infty$, $u\left(x+iy\right)\to L$ as $\left|z\right|\to\infty$, consistent with the boundary data. Hence the solution is the above. $\blacksquare$

---

## 16.3-8

Let $u$ be harmonic on a domain $D\subset\mathbb{C}$. Prove: for every $\left(x_{0},y_{0}\right)\in D$, there is a neighborhood $B_{0}\subset D$ of $\left(x_{0},y_{0}\right)$ on which $u$ has a Taylor series expansion, i.e. $u\left(x,y\right)=\sum_{n\in\mathbb{N}}\sum_{m+k=n}\frac{1}{m!k!}\partial_{x}^{m}\partial_{y}^{k}u\left(x_{0},y_{0}\right)\left(x-x_{0}\right)^{m}\left(y-y_{0}\right)^{k}$ for all $\left(x,y\right)\in B_{0}$.

### Solution 16.3-8

A harmonic function is locally the real part of a holomorphic function: on a disk $B_{0}\subset D$ around $\left(x_{0},y_{0}\right)$, there is a holomorphic $F$ with $u=\operatorname{Re}F$ (a local conjugate harmonic function exists). Write $z_{0}=x_{0}+iy_{0}$; $F$ has Taylor expansion $F\left(z\right)=\sum_{n=0}^{+\infty}c_{n}\left(z-z_{0}\right)^{n}$ on $B_{0}$. Then $u\left(x,y\right)=\operatorname{Re}F\left(z\right)$, and

$$
F\left(z\right)=\sum_{n=0}^{+\infty}c_{n}\left(\left(x-x_{0}\right)+i\left(y-y_{0}\right)\right)^{n}
$$

is a power series in $\left(x-x_{0}\right),\left(y-y_{0}\right)$, absolutely and uniformly convergent on $B_{0}$; expanding term by term gives the real power series $u\left(x,y\right)=\sum_{m,k}\frac{1}{m!k!}\partial_{x}^{m}\partial_{y}^{k}u\left(x_{0},y_{0}\right)\left(x-x_{0}\right)^{m}\left(y-y_{0}\right)^{k}$ (Taylor coefficient formula for real analytic functions). This is exactly the claim. $\blacksquare$

---

## 16.3-10

(i) Verify that $u\left(x+iy\right)=\frac{1}{\pi}\arctan\frac{y}{x}$ is harmonic on the upper half-plane $\mathbb{H}:=\left\{\left(x,y\right):y> 0\right\}$, extends continuously to the real axis away from the origin, equals $0$ on the positive real axis and $1$ on the negative real axis; (ii) consider the Mobius map $\phi\left(z\right):\mathbb{H}\to\mathbb{D}$, $z\mapsto\frac{i-z}{i+z}$; verify that $\widetilde u:=u\circ\phi^{-1}$ is harmonic on $\mathbb{D}$, extends continuously to $\partial\mathbb{D}$ away from $\pm1$, equals $0$ on the upper semicircle $\left\{e^{i\theta}:0< \theta< \pi\right\}$ and $1$ on the lower semicircle $\left\{e^{i\theta}:-\pi< \theta< 0\right\}$; (iii) verify that $\widetilde u$ is the Poisson integral of its boundary restriction; (iv) verify that for any $a\in\left(0,1\right)$, there is a sequence $z_{n}\in\mathbb{D}$ with $z_{n}\to1$ (or $-1$) such that $\widetilde u\left(z_{n}\right)\to a$.

### Solution 16.3-10

(i) On $\mathbb{H}$, $\frac1\pi\arctan\frac yx=\frac1\pi\arg\left(x+iy\right)$, and $\arg\left(x+iy\right)=\operatorname{Im}\operatorname{Log}z$ is harmonic, so $u$ is harmonic on $\mathbb{H}$. As $y\to0^{+}$: if $x> 0$, $\arg\left(x+iy\right)\to0$, $u\to0$; if $x< 0$, $\arg\left(x+iy\right)\to\pi$, $u\to1$. Hence $u$ extends continuously to the real axis away from the origin, taking $0$ on the positive axis and $1$ on the negative axis.

(ii) $\phi^{-1}\left(w\right)=i\frac{1-w}{1+w}$. For $w=e^{i\theta}\in\partial\mathbb{D}$ ($w\ne\pm1$),

$$
\phi^{-1}\left(e^{i\theta}\right)=i\frac{1-e^{i\theta}}{1+e^{i\theta}}=i\cdot\left(-i\right)\tan\frac{\theta}{2}=\tan\frac{\theta}{2}\in\mathbb{R}.
$$

$\tan\frac{\theta}{2}> 0$ when $0< \theta< \pi$ (positive real axis, $u=0$), and $\tan\frac{\theta}{2}< 0$ when $-\pi< \theta< 0$ (negative real axis, $u=1$). Since $\phi$ is a conformal equivalence, $\widetilde u=u\circ\phi^{-1}$ is harmonic on $\mathbb{D}$ and extends continuously to $\partial\mathbb{D}\setminus\left\{\pm1\right\}$, taking $0$ on the upper semicircle and $1$ on the lower.

(iii) The boundary function $g\left(e^{i\theta}\right)$ of $\widetilde u$ on $\partial\mathbb{D}$ is: $0$ on the upper semicircle, $1$ on the lower (away from $\pm1$). By **Theorem 16.2.9 (Poisson Integral)**, the harmonic function on $\mathbb{D}$ with boundary values $g$ is unique; since $\widetilde u$ is that solution, $\widetilde u$ equals the Poisson integral of $g$.

(iv) $\widetilde u$ is harmonic and nonconstant on $\mathbb{D}$, taking values in $\left\{0,1\right\}$ on $\partial\mathbb{D}$ (away from $\pm1$). Along a path from near $\phi\left(0\right)$ to the boundary point $1$ (or $-1$), the boundary limit at $1$ lies between the upper semicircle value ($0$) and the lower semicircle value ($1$). By continuity, for any $a\in\left(0,1\right)$ there is a point on this path, so one can choose a sequence $z_{n}\to1$ (or $-1$) with $\widetilde u\left(z_{n}\right)\to a$. $\blacksquare$
