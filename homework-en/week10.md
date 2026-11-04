# week10

> **Definition 16.1.1 (Harmonic Function)**
> 
> A real-valued $C^{2}$ function $u$ on a domain $D$ is called harmonic if $\Delta u=u_{xx}+u_{yy}=0$ on $D$.

> **Proposition 16.1.6 (Mean Value Property)**
> 
> A harmonic function $u$ on $B\left(a,R\right)$ satisfies

> **Theorem 16.2.9 (Poisson Integral)**
> 
> The Dirichlet problem on the disk $B\left(a,R\right)$ has solution

> **Theorem 16.2.10 (Dirichlet Problem on Bounded Jordan Domains)**
> 
> The Dirichlet problem on a bounded Jordan domain is solvable.

> **Definition 17.2.1 (Function Element)**
> 
> A pair $\left(f,U\right)$ is called a function element if $U$ is a nonempty open set in $\mathbb{C}$ and $f$ is holomorphic on $U$.

> **Definition 17.2.2 (Direct Holomorphic Continuation)**
> 
> A function element $\left(f_{1},U_{1}\right)$ is a direct holomorphic continuation of $\left(f_{0},U_{0}\right)$ if $U_{0}\cap U_{1}\ne\emptyset$ and $f_{0}=f_{1}$ on $U_{0}\cap U_{1}$.

> **Definition 17.2.3 (Holomorphic Continuation Along a Path)**
> 
> $\left(f_{0},U_{0}\right)$ is holomorphically continued along a path $\gamma$ to $\left(f_{1},U_{1}\right)$ if there is a family of function elements $\left(f_{t},U_{t}\right)_{t\in\left[0,1\right]}$ such that each step is a direct continuation and $f_{0},f_{1}$ are the initial and final elements.

> **Theorem 17.3.6 (Monodromy Theorem)**
> 
> If $D$ is simply connected and $\left(f,U\right)$ can be holomorphically continued along every path in $D$, then $f$ extends to a single-valued holomorphic function on $D$.

> **Lemma 18.1.1 (Pasting Lemma)**
> 
> If domains $D_{1},D_{2}$ are disjoint with a common boundary segment $\gamma$, $f_{1},f_{2}$ are holomorphic on them and continuous to $\gamma$, and $f_{1}=f_{2}$ on $\gamma$, then the pasted function is holomorphic on $D_{1}\cup\gamma\cup D_{2}$.

> **Theorem 18.1.2 (Schwarz Reflection Principle I)**
> 
> If $D$ is symmetric about the real axis, $f$ is holomorphic on $D^{+}:=D\cap\left\{\operatorname{Im}z> 0\right\}$, continuous to $D^{+}\cap\mathbb{R}$ and real-valued there, then $f$ extends to a holomorphic function on $D$.

> **Theorem 18.1.3 (Schwarz Reflection Principle II)**
> 
> If $f$ is holomorphic on $D^{+}$, continuous to a boundary segment $I\subset\mathbb{R}$ and real-valued there, then $f$ extends to $D^{+}\cup I\cup D^{-}$, where $D^{-}$ is the reflection of $D^{+}$ across the real axis, with $f\left(z\right)=\overline{f\left(\overline z\right)}$.

## 16.3-2

Let $u=\frac{1}{2\pi}\log\left|z\right|$, $z\in A\left(0;0;1\right):=\left\{0< \left|z\right|< 1\right\}$. Prove: (i) $u$ is harmonic on the annulus $A\left(0;0;1\right)$; (ii) there is no holomorphic $f$ on $A\left(0;0;1\right)$ with $\operatorname{Re}f=u$; (iii) if $f$ is a smooth (real) function with compact support on the open disk $\mathbb{D}$, then $\int_{\mathbb{D}}u\left(z\right)\Delta f\left(z\right)\,dx\,dy=f\left(0\right)$.

### Solution to 16.3-2

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

## 16.3-7

Let $\mathbb{H}:=\left\{\operatorname{Im}z> 0\right\}$, and let $f$ be continuous on $\partial\mathbb{H}$ with $\lim_{z\to\infty,\,z\in\partial\mathbb{H}}f\left(z\right)$ existing and finite. Find the solution $u$ of the Dirichlet problem on $\mathbb{H}$ with $u|_{\partial\mathbb{H}}=f$.

### Solution to 16.3-7

The solution is given by the Poisson integral on the upper half-plane:

$$
u\left(x+iy\right)=\frac{y}{\pi}\int_{-\infty}^{+\infty}\frac{f\left(t\right)}{\left(t-x\right)^{2}+y^{2}}\,dt,\quad y> 0.
$$

