# week2

> **Definition 2.1.2 (Reparametrization of a Path)**<br>A path $\gamma_{1}:\left[a_{1},b_{1}\right]\to\mathbb{C}$ is a reparametrization of $\gamma_{2}:\left[a_{2},b_{2}\right]\to\mathbb{C}$ if there is a monotonically increasing function $\tau:\left[a_{1},b_{1}\right]\to\left[a_{2},b_{2}\right]$ with $\tau\left(a_{1}\right)=a_{2}$, $\tau\left(b_{1}\right)=b_{2}$, such that $\gamma_{1}\left(t\right)=\gamma_{2}\left(\tau\left(t\right)\right)$ for all $t\in\left[a_{1},b_{1}\right]$; if $\tau$ has a jump discontinuity at $\overline{t}$, i.e. $\tau\left(\overline{t}-0\right)< \tau\left(\overline{t}+0\right)$, then $\gamma_{2}$ must be constant on the interval $\left[\tau\left(\overline{t}-0\right),\tau\left(\overline{t}+0\right)\right]$.

> **Definition 2.1.4 (Curve)**<br>An equivalence class of paths under reparametrization is called a curve.

> **Definition 2.2.4 (Domain)**<br>A set $D\subset\mathbb{C}$ (or $\overline{\mathbb{C}}$) is called a domain if: (i-1) $D$ is open; (i-2) $D$ is path-connected, i.e. for any $a,b\in D$ there is a path in $D$ with endpoints $a,b$.

> **Theorem 2.2.6 (Jordan Curve Theorem)**<br>Every Jordan curve in the complex plane divides the plane into two disjoint domains: a bounded one called its interior, and an unbounded one called its exterior.

> **Definition 2.2.7 (Simply Connected and Multiply Connected)**<br>A domain $D\subset\mathbb{C}$ is called simply connected if the interior of every Jordan curve in $D$ is contained in $D$; otherwise it is multiply connected.

> **Definition 2.4.1 (Limit of a Function Along a Set)**<br>Let $f$ be defined on $M\subset\overline{\mathbb{C}}$, and let $a\in\overline{\mathbb{C}}$ be a limit point of $M$. We say $A\in\mathbb{C}$ is the limit of $f$ as $z\to a$ along $M$, written $\lim_{z\to a,\ z\in M}f\left(z\right)=A$, if for every $\varepsilon> 0$ there exists $\delta> 0$ such that for all $z\in M$, $0< \rho\left(z,a\right)< \delta$ implies $\rho\left(f\left(z\right),A\right)< \varepsilon$.

> **Definition 2.4.2 (Boundedness and Continuity)**<br>If there exists $C> 0$ such that $\left|f\left(z\right)\right|\le C$ for all $z\in M$, then $f$ is bounded on $M$; if $\lim_{z\to a,\ z\in M}f\left(z\right)=f\left(a\right)$, then $f$ is continuous at $a$ (along $M$); if $f$ is continuous at every $a\in M$, then $f$ is continuous on $M$.

---

## 2.5-2

Let $f$ be uniformly continuous on a domain $D$. Prove: for every $z_{0}\in\partial D$, the limit $\lim_{z\to z_{0},\ z\in D}f\left(z\right)$ exists.

### Solution 2.5-2

First show that the image of any sequence in $D$ converging to $z_{0}$ converges. Take any sequence $\left\{z_{n}\right\}$ in $D$ with $z_{n}\to z_{0}$. Since $f$ is uniformly continuous on $D$, for any $\varepsilon> 0$ there exists $\delta> 0$ such that $\left|z-w\right|< \delta$ implies $\left|f\left(z\right)-f\left(w\right)\right|< \varepsilon$. Since $\left\{z_{n}\right\}$ is Cauchy, there exists $N$ such that $m,n\ge N$ implies $\left|z_{m}-z_{n}\right|< \delta$, and hence $\left|f\left(z_{m}\right)-f\left(z_{n}\right)\right|< \varepsilon$. Thus $\left\{f\left(z_{n}\right)\right\}$ is Cauchy and converges in $\mathbb{C}$.

