# week6

> **Definition 6.1.1 (Continuous Branch of the Argument)**<br>A single-valued continuous function on a domain $D\subset\mathbb{C}\setminus\left\{0\right\}$ is called a continuous branch of $\operatorname{Arg}z$ if for every $z\in D$ there exists $k\in\mathbb{Z}$ such that $f\left(z\right)=\arg z+2k\pi$.

> **Definition 6.2.1 (Complex Logarithm)**<br>A complex number $w$ satisfying $e^{w}=z$ is called a logarithm of $z$, denoted $\operatorname{Ln}z$; it is infinitely many-valued.

> **Proposition 6.2.5 (Holomorphic Branches of the Logarithm)**<br>Any continuous branch of the logarithm on a domain $D\subset\mathbb{C}\setminus\left\{0\right\}$ is holomorphic, so a single-valued continuous branch of the logarithm is a holomorphic branch.

> **Definition 6.2.7 (Branch Points)**<br>The branch points of the multivalued function $\operatorname{Ln}z$ (or of power functions) are $0$ and $\infty$; single-valued branches can be defined along any cut joining them.

> **Definition 6.3.1 (Power Function)**<br>$z^{\alpha}=e^{\alpha\operatorname{Ln}z}$; on $\mathbb{C}\setminus\left(-\infty,0\right]$ take the principal branch, i.e. $z^{\alpha}=e^{\alpha\operatorname{Log}z}$.

---

## 6.5-2

Let $\Phi:\mathbb{R}\to\mathbb{R}$ be continuous with $\Phi\left(x\right)\in\operatorname{Arg}\left(e^{ix}\right)$ for all $x\in\mathbb{R}$. Prove: there exists $k\in\mathbb{Z}$ such that $\Phi\left(x\right)=x+2\pi k$ for all $x\in\mathbb{R}$.

### Solution 6.5-2

The argument of $e^{ix}$ is $x+2\pi m$ ($m\in\mathbb{Z}$). Since $\Phi\left(x\right)\in\operatorname{Arg}\left(e^{ix}\right)$, there is an integer $\ell\left(x\right)$ such that

$$
\Phi\left(x\right)=x+2\pi\ell\left(x\right),\quad \ell\left(x\right)=\frac{\Phi\left(x\right)-x}{2\pi}\in\mathbb{Z}.
$$

Both $\Phi$ and $x\mapsto x$ are continuous, so $\frac{\Phi\left(x\right)-x}{2\pi}$ is continuous; a continuous function taking integer values on the connected space $\mathbb{R}$ must be constant. Hence there exists $k\in\mathbb{Z}$ such that $\frac{\Phi\left(x\right)-x}{2\pi}=k$, i.e. $\Phi\left(x\right)=x+2\pi k$ for all $x\in\mathbb{R}$. $\blacksquare$

---

## 6.5-4

Let $f$ be a holomorphic branch of the logarithm on $\mathbb{C}\setminus\left[0,+\infty\right)$ with $f\left(-i\right)=-\frac{i\pi}{2}$. Determine: (i) $f\left(i\right)$; (ii) $f\left(-e\right)$; (iii) $f\left(-1-\frac{i}{\sqrt3}\right)$; (iv) $f\left(\left(-1-\frac{i}{\sqrt3}\right)^{2}\right)$.

### Solution 6.5-4

Since $f$ is a holomorphic branch of the logarithm on $\mathbb{C}\setminus\left[0,+\infty\right)$, $f\left(z\right)=\ln\left|z\right|+i\theta\left(z\right)$, where $\theta\left(z\right)$ is a continuous branch of the argument on that domain. From $f\left(-i\right)=-\frac{i\pi}{2}$, $\theta\left(-i\right)=-\frac\pi2$, so this branch takes the argument in the interval $\left(-\frac\pi2,\frac{3\pi}2\right)$.

(i) $z=i$: $\theta\left(i\right)=\frac\pi2$, $f\left(i\right)=i\frac\pi2$.

(ii) $z=-e$: $\left|z\right|=e$, $\theta\left(-e\right)=\pi$, $f\left(-e\right)=\ln e+i\pi=1+i\pi$.

(iii) $z=-1-\frac{i}{\sqrt3}$: $\left|z\right|=\sqrt{1+\frac13}=\frac{2}{\sqrt3}$, $\ln\left|z\right|=\ln2-\frac12\ln3$. This point lies in the third quadrant, reference angle $\frac\pi6$, so $\theta\left(z\right)=\pi+\frac\pi6=\frac{7\pi}{6}\in\left(-\frac\pi2,\frac{3\pi}2\right)$. Thus $f\left(-1-\frac{i}{\sqrt3}\right)=\ln\frac{2}{\sqrt3}+i\frac{7\pi}{6}$.