Verification: the Poisson kernel $P_{y}\left(t-x\right):=\frac{y}{\pi\left(\left(t-x\right)^{2}+y^{2}\right)}$ is harmonic in $\left(x,y\right)$ (it is $\frac1\pi\operatorname{Im}\frac{1}{t-z}$), so $u$ is harmonic on $\mathbb{H}$. Also $\int_{-\infty}^{+\infty}P_{y}\left(t-x\right)dt=1$, and uniformly for $x$ near $x_{0}$, $P_{y}\left(t-x\right)\to0$ when $t$ is away from $x_{0}$, so

$$
\lim_{y\to0^{+}}u\left(x_{0}+iy\right)=\lim_{y\to0^{+}}\int f\left(t\right)P_{y}\left(t-x_{0}\right)dt=f\left(x_{0}\right),
$$

i.e. $u|_{\partial\mathbb{H}}=f$ (approximation property). Since $f$ has a finite limit $L$ at $\infty$, $u\left(x+iy\right)\to L$ as $\left|z\right|\to\infty$, consistent with the boundary data. Hence the solution is the above. $\blacksquare$

## 16.3-8

Let $u$ be harmonic on a domain $D\subset\mathbb{C}$. Prove: for every $\left(x_{0},y_{0}\right)\in D$, there is a neighborhood $B_{0}\subset D$ of $\left(x_{0},y_{0}\right)$ on which $u$ has a Taylor series expansion, i.e. $u\left(x,y\right)=\sum_{n\in\mathbb{N}}\sum_{m+k=n}\frac{1}{m!k!}\partial_{x}^{m}\partial_{y}^{k}u\left(x_{0},y_{0}\right)\left(x-x_{0}\right)^{m}\left(y-y_{0}\right)^{k}$ for all $\left(x,y\right)\in B_{0}$.

### Solution to 16.3-8

A harmonic function is locally the real part of a holomorphic function: on a disk $B_{0}\subset D$ around $\left(x_{0},y_{0}\right)$, there is a holomorphic $F$ with $u=\operatorname{Re}F$ (a local conjugate harmonic function exists). Write $z_{0}=x_{0}+iy_{0}$; $F$ has Taylor expansion $F\left(z\right)=\sum_{n=0}^{+\infty}c_{n}\left(z-z_{0}\right)^{n}$ on $B_{0}$. Then $u\left(x,y\right)=\operatorname{Re}F\left(z\right)$, and

$$
F\left(z\right)=\sum_{n=0}^{+\infty}c_{n}\left(\left(x-x_{0}\right)+i\left(y-y_{0}\right)\right)^{n}
$$

is a power series in $\left(x-x_{0}\right),\left(y-y_{0}\right)$, absolutely and uniformly convergent on $B_{0}$; expanding term by term gives the real power series $u\left(x,y\right)=\sum_{m,k}\frac{1}{m!k!}\partial_{x}^{m}\partial_{y}^{k}u\left(x_{0},y_{0}\right)\left(x-x_{0}\right)^{m}\left(y-y_{0}\right)^{k}$ (Taylor coefficient formula for real analytic functions). This is exactly the claim. $\blacksquare$

## 16.3-10

(i) Verify that $u\left(x+iy\right)=\frac{1}{\pi}\arctan\frac{y}{x}$ is harmonic on the upper half-plane $\mathbb{H}:=\left\{\left(x,y\right):y> 0\right\}$, extends continuously to the real axis away from the origin, equals $0$ on the positive real axis and $1$ on the negative real axis; (ii) consider the Mobius map $\phi\left(z\right):\mathbb{H}\to\mathbb{D}$, $z\mapsto\frac{i-z}{i+z}$; verify that $\widetilde u:=u\circ\phi^{-1}$ is harmonic on $\mathbb{D}$, extends continuously to $\partial\mathbb{D}$ away from $\pm1$, equals $0$ on the upper semicircle $\left\{e^{i\theta}:0< \theta< \pi\right\}$ and $1$ on the lower semicircle $\left\{e^{i\theta}:-\pi< \theta< 0\right\}$; (iii) verify that $\widetilde u$ is the Poisson integral of its boundary restriction; (iv) verify that for any $a\in\left(0,1\right)$, there is a sequence $z_{n}\in\mathbb{D}$ with $z_{n}\to1$ (or $-1$) such that $\widetilde u\left(z_{n}\right)\to a$.

### Solution to 16.3-10

