# week1

> **Definition 1.1.5 (Real Part, Imaginary Part, Conjugate, Modulus)**
> 
> For $z=x+iy$, $x$ is the real part and $y$ is the imaginary part, written $x=\operatorname{Re}z$, $y=\operatorname{Im}z$; the conjugate of $z$ is $\overline{z}=x-iy$; the modulus of $z$ is

$$
\left|z\right|=\sqrt{x^{2}+y^{2}}.
$$

> **Definition 1.2.2 (Polar Form of a Complex Number)**
> 
> The polar form of a nonzero complex number $z=x+iy$ is $z=re^{i\phi}$, where $r=\left|z\right|$, $\phi$ is the argument $\operatorname{Arg}z$ (determined up to an integer multiple of $2\pi$), and $e^{i\phi}=\cos\phi+i\sin\phi$.

> **Definition 1.3.1 (Stereographic Projection)**
> 
> On the unit sphere $S:\xi^{2}+\eta^{2}+\zeta^{2}=1$, the point $z=\left(x,y\right)$ in the complex plane corresponds to

$$
Z=\left(\xi,\eta,\zeta\right),\quad\xi=\frac{2x}{1+\left|z\right|^{2}},\,\eta=\frac{2y}{1+\left|z\right|^{2}},\,\zeta=\frac{\left|z\right|^{2}-1}{1+\left|z\right|^{2}},
$$
establishing a bijection between $\mathbb{C}$ and $S\setminus\left\{N\right\}$ (the sphere minus the north pole).

> **Definition 1.4.2 (Chordal Metric)**
> 
> For $z,w\in\mathbb{C}$, the chordal distance is

$$
\rho\left(z,w\right)=\frac{2\left|z-w\right|}{\sqrt{1+\left|z\right|^{2}}\sqrt{1+\left|w\right|^{2}}}.
$$

> **Definition 2.1.2 (Reparametrization of a Path)**
> 
> A path $\gamma_{1}:\left[a_{1},b_{1}\right]\to\mathbb{C}$ is a reparametrization of $\gamma_{2}:\left[a_{2},b_{2}\right]\to\mathbb{C}$ if there is a monotonically increasing function $\tau:\left[a_{1},b_{1}\right]\to\left[a_{2},b_{2}\right]$ with $\tau\left(a_{1}\right)=a_{2}$, $\tau\left(b_{1}\right)=b_{2}$, such that $\gamma_{1}\left(t\right)=\gamma_{2}\left(\tau\left(t\right)\right)$ for all $t\in\left[a_{1},b_{1}\right]$; if $\tau$ has a jump discontinuity at $\overline{t}$, i.e. $\tau\left(\overline{t}-0\right)<\tau\left(\overline{t}+0\right)$, then $\gamma_{2}$ must be constant on the interval $\left[\tau\left(\overline{t}-0\right),\tau\left(\overline{t}+0\right)\right]$.

> **Definition 2.1.4 (Curve)**
> 
> An equivalence class of paths under reparametrization is called a curve.

> **Definition 2.2.4 (Domain)**
> 
> A set $D\subset\mathbb{C}$ (or $\overline{\mathbb{C}}$) is called a domain if: (i-1) $D$ is open; (i-2) $D$ is path-connected, i.e. for any $a,b\in{D}$ there is a path in $D$ with endpoints $a,b$.

> **Theorem 2.2.6 (Jordan Curve Theorem)**
> 
> Every Jordan curve in the complex plane divides the plane into two disjoint domains: a bounded one called its interior, and an unbounded one called its exterior.

> **Definition 2.2.7 (Simply Connected and Multiply Connected)**
> 
> A domain $D\subset\mathbb{C}$ is called simply connected if the interior of every Jordan curve in $D$ is contained in $D$; otherwise it is multiply connected.

> **Definition 2.4.1 (Limit of a Function Along a Set)**
> 
> Let $f$ be defined on $M\subset\overline{\mathbb{C}}$, and let $a\in\overline{\mathbb{C}}$ be a limit point of $M$. We say $A\in\mathbb{C}$ is the limit of $f$ as $z\to{a}$ along $M$, written $\lim_{z\to{a},\,z\in{M}}f\left(z\right)=A$, if for every $\varepsilon>0$ there exists $\delta>0$ such that for all $z\in{M}$, $0<\rho\left(z,a\right)<\delta$ implies $\rho\left(f\left(z\right),A\right)<\varepsilon$.

