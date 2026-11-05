# week3

> **Definition 4.1.2 (Conformal)**
> 
> $f$ is conformal at $z$ if it is holomorphic and univalent on a neighborhood of $z$ and $f'\left(z\right)\ne0$.

> **Theorem 4.1.5 (Criterion for Conformality)**
> 
> $f$ is conformal at $z$ if and only if $f$ is $\mathbb{C}$-differentiable at $z$ and $f'\left(z\right)\ne0$.

> **Definition 4.2.1 (Mobius Transformation)**
> 
> A function of the form

> **Theorem 4.3.4 (Circles Map to Circles)**
> 
> A Mobius transformation maps generalized circles (circles or lines) in the extended plane to generalized circles, and preserves angles of intersection.

> **Definition 4.4.1 (Univalent)**
> 
> $f$ is univalent on a domain $D$ if it is injective on $D$.

> **Theorem 4.4.2**
> 
> If $f$ is holomorphic at $z_{0}$ and $f'\left(z_{0}\right)=0$, then $f$ is not univalent on any neighborhood of $z_{0}$.

> **Theorem 5.1.2 (Fundamental Theorem of Algebra)**
> 
> Every polynomial of degree $n\ge1$ has at least one root in $\mathbb{C}$.

> **Proposition 5.3.1 (Exponential Function)**
> 
> (i) The exponential function $e^{z}$ is holomorphic on $\mathbb{C}$ and never vanishes; (iv) $e^{z}$ has minimal period $2\pi{i}$; (v) $e^{z}$ is univalent on a region if and only if the difference of any two distinct points in that region is not an integer multiple of $2\pi{i}$.

> **Definition 5.4.1 (Complex Sine and Cosine)**
> 
> For any $z\in\mathbb{C}$, the complex sine and cosine are defined by

$$
\cos{z}=\frac{e^{iz}+e^{-iz}}{2},\quad\sin{z}=\frac{e^{iz}-e^{-iz}}{2i},\quad{z}\in\mathbb{C}.
$$

> **Proposition 5.4.2 (Derivatives of Trigonometric Functions)**
> 
> $\sin{z},\cos{z}$ are holomorphic on $\mathbb{C}$, with $\left(\sin{z}\right)'=\cos{z}$, $\left(\cos{z}\right)'=-\sin{z}$.

> **Definition 6.1.1 (Continuous Branch of the Argument)**
> 
> A single-valued continuous function on a domain $D\subset\mathbb{C}\setminus\left\{0\right\}$ is called a continuous branch of $\operatorname{Arg}z$ if for every $z\in{D}$ there exists $k\in\mathbb{Z}$ such that $f\left(z\right)=\arg{z}+2k\pi$.

> **Definition 6.2.1 (Complex Logarithm)**
> 
> A complex number $w$ satisfying $e^{w}=z$ is called a logarithm of $z$, denoted $\operatorname{Ln}z$; it is infinitely many-valued.

> **Proposition 6.2.5 (Holomorphic Branches of the Logarithm)**
> 
> Any continuous branch of the logarithm on a domain $D\subset\mathbb{C}\setminus\left\{0\right\}$ is holomorphic, so a single-valued continuous branch of the logarithm is a holomorphic branch.

> **Definition 6.2.7 (Branch Points)**
> 
> The branch points of the multivalued function $\operatorname{Ln}z$ (or of power functions) are $0$ and $\infty$; single-valued branches can be defined along any cut joining them.

> **Definition 6.3.1 (Power Function)**
> 
> $z^{\alpha}=e^{\alpha\operatorname{Ln}z}$; on $\mathbb{C}\setminus\left(-\infty,0\right]$ take the principal branch, i.e. $z^{\alpha}=e^{\alpha\operatorname{Log}z}$.

> **Definition 7.1.1 (Path Integral)**
> 
> The integral of $f$ along a piecewise smooth path $\gamma:\left[a,b\right]\to\mathbb{C}$ is

