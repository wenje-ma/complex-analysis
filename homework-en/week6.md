# week6

> **Theorem 9.3.2 (Identity Theorem)**
> 
> If the zeros of a holomorphic function on a domain $D$ have an accumulation point in $D$, then $f\equiv0$.

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
\phi_{a}\left(z\right)=\frac{z-a}{1-\overline{a}z}.
$$
It is an automorphism of $\mathbb{D}$, with $\phi_{a}\left(a\right)=0$ and $\left|\phi_{a}\left(e^{i\theta}\right)\right|=1$.

> **Theorem 10.3.4 (Schwarz-Pick Lemma)**
> 
> For holomorphic $f:\mathbb{D}\to\mathbb{D}$,

$$
\left|\frac{f\left(z\right)-f\left(w\right)}{1-\overline{f\left(w\right)}f\left(z\right)}\right|\le\left|\frac{z-w}{1-\overline{w}z}\right|;
$$
in differential form,
$$
\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\le\frac{1}{1-\left|z\right|^{2}},
$$
with equality if and only if $f\in\operatorname{auto}\left(\mathbb{D}\right)$.

> **Definition 11.1.1 (Locally Uniform Convergence)**
> 
> A sequence $\left\{f_{n}\right\}$ of holomorphic functions converges locally uniformly to $f$ on a domain $\Omega$ if it converges uniformly to $f$ on every compact subset of $\Omega$.

> **Theorem 11.1.2 (Weierstrass Theorem)**
> 
> If $\left\{f_{n}\right\}$ converges locally uniformly to a continuous function $f$ on $\Omega$, then $f$ is holomorphic on $\Omega$.