(iv) $\left(-1-\frac{i}{\sqrt3}\right)^{2}=\frac23+\frac{2i}{\sqrt3}$, so $\left|z^{2}\right|=\frac43$, $\ln\left|z^{2}\right|=\ln\frac43$; this point lies in the first quadrant, $\tan\theta=\frac{2/\sqrt3}{2/3}=\sqrt3$, so $\theta\left(z^{2}\right)=\frac\pi3$. Thus $f\left(\left(-1-\frac{i}{\sqrt3}\right)^{2}\right)=\ln\frac43+i\frac\pi3$. $\blacksquare$

---

## 6.5-6

Consider $w\left(z\right)=\left(\frac{\left(z+1\right)\left(z-1\right)\left(z-2\right)}{z}\right)^{1/3}$. Find a holomorphic branch such that $w\left(3\right)> 0$.

### Solution 6.5-6

The branch points of $w\left(z\right)=\exp\left(\frac13\left[\operatorname{Ln}\left(z+1\right)+\operatorname{Ln}\left(z-1\right)+\operatorname{Ln}\left(z-2\right)-\operatorname{Ln}z\right]\right)$ come from the branch points of each factor: for $z+1,z-1,z-2,z$ they are $-1,1,2,0$. Taking the principal logarithm $\operatorname{Log}$, each $\operatorname{Log}\left(z-c\right)$ is holomorphic when $z-c\notin\left(-\infty,0\right]$, i.e. $z\notin\left(-\infty,c\right]$. Hence define on $D:=\mathbb{C}\setminus\left(-\infty,2\right]$ (containing all branch points $0,1,2,-1$)

$$
w\left(z\right):=\exp\left(\frac13\left[\operatorname{Log}\left(z+1\right)+\operatorname{Log}\left(z-1\right)+\operatorname{Log}\left(z-2\right)-\operatorname{Log}z\right]\right),
$$

a holomorphic function on $D$ satisfying $w\left(z\right)^{3}=\frac{\left(z+1\right)\left(z-1\right)\left(z-2\right)}{z}$, i.e. a holomorphic branch. At $z=3$, $z+1=4$, $z-1=2$, $z-2=1$, $z=3$ are all positive reals, and the principal logarithm takes the real value $\ln$, so

$$
w\left(3\right)=\exp\left(\frac13\left(\ln4+\ln2+\ln1-\ln3\right)\right)=\exp\left(\frac13\ln\frac83\right)=\left(\frac83\right)^{1/3}> 0.
$$

Thus this branch satisfies $w\left(3\right)> 0$. $\blacksquare$

---

## 6.5-8

Let $\alpha\in\mathbb{R}$, let $\log z$ be the holomorphic branch of $\operatorname{Log}z$ with $\alpha< \arg z< \alpha+2\pi$, and let $z^{1/2}$ be the corresponding holomorphic square-root branch. (i) Give the range of $\log z^{1/2}$; (ii) give the domain of $f\left(z\right)=\tan\left(\frac{1}{2i}\log\left(\frac{1+iz}{1-iz}\right)\right)$ and verify $f\left(z\right)=z$ on its domain.

### Solution 6.5-8

(i) $\log z^{1/2}=\frac12\log z$. The imaginary part of $\log z$ is the argument, in $\left(\alpha,\alpha+2\pi\right)$, so the imaginary part of $\log z^{1/2}$ lies in $\left(\frac\alpha2,\frac\alpha2+\pi\right)$; the real part $\frac12\ln\left|z\right|$ ranges over all of $\mathbb{R}$. Hence the range of $\log z^{1/2}$ is the horizontal strip

$$
\left\{\zeta\in\mathbb{C}:\ \frac{\alpha}{2}< \operatorname{Im}\zeta< \frac{\alpha}{2}+\pi\right\}.
$$

(ii) Let $w\left(z\right)=\frac{1+iz}{1-iz}$ (a Mobius transformation); the domain requires $w$ to lie in the domain of the $\log$ branch and $z\ne\pm i$. The $\log$ branch is holomorphic on $\mathbb{C}$ minus the ray $R_{\alpha}:=\left\{re^{i\alpha}:r\ge0\right\}$ of argument $\alpha$, so the domain of $f$ is

$$
D:=\left\{z\in\mathbb{C}:\ z\ne\pm i,\ \frac{1+iz}{1-iz}\notin R_{\alpha}\right\}.
$$

Verify $f\left(z\right)=z$: on $D$, set $\theta=\frac{1}{2i}\log\left(\frac{1+iz}{1-iz}\right)$; then $e^{2i\theta}=\frac{1+iz}{1-iz}$. Thus

$$
\tan\theta=\frac{e^{2i\theta}-1}{i\left(e^{2i\theta}+1\right)}=\frac{\frac{1+iz}{1-iz}-1}{i\left(\frac{1+iz}{1-iz}+1\right)}=\frac{2iz}{i\cdot2}=z,
$$

so $f\left(z\right)=\tan\theta=z$ for all $z\in D$. $\blacksquare$
