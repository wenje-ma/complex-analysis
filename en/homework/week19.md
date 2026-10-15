# Assignment 19

> **Definition 16.1.1** (Harmonic Function)<br>A real-valued $C^{2}$ function $u$ on a domain $D$ is called harmonic if $\Delta u=u_{xx}+u_{yy}=0$ on $D$.

> **Proposition 16.1.6** (Mean Value Property)<br>A harmonic function $u$ on $B\left(a,R\right)$ satisfies $$u\left(a\right)=\frac{1}{2\pi}\int_{0}^{2\pi}u\left(a+Re^{i\theta}\right)d\theta.$$

> **Theorem 16.2.9** (Poisson Integral)<br>The Dirichlet problem on the disk $B\left(a,R\right)$ has the solution $$u\left(z\right)=\frac{R^{2}-\left|z-a\right|^{2}}{2\pi R}\int_{0}^{2\pi}\frac{f\left(a+Re^{i\theta}\right)}{\left|z-a-Re^{i\theta}\right|^{2}}d\theta.$$

> **Theorem 16.2.10**<br>The Dirichlet problem on a bounded Jordan domain is solvable.

### Problem 1

(Problem 16.3-1) Prove: (i) in polar coordinates $\left(r,\theta\right)$, $\Delta u=\frac{\partial^{2}u}{\partial r^{2}}+\frac1r\frac{\partial u}{\partial r}+\frac{1}{r^{2}}\frac{\partial^{2}u}{\partial\theta^{2}}$; (ii) using the definition of a harmonic function and the identity in (i) directly, verify the mean value property (**Proposition 16.1.6**).

### Solution to Problem 1

(i) From $x=r\cos\theta$, $y=r\sin\theta$, the chain rule gives:

$$
\frac{\partial}{\partial x}=\cos\theta\frac{\partial}{\partial r}-\frac{\sin\theta}{r}\frac{\partial}{\partial\theta},\quad
\frac{\partial}{\partial y}=\sin\theta\frac{\partial}{\partial r}+\frac{\cos\theta}{r}\frac{\partial}{\partial\theta}.
$$

Squaring and adding (using $\frac{\partial}{\partial r}\circ\frac{\partial}{\partial\theta}=\frac{\partial}{\partial\theta}\circ\frac{\partial}{\partial r}$):

$$
\Delta u=\left(\frac{\partial^{2}}{\partial x^{2}}+\frac{\partial^{2}}{\partial y^{2}}\right)u=\frac{\partial^{2}u}{\partial r^{2}}+\frac1r\frac{\partial u}{\partial r}+\frac{1}{r^{2}}\frac{\partial^{2}u}{\partial\theta^{2}}.
$$

(ii) Fix $a$ and write $M\left(r\right):=\frac{1}{2\pi}\int_{0}^{2\pi}u\left(a+re^{i\theta}\right)d\theta$. By (i) and $\Delta u=0$: $u_{rr}+\frac1r u_r+\frac1{r^{2}}u_{\theta\theta}=0$; multiplying by $r$ gives $\frac{\partial}{\partial r}\left(r u_r\right)=-\frac1r u_{\theta\theta}$. Hence