(i) On $\mathbb{H}$, $\frac1\pi\arctan\frac yx=\frac1\pi\arg\left(x+iy\right)$, and $\arg\left(x+iy\right)=\operatorname{Im}\operatorname{Log}z$ is harmonic, so $u$ is harmonic on $\mathbb{H}$. As $y\to0^{+}$: if $x> 0$, $\arg\left(x+iy\right)\to0$, $u\to0$; if $x< 0$, $\arg\left(x+iy\right)\to\pi$, $u\to1$. Hence $u$ extends continuously to the real axis away from the origin, taking $0$ on the positive axis and $1$ on the negative axis.

(ii) $\phi^{-1}\left(w\right)=i\frac{1-w}{1+w}$. For $w=e^{i\theta}\in\partial\mathbb{D}$ ($w\ne\pm1$),

$$
\phi^{-1}\left(e^{i\theta}\right)=i\frac{1-e^{i\theta}}{1+e^{i\theta}}=i\cdot\left(-i\right)\tan\frac{\theta}{2}=\tan\frac{\theta}{2}\in\mathbb{R}.
$$

$\tan\frac{\theta}{2}> 0$ when $0< \theta< \pi$ (positive real axis, $u=0$), and $\tan\frac{\theta}{2}< 0$ when $-\pi< \theta< 0$ (negative real axis, $u=1$). Since $\phi$ is a conformal equivalence, $\widetilde u=u\circ\phi^{-1}$ is harmonic on $\mathbb{D}$ and extends continuously to $\partial\mathbb{D}\setminus\left\{\pm1\right\}$, taking $0$ on the upper semicircle and $1$ on the lower.

(iii) The boundary function $g\left(e^{i\theta}\right)$ of $\widetilde u$ on $\partial\mathbb{D}$ is: $0$ on the upper semicircle, $1$ on the lower (away from $\pm1$). By **Theorem 16.2.9 (Poisson Integral)**, the harmonic function on $\mathbb{D}$ with boundary values $g$ is unique; since $\widetilde u$ is that solution, $\widetilde u$ equals the Poisson integral of $g$.

(iv) $\widetilde u$ is harmonic and nonconstant on $\mathbb{D}$, taking values in $\left\{0,1\right\}$ on $\partial\mathbb{D}$ (away from $\pm1$). Along a path from near $\phi\left(0\right)$ to the boundary point $1$ (or $-1$), the boundary limit at $1$ lies between the upper semicircle value ($0$) and the lower semicircle value ($1$). By continuity, for any $a\in\left(0,1\right)$ there is a point on this path, so one can choose a sequence $z_{n}\to1$ (or $-1$) with $\widetilde u\left(z_{n}\right)\to a$. $\blacksquare$

## 17.4-1

Prove that the series $1+\sum_{n=1}^{+\infty}\left(iz\right)^{n}$ and the series $\frac{1}{1-z}+\sum_{n=1}^{+\infty}\frac{\left(1-i\right)^{n}\left(-z\right)^{n}}{\left(1-z\right)^{1+n}}$ are direct holomorphic continuations of each other.

### Solution to 17.4-1

The first series is geometric, converging when $\left|iz\right|< 1$, i.e. $\left|z\right|< 1$, with sum

$$
1+\sum_{n=1}^{+\infty}\left(iz\right)^{n}=1+\frac{iz}{1-iz}=\frac{1}{1-iz}.
$$

For the second series, factor out $\frac{1}{1-z}$:

$$
\frac{1}{1-z}\left[1+\sum_{n=1}^{+\infty}\left(\frac{\left(1-i\right)\left(-z\right)}{1-z}\right)^{n}\right],
$$

which converges when $\left|\frac{\left(1-i\right)\left(-z\right)}{1-z}\right|< 1$, i.e. $\sqrt2\left|z\right|< \left|1-z\right|$ (this also implies $\left|z\right|< 1$), with sum

$$
\frac{1}{1-z}\cdot\frac{1}{1-\frac{\left(1-i\right)\left(-z\right)}{1-z}}=\frac{1}{1-z-\left(1-i\right)z}=\frac{1}{1-iz}.
$$

The two regions $\left\{\left|z\right|< 1\right\}$ and $\left\{\sqrt2\left|z\right|< \left|1-z\right|\right\}$ overlap nontrivially, and both series represent the same function $\frac{1}{1-iz}$ on the overlap. By **Definition 17.2.2 (Direct Holomorphic Continuation)**, they are direct continuations of each other. $\blacksquare$

## 17.4-3