> **Definition 2.4.2 (Boundedness and Continuity)**
> 
> If there exists $C>0$ such that $\left|f\left(z\right)\right|\le{C}$ for all $z\in{M}$, then $f$ is bounded on $M$; if $\lim_{z\to{a},\,z\in{M}}f\left(z\right)=f\left(a\right)$, then $f$ is continuous at $a$ (along $M$); if $f$ is continuous at every $a\in{M}$, then $f$ is continuous on $M$.

## 1.5-1

Prove: if $\left|z\right|=1$ and $z\ne\pm1$, then

$$
\operatorname{Arg}\frac{z-1}{z+1}=\frac{\pi}{2}\,\text{or}\,\frac{3\pi}{2}\quad\left(\bmod2\pi\right).
$$

### Solution to 1.5-1

Let $z=e^{i\theta}$; then $z\ne\pm1$ is equivalent to $\theta\ne0,\pi\,\left(\bmod2\pi\right)$. By **Definition 1.2.2 (Polar Form of a Complex Number)**,

$$
\frac{z-1}{z+1}=\frac{e^{i\theta}-1}{e^{i\theta}+1}=\frac{e^{i\theta/2}\left(e^{i\theta/2}-e^{-i\theta/2}\right)}{e^{i\theta/2}\left(e^{i\theta/2}+e^{-i\theta/2}\right)}=\frac{2i\sin\frac{\theta}{2}}{2\cos\frac{\theta}{2}}=i\tan\frac{\theta}{2}.
$$

Since $z\ne\pm1$, $\sin\frac{\theta}{2}\ne0$ and $\cos\frac{\theta}{2}\ne0$, so $\tan\frac{\theta}{2}\ne0$, and $\frac{z-1}{z+1}=i\tan\frac{\theta}{2}$ is a nonzero pure imaginary number. Its argument is $\frac{\pi}{2}$ when $\tan\frac{\theta}{2}>0$, and $\frac{3\pi}{2}$ when $\tan\frac{\theta}{2}<0$ (both modulo $2\pi$). This completes the proof. $\blacksquare$

## 1.5-3

Prove: if $z_{1},\cdots,z_{n}$ are nonzero complex numbers with $\sum_{k=1}^{n}\frac{1}{z_{k}}=0$, then for any line through the origin $z=0$, these points cannot all lie on one side of the line.

### Solution to 1.5-3

Proof by contradiction. Suppose there is a line $L$ through the origin such that all $z_{1},\cdots,z_{n}$ lie strictly on one side of $L$ (i.e. in one open half-plane bounded by $L$). After rotating coordinates, we may assume $L$ is the real axis and all $z_{k}$ lie in the upper half-plane: $\operatorname{Im}z_{k}>0$, $k=1,\cdots,n$.

Since $z_{k}=x_{k}+iy_{k}\ne0$ and $y_{k}=\operatorname{Im}z_{k}>0$, using $\frac{1}{z_{k}}=\frac{\overline{z}_{k}}{\left|z_{k}\right|^{2}}$ from **Definition 1.1.5 (Real Part, Imaginary Part, Conjugate, Modulus)**, we get

$$
\operatorname{Im}\frac{1}{z_{k}}=\operatorname{Im}\frac{x_{k}-iy_{k}}{x_{k}^{2}+y_{k}^{2}}=-\frac{y_{k}}{x_{k}^{2}+y_{k}^{2}}<0.
$$

Thus

$$
\operatorname{Im}\sum_{k=1}^{n}\frac{1}{z_{k}}=\sum_{k=1}^{n}\operatorname{Im}\frac{1}{z_{k}}<0,
$$

which contradicts $\sum_{k=1}^{n}\frac{1}{z_{k}}=0$ (whose imaginary part is $0$). Hence these points cannot all lie on one side of a line through the origin. $\blacksquare$

## 1.5-5

Let $z_{1},\cdots,z_{n},w_{1},\cdots,w_{n}$ be complex numbers. Prove the following Lagrange identity:

$$
\left|\sum_{j=1}^{n}z_{j}\overline{w}_{j}\right|^{2}=\left(\sum_{j=1}^{n}\left|z_{j}\right|^{2}\right)\left(\sum_{j=1}^{n}\left|w_{j}\right|^{2}\right)-\sum_{1\le{j}<{}k\le{n}}\left|z_{j}\overline{w}_{k}-z_{k}\overline{w}_{j}\right|^{2}.
$$

### Solution to 1.5-5

Set $A=\sum_{j=1}^{n}z_{j}\overline{w}_{j}$. By the properties of conjugate and modulus (**Definition 1.1.5 (Real Part, Imaginary Part, Conjugate, Modulus)**),

$$
\left|A\right|^{2}=A\overline{A}=\sum_{j=1}^{n}\sum_{k=1}^{n}z_{j}\overline{w}_{j}\overline{z_{k}\overline{w}_{k}}=\sum_{j=1}^{n}\sum_{k=1}^{n}z_{j}\overline{z}_{k}\overline{w}_{j}w_{k}.
$$

Separate the diagonal terms $j=k$:

$$
\left|A\right|^{2}=\sum_{j=1}^{n}\left|z_{j}\right|^{2}\left|w_{j}\right|^{2}+\sum_{j\ne{k}}z_{j}\overline{z}_{k}\overline{w}_{j}w_{k}.
$$

On the other hand,

$$
\sum_{1\le{j}<{}k\le{n}}\left|z_{j}\overline{w}_{k}-z_{k}\overline{w}_{j}\right|^{2}=\sum_{j<{}k}\left(\left|z_{j}\right|^{2}\left|w_{k}\right|^{2}+\left|z_{k}\right|^{2}\left|w_{j}\right|^{2}-z_{j}\overline{w}_{k}\overline{z}_{k}w_{j}-\overline{z}_{j}w_{k}z_{k}\overline{w}_{j}\right),
$$

and

$$
\left(\sum_{j=1}^{n}\left|z_{j}\right|^{2}\right)\left(\sum_{k=1}^{n}\left|w_{k}\right|^{2}\right)=\sum_{j=1}^{n}\left|z_{j}\right|^{2}\left|w_{j}\right|^{2}+\sum_{j<{}k}\left(\left|z_{j}\right|^{2}\left|w_{k}\right|^{2}+\left|z_{k}\right|^{2}\left|w_{j}\right|^{2}\right).
$$

Subtracting:

$$
\left(\sum_{j=1}^{n}\left|z_{j}\right|^{2}\right)\left(\sum_{j=1}^{n}\left|w_{j}\right|^{2}\right)-\sum_{1\le{j}<{}k\le{n}}\left|z_{j}\overline{w}_{k}-z_{k}\overline{w}_{j}\right|^{2}=\sum_{j=1}^{n}\left|z_{j}\right|^{2}\left|w_{j}\right|^{2}+\sum_{j<{}k}\left(z_{j}\overline{w}_{k}\overline{z}_{k}w_{j}+\overline{z}_{j}w_{k}z_{k}\overline{w}_{j}\right)=\sum_{j=1}^{n}\left|z_{j}\right|^{2}\left|w_{j}\right|^{2}+\sum_{j<{}k}\left(z_{j}\overline{z}_{k}\overline{w}_{j}w_{k}+\overline{z}_{j}z_{k}w_{k}\overline{w}_{j}\right).
$$

The sum $\sum_{j<{}k}\left(z_{j}\overline{z}_{k}\overline{w}_{j}w_{k}+\overline{z}_{j}z_{k}w_{k}\overline{w}_{j}\right)=\sum_{j\ne{k}}z_{j}\overline{z}_{k}\overline{w}_{j}w_{k}$ (the $j<{}k$ and $k<{}j$ terms pair up), so the right side equals $\left|A\right|^{2}$. The Lagrange identity holds. $\blacksquare$

## 1.5-7

Let $\left\langle\cdot,\cdot\right\rangle$ be the standard inner product on $\mathbb{R}^{2}$, i.e. $\left\langle{X},Y\right\rangle=x_{1}y_{1}+x_{2}y_{2}$ ($X=\left(x_{1},x_{2}\right)\in\mathbb{R}^{2}$, $Y=\left(y_{1},y_{2}\right)\in\mathbb{R}^{2}$); let $\left(z,w\right)=z\overline{w}$ for $z,w\in\mathbb{C}$ be the Hermitian inner product on $\mathbb{C}$. Prove:

$$
\left\langle{z},w\right\rangle=\frac{1}{2}\left(\left(z,w\right)+\left(w,z\right)\right)=\operatorname{Re}\left(z,w\right).
$$

### Solution to 1.5-7

View $z=x_{1}+ix_{2}$ and $w=y_{1}+iy_{2}$ as vectors $X=\left(x_{1},x_{2}\right)$, $Y=\left(y_{1},y_{2}\right)$ in $\mathbb{R}^{2}$. By the definition of the standard inner product,

$$
\left\langle{z},w\right\rangle=\left\langle{X},Y\right\rangle=x_{1}y_{1}+x_{2}y_{2}.
$$

On the other hand, $\left(z,w\right)=z\overline{w}=\left(x_{1}+ix_{2}\right)\left(y_{1}-iy_{2}\right)=x_{1}y_{1}+x_{2}y_{2}+i\left(x_{2}y_{1}-x_{1}y_{2}\right)$, so

$$
\operatorname{Re}\left(z,w\right)=x_{1}y_{1}+x_{2}y_{2}=\left\langle{z},w\right\rangle.
$$

Since $\overline{\left(z,w\right)}=\overline{z\overline{w}}=\overline{z}w=\left(w,z\right)$,

$$
\frac{1}{2}\left(\left(z,w\right)+\left(w,z\right)\right)=\frac{1}{2}\left(\left(z,w\right)+\overline{\left(z,w\right)}\right)=\operatorname{Re}\left(z,w\right).
$$

Hence $\left\langle{z},w\right\rangle=\frac{1}{2}\left(\left(z,w\right)+\left(w,z\right)\right)=\operatorname{Re}\left(z,w\right)$. $\blacksquare$

## 1.5-9

(Spherical metric) For any $a,b\in\mathbb{C}$, let $A,B$ be their stereographic projections, and define

$$
\operatorname{dist}_{\sigma}\left(a,b\right)=\text{the~shortest~great-circle~arc~length~between~}A,B\text{~on~the~unit~sphere~}S.
$$

Prove: (i) $\operatorname{dist}_{\sigma}\left(a,b\right)=2\arctan\left|\frac{a-b}{1+\overline{a}b}\right|$; (ii) $\rho\left(a,b\right)=2\sin\frac{1}{2}\operatorname{dist}_{\sigma}\left(a,b\right)$; (iii) $\frac{2}{\pi}\operatorname{dist}_{\sigma}\left(a,b\right)\le\rho\left(a,b\right)\le\operatorname{dist}_{\sigma}\left(a,b\right)$, where $\rho$ is the chordal metric.

### Solution to 1.5-9

Let $d=\operatorname{dist}_{\sigma}\left(a,b\right)$. The unit sphere has radius $1$, so $d$ equals the central angle $\angle{A}OB$ ($O$ being the center), and the chord length $\left|AB\right|=2\sin\frac{d}{2}$. By the relation between stereographic projection and the chordal metric (**Definition 1.4.2 (Chordal Metric)**), $\left|AB\right|=\rho\left(a,b\right)$, so

$$
\rho\left(a,b\right)=\frac{2\left|a-b\right|}{\sqrt{1+\left|a\right|^{2}}\sqrt{1+\left|b\right|^{2}}}=2\sin\frac{d}{2}.
$$

This gives (ii).

Now prove (i). From the above,

$$
\sin\frac{d}{2}=\frac{\left|a-b\right|}{\sqrt{\left(1+\left|a\right|^{2}\right)\left(1+\left|b\right|^{2}\right)}}.
$$

Verify the identity

$$
\left(1+\left|a\right|^{2}\right)\left(1+\left|b\right|^{2}\right)=\left|1+\overline{a}b\right|^{2}+\left|a-b\right|^{2},
$$

so

$$
\sin\frac{d}{2}=\frac{\left|a-b\right|}{\sqrt{\left|1+\overline{a}b\right|^{2}+\left|a-b\right|^{2}}}=\frac{\left|\frac{a-b}{1+\overline{a}b}\right|}{\sqrt{1+\left|\frac{a-b}{1+\overline{a}b}\right|^{2}}}.
$$

Let $\phi=\arctan\left|\frac{a-b}{1+\overline{a}b}\right|\in\left[0,\frac{\pi}{2}\right)$; then

