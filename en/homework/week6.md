# Assignment 6

> **Definition 6.1.1** (Continuous Branch of the Argument Function)<br>A single-valued continuous function on a domain $D\subset\mathbb{C}\setminus\left\{0\right\}$ is called a continuous branch of $\operatorname{Arg}z$ if for every $\forall z\in D$ there exists $k\in\mathbb{Z}$ such that $f\left(z\right)=\arg z+2k\pi$.

> **Definition 6.2.1** (Complex Logarithm)<br>A complex number $w$ satisfying $e^{w}=z$ is called a logarithm of $z$, denoted $\operatorname{Ln}z$; it is infinitely multivalued.

> **Proposition 6.2.5** (Holomorphic Branches of the Logarithm)<br>A continuous logarithmic branch on a domain $D\subset\mathbb{C}\setminus\left\{0\right\}$ is necessarily holomorphic; hence a single-valued continuous branch of the logarithm is a holomorphic branch.

> **Definition 6.2.7** (Branch Points)<br>The branch points of the multivalued function $\operatorname{Ln}z$ (or of the power function) are $0$ and $\infty$, and a single-valued branch can be defined along any cut connecting them.

> **Definition 6.3.1** (Power Function)<br>$z^{\alpha}=e^{\alpha\operatorname{Ln}z}$; on $\mathbb{C}\setminus\left(-\infty,0\right]$ one takes the principal branch, i.e. $z^{\alpha}=e^{\alpha\operatorname{Log}z}$.

### Problem 1

(Problem 6.5-2) Let $\Phi:\mathbb{R}\to\mathbb{R}$ be continuous and satisfy $\Phi\left(x\right)\in\operatorname{Arg}\left(e^{ix}\right)$ for all $\forall x\in\mathbb{R}$. Prove: there exists $k\in\mathbb{Z}$ such that $\Phi\left(x\right)=x+2\pi k$ for all $\forall x\in\mathbb{R}$.

### Solution to Problem 1

The argument of $e^{ix}$ is $x+2\pi m$ ($m\in\mathbb{Z}$). Since $\Phi\left(x\right)\in\operatorname{Arg}\left(e^{ix}\right)$, there exists an integer $\ell\left(x\right)$ such that

$$
\Phi\left(x\right)=x+2\pi\ell\left(x\right),\quad \ell\left(x\right)=\frac{\Phi\left(x\right)-x}{2\pi}\in\mathbb{Z}.
$$

Both $\Phi$ and $x\mapsto x$ are continuous, so $\frac{\Phi\left(x\right)-x}{2\pi}$ is continuous; a continuous function taking integer values on the connected set $\mathbb{R}$ must be constant. Hence there exists $k\in\mathbb{Z}$ such that $\frac{\Phi\left(x\right)-x}{2\pi}=k$, i.e. $\Phi\left(x\right)=x+2\pi k$ for all $\forall x\in\mathbb{R}$. $\blacksquare$

### Problem 2

(Problem 6.5-4) Let $f$ be a holomorphic branch of the logarithm on the domain $\mathbb{C}\setminus\left[0,+\infty\right)$, and suppose $f\left(-i\right)=-\frac{i\pi}{2}$. Determine the following function values: (i) $f\left(i\right)$; (ii) $f\left(-e\right)$; (iii) $f\left(-1-\frac{i}{\sqrt3}\right)$; (iv) $f\left(\left(-1-\frac{i}{\sqrt3}\right)^{2}\right)$.

### Solution to Problem 2

$f$ is a holomorphic branch of the logarithm on $\mathbb{C}\setminus\left[0,+\infty\right)$, so $f\left(z\right)=\ln\left|z\right|+i\theta\left(z\right)$, where $\theta\left(z\right)$ is a continuous branch of the argument on this domain. From $f\left(-i\right)=-\frac{i\pi}{2}$ we get $\theta\left(-i\right)=-\frac\pi2$, so this branch takes its argument in the interval $\left(-\frac\pi2,\frac{3\pi}2\right)$.

(i) $z=i$: $\theta\left(i\right)=\frac\pi2$, $f\left(i\right)=i\frac\pi2$.

(ii) $z=-e$: $\left|z\right|=e$, $\theta\left(-e\right)=\pi$, $f\left(-e\right)=\ln e+i\pi=1+i\pi$.

(iii) $z=-1-\frac{i}{\sqrt3}$: $\left|z\right|=\sqrt{1+\frac13}=\frac{2}{\sqrt3}$, $\ln\left|z\right|=\ln2-\frac12\ln3$. This point lies in the third quadrant, with reference angle $\frac\pi6$, so $\theta\left(z\right)=\pi+\frac\pi6=\frac{7\pi}{6}\in\left(-\frac\pi2,\frac{3\pi}2\right)$. Hence $f\left(-1-\frac{i}{\sqrt3}\right)=\ln\frac{2}{\sqrt3}+i\frac{7\pi}{6}$.