Let $\gamma:\left[0,1\right]\to\mathbb{C}$ be a path. If a function element $\left(f_{0},U_{0}\right)$ is holomorphically continued along $\gamma$ to $\left(f_{1},U_{1}\right)$, prove that $\left(\partial_{z}f_{0},U_{0}\right)$ can also be continued along $\gamma$ to $\left(\partial_{z}f_{1},U_{1}\right)$.

### Solution to 17.4-3

By **Definition 17.2.3 (Holomorphic Continuation Along a Path)**, there is a continuation family $\left(f_{t},U_{t}\right)_{t\in\left[0,1\right]}$, with adjacent elements equal on the overlap. Since $f_{t}$ is holomorphic on $U_{t}$, its derivative $\partial_{z}f_{t}$ is also holomorphic on $U_{t}$. If $f_{s}=f_{t}$ on $U_{s}\cap U_{t}$, then $\partial_{z}f_{s}=\partial_{z}f_{t}$ on $U_{s}\cap U_{t}$ (if analytic functions agree on an open overlap, all derivatives agree). Hence $\left(\partial_{z}f_{t},U_{t}\right)_{t\in\left[0,1\right]}$ forms a holomorphic continuation family of $\left(\partial_{z}f_{0},U_{0}\right)$ along $\gamma$, ending at $\left(\partial_{z}f_{1},U_{1}\right)$. $\blacksquare$

## 17.4-4

Let $\gamma:\left[0,1\right]\to\mathbb{C}$ be a closed path with $\gamma\left(0\right)=\gamma\left(1\right)=a$. Let $F_{k}:=\left(f_{k},U_{k}\right)$, $k=0,1$, be function elements centered at $a$, and suppose $F_{1}$ is obtained from $F_{0}$ by holomorphic continuation along $\gamma$. Assume there is a holomorphic function $g$ on an open set $\Omega$ with $f_{0}\left(z\right)=g\left(z\right)$ for all $z\in U_{0}\cap\Omega$ and $\gamma\subset\Omega$. If for all $z\in U_{0}\cap U_{1}$ one has $f_{1}\left(z\right)=\partial_{z}f_{0}\left(z\right)$, find all possible forms of $f_{0}$.

### Solution to 17.4-4

Since $f_{0}=g$ on $U_{0}\cap\Omega$ and $\gamma\subset\Omega$, $g$ is holomorphic (single-valued) on $\Omega$; hence the holomorphic continuation of $f_{0}$ along $\gamma$ is exactly that of $g$ along $\gamma$. Since $\gamma$ is a closed curve in $\Omega$ and $g$ is single-valued, after one loop around $\gamma$, $g$ returns to itself: $f_{1}=g=f_{0}$ on $U_{1}$ (on $U_{0}\cap U_{1}$, $f_{1}=f_{0}$). Together with $f_{1}=\partial_{z}f_{0}$ on $U_{0}\cap U_{1}$, this gives $f_{0}=\partial_{z}f_{0}$ on the nonempty open set $U_{0}\cap U_{1}$. Solving the ODE $f_{0}'=f_{0}$ gives $f_{0}\left(z\right)=Ce^{z}$, and $f_{1}=f_{0}$ gives the same constant. Hence all possible forms are $f_{0}\left(z\right)=Ce^{z}$, $C\in\mathbb{C}$. $\blacksquare$

## 17.4-5

Let $U_{0}=B\left(1,1\right):=\left\{\left|z-1\right|< 1\right\}$, and let $f_{0}$ be a holomorphic branch of $\operatorname{Log}z$ on $U_{0}$. For any $n\in\mathbb{Z}\setminus\left\{0\right\}$, let $\gamma_{n}\left(t\right)=e^{2\pi int}$, $t\in\left[0,1\right]$. Give a continuation family $\left(f_{t},U_{t}\right)$ of $\left(f_{0},U_{0}\right)$ along $\gamma_{n}$, and show that $f_{1}=f_{0}+2n\pi i$.

### Solution to 17.4-5

$\gamma_{n}$ starts at $1$, loops around the origin $\left|n\right|$ times (direction depending on the sign of $n$), and returns to $1$. Along $\gamma_{n}$, the argument of $\operatorname{Log}z$ accumulates continuously by $2\pi nt$. For each $t\in\left[0,1\right]$, take $U_{t}=B\left(\gamma_{n}\left(t\right),\,\delta\right)$ (a small neighborhood not containing the origin), and define

$$
f_{t}\left(z\right):=f_{0}\left(z\right)+2\pi int,\quad z\in U_{t},
$$