$$
\int_{\gamma}f\,dz=\int_{a}^{b}f\left(\gamma\left(t\right)\right)\gamma'\left(t\right)\,dt.
$$

> **Definition 7.2.1 (Antiderivative)**
> 
> A holomorphic function $F$ on a domain $D$ is called an antiderivative of $f$ if $F'=f$ on $D$; $f$ has an antiderivative if and only if its integral along every closed path in $D$ is zero.

> **Theorem 7.2.3**
> 
> $\frac{1}{z}$ has an antiderivative on a domain $D\subset\mathbb{C}\setminus\left\{0\right\}$ if and only if $D$ admits a holomorphic branch of $\operatorname{Ln}z$.

## 4.5-16

Let $f=u\left(z\right)+iv\left(z\right)$ be holomorphic at $z_{0}\in\mathbb{C}$ with $f'\left(z_{0}\right)\ne0$. Prove: the level sets of $u$ and $v$ (sets of points where the function takes a given constant value) intersect at angle $\frac{\pi}{2}$ at $z_{0}$.

### Solution to 4.5-16

The tangent lines to the level sets of $u,v$ at $z_{0}$ are perpendicular to the gradients $\nabla{u}=\left(u_{x},u_{y}\right)$ and $\nabla{v}=\left(v_{x},v_{y}\right)$. Since $f$ is holomorphic at $z_{0}$, $u,v$ satisfy the Cauchy-Riemann equations $u_{x}=v_{y}$, $u_{y}=-v_{x}$, so

$$
\nabla{u}\cdot\nabla{v}=u_{x}v_{x}+u_{y}v_{y}=u_{x}\left(-u_{y}\right)+u_{y}u_{x}=0.
$$

Hence $\nabla{u}\perp\nabla{v}$, the two gradients are orthogonal, and therefore the tangent lines to the two level sets are also orthogonal, meeting at angle $\frac{\pi}{2}$.

Since $f'\left(z_{0}\right)\ne0$, from $f'\left(z_{0}\right)=u_{x}\left(z_{0}\right)+iv_{x}\left(z_{0}\right)$ we see that $\nabla{u},\nabla{v}$ are both nonzero at $z_{0}$, so both level sets have well-defined tangent lines at $z_{0}$. $\blacksquare$

## 5.5-1

Let $P\left(z\right)$ be a polynomial of degree at least $1$. Prove: all roots of its derivative $P'\left(z\right)$ lie in the convex hull of the roots of $P\left(z\right)$ (i.e. the smallest convex polygon containing all roots of $P\left(z\right)$). (Gauss-Lucas theorem)

### Solution to 5.5-1

Let the roots of $P$ (with multiplicity) be $a_{1},\ldots,a_{n}$, so $P\left(z\right)=c\prod_{j=1}^{n}\left(z-a_{j}\right)$. If $z_{0}$ is a root of $P$, it clearly lies in the convex hull. Suppose $z_{0}$ is a root of $P'$ but not of $P$; then $P\left(z_{0}\right)\ne0$, and