> **Theorem 11.1.3 (Montel's Theorem)**
> 
> If a sequence $\left\{f_{n}\right\}$ of holomorphic functions is uniformly bounded on every compact subset of a domain $D$, then a subsequence converges locally uniformly on $D$.

> **Theorem 11.2.2 (Riemann Mapping Theorem)**
> 
> Every simply connected domain other than the whole plane is conformally equivalent to the open unit disk.

> **Definition 11.2.6 (Mapping Radius)**
> 
> For a simply connected domain $D$ with $\mathbb{C}\setminus{D}\ne\varnothing$ and $a\in{D}$, the positive number $\rho$ for which there exists a unique conformal equivalence $f:D\to\mathbb{D}_{\rho}:=\left\{\left|z\right|<\rho\right\}$ with $f\left(a\right)=0$, $f'\left(a\right)=1$, is called the mapping radius of $D$ at $a$, denoted $\rho\left(D,a\right)$.

## 10.4-10

Let $\mathbb{D}=\left\{\left|z\right|<1\right\}$, and let $f:\mathbb{D}\to\mathbb{D}$ be nonconstant holomorphic. Prove:

$$
\frac{\left|f\left(0\right)\right|-\left|z\right|}{1+\left|f\left(0\right)\right|\left|z\right|}\le\left|f\left(z\right)\right|\le\frac{\left|f\left(0\right)\right|+\left|z\right|}{1-\left|f\left(0\right)\right|\left|z\right|},\quad\forall\left|z\right|<1.
$$

### Solution to 10.4-10

Write $a=f\left(0\right)$, $t=\left|a\right|$. By **Definition 10.3.2 (Blaschke Factor)**, $\phi_{a}\left(w\right)=\frac{w-a}{1-\overline{a}w}$ is an automorphism of $\mathbb{D}$ with $\phi_{a}\left(a\right)=0$. Then $\phi_{a}\circ{f}:\mathbb{D}\to\mathbb{D}$ is holomorphic and $\left(\phi_{a}\circ{f}\right)\left(0\right)=0$. By **Theorem 10.3.1 (Schwarz Lemma)**:

$$
\left|\frac{f\left(z\right)-a}{1-\overline{a}f\left(z\right)}\right|\le\left|z\right|.
$$

Let $u=f\left(z\right)$, so $\left|u\right|<1$. From $\left|u-a\right|\le\left|z\right|\left|1-\overline{a}u\right|\le\left|z\right|\left(1+t\left|u\right|\right)$ and $\left|u-a\right|\ge\left|\right|u\left|-t\right|$,

$$
\left|\right|u\left|-t\right|\le\left|z\right|\left(1+t\left|u\right|\right).
$$

Two cases:

If $\left|u\right|\le{t}$, then $t-\left|u\right|\le\left|z\right|\left(1+t\left|u\right|\right)$, and rearranging, $\left|u\right|\left(1+t\left|z\right|\right)\ge{t}-\left|z\right|$, i.e.

$$
\left|u\right|\ge\frac{t-\left|z\right|}{1+t\left|z\right|}.
$$

If $\left|u\right|\ge{t}$, then $\left|u\right|-t\le\left|z\right|\left(1+t\left|u\right|\right)$, and rearranging, $\left|u\right|\left(1-t\left|z\right|\right)\le{t}+\left|z\right|$, i.e.

$$
\left|u\right|\le\frac{t+\left|z\right|}{1-t\left|z\right|}.
$$

Combining,

$$
\frac{\left|f\left(0\right)\right|-\left|z\right|}{1+\left|f\left(0\right)\right|\left|z\right|}\le\left|f\left(z\right)\right|\le\frac{\left|f\left(0\right)\right|+\left|z\right|}{1-\left|f\left(0\right)\right|\left|z\right|}.
$$

$\blacksquare$

## 11.3-3

Let $f$ be a conformal equivalence from a simply connected domain $D\subset\mathbb{C}$ to the open unit disk $\mathbb{D}:=\left\{\left|z\right|<1\right\}$. Prove: if $D\ni{z}_{n}\to{z}\in\partial{D}$, then $\left|f\left(z_{n}\right)\right|\to1$.

### Solution to 11.3-3

Suppose $\left|f\left(z_{n}\right)\right|\not\to1$. Since $\left|f\right|<1$, there is a subsequence (still denoted $z_{n}$) and $\rho<1$ such that $\left|f\left(z_{n}\right)\right|\le\rho<1$. Then $\left\{f\left(z_{n}\right)\right\}$ lies in the compact subset $\left\{\left|w\right|\le\rho\right\}$ of $\mathbb{D}$, so a subsequence converges: $f\left(z_{n_{k}}\right)\to{w}_{0}\in\left\{\left|w\right|\le\rho\right\}\subset\mathbb{D}$.

Since $f$ is a conformal equivalence $D\to\mathbb{D}$, $f^{-1}:\mathbb{D}\to{D}$ is holomorphic and continuous. From $f\left(z_{n_{k}}\right)\to{w}_{0}\in\mathbb{D}$,

$$
z_{n_{k}}=f^{-1}\left(f\left(z_{n_{k}}\right)\right)\to{f}^{-1}\left(w_{0}\right)\in{D},
$$

contradicting $z_{n_{k}}\to{z}\in\partial{D}\notin{D}$. Hence $\left|f\left(z_{n}\right)\right|\to1$. $\blacksquare$

## 11.3-4

Let $\left\{g_{n}\right\}$ be holomorphic on a domain $D\subset\mathbb{C}$, with $g_{n}\left(D\right)\subset{D}$. Suppose $g_{n}$ converges locally uniformly to $g$ on $D$. Prove: either $g\left(D\right)\subset{D}$ or $g\equiv{z}_{0}\in\partial{D}$.

### Solution to 11.3-4

By **Theorem 11.1.2 (Weierstrass Theorem)**, $g$ is holomorphic on $D$. Since $g_{n}\left(D\right)\subset{D}$ and $g_{n}\to{g}$, for each $z\in{D}$, $g\left(z\right)\in\overline{D}$ (closure). Hence $g\left(D\right)\subset\overline{D}$.

If $g$ is nonconstant, by **Theorem 10.1.4 (Open Mapping Theorem)**, $g\left(D\right)$ is open. Since $g\left(D\right)\subset\overline{D}$ and $g\left(D\right)$ is nonempty open, if $g\left(D\right)$ contained a point of $\partial{D}$, then $g\left(D\right)$ could not be open (points of $g\left(D\right)$ should be contained in a small neighborhood inside $g\left(D\right)$, but a small neighborhood near $\partial{D}$ is not entirely contained in $\overline{D}$). Hence $g\left(D\right)\subset{D}$.

If $g$ is constant, $g\equiv{z}_{0}$, then $z_{0}\in\overline{D}$. If $z_{0}\in{D}$, then $g\left(D\right)=\left\{z_{0}\right\}\subset{D}$, the first case; if $z_{0}\in\partial{D}$, then $g\equiv{z}_{0}\in\partial{D}$, the second case. $\blacksquare$

## 11.3-5

(Vitali-Porter theorem) Let $\left\{f_{n}\right\}$ be holomorphic on a domain $D\subset\mathbb{C}$, uniformly bounded on every compact subset of $D$. Let $z_{m}\in{D}$ with $z_{m}\to{z}_{\infty}\in{D}$, and suppose $\lim_{n\to\infty}f_{n}\left(z_{m}\right)=w_{m}$ for all $m\in\mathbb{N}$. Prove: there exists a holomorphic $f$ on $D$ such that $f_{n}$ converges locally uniformly to $f$ on $D$.

### Solution to 11.3-5

By **Theorem 11.1.3 (Montel's Theorem)**, $\left\{f_{n}\right\}$ is normal on $D$: every subsequence has a further subsequence converging locally uniformly on $D$. Let $f_{n_{k}}\to{f}$ locally uniformly; by **Theorem 11.1.2 (Weierstrass Theorem)**, $f$ is holomorphic on $D$. For each $m$, from $f_{n_{k}}\to{f}$ uniformly near $\left\{z_{m}\right\}$ and the assumption $\lim_{n}f_{n}\left(z_{m}\right)=w_{m}$, we get $f\left(z_{m}\right)=w_{m}$.

Now show the whole sequence converges to $f$. Otherwise, there exist a compact set $K\subset{D}$, $\varepsilon>0$, and a subsequence $f_{n'_{j}}$ with $\sup_{K}\left|f_{n'_{j}}-f\right|\ge\varepsilon$. By Montel, $f_{n'_{j}}$ has a subsubsequence converging locally uniformly to some holomorphic $\widetilde{f}$. Then $\widetilde{f}\left(z_{m}\right)=w_{m}=f\left(z_{m}\right)$ for all $m$; since $z_{m}\to{z}_{\infty}\in{D}$ has an accumulation point, by **Theorem 9.3.2 (Identity Theorem)** $\widetilde{f}=f$. This contradicts $\sup_{K}\left|f_{n'_{j}}-f\right|\ge\varepsilon$ while $f_{n'_{j}}\to{f}$ on $K$. Hence $f_{n}\to{f}$ locally uniformly on $D$. $\blacksquare$

## 11.3-6

Let $D\subset\mathbb{C}$ be a domain, $f$ holomorphic on $D$, and $f:D\to{f}\left(D\right)$ a conformal map. Prove: the area of $f\left(D\right)$ equals $\iint_{D}\left|f'\left(z\right)\right|^{2}\,dx\,dy$.

### Solution to 11.3-6

Write $f\left(z\right)=u\left(x,y\right)+iv\left(x,y\right)$. Since $f:D\to{f}\left(D\right)$ is conformal, $f$ is univalent with $f'\ne0$, so $f$ is a $C^{1}$ diffeomorphism $D\to{f}\left(D\right)$. By the change-of-variables formula for double integrals,

$$
\operatorname{Area}\left(f\left(D\right)\right)=\iint_{D}\left|\det{J}_{f}\left(x,y\right)\right|\,dx\,dy,
$$

where $J_{f}=\begin{bmatrix}u_{x}&u_{y}\\v_{x}&v_{y}\end{bmatrix}$ is the Jacobian. By the Cauchy-Riemann equations $u_{x}=v_{y}$, $u_{y}=-v_{x}$,

$$
\det{J}_{f}=u_{x}v_{y}-u_{y}v_{x}=u_{x}^{2}+u_{y}^{2}=\left|f'\left(z\right)\right|^{2}.
$$

Hence $\operatorname{Area}\left(f\left(D\right)\right)=\iint_{D}\left|f'\left(z\right)\right|^{2}\,dx\,dy$. $\blacksquare$

## 11.3-15

Let $\left\{f_{n}\right\}$ be holomorphic on an open set $\Omega\subset\mathbb{C}$. Suppose there are positive real numbers $c_{n}>0$ with $\sum_{n=1}^{+\infty}c_{n}<+\infty$ and $\left|f_{n}\left(z\right)-1\right|\le{c}_{n}$ for all $z\in\Omega$. Prove:

(i) the infinite product $\prod_{n=1}^{+\infty}f_{n}\left(z\right)$ converges uniformly on $\Omega$ to a holomorphic function $f$;

(ii) if no $f_{n}\left(z\right)$ vanishes on $\Omega$, then $\frac{f'\left(z\right)}{f\left(z\right)}=\sum_{n=1}^{+\infty}\frac{f_{n}'\left(z\right)}{f_{n}\left(z\right)}$.

### Solution to 11.3-15

(i) Write $P_{n}\left(z\right)=\prod_{k=1}^{n}f_{k}\left(z\right)$. From $\left|f_{k}\left(z\right)-1\right|\le{c}_{k}$, $\left|f_{k}\left(z\right)\right|\le1+c_{k}$, so

$$
\left|P_{n}\left(z\right)\right|\le\prod_{k=1}^{n}\left(1+c_{k}\right)\le\exp\left(\sum_{k=1}^{n}c_{k}\right)\le{e}^{C},
$$

where $C=\sum_{k=1}^{+\infty}c_{k}<+\infty$. Thus

$$
\left|P_{n}\left(z\right)-P_{n-1}\left(z\right)\right|=\left|P_{n-1}\left(z\right)\right|\left|f_{n}\left(z\right)-1\right|\le{e}^{C}c_{n}.
$$

Since $\sum{c}_{n}$ converges, $\sum\left|P_{n}-P_{n-1}\right|$ converges uniformly on $\Omega$, so $P_{n}\to{f}$ uniformly on $\Omega$. By **Theorem 11.1.2 (Weierstrass Theorem)**, $f$ is holomorphic on $\Omega$.

(ii) Take $N_{0}$ large enough that $\sum_{n>{}N_{0}}c_{n}<\frac{1}{2}$. For $n>{}N_{0}$, $\left|f_{n}\left(z\right)-1\right|\le{c}_{n}$ with $c_{n}$ small (by convergence) gives $f_{n}\left(z\right)\ne0$; also $\left|P_{n}\left(z\right)\right|\ge\prod_{k=1}^{n}\left(1-c_{k}\right)>0$ locally, so $f$ has no zeros on $\Omega$. Since $P_{n}\to{f}$ locally uniformly and $P_{n}\ne0$ locally, the logarithmic derivatives $\frac{P_{n}'}{P_{n}}\to\frac{f'}{f}$ locally uniformly. For finite products,

$$
\frac{P_{n}'\left(z\right)}{P_{n}\left(z\right)}=\sum_{k=1}^{n}\frac{f_{k}'\left(z\right)}{f_{k}\left(z\right)},
$$

and letting $n\to\infty$, $\frac{f'\left(z\right)}{f\left(z\right)}=\sum_{n=1}^{+\infty}\frac{f_{n}'\left(z\right)}{f_{n}\left(z\right)}$. $\blacksquare$

## 11.3-1

Let $\gamma$ be a smooth path in the unit disk $\mathbb{D}:=\left\{\left|z\right|<1\right\}$. Define the hyperbolic length of $\gamma$ as $L_{h}\left(\gamma\right)=\int_{\gamma}\frac{1}{1-\left|z\right|^{2}}\left|dz\right|$. Let $f:\mathbb{D}\to\mathbb{D}$ be holomorphic. Prove: (i) $L_{h}\left(f\left(\gamma\right)\right)\le{L}_{h}\left(\gamma\right)$; (ii) $L_{h}\left(f\left(\gamma\right)\right)=L_{h}\left(\gamma\right)$ if and only if $f\in\operatorname{auto}\left(\mathbb{D}\right)$.

### Solution to 11.3-1

(i) By the change of variables $\left|dz\right|\mapsto\left|f'\left(z\right)\right|\left|dz\right|$,

$$
L_{h}\left(f\left(\gamma\right)\right)=\int_{\gamma}\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\left|dz\right|.
$$

By the differential form of **Theorem 10.3.4 (Schwarz-Pick Lemma)**, $\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\le\frac{1}{1-\left|z\right|^{2}}$ for all $z\in\mathbb{D}$, so $L_{h}\left(f\left(\gamma\right)\right)\le{L}_{h}\left(\gamma\right)$.

(ii) If $f\in\operatorname{auto}\left(\mathbb{D}\right)$, the Schwarz-Pick differential form is an equality, so $L_{h}\left(f\left(\gamma\right)\right)=L_{h}\left(\gamma\right)$. Conversely, if $L_{h}\left(f\left(\gamma\right)\right)=L_{h}\left(\gamma\right)$, the pointwise inequality $\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\le\frac{1}{1-\left|z\right|^{2}}$ holds as equality along $\gamma$; by the equality condition of **Theorem 10.3.4 (Schwarz-Pick Lemma)**, $f$ is an automorphism on some open set containing $\gamma$, so $f\in\operatorname{auto}\left(\mathbb{D}\right)$. $\blacksquare$

## 11.3-2

Suppose that on a domain $G\subset\mathbb{C}\setminus\left\{0\right\}$, every nowhere-vanishing holomorphic function $f$ has a holomorphic logarithm $g$ on $G$ with $e^{g\left(z\right)}=f\left(z\right)$ for all $z\in{G}$. Prove: $G$ is simply connected.

### Solution to 11.3-2

Suppose $G$ is not simply connected; then $\widehat{\mathbb{C}}\setminus{G}$ has a bounded connected component $K$. Take $a\in{K}$. Since $G\subset\mathbb{C}\setminus\left\{0\right\}$ and $a\notin{G}$, $f\left(z\right)=z-a$ is holomorphic and nonzero on $G$. By assumption, there is holomorphic $g$ on $G$ with $e^{g\left(z\right)}=z-a$, so $g'\left(z\right)=\frac{1}{z-a}$ has an antiderivative $g$ on $G$.

But $K$ is a hole of $G$, so there is a closed curve $\gamma\subset{G}$ winding once around $a$; by Example 7.1.2, $\int_{\gamma}\frac{dz}{z-a}=2\pi{i}\ne0$. Since $g'$ has antiderivative $g$, $\int_{\gamma}g'\left(z\right)\,dz=0$, a contradiction. Hence $G$ is simply connected. $\blacksquare$

## 11.3-9

Let $\Omega\subset\mathbb{C}$ be a domain, $H\left(\Omega\right)$ the set of all holomorphic maps from $\Omega$ to the open unit disk $\mathbb{D}:=\left\{\left|z\right|<1\right\}$, fix $z_{0}\in\Omega$, and for $f\in{H}\left(\Omega\right)$ set $g_{f}\left(z\right)=\frac{f\left(z\right)-f\left(z_{0}\right)}{1-\overline{f\left(z_{0}\right)}f\left(z\right)}$. Prove:

(i) $g_{f}'\left(z_{0}\right)=f'\left(z_{0}\right)\left(1-\left|f\left(z_{0}\right)\right|^{2}\right)^{-1}$;

(ii) $\sup\left\{\left|f'\left(z_{0}\right)\right|:f\in{H}\left(\Omega\right),\,f\left(z_{0}\right)=0\right\}=\sup\left\{\left|f'\left(z_{0}\right)\right|:f\in{H}\left(\Omega\right)\right\}$;

(iii) if $h\in{H}\left(\Omega\right)$ satisfies $h'\left(z_{0}\right)=\sup\left\{\left|f'\left(z_{0}\right)\right|:f\in{H}\left(\Omega\right)\right\}$, then $h\left(z_{0}\right)=0$;

(iv) $\sup\left\{\operatorname{Re}f'\left(0\right):f\in{H}\left(\mathbb{D}\right)\right\}=\sup\left\{\left|f'\left(0\right)\right|:f\in{H}\left(\mathbb{D}\right)\right\}=1$;

(v) $h\in{H}\left(\mathbb{D}\right)$ satisfies $\operatorname{Re}h'\left(0\right)=1$ if and only if $h\left(z\right)=z$.

### Solution to 11.3-9

(i) $g_{f}=\phi_{f\left(z_{0}\right)}\circ{f}$, where $\phi_{a}\left(w\right)=\frac{w-a}{1-\overline{a}w}$. Since $\phi_{a}'\left(w\right)=\frac{1-\left|a\right|^{2}}{\left(1-\overline{a}w\right)^{2}}$, the chain rule gives

$$
g_{f}'\left(z_{0}\right)=\phi_{f\left(z_{0}\right)}'\left(f\left(z_{0}\right)\right)f'\left(z_{0}\right)=\frac{1-\left|f\left(z_{0}\right)\right|^{2}}{\left(1-\left|f\left(z_{0}\right)\right|^{2}\right)^{2}}f'\left(z_{0}\right)=\frac{f'\left(z_{0}\right)}{1-\left|f\left(z_{0}\right)\right|^{2}}.
$$

(ii) The left side $\le$ right side is immediate (the left set is a subset). Conversely, for any $f\in{H}\left(\Omega\right)$, $g_{f}\in{H}\left(\Omega\right)$ with $g_{f}\left(z_{0}\right)=0$, and by (i) $\left|g_{f}'\left(z_{0}\right)\right|=\left|f'\left(z_{0}\right)\right|\left(1-\left|f\left(z_{0}\right)\right|^{2}\right)^{-1}\ge\left|f'\left(z_{0}\right)\right|$. Hence $\left|f'\left(z_{0}\right)\right|\le\sup\left\{\left|h'\left(z_{0}\right)\right|:h\in{H}\left(\Omega\right),h\left(z_{0}\right)=0\right\}$; taking the supremum gives right $\le$ left. Equality.

(iii) Let $a=h\left(z_{0}\right)$. If $a\ne0$, then $g_{h}\in{H}\left(\Omega\right)$, $g_{h}\left(z_{0}\right)=0$, and $\left|g_{h}'\left(z_{0}\right)\right|=\left|h'\left(z_{0}\right)\right|\left(1-\left|a\right|^{2}\right)^{-1}>\left|h'\left(z_{0}\right)\right|=\sup$, a contradiction. Hence $h\left(z_{0}\right)=0$.

(iv) By **Theorem 10.3.1 (Schwarz Lemma)**, for $f\in{H}\left(\mathbb{D}\right)$ with $f\left(0\right)=0$, $\left|f'\left(0\right)\right|\le1$, and $f\left(z\right)=z$ attains $\left|f'\left(0\right)\right|=1$. By (ii), $\sup\left|f'\left(0\right)\right|=1$. Also $\operatorname{Re}f'\left(0\right)\le\left|f'\left(0\right)\right|\le1$, and $f\left(z\right)=z$ gives $\operatorname{Re}f'\left(0\right)=1$, so $\sup\operatorname{Re}f'\left(0\right)=1$. Both suprema are $1$.

(v) If $h\left(z\right)=z$, then $\operatorname{Re}h'\left(0\right)=1$. Conversely, if $\operatorname{Re}h'\left(0\right)=1$, then $\left|h'\left(0\right)\right|\ge1$, while **Theorem 10.3.1 (Schwarz Lemma)** gives $\left|h'\left(0\right)\right|\le1$, so $\left|h'\left(0\right)\right|=1$. Equality in Schwarz gives $h\left(z\right)=e^{i\theta}z$; and $\operatorname{Re}h'\left(0\right)=\cos\theta=1$, so $\theta=0$, i.e. $h\left(z\right)=z$. $\blacksquare$
