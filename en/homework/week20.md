# Assignment 20

> **Definition 17.2.1** (Function Element)<br>A pair $\left(f,U\right)$ is called a function element if $U$ is a nonempty open subset of $\mathbb{C}$ and $f$ is holomorphic on $U$.

> **Definition 17.2.2** (Direct Holomorphic Continuation)<br>The function element $\left(f_{1},U_{1}\right)$ is a direct holomorphic continuation of $\left(f_{0},U_{0}\right)$ if $U_{0}\cap U_{1}\ne\emptyset$ and $f_{0}=f_{1}$ on $U_{0}\cap U_{1}$.

> **Definition 17.2.3** (Holomorphic Continuation)<br>$\left(f_{0},U_{0}\right)$ continues holomorphically along the path $\gamma$ to $\left(f_{1},U_{1}\right)$ if there exists a family of function elements $\left(f_{t},U_{t}\right)_{t\in\left[0,1\right]}$ such that each step is a direct continuation and $f_{0},f_{1}$ are the initial and final elements.

> **Theorem 17.3.6** (Monodromy Theorem)<br>If $D$ is a simply connected domain and $\left(f,U\right)$ can be holomorphically continued along every path in $D$, then $f$ extends to a single-valued holomorphic function on $D$.

### Problem 1

(Problem 17.4-1) Prove: the series $1+\sum_{n=1}^{+\infty}\left(iz\right)^{n}$ and the series $\frac{1}{1-z}+\sum_{n=1}^{+\infty}\frac{\left(1-i\right)^{n}\left(-z\right)^{n}}{\left(1-z\right)^{1+n}}$ are direct holomorphic continuations of each other.

### Solution to Problem 1

Series $1$ is a geometric series; it converges when $\left|iz\right|< 1$, i.e. $\left|z\right|< 1$, and its sum is

$$
1+\sum_{n=1}^{+\infty}\left(iz\right)^{n}=1+\frac{iz}{1-iz}=\frac{1}{1-iz}.
$$

Series $2$: factor out $\frac{1}{1-z}$,

$$
\frac{1}{1-z}\left[1+\sum_{n=1}^{+\infty}\left(\frac{\left(1-i\right)\left(-z\right)}{1-z}\right)^{n}\right],
$$

which converges when $\left|\frac{\left(1-i\right)\left(-z\right)}{1-z}\right|< 1$, i.e. $\sqrt2\left|z\right|< \left|1-z\right|$ (which also implies $\left|z\right|< 1$), and its sum is

$$
\frac{1}{1-z}\cdot\frac{1}{1-\frac{\left(1-i\right)\left(-z\right)}{1-z}}=\frac{1}{1-z-\left(1-i\right)z}=\frac{1}{1-iz}.
$$

The two regions $\left\{\left|z\right|< 1\right\}$ and $\left\{\sqrt2\left|z\right|< \left|1-z\right|\right\}$ have nonempty overlap, and on this overlap the two series represent the same function $\frac{1}{1-iz}$. By **Definition 17.2.2 (Direct Holomorphic Continuation)**, the two are direct holomorphic continuations of each other. $\blacksquare$

### Problem 2

(Problem 17.4-3) Let $\gamma:\left[0,1\right]\to\mathbb{C}$ be a path. If the function element $\left(f_{0},U_{0}\right)$ continues holomorphically along $\gamma$ to the function element $\left(f_{1},U_{1}\right)$, prove that the function element $\left(\partial_{z}f_{0},U_{0}\right)$ also continues along $\gamma$ to the function element $\left(\partial_{z}f_{1},U_{1}\right)$.

### Solution to Problem 2

By **Definition 17.2.3**, there exists a continuation family $\left(f_{t},U_{t}\right)_{t\in\left[0,1\right]}$, with adjacent elements $f_{t},f_{t+\Delta t}$ equal on the overlap. Since $f_{t}$ is holomorphic on $U_{t}$, its derivative $\partial_{z}f_{t}$ is also holomorphic on $U_{t}$. If $f_{s}=f_{t}$ on $U_{s}\cap U_{t}$, then $\partial_{z}f_{s}=\partial_{z}f_{t}$ on $U_{s}\cap U_{t}$ (if analytic functions agree on an open overlap, all their derivatives agree). Hence $\left(\partial_{z}f_{t},U_{t}\right)_{t\in\left[0,1\right]}$ forms a holomorphic continuation family of $\left(\partial_{z}f_{0},U_{0}\right)$ along $\gamma$, with endpoint $\left(\partial_{z}f_{1},U_{1}\right)$. $\blacksquare$

### Problem 3

(Problem 17.4-4) Let $\gamma:\left[0,1\right]\to\mathbb{C}$ be a closed path, $\gamma\left(0\right)=\gamma\left(1\right)=a$, and let $F_{k}:=\left(f_{k},U_{k}\right)$, $k=0,1$, both be function elements centered at $a$, with $F_{1}$ obtainable from $F_{0}$ by holomorphic continuation along $\gamma$. Suppose there exists a holomorphic function $g$ on an open set $\Omega$ such that $f_{0}\left(z\right)=g\left(z\right)$ for all $\forall z\in U_{0}\cap\Omega$ and $\gamma\subset\Omega$. If for all $\forall z\in U_{0}\cap U_{1}$ the identity $f_{1}\left(z\right)=\partial_{z}f_{0}\left(z\right)$ holds, find all possible forms of $f_{0}$.

### Solution to Problem 3