$$
0=\frac{P'\left(z_{0}\right)}{P\left(z_{0}\right)}=\sum_{j=1}^{n}\frac{1}{z_{0}-a_{j}}.
$$

Taking conjugates and using $\frac{1}{\overline{z_{0}-a_{j}}}=\frac{z_{0}-a_{j}}{\left|z_{0}-a_{j}\right|^{2}}$,

$$
\sum_{j=1}^{n}\frac{z_{0}-a_{j}}{\left|z_{0}-a_{j}\right|^{2}}=0,\quad\text{i.e.}\quad
z_{0}\sum_{j=1}^{n}\frac{1}{\left|z_{0}-a_{j}\right|^{2}}=\sum_{j=1}^{n}\frac{a_{j}}{\left|z_{0}-a_{j}\right|^{2}}.
$$

Hence

$$
z_{0}=\sum_{j=1}^{n}\lambda_{j}a_{j},\quad
\lambda_{j}:=\frac{\frac{1}{\left|z_{0}-a_{j}\right|^{2}}}{\sum_{k=1}^{n}\frac{1}{\left|z_{0}-a_{k}\right|^{2}}}.
$$

$\lambda_{j}>0$ and $\sum_{j}\lambda_{j}=1$, so $z_{0}$ is a convex combination of $a_{1},\ldots,a_{n}$ and lies in their convex hull. $\blacksquare$

## 5.5-3

Prove: the function $f\left(z\right)=\frac{\sin{z}}{z}$ ($z\ne0$), $f\left(0\right)=1$, is holomorphic on $\mathbb{C}$.

### Solution to 5.5-3

By **Definition 5.4.1 (Complex Sine and Cosine)**, $\sin{z}=\frac{e^{iz}-e^{-iz}}{2i}$, with Taylor expansion

$$
\sin{z}=\sum_{n=0}^{+\infty}\frac{\left(-1\right)^{n}}{\left(2n+1\right)!}z^{2n+1},
$$

of infinite radius of convergence. Dividing by $z$ (for $z\ne0$),

$$
\frac{\sin{z}}{z}=\sum_{n=0}^{+\infty}\frac{\left(-1\right)^{n}}{\left(2n+1\right)!}z^{2n},\quad{z}\ne0.
$$

This power series converges on all of $\mathbb{C}$, hence is holomorphic on $\mathbb{C}$, and its value at $z=0$ is $1$. Therefore $f$ is holomorphic on $\mathbb{C}$. $\blacksquare$

## 5.5-5

Prove: both $\cos{z}$ and $\sin{z}$ are unbounded functions on $\mathbb{C}$.

### Solution to 5.5-5

Take $z=it$, $t\in\mathbb{R}$. By **Definition 5.4.1 (Complex Sine and Cosine)**,

$$
\cos\left(it\right)=\frac{e^{-t}+e^{t}}{2}=\cosh{t},\quad
\sin\left(it\right)=\frac{e^{-t}-e^{t}}{2i}=i\sinh{t}.
$$

As $t\to+\infty$, $\cosh{t}\to+\infty$ and $\left|\sinh{t}\right|\to+\infty$. Hence $\cos{z}$ is unbounded along the imaginary axis, and $\sin{z}$ is also unbounded along the imaginary axis ($\left|\sin\left(it\right)\right|=\sinh{t}\to+\infty$). Therefore both $\cos{z}$ and $\sin{z}$ are unbounded on $\mathbb{C}$. $\blacksquare$

## 5.5-7

Find all points in the complex plane where $2+\sin{z}$ vanishes.

### Solution to 5.5-7

Solve $\sin{z}=-2$. By **Definition 5.4.1 (Complex Sine and Cosine)**, $\frac{e^{iz}-e^{-iz}}{2i}=-2$, i.e. $e^{iz}-e^{-iz}=-4i$. Let $w=e^{iz}$; then

$$
w-\frac{1}{w}=-4i,\quad{w}^{2}+4iw-1=0,\quad{w}=i\left(-2\pm\sqrt{3}\right).
$$

Thus $e^{iz}=i\left(-2+\sqrt3\right)$ or $e^{iz}=i\left(-2-\sqrt3\right)$, both nonzero (on the negative imaginary axis). Solving $e^{iz}=w$: $iz=\operatorname{Log}w+2k\pi{i}$, $z=-i\operatorname{Log}w+2k\pi$, $k\in\mathbb{Z}$.

For $w=i\left(-2+\sqrt3\right)=-i\left(2-\sqrt3\right)$: $\left|w\right|=2-\sqrt3$, $\operatorname{Log}w=\ln\left(2-\sqrt3\right)-i\frac\pi2$, so $z=\left(2k-\frac12\right)\pi+i\ln\left(2+\sqrt3\right)$ (since $\ln\left(2-\sqrt3\right)=-\ln\left(2+\sqrt3\right)$). For $w=i\left(-2-\sqrt3\right)=-i\left(2+\sqrt3\right)$: $\left|w\right|=2+\sqrt3$, giving $z=\left(2k-\frac12\right)\pi-i\ln\left(2+\sqrt3\right)$.

Hence all solutions of $2+\sin{z}=0$ are

$$
z=\left(2k-\frac12\right)\pi\pm{i}\ln\left(2+\sqrt3\right),\quad{k}\in\mathbb{Z}.
$$

$\blacksquare$

## 5.5-9

Prove the identity $\overline{e^{iz}}=e^{-i\overline{z}}$.

### Solution to 5.5-9

From $e^{z}=e^{x}\left(\cos{y}+i\sin{y}\right)$ (**Proposition 5.3.1 (Exponential Function)** and Euler's formula), write $z=x+iy$:

$$
e^{iz}=e^{i\left(x+iy\right)}=e^{ix-y}=e^{-y}\left(\cos{x}+i\sin{x}\right),
$$

Taking conjugates, $\overline{e^{iz}}=e^{-y}\left(\cos{x}-i\sin{x}\right)=e^{-y}e^{-ix}=e^{-\left(ix+y\right)}$. On the other hand,

$$
e^{-i\overline{z}}=e^{-i\left(x-iy\right)}=e^{-ix-y}=e^{-y}e^{-ix}=e^{-\left(ix+y\right)}.
$$

They are equal, so $\overline{e^{iz}}=e^{-i\overline{z}}$. $\blacksquare$

## 6.5-2

Let $\Phi:\mathbb{R}\to\mathbb{R}$ be continuous with $\Phi\left(x\right)\in\operatorname{Arg}\left(e^{ix}\right)$ for all $x\in\mathbb{R}$. Prove: there exists $k\in\mathbb{Z}$ such that $\Phi\left(x\right)=x+2\pi{k}$ for all $x\in\mathbb{R}$.

### Solution to 6.5-2

The argument of $e^{ix}$ is $x+2\pi{m}$ ($m\in\mathbb{Z}$). Since $\Phi\left(x\right)\in\operatorname{Arg}\left(e^{ix}\right)$, there is an integer $\ell\left(x\right)$ such that

$$
\Phi\left(x\right)=x+2\pi\ell\left(x\right),\quad\ell\left(x\right)=\frac{\Phi\left(x\right)-x}{2\pi}\in\mathbb{Z}.
$$

Both $\Phi$ and $x\mapsto{x}$ are continuous, so $\frac{\Phi\left(x\right)-x}{2\pi}$ is continuous; a continuous function taking integer values on the connected space $\mathbb{R}$ must be constant. Hence there exists $k\in\mathbb{Z}$ such that $\frac{\Phi\left(x\right)-x}{2\pi}=k$, i.e. $\Phi\left(x\right)=x+2\pi{k}$ for all $x\in\mathbb{R}$. $\blacksquare$

## 6.5-4

Let $f$ be a holomorphic branch of the logarithm on $\mathbb{C}\setminus\left[0,+\infty\right)$ with $f\left(-i\right)=-\frac{i\pi}{2}$. Determine: (i) $f\left(i\right)$; (ii) $f\left(-e\right)$; (iii) $f\left(-1-\frac{i}{\sqrt3}\right)$; (iv) $f\left(\left(-1-\frac{i}{\sqrt3}\right)^{2}\right)$.

### Solution to 6.5-4

Since $f$ is a holomorphic branch of the logarithm on $\mathbb{C}\setminus\left[0,+\infty\right)$, $f\left(z\right)=\ln\left|z\right|+i\theta\left(z\right)$, where $\theta\left(z\right)$ is a continuous branch of the argument on that domain. From $f\left(-i\right)=-\frac{i\pi}{2}$, $\theta\left(-i\right)=-\frac\pi2$, so this branch takes the argument in the interval $\left(-\frac\pi2,\frac{3\pi}2\right)$.

(i) $z=i$: $\theta\left(i\right)=\frac\pi2$, $f\left(i\right)=i\frac\pi2$.

(ii) $z=-e$: $\left|z\right|=e$, $\theta\left(-e\right)=\pi$, $f\left(-e\right)=\ln{e}+i\pi=1+i\pi$.

(iii) $z=-1-\frac{i}{\sqrt3}$: $\left|z\right|=\sqrt{1+\frac13}=\frac{2}{\sqrt3}$, $\ln\left|z\right|=\ln2-\frac12\ln3$. This point lies in the third quadrant, reference angle $\frac\pi6$, so $\theta\left(z\right)=\pi+\frac\pi6=\frac{7\pi}{6}\in\left(-\frac\pi2,\frac{3\pi}2\right)$. Thus $f\left(-1-\frac{i}{\sqrt3}\right)=\ln\frac{2}{\sqrt3}+i\frac{7\pi}{6}$.

(iv) $\left(-1-\frac{i}{\sqrt3}\right)^{2}=\frac23+\frac{2i}{\sqrt3}$, so $\left|z^{2}\right|=\frac43$, $\ln\left|z^{2}\right|=\ln\frac43$; this point lies in the first quadrant, $\tan\theta=\frac{2/\sqrt3}{2/3}=\sqrt3$, so $\theta\left(z^{2}\right)=\frac\pi3$. Thus $f\left(\left(-1-\frac{i}{\sqrt3}\right)^{2}\right)=\ln\frac43+i\frac\pi3$. $\blacksquare$

## 6.5-6

Consider $w\left(z\right)=\left(\frac{\left(z+1\right)\left(z-1\right)\left(z-2\right)}{z}\right)^{1/3}$. Find a holomorphic branch such that $w\left(3\right)>0$.

### Solution to 6.5-6

The branch points of $w\left(z\right)=\exp\left(\frac13\left[\operatorname{Ln}\left(z+1\right)+\operatorname{Ln}\left(z-1\right)+\operatorname{Ln}\left(z-2\right)-\operatorname{Ln}z\right]\right)$ come from the branch points of each factor: for $z+1,z-1,z-2,z$ they are $-1,1,2,0$. Taking the principal logarithm $\operatorname{Log}$, each $\operatorname{Log}\left(z-c\right)$ is holomorphic when $z-c\notin\left(-\infty,0\right]$, i.e. $z\notin\left(-\infty,c\right]$. Hence define on $D:=\mathbb{C}\setminus\left(-\infty,2\right]$ (containing all branch points $0,1,2,-1$)

$$
w\left(z\right):=\exp\left(\frac13\left[\operatorname{Log}\left(z+1\right)+\operatorname{Log}\left(z-1\right)+\operatorname{Log}\left(z-2\right)-\operatorname{Log}z\right]\right),
$$

a holomorphic function on $D$ satisfying $w\left(z\right)^{3}=\frac{\left(z+1\right)\left(z-1\right)\left(z-2\right)}{z}$, i.e. a holomorphic branch. At $z=3$, $z+1=4$, $z-1=2$, $z-2=1$, $z=3$ are all positive reals, and the principal logarithm takes the real value $\ln$, so

$$
w\left(3\right)=\exp\left(\frac13\left(\ln4+\ln2+\ln1-\ln3\right)\right)=\exp\left(\frac13\ln\frac83\right)=\left(\frac83\right)^{1/3}>0.
$$

Thus this branch satisfies $w\left(3\right)>0$. $\blacksquare$

## 6.5-8

Let $\alpha\in\mathbb{R}$, let $\log{z}$ be the holomorphic branch of $\operatorname{Log}z$ with $\alpha<\arg{z}<\alpha+2\pi$, and let $z^{1/2}$ be the corresponding holomorphic square-root branch. (i) Give the range of $\log{z}^{1/2}$; (ii) give the domain of $f\left(z\right)=\tan\left(\frac{1}{2i}\log\left(\frac{1+iz}{1-iz}\right)\right)$ and verify $f\left(z\right)=z$ on its domain.

### Solution to 6.5-8

(i) $\log{z}^{1/2}=\frac12\log{z}$. The imaginary part of $\log{z}$ is the argument, in $\left(\alpha,\alpha+2\pi\right)$, so the imaginary part of $\log{z}^{1/2}$ lies in $\left(\frac\alpha2,\frac\alpha2+\pi\right)$; the real part $\frac12\ln\left|z\right|$ ranges over all of $\mathbb{R}$. Hence the range of $\log{z}^{1/2}$ is the horizontal strip

$$
\left\{\zeta\in\mathbb{C}:\,\frac{\alpha}{2}<\operatorname{Im}\zeta<\frac{\alpha}{2}+\pi\right\}.
$$

(ii) Let $w\left(z\right)=\frac{1+iz}{1-iz}$ (a Mobius transformation); the domain requires $w$ to lie in the domain of the $\log$ branch and $z\ne\pm{i}$. The $\log$ branch is holomorphic on $\mathbb{C}$ minus the ray $R_{\alpha}:=\left\{re^{i\alpha}:r\ge0\right\}$ of argument $\alpha$, so the domain of $f$ is

$$
D:=\left\{z\in\mathbb{C}:\,z\ne\pm{i},\,\frac{1+iz}{1-iz}\notin{R}_{\alpha}\right\}.
$$

Verify $f\left(z\right)=z$: on $D$, set $\theta=\frac{1}{2i}\log\left(\frac{1+iz}{1-iz}\right)$; then $e^{2i\theta}=\frac{1+iz}{1-iz}$. Thus

$$
\tan\theta=\frac{e^{2i\theta}-1}{i\left(e^{2i\theta}+1\right)}=\frac{\frac{1+iz}{1-iz}-1}{i\left(\frac{1+iz}{1-iz}+1\right)}=\frac{2iz}{i\cdot2}=z,
$$

so $f\left(z\right)=\tan\theta=z$ for all $z\in{D}$. $\blacksquare$

## 7.4-1

(i) Let $P\left(z\right)=z^{n}+a_{n-1}z^{n-1}+\cdots+a_{0}$ be monic. Prove: $\max_{\left|z\right|=1}\left|P\left(z\right)\right|\ge1$. (ii) Does there exist a polynomial $P\left(z\right)=\sum_{j=1}^{n}a_{j}z^{j}$ such that $\max_{\left|z\right|=1}\left|P\left(z\right)-\frac{1}{z^{2}}\right|<1$?

### Solution to 7.4-1

(i) By Parseval's identity (Fourier series), $P\left(e^{i\theta}\right)=\sum_{j=0}^{n}a_{j}e^{ij\theta}$ ($a_{n}=1$),

$$
\frac{1}{2\pi}\int_{0}^{2\pi}\left|P\left(e^{i\theta}\right)\right|^{2}\,d\theta=\sum_{j=0}^{n}\left|a_{j}\right|^{2}\ge\left|a_{n}\right|^{2}=1.
$$

If $\left|P\left(e^{i\theta}\right)\right|<1$ for all $\theta$, the left side is $<1$, a contradiction. Hence there exists $\theta$ with $\left|P\left(e^{i\theta}\right)\right|\ge1$, i.e. $\max_{\left|z\right|=1}\left|P\left(z\right)\right|\ge1$.

(ii) No. On $\left|z\right|=1$, $P\left(z\right)-\frac{1}{z^{2}}=\sum_{j=1}^{n}a_{j}z^{j}-z^{-2}$, whose $z^{-2}$ coefficient is $-1$. By Parseval's identity,

$$
\frac{1}{2\pi}\int_{0}^{2\pi}\left|P\left(e^{i\theta}\right)-e^{-2i\theta}\right|^{2}d\theta=\sum_{j=1}^{n}\left|a_{j}\right|^{2}+1\ge1.
$$

Hence there exists $\theta$ with $\left|P\left(e^{i\theta}\right)-e^{-2i\theta}\right|\ge1$, i.e. $\max_{\left|z\right|=1}\left|P\left(z\right)-\frac{1}{z^{2}}\right|\ge1$. Thus $\max<1$ is impossible. $\blacksquare$

## 7.4-3

Compute: (i) $\int_{\left|z\right|=1}\left(z+\frac{1}{z}\right)^{2n}\frac{1}{z}\,dz$ ($n\in\mathbb{N}$); (ii) $\int_{\left|z\right|=r}\frac{1}{\left(z-a\right)\left(z-b\right)}\,dz$, $\left|a\right|<{}r<\left|b\right|$.

### Solution to 7.4-3

(i) Expand $\left(z+\frac{1}{z}\right)^{2n}=\sum_{k=0}^{2n}\binom{2n}{k}z^{2n-2k}$, only even powers. After multiplying by $\frac1z$, the $z^{-1}$ term comes from the constant term of $\left(z+\frac1z\right)^{2n}$ ($2n-2k=0$, i.e. $k=n$), with coefficient $\binom{2n}{n}$. By **Definition 7.1.1 (Path Integral)**, $\int_{\left|z\right|=1}z^{m}dz=0$ ($m\ne-1$), and $\int_{\left|z\right|=1}\frac{dz}{z}=2\pi{i}$,

$$
\int_{\left|z\right|=1}\left(z+\frac{1}{z}\right)^{2n}\frac{1}{z}\,dz=2\pi{i}\binom{2n}{n}.
$$

(ii) Inside $\left\{\left|z\right|=r\right\}$ ($\left|a\right|<{}r<\left|b\right|$) there is only the simple pole $z=a$, with residue $\frac{1}{a-b}$. By the residue theorem (Cauchy integral),

$$
\int_{\left|z\right|=r}\frac{1}{\left(z-a\right)\left(z-b\right)}\,dz=2\pi{i}\cdot\frac{1}{a-b}.
$$

$\blacksquare$

## 7.4-5

Construct an antiderivative of $e^{\frac{1}{z}}$ along the path $\gamma\left(t\right):=e^{4\pi{i}t}$, $t\in\left[0,1\right]$, and use it to compute $\int_{\gamma}e^{\frac{1}{z}}\,dz$.

### Solution to 7.4-5

$e^{\frac1z}=\sum_{n=0}^{+\infty}\frac{1}{n!}\frac{1}{z^{n}}$ (Laurent expansion, $z\ne0$). An antiderivative (taking a continuous branch along the path) is

$$
F\left(z\right):=z+\log{z}+\sum_{n=2}^{+\infty}\frac{1}{n!}\frac{z^{1-n}}{1-n},
$$

where $\log{z}$ takes the continuous branch along $\gamma$. Differentiating: $F'\left(z\right)=1+\frac{1}{z}+\sum_{n=2}^{+\infty}\frac{1}{n!}\frac{\left(1-n\right)z^{-n}}{1-n}=1+\frac{1}{z}+\sum_{n=2}^{+\infty}\frac{1}{n!}\frac{1}{z^{n}}=e^{\frac1z}$.

Thus $\int_{\gamma}e^{\frac1z}dz=F\left(\gamma\left(1\right)\right)-F\left(\gamma\left(0\right)\right)$ (continuous branch along $\gamma$). $\gamma$ is parametrized by $e^{4\pi{i}t}$, $t$ from $0$ to $1$, argument from $0$ to $4\pi$, i.e. it winds twice around the origin; hence $\log{z}$ varies continuously along $\gamma$ and increases by $2\cdot2\pi{i}=4\pi{i}$, while the other terms ($z$ and the $\sum_{n\ge2}$ terms) return to their original values on the closed path. Therefore

$$
\int_{\gamma}e^{\frac1z}\,dz=4\pi{i}.
$$

(Equivalently, by residues: $\operatorname{Res}_{0}e^{1/z}=1$, and the winding number of $\gamma$ around $0$ is $2$, so $\int_{\gamma}=2\pi{i}\cdot2\cdot1=4\pi{i}$.) $\blacksquare$