Next show the limit is independent of the sequence. Let $z_{n},z_{n}'\in D$ with $z_{n}\to z_{0}$, $z_{n}'\to z_{0}$, and $f\left(z_{n}\right)\to L$, $f\left(z_{n}'\right)\to L'$. Construct the interleaved sequence $z_{1},z_{1}',z_{2},z_{2}',\cdots$, which still converges to $z_{0}$, so its image converges; but its two subsequences converge to $L$ and $L'$ respectively, hence $L=L'$.

Therefore the limit $\lim_{z\to z_{0},\ z\in D}f\left(z\right)$ exists. $\blacksquare$

---

## 2.5-4

Classify the following paths into reparametrization equivalence classes:

(i) $e^{2\pi it}$, $t\in\left[0,1\right]$; (ii) $e^{4\pi it}$, $t\in\left[0,1\right]$; (iii) $e^{-2\pi it}$, $t\in\left[0,1\right]$; (iv) $e^{2\pi i\sin t}$, $t\in\left[0,\frac{\pi}{6}\right]$; (v) $e^{\pi i\sin t}$, $t\in\left[0,2\pi\right]$.

### Solution 2.5-4

By **Definition 2.1.2 (Reparametrization of a Path)** and **Definition 2.1.4 (Curve)**, two paths are reparametrization equivalent if and only if, under a monotonically increasing parameter change, their images coincide with the same start/end points and the same traversal direction (orientation and winding number preserved). Analyze each:

(i) Start $1$, end $1$, counterclockwise one loop around the unit circle;

(ii) Start $1$, end $1$, counterclockwise two loops;

(iii) Start $1$, end $1$, clockwise one loop;

(iv) Start $1$, end $e^{2\pi i\cdot\frac{1}{2}}=e^{\pi i}=-1$; since $\sin t$ is increasing on $\left[0,\frac{\pi}{6}\right]$, this path goes counterclockwise from $1$ to $-1$, i.e. half a loop;

(v) Start $1$, end $1$. On $\left[0,\pi\right]$, $\sin t$ goes from $0$ to $1$ and back to $0$, so the point goes counterclockwise from $1$ to $-1$ and back to $1$; on $\left[\pi,2\pi\right]$, $\sin t$ goes from $0$ to $-1$ and back to $0$, so the point goes clockwise from $1$ to $-1$ and back to $1$. This is an oscillating closed path.

Equivalence: (i) and (iii) have opposite orientation, not equivalent; (i) and (ii) have different winding numbers, not equivalent; (iv) is not closed (start $1$, end $-1$), not equivalent to any closed path; (v) oscillates, unlike the full loops of (i)(ii)(iii) or the half loop of (iv). Thus all five paths belong to five distinct equivalence classes. $\blacksquare$

---

## 2.5-6

Consider the map $f\left(z\right)=z^{3}$. Express it in (1) Cartesian form and (2) polar form; sketch the image of the ellipse $\left\{z=x+iy:\frac{x^{2}}{2}+y^{2}=1\right\}$ under this map.

### Solution 2.5-6

(1) Cartesian form: let $z=x+iy$; by binomial expansion,

$$
f\left(z\right)=\left(x+iy\right)^{3}=x^{3}+3x^{2}\left(iy\right)+3x\left(iy\right)^{2}+\left(iy\right)^{3}=x^{3}-3xy^{2}+i\left(3x^{2}y-y^{3}\right).
$$

(2) Polar form: let $z=re^{i\theta}$; then

$$
f\left(z\right)=r^{3}e^{3i\theta}=r^{3}\left(\cos3\theta+i\sin3\theta\right).
$$

The ellipse $\frac{x^{2}}{2}+y^{2}=1$ is parametrized by $x=\sqrt{2}\cos\theta$, $y=\sin\theta$, $\theta\in\left[0,2\pi\right]$, i.e. $z\left(\theta\right)=\sqrt{2}\cos\theta+i\sin\theta$. Its image is $f\left(z\left(\theta\right)\right)=\left(\sqrt{2}\cos\theta+i\sin\theta\right)^{3}$. Letting $c=\cos\theta$, $s=\sin\theta$,

$$
f\left(z\left(\theta\right)\right)=\left(2\sqrt{2}c^{3}-3\sqrt{2}cs^{2}\right)+i\left(6c^{2}s-s^{3}\right)=\left(2\sqrt{2}\cos^{3}\theta-3\sqrt{2}\cos\theta\sin^{2}\theta\right)+i\left(6\cos^{2}\theta\sin\theta-\sin^{3}\theta\right).
$$

From the polar form, the argument of $z^{3}$ is three times the argument of $z$; as $\theta$ sweeps $\left[0,2\pi\right]$, the image argument sweeps $\left[0,6\pi\right]$, so the image is a closed curve winding three times around the origin, symmetric about the origin. $\blacksquare$

---

## 2.5-8

Let $K\subset\mathbb{C}$ be a bounded connected closed set. Prove: for any $\varepsilon> 0$, there exists a Jordan curve $\gamma$ such that $K$ lies in the interior of $\gamma$ and $\operatorname{dist}\left(K,\gamma\right)< \varepsilon$.

### Solution 2.5-8

$K$ is bounded and closed, hence compact. Choose $\eta> 0$ to be determined, and let $K_{\eta}=\left\{z\in\mathbb{C}:\operatorname{dist}\left(z,K\right)\le\eta\right\}$ be the closed $\eta$-neighborhood of $K$. $K_{\eta}$ is compact, and $K\subset K_{\eta}^{\circ}$ (i.e. $K$ lies in the interior of $K_{\eta}$), since for each $k\in K$ there is an open disk centered at $k$ contained in $K_{\eta}$.

Cover the plane by a square grid of side length $\delta$, and let $P$ be the union of all closed squares intersecting $K_{\eta}$. Since $K_{\eta}$ is compact, only finitely many squares intersect it, so $P$ is a finite union of closed squares. Since $K_{\eta}$ is connected (the $\eta$-tubular neighborhood of a connected set is connected), for small enough $\delta$ these squares join along $K_{\eta}$, so $P$ is connected. Take the outer boundary $\gamma=\partial_{\text{outer}}P$ (the simple closed polygon formed by the outermost square edges); then $\gamma$ is a Jordan curve (**Theorem 2.2.6 (Jordan Curve Theorem)**).

Since $P\supset K_{\eta}\supset K$ and $K_{\eta}\subset P^{\circ}$, $K$ lies in the interior of $\gamma$. For any square in $P$, since it contains a point of $K_{\eta}$, any point on it is within the diagonal length $\sqrt{2}\,\delta$ of $K_{\eta}$, hence within $\sqrt{2}\,\delta+\eta$ of $K$. In particular, for any $z\in\gamma\subset P$,

$$
\operatorname{dist}\left(z,K\right)\le\sqrt{2}\,\delta+\eta,
$$

so $\operatorname{dist}\left(K,\gamma\right)\le\sqrt{2}\,\delta+\eta$. Choose $\delta< \frac{\varepsilon}{2\sqrt{2}}$, $\eta< \frac{\varepsilon}{2}$, to get $\operatorname{dist}\left(K,\gamma\right)< \varepsilon$. $\blacksquare$

---

## 2.5-10

Give an example of a domain $D\subset\mathbb{C}$ such that $\mathbb{C}\setminus D$ is connected but $D$ is not simply connected.

### Solution 2.5-10

Take the exterior of the closed unit disk

$$
D=\left\{z\in\mathbb{C}:\left|z\right|> 1\right\}.
$$

First verify $D$ is a domain (**Definition 2.2.4 (Domain)**): $D$ is open (the set $\left\{\left|z\right|> 1\right\}$ is open); and for any $a,b\in D$, there exists $R> \max\left\{\left|a\right|,\left|b\right|\right\}$; take an arc $\gamma_{1}$ connecting $a$ to a point of modulus $R$, an arc $\gamma_{2}$ along the circle $\left|z\right|=R$, and an arc $\gamma_{3}$ connecting back to $b$; all three segments lie in $D$, so $D$ is path-connected. Hence $D$ is a domain.

Next, $\mathbb{C}\setminus D=\left\{z\in\mathbb{C}:\left|z\right|\le1\right\}$ is the closed unit disk, clearly connected.

Finally, $D$ is not simply connected: the circle $\gamma\left(t\right)=2e^{it}$, $t\in\left[0,2\pi\right]$, lies in $D$ and is a Jordan curve, and its interior $\left\{\left|z\right|< 2\right\}$ contains the closed unit disk $\left\{\left|z\right|\le1\right\}\subset\mathbb{C}\setminus D$, so $\left\{\left|z\right|< 2\right\}\not\subset D$. By **Definition 2.2.7 (Simply Connected and Multiply Connected)**, $D$ is not simply connected.

Thus $D=\left\{z:\left|z\right|> 1\right\}$ satisfies the requirements. $\blacksquare$