Since $f_{0}=g$ on $U_{0}\cap\Omega$ and $\gamma\subset\Omega$, $g$ is holomorphic (single-valued) on $\Omega$, so the holomorphic continuation of $f_{0}$ along $\gamma$ is precisely the continuation of $g$ along $\gamma$. Since $\gamma$ is a closed curve in $\Omega$ and $g$ is single-valued, after winding once around $\gamma$, $g$ returns to itself: $f_{1}=g=f_{0}$ on $U_{1}$ (on $U_{0}\cap U_{1}$, $f_{1}=f_{0}$). Together with the condition $f_{1}=\partial_{z}f_{0}$ on $U_{0}\cap U_{1}$, we get $f_{0}=\partial_{z}f_{0}$ on the nonempty open set $U_{0}\cap U_{1}$. Solve the ODE $f_{0}'=f_{0}$: $f_{0}\left(z\right)=Ce^{z}$, and $f_{1}=f_{0}$ gives the same constant. Hence all possible forms of $f_{0}$ are $f_{0}\left(z\right)=Ce^{z}$, $C\in\mathbb{C}$. $\blacksquare$

### Problem 4

(Problem 17.4-5) Let $U_{0}=B\left(1,1\right):=\left\{\left|z-1\right|< 1\right\}$, and let $f_{0}$ be a holomorphic branch of the logarithm $\operatorname{Log}z$ on $U_{0}$. For any $n\in\mathbb{Z}\setminus\left\{0\right\}$, let $\gamma_{n}\left(t\right)=e^{2\pi int}$, $t\in\left[0,1\right]$. Give the continuation family $\left(f_{t},U_{t}\right)$ of the element $\left(f_{0},U_{0}\right)$ along the path $\gamma_{n}$, and show that $f_{1}=f_{0}+2n\pi i$.

### Solution to Problem 4

$\gamma_{n}$ starts at $1$, winds around the origin $\left|n\right|$ times, and returns to $1$ (direction determined by the sign of $n$). Along $\gamma_{n}$, the argument of $\operatorname{Log}z$ continuously accumulates by $2\pi nt$. For each $t\in\left[0,1\right]$, take $U_{t}=B\left(\gamma_{n}\left(t\right),\,\delta\right)$ (a small neighborhood not containing the origin $0$), and define

$$
f_{t}\left(z\right):=f_{0}\left(z\right)+2\pi int,\quad z\in U_{t},
$$

where $f_{0}$ is regarded as the branch of $\operatorname{Log}z$ near $1$, with argument starting from $0$; on $U_{t}$, $f_{t}$ is a holomorphic branch of $\operatorname{Log}z$ (the argument has accumulated $2\pi nt$ relative to its value at $1$). Adjacent elements take the same branch on their overlap, so $\left(f_{t},U_{t}\right)_{t\in\left[0,1\right]}$ is a continuation family of $\left(f_{0},U_{0}\right)$ along $\gamma_{n}$. At $t=1$, $\gamma_{n}\left(1\right)=1$, $U_{1}=B\left(1,\delta\right)$, $f_{1}\left(z\right)=f_{0}\left(z\right)+2\pi in$, i.e. $f_{1}=f_{0}+2n\pi i$. $\blacksquare$

### Problem 5

(Problem 17.4-8) Let the power series $\sum_{n=0}^{+\infty}c_{n}z^{n}$ have radius of convergence $R=1$, with $c_{n}\ge0$, $n=1,2,\cdots$, and let $f\left(z\right)$ be its sum function. Prove: (i) $\alpha_{k}=\frac{f^{\left(k\right)}\left(\frac12\right)}{k!}\ge0$ ($k=0,1,2,\cdots$); (ii) writing $\beta_{k}=\frac{f^{\left(k\right)}\left(\frac{e^{i\theta}}{2}\right)}{k!}$, we have $\left|\beta_{k}\right|\le\alpha_{k}$; (iii) $z=1$ is a singularity of the sum function $f$.

### Solution to Problem 5

(i) Differentiate term by term (a power series can be differentiated term by term inside $\left|z\right|< 1$):

$$
\frac{f^{\left(k\right)}\left(z\right)}{k!}=\sum_{n=k}^{+\infty}c_{n}\binom{n}{k}z^{n-k}.
$$

Take $z=\frac12$ (a positive real, $0< \frac12< 1$):

$$
\alpha_{k}=\sum_{n=k}^{+\infty}c_{n}\binom{n}{k}\left(\frac12\right)^{n-k}\ge0,
$$

since $c_{n}\ge0$.

(ii) Take $z=\frac{e^{i\theta}}{2}$; then $\left|z\right|=\frac12< 1$,

$$
\beta_{k}=\sum_{n=k}^{+\infty}c_{n}\binom{n}{k}\left(\frac{e^{i\theta}}{2}\right)^{n-k},\quad
\left|\beta_{k}\right|\le\sum_{n=k}^{+\infty}c_{n}\binom{n}{k}\left(\frac{\left|e^{i\theta}\right|}{2}\right)^{n-k}=\alpha_{k}.
$$

(iii) Suppose, for contradiction, that $1$ is a regular point of $f$. Then $f$ is holomorphic in some neighborhood of $z=1$, and by the theory of power series its radius of convergence must be greater than $1$ (convergence in a neighborhood of $1$ implies radius of convergence $> 1$). But this contradicts the fact that the radius of convergence is exactly $R=1$. Hence $z=1$ is a singularity of $f$. $\blacksquare$
