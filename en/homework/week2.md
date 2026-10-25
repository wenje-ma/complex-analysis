# Assignment 2

> **Definition 2.1.2** (Reparametrization of a Path)<br>A path $\gamma_{1}:\left[a_{1},b_{1}\right]\to\mathbb{C}$ is called a reparametrization of a path $\gamma_{2}:\left[a_{2},b_{2}\right]\to\mathbb{C}$ if there exists a monotonically increasing function $\tau:\left[a_{1},b_{1}\right]\to\left[a_{2},b_{2}\right]$ satisfying $\tau\left(a_{1}\right)=a_{2}$, $\tau\left(b_{1}\right)=b_{2}$, such that for any $t\in\left[a_{1},b_{1}\right]$ one has $\gamma_{1}\left(t\right)=\gamma_{2}\left(\tau\left(t\right)\right)$; if $\tau$ is discontinuous at some point $\bar{t}$, i.e. $\tau\left(\bar{t}-0\right)< \tau\left(\bar{t}+0\right)$, it is further required that $\gamma_{2}$ be constant on the interval $\left[\tau\left(\bar{t}-0\right),\tau\left(\bar{t}+0\right)\right]$.

> **Definition 2.1.4** (Curve)<br>An equivalence class of paths under reparametrization is called a curve.

> **Definition 2.2.4** (Domain)<br>A set $D\subset\mathbb{C}$ (or $\overline{\mathbb{C}}$) is called a domain if it has the following two properties: (i-1) $D$ is open; (i-2) path-connectedness, i.e. for any $a,b\in D$ there exists a path lying in $D$ with endpoints $a,b$.

> **Theorem 2.2.6** (Jordan Curve Theorem)<br>Any Jordan closed curve in the complex plane divides the whole plane into two disjoint domains: a bounded one called its interior and an unbounded one called its exterior.

> **Definition 2.2.7** (Simply and Multiply Connectedness)<br>Let $D$ be a domain in the complex plane $\mathbb{C}$. $D$ is called simply connected if the interior of every Jordan closed curve lying in $D$ is contained in $D$; otherwise it is called multiply connected.

> **Definition 2.4.1** (Limit of a Function along a Set)<br>Let the function $f$ be defined on a set $M\subset\overline{\mathbb{C}}$, and let $a\in\overline{\mathbb{C}}$ be a limit point of $M$. $A\in\mathbb{C}$ is called the limit of $f$ as $z$ tends to $a$ along $M$, denoted $\lim_{z\to a,\ z\in M}f\left(z\right)=A$, if for any $\varepsilon> 0$ there exists $\delta> 0$ such that for any $z\in M$, whenever $0< \rho\left(z,a\right)< \delta$ one has $\rho\left(f\left(z\right),A\right)< \varepsilon$.

> **Definition 2.4.2** (Boundedness and Continuity of a Function)<br>If there exists $C> 0$ such that $\forall z\in M$ one has $\left|f\left(z\right)\right|\le C$, then $f$ is said to be bounded on $M$; if $\lim_{z\to a,\ z\in M}f\left(z\right)=f\left(a\right)$, then $f$ is said to be continuous at the point $a$ (along $M$); if it is continuous for $\forall a\in M$, then $f$ is said to be continuous on $M$.

### Problem 1

(Problem 2.5-2) Let the function $f$ be uniformly continuous on a domain $D$. Prove: $\forall z_{0}\in\partial D$, the limit $\lim_{z\to z_{0},\ z\in D}f\left(z\right)$ exists.

### Solution to Problem 1

First we show that the images of any sequence in $D$ converging to $z_{0}$ converge. Take any sequence $\left\{z_{n}\right\}$ in $D$ with $z_{n}\to z_{0}$. Since $f$ is uniformly continuous on $D$, for any $\varepsilon> 0$ there exists $\delta> 0$ such that whenever $z,w\in D$ and $\left|z-w\right|< \delta$, one has $\left|f\left(z\right)-f\left(w\right)\right|< \varepsilon$. Also $\left\{z_{n}\right\}$ is a Cauchy sequence, so there exists $N$ such that whenever $m,n\ge N$, $\left|z_{m}-z_{n}\right|< \delta$, and hence $\left|f\left(z_{m}\right)-f\left(z_{n}\right)\right|< \varepsilon$. Therefore $\left\{f\left(z_{n}\right)\right\}$ is a Cauchy sequence and converges in $\mathbb{C}$.