(iv) $\left(-1-\frac{i}{\sqrt3}\right)^{2}=\frac23+\frac{2i}{\sqrt3}$, so $\left|z^{2}\right|=\frac43$, $\ln\left|z^{2}\right|=\ln\frac43$; this point lies in the first quadrant, $\tan\theta=\frac{2/\sqrt3}{2/3}=\sqrt3$, so $\theta\left(z^{2}\right)=\frac\pi3$. Hence $f\left(\left(-1-\frac{i}{\sqrt3}\right)^{2}\right)=\ln\frac43+i\frac\pi3$. $\blacksquare$

### Problem 3

(Problem 6.5-6) Consider the function $w\left(z\right)=\left(\frac{\left(z+1\right)\left(z-1\right)\left(z-2\right)}{z}\right)^{1/3}$. Find a holomorphic branch of it such that $w\left(3\right)>0$.

### Solution to Problem 3

The branch points of $w\left(z\right)=\exp\left(\frac13\left[\operatorname{Ln}\left(z+1\right)+\operatorname{Ln}\left(z-1\right)+\operatorname{Ln}\left(z-2\right)-\operatorname{Ln}z\right]\right)$ are given by the branch points of each factor: those of $z+1,z-1,z-2,z$ are respectively $-1,1,2,0$. Taking the principal logarithm $\operatorname{Log}$, each $\operatorname{Log}\left(z-c\right)$ is holomorphic when $z-c\notin\left(-\infty,0\right]$, i.e. $z\notin\left(-\infty,c\right]$. Hence on the domain $D:=\mathbb{C}\setminus\left(-\infty,2\right]$ (which contains all branch points $0,1,2,-1$) we define

$$
w\left(z\right):=\exp\left(\frac13\left[\operatorname{Log}\left(z+1\right)+\operatorname{Log}\left(z-1\right)+\operatorname{Log}\left(z-2\right)-\operatorname{Log}z\right]\right),
$$

which is holomorphic on $D$ and satisfies $w\left(z\right)^{3}=\frac{\left(z+1\right)\left(z-1\right)\left(z-2\right)}{z}$, i.e. it is a holomorphic branch of this function on $D$. At $z=3$, $z+1=4$, $z-1=2$, $z-2=1$, $z=3$ are all positive real numbers, and the principal logarithm takes the real value $\ln$, so

$$
w\left(3\right)=\exp\left(\frac13\left(\ln4+\ln2+\ln1-\ln3\right)\right)=\exp\left(\frac13\ln\frac83\right)=\left(\frac83\right)^{1/3}>0.
$$

Hence this branch satisfies $w\left(3\right)>0$. $\blacksquare$

### Problem 4

(Problem 6.5-8) Let $\alpha\in\mathbb{R}$, and let $\log z$ be the holomorphic branch of the logarithm $\operatorname{Log}z$ satisfying $\alpha<\arg z<\alpha+2\pi$; let $z^{1/2}$ be the holomorphic branch of the square root corresponding to this logarithmic branch. (i) Give the range of the function $\log z^{1/2}$; (ii) give the domain of the function $f\left(z\right)=\tan\left(\frac{1}{2i}\log\left(\frac{1+iz}{1-iz}\right)\right)$ and verify that $f\left(z\right)=z$ on its domain.

### Solution to Problem 4

(i) $\log z^{1/2}=\frac12\log z$. The imaginary part of $\log z$ is the argument, taken in $\left(\alpha,\alpha+2\pi\right)$, so the imaginary part of $\log z^{1/2}$ is taken in $\left(\frac\alpha2,\frac\alpha2+\pi\right)$; the real part $\frac12\ln\left|z\right|$ ranges over all of $\mathbb{R}$. Hence the range of $\log z^{1/2}$ is the horizontal strip

$$
\left\{\zeta\in\mathbb{C}:\ \frac{\alpha}{2}<\operatorname{Im}\zeta<\frac{\alpha}{2}+\pi\right\}.
$$

(ii) Write $w\left(z\right)=\frac{1+iz}{1-iz}$ (a Möbius transformation); the domain requires $w$ to lie in the domain of the $\log$ branch and $z\ne\pm i$. The $\log$ branch is holomorphic on $\mathbb{C}$ minus the ray $R_{\alpha}:=\left\{re^{i\alpha}:r\ge0\right\}$ of argument $\alpha$, so the domain of $f$ is

$$
D:=\left\{z\in\mathbb{C}:\ z\ne\pm i,\ \frac{1+iz}{1-iz}\notin R_{\alpha}\right\}.
$$

Verify $f\left(z\right)=z$: inside $D$, set $\theta=\frac{1}{2i}\log\left(\frac{1+iz}{1-iz}\right)$; then $e^{2i\theta}=\frac{1+iz}{1-iz}$. Hence

$$
\tan\theta=\frac{e^{2i\theta}-1}{i\left(e^{2i\theta}+1\right)}=\frac{\frac{1+iz}{1-iz}-1}{i\left(\frac{1+iz}{1-iz}+1\right)}=\frac{2iz}{i\cdot2}=z,
$$

so $f\left(z\right)=\tan\theta=z$ for all $\forall z\in D$. $\blacksquare$