where $f_{0}$ is viewed as the branch of $\operatorname{Log}z$ near $1$ with argument starting at $0$; on $U_{t}$, $f_{t}$ is a holomorphic branch of $\operatorname{Log}z$ (with argument accumulated by $2\pi nt$ relative to the value at $1$). Adjacent elements take the same branch on the overlap, so $\left(f_{t},U_{t}\right)_{t\in\left[0,1\right]}$ is a continuation family of $\left(f_{0},U_{0}\right)$ along $\gamma_{n}$. At $t=1$, $\gamma_{n}\left(1\right)=1$, $U_{1}=B\left(1,\delta\right)$, $f_{1}\left(z\right)=f_{0}\left(z\right)+2\pi in$, i.e. $f_{1}=f_{0}+2n\pi i$. $\blacksquare$

## 17.4-8

Let the power series $\sum_{n=0}^{+\infty}c_{n}z^{n}$ have radius of convergence $R=1$, with $c_{n}\ge0$ for $n=1,2,\cdots$, and let $f\left(z\right)$ be its sum. Prove: (i) $\alpha_{k}=\frac{f^{\left(k\right)}\left(\frac12\right)}{k!}\ge0$ ($k=0,1,2,\cdots$); (ii) writing $\beta_{k}=\frac{f^{\left(k\right)}\left(\frac{e^{i\theta}}{2}\right)}{k!}$, one has $\left|\beta_{k}\right|\le\alpha_{k}$; (iii) $z=1$ is a singularity of $f$.

### Solution to 17.4-8

(i) Differentiate term by term (a power series can be differentiated term by term inside its radius):

$$
\frac{f^{\left(k\right)}\left(z\right)}{k!}=\sum_{n=k}^{+\infty}c_{n}\binom{n}{k}z^{n-k}.
$$

Take $z=\frac12$ (positive real, $0< \frac12< 1$):

$$
\alpha_{k}=\sum_{n=k}^{+\infty}c_{n}\binom{n}{k}\left(\frac12\right)^{n-k}\ge0,
$$

since $c_{n}\ge0$.

(ii) Take $z=\frac{e^{i\theta}}{2}$, so $\left|z\right|=\frac12< 1$,

$$
\beta_{k}=\sum_{n=k}^{+\infty}c_{n}\binom{n}{k}\left(\frac{e^{i\theta}}{2}\right)^{n-k},\quad
\left|\beta_{k}\right|\le\sum_{n=k}^{+\infty}c_{n}\binom{n}{k}\left(\frac{\left|e^{i\theta}\right|}{2}\right)^{n-k}=\alpha_{k}.
$$

(iii) Suppose for contradiction that $1$ is a regular point of $f$; then $f$ would be holomorphic in a neighborhood of $z=1$, and by power series theory its radius of convergence would have to exceed $1$ (convergence near $1$ implies radius $> 1$). But this contradicts that the radius is exactly $R=1$. Hence $z=1$ is a singularity of $f$. $\blacksquare$

## 18.4-1

Prove: any conformal equivalence between two rectangles that maps all vertices of one rectangle to vertices of the other is linear.

### Solution to 18.4-1

Let $f$ map rectangle $R$ conformally onto rectangle $R'$, sending vertices to vertices. By boundary correspondence (conformal maps between Jordan domains extend continuously to the boundary), $f$ maps each side of $R$ to a side of $R'$, with values continuous along the line segment.

By **Theorem 18.1.3 (Schwarz Reflection Principle II)**, $f$ can be reflected across each side: the side maps to a side of $R'$ (a line segment), and $f$ reflects to the rectangle adjacent to $R$. Repeated reflection extends $f$ to an entire function $\mathbb{C}\to\mathbb{C}$ (meromorphic at infinity, but entire). Let the side-length directions of $R$ be $L_{1},L_{2}$ (real and imaginary directions), and those of $R'$ be $L'_{1},L'_{2}$; the extension satisfies the quasi-periodicity conditions $f\left(z+L_{1}\right)=f\left(z\right)+L'_{1}$, $f\left(z+L_{2}\right)=f\left(z\right)+L'_{2}$.

Differentiating gives $f'\left(z+L_{1}\right)=f'\left(z\right)$, $f'\left(z+L_{2}\right)=f'\left(z\right)$, i.e. $f'$ is a doubly periodic entire function (periods $L_{1},L_{2}$). A doubly periodic entire function is bounded on the fundamental parallelogram; by Liouville's theorem, $f'$ is constant, so $f$ is linear: $f\left(z\right)=az+b$. $\blacksquare$