Next we show that the limit does not depend on the choice of sequence. Let $z_{n},z_{n}'\in D$, $z_{n}\to z_{0}$, $z_{n}'\to z_{0}$, and $f\left(z_{n}\right)\to L$, $f\left(z_{n}'\right)\to L'$. Construct the interleaved sequence $z_{1},z_{1}',z_{2},z_{2}',\cdots$, which still converges to $z_{0}$, so its image converges; but it has two subsequences converging to $L$ and $L'$ respectively, hence $L=L'$.

In summary, the limit $\lim_{z\to z_{0},\ z\in D}f\left(z\right)$ exists. $\blacksquare$

### Problem 2

(Problem 2.5-4) Partition the following paths into reparametrization equivalence classes:

(i) $e^{2\pi it}$, $t\in\left[0,1\right]$; (ii) $e^{4\pi it}$, $t\in\left[0,1\right]$; (iii) $e^{-2\pi it}$, $t\in\left[0,1\right]$; (iv) $e^{2\pi i\sin t}$, $t\in\left[0,\frac{\pi}{6}\right]$; (v) $e^{\pi i\sin t}$, $t\in\left[0,2\pi\right]$.

### Solution to Problem 2

By **Definition 2.1.2 (Reparametrization of a Path)** and **Definition 2.1.4 (Curve)**, two paths are reparametrization equivalent if and only if, under a monotonically increasing parameter change, they have the same image, the same endpoints, and the same "direction of travel" (orientation and number of windings unchanged). We analyze each:

(i) start point $1$, end point $1$, winding counterclockwise once around the unit circle;

(ii) start point $1$, end point $1$, winding counterclockwise twice around the unit circle;

(iii) start point $1$, end point $1$, winding clockwise once around the unit circle;

(iv) start point $1$, end point $e^{2\pi i\cdot\frac{1}{2}}=e^{\pi i}=-1$; since $\sin t$ is monotonically increasing on $\left[0,\frac{\pi}{6}\right]$, this path goes counterclockwise along the unit circle from $1$ to $-1$, i.e. half a turn;

(v) start point $1$, end point $1$. On $\left[0,\pi\right]$, $\sin t$ goes from $0$ up to $1$ and back down to $0$, so the point goes counterclockwise from $1$ to $-1$ and back to $1$; on $\left[\pi,2\pi\right]$, $\sin t$ goes from $0$ down to $-1$ and back up to $0$, so the point goes clockwise from $1$ to $-1$ and back to $1$. Hence it is a closed path that oscillates back and forth.

Comparing equivalences: (i) and (iii) have opposite orientations and are not equivalent; (i) and (ii) have different winding numbers and are not equivalent; (iv) is not closed (start $1$, end $-1$) and is not equivalent to any closed path; the trajectory of (v) is an oscillation, different from the full circles of (i)(ii)(iii) and from the half circle of (iv). Hence the five paths belong to five distinct reparametrization equivalence classes. $\blacksquare$

### Problem 3

(Problem 2.5-6) Consider the map $f\left(z\right)=z^{3}$; express it as (1) a Cartesian representation and (2) a polar representation; sketch the image of the ellipse $\left\{z=x+iy:\frac{x^{2}}{2}+y^{2}=1\right\}$ under this map.

### Solution to Problem 3

(1) Cartesian representation: let $z=x+iy$; by **Definition 1.2.2 (Polar Form of a Complex Number)** and the binomial expansion,

$$
\begin{aligned}&\quad\;f\left(z\right)\\
&=\left(x+iy\right)^{3}\\
&=x^{3}+3x^{2}\left(iy\right)+3x\left(iy\right)^{2}+\left(iy\right)^{3}\\
&=x^{3}-3xy^{2}+i\left(3x^{2}y-y^{3}\right).
\end{aligned}
$$

(2) Polar representation: let $z=re^{i\theta}$; then

$$
f\left(z\right)=r^{3}e^{3i\theta}=r^{3}\left(\cos3\theta+i\sin3\theta\right).
$$

The ellipse $\frac{x^{2}}{2}+y^{2}=1$ can be parametrized as $x=\sqrt{2}\cos\theta$, $y=\sin\theta$, $\theta\in\left[0,2\pi\right]$, i.e. $z\left(\theta\right)=\sqrt{2}\cos\theta+i\sin\theta$. Its image is $f\left(z\left(\theta\right)\right)=\left(\sqrt{2}\cos\theta+i\sin\theta\right)^{3}$. Writing $c=\cos\theta$, $s=\sin\theta$ and expanding,

$$
\begin{aligned}&\quad\;f\left(z\left(\theta\right)\right)\\
&=\left(2\sqrt{2}c^{3}-3\sqrt{2}cs^{2}\right)+i\left(6c^{2}s-s^{3}\right)\\
&=\left(2\sqrt{2}\cos^{3}\theta-3\sqrt{2}\cos\theta\sin^{2}\theta\right)+i\left(6\cos^{2}\theta\sin\theta-\sin^{3}\theta\right).
\end{aligned}
$$

From the polar representation, the argument of $z^{3}$ is $3$ times the argument of $z$; as $\theta$ sweeps through $\left[0,2\pi\right]$, the argument of the image point sweeps through $\left[0,6\pi\right]$, so the image is a closed curve winding three times around the origin and symmetric about the origin. $\blacksquare$

### Problem 4

(Problem 2.5-8) Let $K\subset\mathbb{C}$ be a bounded connected closed set. Prove: for any $\varepsilon> 0$, there exists a Jordan closed curve $\gamma$ such that $K$ is contained in the interior of $\gamma$ and $\operatorname{dist}\left(K,\gamma\right)< \varepsilon$.

### Solution to Problem 4

$K$ is bounded and closed, hence compact. Choose $\eta> 0$ to be determined, and let $K_{\eta}=\left\{z\in\mathbb{C}:\operatorname{dist}\left(z,K\right)\le\eta\right\}$ be the closed $\eta$-neighborhood of $K$. $K_{\eta}$ is still compact, and $K\subset K_{\eta}^{\circ}$ (i.e. $K$ lies in the interior of $K_{\eta}$), because for each $k\in K$ there is an open disk centered at $k$ contained in $K_{\eta}$.

Cover the complex plane with a square grid of side length $\delta$, and take the union of all closed squares intersecting $K_{\eta}$ to form a set $P$. Since $K_{\eta}$ is compact, only finitely many squares intersect it, so $P$ is a union of finitely many closed squares. Also $K_{\eta}$ is connected (since $K$ is connected, its $\eta$-tube neighborhood is connected); when $\delta$ is sufficiently small, these squares are connected in sequence along $K_{\eta}$, so $P$ is connected. Take the outer boundary of $P$, $\gamma=\partial_{\text{外}}P$ (the simple closed polygonal line formed by the outermost square edges); then $\gamma$ is a Jordan closed curve (**Theorem 2.2.6 (Jordan Curve Theorem)**).

Since $P\supset K_{\eta}\supset K$ and $K_{\eta}\subset P^{\circ}$, $K$ is contained in the interior of $\gamma$. For any square in $P$, since it contains some point of $K_{\eta}$, the distance from any point on it to $K_{\eta}$ is at most the diagonal of the square $\sqrt{2}\,\delta$, and hence the distance to $K$ is at most $\sqrt{2}\,\delta+\eta$. In particular, for any $z\in\gamma\subset P$,

$$
\operatorname{dist}\left(z,K\right)\le\sqrt{2}\,\delta+\eta,
$$

so $\operatorname{dist}\left(K,\gamma\right)\le\sqrt{2}\,\delta+\eta$. Taking $\delta< \frac{\varepsilon}{2\sqrt{2}}$, $\eta< \frac{\varepsilon}{2}$, we get $\operatorname{dist}\left(K,\gamma\right)< \varepsilon$. $\blacksquare$

### Problem 5

(Problem 2.5-10) Give an example of a domain $D$ in $\mathbb{C}$ such that $\mathbb{C}\setminus D$ is connected but $D$ is not simply connected.

### Solution to Problem 5

Take the exterior of the closed unit disk

$$
D=\left\{z\in\mathbb{C}:\left|z\right|> 1\right\}.
$$

First verify that $D$ is a domain (**Definition 2.2.4 (Domain)**): $D$ is open (the open set $\left\{\left|z\right|> 1\right\}$); and for any $a,b\in D$, there exists $R> \max\left\{\left|a\right|,\left|b\right|\right\}$; take an arc $\gamma_{1}$ connecting $a$ to a point of modulus $R$, an arc $\gamma_{2}$ along the circle $\left|z\right|=R$, and an arc $\gamma_{3}$ connecting back to $b$; all three segments lie in $D$, so $D$ is path-connected. Hence $D$ is a domain.

Next, $\mathbb{C}\setminus D=\left\{z\in\mathbb{C}:\left|z\right|\le1\right\}$ is the closed unit disk, which is clearly connected.

Finally, $D$ is not simply connected: the circle $\gamma\left(t\right)=2e^{it}$, $t\in\left[0,2\pi\right]$, lies in $D$ and is a Jordan closed curve; its interior $\left\{\left|z\right|< 2\right\}$ contains the closed unit disk $\left\{\left|z\right|\le1\right\}\subset\mathbb{C}\setminus D$, so $\left\{\left|z\right|< 2\right\}\not\subset D$. By **Definition 2.2.7 (Simply and Multiply Connectedness)**, $D$ is not simply connected.

In summary, $D=\left\{z:\left|z\right|> 1\right\}$ satisfies the requirement. $\blacksquare$