$$
\frac{\left|\frac{a-b}{1+\overline{a}b}\right|}{\sqrt{1+\left|\frac{a-b}{1+\overline{a}b}\right|^{2}}}=\frac{\tan\phi}{\sqrt{1+\tan^{2}\phi}}=\sin\phi.
$$

Hence $\sin\frac{d}{2}=\sin\phi$, where $\frac{d}{2},\phi\in\left[0,\frac{\pi}{2}\right]$, and sine is strictly increasing on this interval, so $\frac{d}{2}=\phi$, i.e. $d=2\arctan\left|\frac{a-b}{1+\overline{a}b}\right|$. (i) is proved.

Finally prove (iii). Let $t=\frac{d}{2}\in\left[0,\frac{\pi}{2}\right]$; then $\rho\left(a,b\right)=2\sin{t}$. Right inequality: since $\sin{t}\le{t}$, $\rho\left(a,b\right)=2\sin{t}\le2t=d=\operatorname{dist}_{\sigma}\left(a,b\right)$. Left inequality: the function $\frac{\sin{t}}{t}$ is decreasing on $\left(0,\frac{\pi}{2}\right]$ (its derivative $\frac{t\cos{t}-\sin{t}}{t^{2}}<0$), so for $t\in\left(0,\frac{\pi}{2}\right]$,

$$
\frac{\sin{t}}{t}\ge\frac{\sin\frac{\pi}{2}}{\frac{\pi}{2}}=\frac{2}{\pi},
$$

i.e. $\sin{t}\ge\frac{2t}{\pi}$, giving $\rho\left(a,b\right)=2\sin{t}\ge\frac{4t}{\pi}=\frac{2}{\pi}d=\frac{2}{\pi}\operatorname{dist}_{\sigma}\left(a,b\right)$. Combining gives (iii). $\blacksquare$

## 2.5-2

Let $f$ be uniformly continuous on a domain $D$. Prove: for every $z_{0}\in\partial{D}$, the limit $\lim_{z\to{z}_{0},\,z\in{D}}f\left(z\right)$ exists.

### Solution to 2.5-2

First show that the image of any sequence in $D$ converging to $z_{0}$ converges. Take any sequence $\left\{z_{n}\right\}$ in $D$ with $z_{n}\to{z}_{0}$. Since $f$ is uniformly continuous on $D$, for any $\varepsilon>0$ there exists $\delta>0$ such that $\left|z-w\right|<\delta$ implies $\left|f\left(z\right)-f\left(w\right)\right|<\varepsilon$. Since $\left\{z_{n}\right\}$ is Cauchy, there exists $N$ such that $m,n\ge{N}$ implies $\left|z_{m}-z_{n}\right|<\delta$, and hence $\left|f\left(z_{m}\right)-f\left(z_{n}\right)\right|<\varepsilon$. Thus $\left\{f\left(z_{n}\right)\right\}$ is Cauchy and converges in $\mathbb{C}$.