$$
\frac{d}{dr}\left(rM'\left(r\right)\right)=\frac{1}{2\pi}\int_{0}^{2\pi}\frac{\partial}{\partial r}\left(r u_r\right)d\theta=-\frac{1}{2\pi r}\int_{0}^{2\pi}u_{\theta\theta}d\theta=0,
$$

so $rM'\left(r\right)$ is constant. As $r\to0$, $M'\left(r\right)\to u_r\left(a\right)$ (smoothness), $rM'\left(r\right)\to0$, so the constant $=0$, $M'\left(r\right)\equiv0$, and $M$ is constant. Also, $\lim_{r\to0}M\left(r\right)=u\left(a\right)$, so $M\left(R\right)=u\left(a\right)$, i.e. $u\left(a\right)=\frac{1}{2\pi}\int_{0}^{2\pi}u\left(a+Re^{i\theta}\right)d\theta$. $\blacksquare$

### Problem 2

(Problem 16.3-2) Let $u=\frac{1}{2\pi}\log\left|z\right|$, $z\in A\left(0;0;1\right):=\left\{0<\left|z\right|<1\right\}$. Prove: (i) $u$ is harmonic on the annulus $A\left(0;0;1\right)$; (ii) there is no holomorphic function $f$ on $A\left(0;0;1\right)$ such that $\operatorname{Re}f=u$; (iii) if $f$ is a smooth (real-valued) function with compact support on the open disk $\mathbb{D}$, then $\int_{\mathbb{D}}u\left(z\right)\Delta f\left(z\right)\,dx\,dy=f\left(0\right)$.

### Solution to Problem 2

(i) In polar coordinates, $u=\frac{1}{2\pi}\ln r$. $u_{r}=\frac{1}{2\pi r}$, $u_{rr}=-\frac{1}{2\pi r^{2}}$, $u_{\theta\theta}=0$. By **Problem 1 (i)**,

$$
\Delta u=u_{rr}+\frac1r u_{r}+\frac1{r^{2}}u_{\theta\theta}=-\frac1{2\pi r^{2}}+\frac{1}{2\pi r^{2}}+0=0,
$$

so $u$ is harmonic on $A\left(0;0;1\right)$.

(ii) Suppose, for contradiction, that there exists holomorphic $f=f_{1}+if_{2}$ with $f_{1}=u$. By the Cauchy-Riemann equations (in polar coordinates), the conjugate harmonic function $f_{2}$ satisfies $r\frac{\partial f_{2}}{\partial r}=\frac{\partial u}{\partial\theta}=0$, $\frac{\partial f_{2}}{\partial\theta}=r\frac{\partial u}{\partial r}=\frac{1}{2\pi}$. Hence $f_{2}$ is independent of $r$ and $\frac{\partial f_{2}}{\partial\theta}=\frac{1}{2\pi}$, i.e. $f_{2}=\frac{\theta}{2\pi}+c$. Along a closed curve in $A$ winding once around the origin $0$, $\theta$ increases by $2\pi$, so $f_{2}$ increases by $1$ and cannot return to its original value, contradicting that $f_{2}$ is single-valued. Hence no such holomorphic $f$ exists.

(iii) $f$ has compact support in $\mathbb{D}$, so on the boundary $f=\frac{\partial f}{\partial n}=0$. Excise the origin by a small disk $B\left(0,\epsilon\right)$; on $\mathbb{D}\setminus B\left(0,\epsilon\right)$, $u$ is harmonic, and Green's second identity gives:

$$
\int_{\mathbb{D}\setminus B\left(0,\epsilon\right)}u\Delta f\,dx\,dy=\int_{\partial B\left(0,\epsilon\right)}\left(u\frac{\partial f}{\partial n}-f\frac{\partial u}{\partial n}\right)ds,
$$

(the integral over $\partial\mathbb{D}$ is $0$). On the small circle, $u=\frac{1}{2\pi}\ln\epsilon$, $\frac{\partial u}{\partial n}=\frac{1}{2\pi\epsilon}$, so

$$
\int_{\partial B\left(0,\epsilon\right)}u\frac{\partial f}{\partial n}ds=\frac{1}{2\pi}\ln\epsilon\int_{\partial B\left(0,\epsilon\right)}\frac{\partial f}{\partial n}ds\to0,
$$

and $-\int_{\partial B\left(0,\epsilon\right)}f\frac{\partial u}{\partial n}ds=-\frac{1}{2\pi\epsilon}\int_{\partial B\left(0,\epsilon\right)}f\,ds\to-f\left(0\right)$. Letting $\epsilon\to0$, we get $\int_{\mathbb{D}}u\Delta f\,dx\,dy=f\left(0\right)$. $\blacksquare$

### Problem 3

(Problem 16.3-7) Let $\mathbb{H}:=\left\{\operatorname{Im}z>0\right\}$, and let $f$ be a continuous function on $\partial\mathbb{H}$ such that $\lim_{z\to\infty,\,z\in\partial\mathbb{H}}f\left(z\right)$ exists and is finite. Find the solution $u$ to the Dirichlet problem on $\mathbb{H}$ with $u|_{\partial\mathbb{H}}=f$.

### Solution to Problem 3

The solution is given by the Poisson integral on the upper half-plane:

$$
u\left(x+iy\right)=\frac{y}{\pi}\int_{-\infty}^{+\infty}\frac{f\left(t\right)}{\left(t-x\right)^{2}+y^{2}}\,dt,\quad y>0.
$$

Verification: the Poisson kernel $P_{y}\left(t-x\right):=\frac{y}{\pi\left(\left(t-x\right)^{2}+y^{2}\right)}$ is harmonic in $\left(x,y\right)$ (it is $\frac1\pi\operatorname{Im}\frac{1}{t-z}$), so $u$ is harmonic on $\mathbb{H}$. Also, $\int_{-\infty}^{+\infty}P_{y}\left(t-x\right)dt=1$, and for $x$ in a neighborhood of $x_{0}$, uniformly $P_{y}\left(t-x\right)\to0$ when $t$ is away from $x_{0}$, so

$$
\lim_{y\to0^{+}}u\left(x_{0}+iy\right)=\lim_{y\to0^{+}}\int f\left(t\right)P_{y}\left(t-x_{0}\right)dt=f\left(x_{0}\right),
$$

i.e. $u|_{\partial\mathbb{H}}=f$ (approximation property). Since $f$ has a finite limit $L$ at $\infty$, $u\left(x+iy\right)\to L$ as $\left|z\right|\to\infty$, consistent with the boundary condition. Hence the desired solution is the above formula. $\blacksquare$

### Problem 4

(Problem 16.3-8) Let $u$ be a harmonic function on a domain $D\subset\mathbb{C}$. Prove: for every $\forall\left(x_{0},y_{0}\right)\in D$, there exists a neighborhood $B_{0}\subset D$ of $\left(x_{0},y_{0}\right)$ such that $u$ can be represented on $B_{0}$ as a Taylor series, i.e. $u\left(x,y\right)=\sum_{n\in\mathbb{N}}\sum_{m+k=n}\frac{1}{m!k!}\partial_{x}^{m}\partial_{y}^{k}u\left(x_{0},y_{0}\right)\left(x-x_{0}\right)^{m}\left(y-y_{0}\right)^{k}$ for all $\forall\left(x,y\right)\in B_{0}$.

### Solution to Problem 4

A harmonic function is locally the real part of some holomorphic function: in a disk $B_{0}\subset D$ around $\left(x_{0},y_{0}\right)$, there exists holomorphic $F$ with $u=\operatorname{Re}F$ (a local conjugate harmonic function exists). Write $z_{0}=x_{0}+iy_{0}$; $F$ has the Taylor expansion $F\left(z\right)=\sum_{n=0}^{+\infty}c_{n}\left(z-z_{0}\right)^{n}$ on $B_{0}$. Then $u\left(x,y\right)=\operatorname{Re}F\left(z\right)$, and

$$
F\left(z\right)=\sum_{n=0}^{+\infty}c_{n}\left(\left(x-x_{0}\right)+i\left(y-y_{0}\right)\right)^{n}
$$

is a power series in $\left(x-x_{0}\right),\left(y-y_{0}\right)$, absolutely and uniformly convergent on $B_{0}$; expanding term by term gives the real power series $u\left(x,y\right)=\sum_{m,k}\frac{1}{m!k!}\partial_{x}^{m}\partial_{y}^{k}u\left(x_{0},y_{0}\right)\left(x-x_{0}\right)^{m}\left(y-y_{0}\right)^{k}$ (Taylor coefficient formula for real-analytic functions). This is exactly what was to be proved. $\blacksquare$

### Problem 5

(Problem 16.3-10) (i) Verify that $u\left(x+iy\right)=\frac{1}{\pi}\arctan\frac{y}{x}$ is harmonic on the upper half-plane $\mathbb{H}:=\left\{\left(x,y\right):y>0\right\}$ and extends continuously to the real axis away from the origin, equal to $0$ on the positive real axis and equal to $1$ on the negative real axis (Note: the OCR of the original problem swapped the values on the positive and negative real axes; it is interpreted as $u=\frac1\pi\arg z$ on the upper half-plane, taking values in $\left(0,\pi\right)$); (ii) consider the Möbius transformation $\phi\left(z\right):\mathbb{H}\to\mathbb{D}$, $z\mapsto\frac{i-z}{i+z}$, and verify that $\tilde u:=u\circ\phi^{-1}$ is harmonic on $\mathbb{D}$ and extends continuously to the boundary $\partial\mathbb{D}$ away from $\pm1$, equal to $0$ on the semicircle $\left\{e^{i\theta}:0<\theta<\pi\right\}$ and equal to $1$ on the semicircle $\left\{e^{i\theta}:-\pi<\theta<0\right\}$; (iii) verify that $\tilde u$ is the Poisson integral of its own boundary values; (iv) verify that for any $a\in\left(0,1\right)$, there exists a sequence $z_{n}\in\mathbb{D}$ with $z_{n}\to1$ (or $-1$) such that $\tilde u\left(z_{n}\right)\to a$.

### Solution to Problem 5

(i) On $\mathbb{H}$, $\frac1\pi\arctan\frac yx=\frac1\pi\arg\left(x+iy\right)$, and $\arg\left(x+iy\right)=\operatorname{Im}\operatorname{Log}z$ is harmonic, so $u$ is harmonic on $\mathbb{H}$. As $y\to0^{+}$: if $x>0$, $\arg\left(x+iy\right)\to0$, $u\to0$; if $x<0$, $\arg\left(x+iy\right)\to\pi$, $u\to1$. Hence $u$ extends continuously to the real axis away from the origin, taking value $0$ on the positive real axis and $1$ on the negative real axis.

(ii) $\phi^{-1}\left(w\right)=i\frac{1-w}{1+w}$. For $w=e^{i\theta}\in\partial\mathbb{D}$ ($w\ne\pm1$),

$$
\phi^{-1}\left(e^{i\theta}\right)=i\frac{1-e^{i\theta}}{1+e^{i\theta}}=i\cdot\left(-i\right)\tan\frac{\theta}{2}=\tan\frac{\theta}{2}\in\mathbb{R}.
$$

$\tan\frac{\theta}{2}>0$ when $0<\theta<\pi$ (positive real axis, $u=0$), and $\tan\frac{\theta}{2}<0$ when $-\pi<\theta<0$ (negative real axis, $u=1$). Since $\phi$ is a conformal equivalence, $\tilde u=u\circ\phi^{-1}$ is harmonic on $\mathbb{D}$ and extends continuously to $\partial\mathbb{D}\setminus\left\{\pm1\right\}$, taking value $0$ on the upper semicircle and $1$ on the lower semicircle.

(iii) The boundary function $g\left(e^{i\theta}\right)$ of $\tilde u$ on $\partial\mathbb{D}$ is: $0$ on the upper semicircle, $1$ on the lower semicircle (away from $\pm1$). By **Theorem 16.2.9 (Poisson Integral)**, the harmonic function on the disk $\mathbb{D}$ with boundary values $g$ is unique, and $\tilde u$ is precisely this solution, so $\tilde u$ equals the Poisson integral of $g$.

(iv) $\tilde u$ is harmonic on $\mathbb{D}$ and nonconstant, taking values in $\left\{0,1\right\}$ on $\partial\mathbb{D}$ (away from $\pm1$). Along a path from near $\phi\left(0\right)$ to the boundary point $1$ (or $-1$), the boundary limit at $1$ lies between the upper semicircle ($0$) and the lower semicircle ($1$). By continuity, for any $a\in\left(0,1\right)$ there is a point on this path; hence we can choose a sequence $z_{n}\to1$ (or $-1$) such that $\tilde u\left(z_{n}\right)\to a$. $\blacksquare$