Next show the limit is independent of the sequence. Let $z_{n},z_{n}'\in{D}$ with $z_{n}\to{z}_{0}$, $z_{n}'\to{z}_{0}$, and $f\left(z_{n}\right)\to{L}$, $f\left(z_{n}'\right)\to{L}'$. Construct the interleaved sequence $z_{1},z_{1}',z_{2},z_{2}',\cdots$, which still converges to $z_{0}$, so its image converges; but its two subsequences converge to $L$ and $L'$ respectively, hence $L=L'$.

Therefore the limit $\lim_{z\to{z}_{0},\,z\in{D}}f\left(z\right)$ exists. $\blacksquare$

## 2.5-4

Classify the following paths into reparametrization equivalence classes:

(i) $e^{2\pi{i}t}$, $t\in\left[0,1\right]$; (ii) $e^{4\pi{i}t}$, $t\in\left[0,1\right]$; (iii) $e^{-2\pi{i}t}$, $t\in\left[0,1\right]$; (iv) $e^{2\pi{i}\sin{t}}$, $t\in\left[0,\frac{\pi}{6}\right]$; (v) $e^{\pi{i}\sin{t}}$, $t\in\left[0,2\pi\right]$.

### Solution to 2.5-4

By **Definition 2.1.2 (Reparametrization of a Path)** and **Definition 2.1.4 (Curve)**, two paths are reparametrization equivalent if and only if, under a monotonically increasing parameter change, their images coincide with the same start/end points and the same traversal direction (orientation and winding number preserved). Analyze each:

(i) Start $1$, end $1$, counterclockwise one loop around the unit circle;

(ii) Start $1$, end $1$, counterclockwise two loops;

(iii) Start $1$, end $1$, clockwise one loop;

(iv) Start $1$, end $e^{2\pi{i}\cdot\frac{1}{2}}=e^{\pi{i}}=-1$; since $\sin{t}$ is increasing on $\left[0,\frac{\pi}{6}\right]$, this path goes counterclockwise from $1$ to $-1$, i.e. half a loop;

(v) Start $1$, end $1$. On $\left[0,\pi\right]$, $\sin{t}$ goes from $0$ to $1$ and back to $0$, so the point goes counterclockwise from $1$ to $-1$ and back to $1$; on $\left[\pi,2\pi\right]$, $\sin{t}$ goes from $0$ to $-1$ and back to $0$, so the point goes clockwise from $1$ to $-1$ and back to $1$. This is an oscillating closed path.

Equivalence: (i) and (iii) have opposite orientation, not equivalent; (i) and (ii) have different winding numbers, not equivalent; (iv) is not closed (start $1$, end $-1$), not equivalent to any closed path; (v) oscillates, unlike the full loops of (i)(ii)(iii) or the half loop of (iv). Thus all five paths belong to five distinct equivalence classes. $\blacksquare$

## 2.5-6

Consider the map $f\left(z\right)=z^{3}$. Express it in (1) Cartesian form and (2) polar form; sketch the image of the ellipse $\left\{z=x+iy:\frac{x^{2}}{2}+y^{2}=1\right\}$ under this map.

### Solution to 2.5-6

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

## 2.5-8

Let $K\subset\mathbb{C}$ be a bounded connected closed set. Prove: for any $\varepsilon>0$, there exists a Jordan curve $\gamma$ such that $K$ lies in the interior of $\gamma$ and $\operatorname{dist}\left(K,\gamma\right)<\varepsilon$.

### Solution to 2.5-8

$K$ is bounded and closed, hence compact. Choose $\eta>0$ to be determined, and let $K_{\eta}=\left\{z\in\mathbb{C}:\operatorname{dist}\left(z,K\right)\le\eta\right\}$ be the closed $\eta$-neighborhood of $K$. $K_{\eta}$ is compact, and $K\subset{K}_{\eta}^{\circ}$ (i.e. $K$ lies in the interior of $K_{\eta}$), since for each $k\in{K}$ there is an open disk centered at $k$ contained in $K_{\eta}$.

Cover the plane by a square grid of side length $\delta$, and let $P$ be the union of all closed squares intersecting $K_{\eta}$. Since $K_{\eta}$ is compact, only finitely many squares intersect it, so $P$ is a finite union of closed squares. Since $K_{\eta}$ is connected (the $\eta$-tubular neighborhood of a connected set is connected), for small enough $\delta$ these squares join along $K_{\eta}$, so $P$ is connected. Take the outer boundary $\gamma=\partial_{\text{outer}}P$ (the simple closed polygon formed by the outermost square edges); then $\gamma$ is a Jordan curve (**Theorem 2.2.6 (Jordan Curve Theorem)**).

Since $P\supset{K}_{\eta}\supset{K}$ and $K_{\eta}\subset{P}^{\circ}$, $K$ lies in the interior of $\gamma$. For any square in $P$, since it contains a point of $K_{\eta}$, any point on it is within the diagonal length $\sqrt{2}\,\delta$ of $K_{\eta}$, hence within $\sqrt{2}\,\delta+\eta$ of $K$. In particular, for any $z\in\gamma\subset{P}$,

$$
\operatorname{dist}\left(z,K\right)\le\sqrt{2}\,\delta+\eta,
$$

so $\operatorname{dist}\left(K,\gamma\right)\le\sqrt{2}\,\delta+\eta$. Choose $\delta<\frac{\varepsilon}{2\sqrt{2}}$, $\eta<\frac{\varepsilon}{2}$, to get $\operatorname{dist}\left(K,\gamma\right)<\varepsilon$. $\blacksquare$
