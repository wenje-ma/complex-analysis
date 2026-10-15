# Assignment 3

> **Definition 3.1.1** ($\mathbb{R}$-Linear and $\mathbb{C}$-Linear)<br>A map $\ell:\mathbb{C}\to\mathbb{C}$ is called $\mathbb{R}$-linear (or $\mathbb{C}$-linear) if $\ell\left(a+b\right)=\ell\left(a\right)+\ell\left(b\right)$ and, for $\lambda\in\mathbb{R}$ (or $\mathbb{C}$), $\ell\left(\lambda z\right)=\lambda\ell\left(z\right)$; a $\mathbb{C}$-linear function is necessarily $\mathbb{R}$-linear.

> **Theorem 3.1.2** (Form of Linear Functions)<br>Any $\mathbb{R}$-linear function has the form $\ell\left(z\right)=az+b\bar{z}$, where $$a=\frac{\ell\left(1\right)-i\ell\left(i\right)}{2},\quad b=\frac{\ell\left(1\right)+i\ell\left(i\right)}{2};$$ any $\mathbb{C}$-linear function has the form $\ell\left(z\right)=az$; an $\mathbb{R}$-linear $\ell$ is $\mathbb{C}$-linear if and only if $\ell\left(iz\right)=i\ell\left(z\right)$.

> **Definition 3.2.1** (Differentiability)<br>A map $f:U\to\mathbb{C}$ is called $\mathbb{R}$-differentiable (or $\mathbb{C}$-differentiable) at $z$ if $\Delta f=f\left(z+\Delta z\right)-f\left(z\right)=\ell\left(\Delta z\right)+o\left(\left|\Delta z\right|\right)$, where $\ell$ is an $\mathbb{R}$-linear (or $\mathbb{C}$-linear) function; $\ell\left(\Delta z\right)$ is called the real (complex) differential $df\left(z\right)$.

> **Definition 3.2.2** (Formal Derivatives)<br>The formal derivative operators (Wirtinger derivatives) are $$\frac{\partial f}{\partial z}=\frac{1}{2}\left(\frac{\partial f}{\partial x}-i\frac{\partial f}{\partial y}\right),\quad\frac{\partial f}{\partial\bar{z}}=\frac{1}{2}\left(\frac{\partial f}{\partial x}+i\frac{\partial f}{\partial y}\right),$$ and one has $df\left(z\right)=\frac{\partial f}{\partial z}\,dz+\frac{\partial f}{\partial\bar{z}}\,d\bar{z}$.

> **Theorem 3.2.4**<br>$f=u\left(x,y\right)+iv\left(x,y\right)$ is $\mathbb{C}$-differentiable at $z=x+iy$ if and only if $f$ is $\mathbb{R}$-differentiable at $z$ and $\frac{\partial f}{\partial\bar{z}}=0$, which is also equivalent to $u,v$ being differentiable and satisfying the Cauchy–Riemann equations $$\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y},\quad\frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}.$$

> **Definition 3.3.1** (Derivability)<br>$f$ is said to be derivable at $a$ if $$\lim_{z\to a}\frac{f\left(z\right)-f\left(a\right)}{z-a}=A$$ exists, and one writes $A=f'\left(a\right)$.

> **Theorem 3.3.3**<br>$f$ is derivable at $a$ if and only if $f$ is $\mathbb{C}$-differentiable at $a$, in which case $f'\left(a\right)=\frac{\partial f}{\partial z}\left(a\right)$.

> **Theorem 4.1.5**<br>The function $f$ is conformal at $z$ if and only if $f$ is $\mathbb{C}$-differentiable at $z$ and $f'\left(z\right)\ne0$.

> **Theorem 10.2.4**<br>If $f$ is holomorphic and univalent on an open set $\Omega$, then $f\left(\Omega\right)$ is open and $f^{-1}$ is holomorphic on $f\left(\Omega\right)$.

### Problem 1

(Problem 3.4-1) Let $f$ be a function of a complex variable that is $\mathbb{R}$-differentiable at $z_{0}\in\mathbb{C}$. Prove: as $z\to z_{0}$, the set of limit points of the set

$$
\left\{\frac{f\left(z\right)-f\left(z_{0}\right)}{z-z_{0}}\right\}
$$

is a circle centered at $\frac{\partial f}{\partial z}\left(z_{0}\right)$ with radius $\left|\frac{\partial f}{\partial\bar{z}}\left(z_{0}\right)\right|$.

### Solution to Problem 1

Since $f$ is $\mathbb{R}$-differentiable at $z_{0}$ (**Definition 3.2.1 (Differentiability)**), write $\Delta z=z-z_{0}$; then

$$
\Delta f=f\left(z\right)-f\left(z_{0}\right)=\ell\left(\Delta z\right)+o\left(\left|\Delta z\right|\right),
$$

where $\ell$ is an $\mathbb{R}$-linear function. By **Theorem 3.1.2 (Form of Linear Functions)**, $\ell\left(\Delta z\right)=a\Delta z+b\Delta\bar{z}$; combined with **Definition 3.2.2 (Formal Derivatives)**, $a=\frac{\partial f}{\partial z}\left(z_{0}\right)$, $b=\frac{\partial f}{\partial\bar{z}}\left(z_{0}\right)$. Hence

$$
\begin{aligned}&\quad\;\frac{f\left(z\right)-f\left(z_{0}\right)}{z-z_{0}}\\
&=\frac{\partial f}{\partial z}\left(z_{0}\right)+\frac{\partial f}{\partial\bar{z}}\left(z_{0}\right)\frac{\Delta\bar{z}}{\Delta z}+\frac{o\left(\left|\Delta z\right|\right)}{\Delta z}.
\end{aligned}
$$

As $z\to z_{0}$ (i.e. $\Delta z\to0$), the last term $\frac{o\left(\left|\Delta z\right|\right)}{\Delta z}\to0$. Let $\Delta z=re^{i\theta}$ ($r>0$); then $\frac{\Delta\bar{z}}{\Delta z}=e^{-2i\theta}$, which takes all values on the unit circle. Hence the set of limit points of the difference quotient is exactly

$$
\left\{\frac{\partial f}{\partial z}\left(z_{0}\right)+\frac{\partial f}{\partial\bar{z}}\left(z_{0}\right)e^{-2i\theta}:\theta\in\left[0,2\pi\right)\right\},
$$

i.e. the circle centered at $\frac{\partial f}{\partial z}\left(z_{0}\right)$ with radius $\left|\frac{\partial f}{\partial\bar{z}}\left(z_{0}\right)\right|$. $\blacksquare$

### Problem 2

(Problem 3.4-3) The function $f$ is $\mathbb{C}$-differentiable at $z_{0}\in\mathbb{C}$ and $f'\left(z_{0}\right)\ne0$. Suppose $f$ is defined on the disk $B\left(z_{0},r\right)$ centered at $z_{0}$ with radius $r>0$, and let $l$ be any straight line passing through $f\left(z_{0}\right)$. Prove: the image $f\left(B\left(z_{0},r\right)\right)$ of $B\left(z_{0},r\right)$ cannot all lie on one side of $l$.

### Solution to Problem 2

We argue by contradiction. Suppose $f\left(B\left(z_{0},r\right)\right)$ all lies on one side of some line $l$ through $f\left(z_{0}\right)$. After a translation and rotation, we may assume $f\left(z_{0}\right)=0$ and $l$ is the real axis; then $\operatorname{Im}f\left(z\right)\ge0$ (or $\le0$) for all $z\in B\left(z_{0},r\right)$, i.e. $f\left(z_{0}\right)=0$ is a boundary point of $f\left(B\left(z_{0},r\right)\right)$.

Since $f$ is $\mathbb{C}$-differentiable at $z_{0}$ and $f'\left(z_{0}\right)\ne0$, by **Theorem 4.1.5**, $f$ is conformal at $z_{0}$. Because $f'\left(z_{0}\right)\ne0$, $f$ is locally univalent on some open neighborhood $U\subset B\left(z_{0},r\right)$ of $z_{0}$ (and hence locally univalent and holomorphic); by **Theorem 10.2.4**, $f\left(U\right)$ is open and has $f\left(z_{0}\right)=0$ as an interior point. Hence there exists $\delta>0$ such that $f\left(U\right)$ contains the open disk $\left\{w:\left|w\right|<\delta\right\}$ centered at $0$, which contains points both above and below the real axis, contradicting the claim that "$f\left(B\left(z_{0},r\right)\right)$ all lies on one side of the real axis."

Therefore $f\left(B\left(z_{0},r\right)\right)$ cannot all lie on one side of the line $l$. $\blacksquare$

### Problem 3

(Problem 3.4-5) Consider the function $f=u+iv$. Prove: in polar coordinates $\left(r,\phi\right)$, the Cauchy–Riemann equations take the form

$$
\frac{\partial u}{\partial r}=\frac{1}{r}\frac{\partial v}{\partial\phi},\quad
\frac{\partial v}{\partial r}=-\frac{1}{r}\frac{\partial u}{\partial\phi};
$$

moreover, if $f$ is derivable at $z_{0}=r_{0}e^{i\phi_{0}}\ne0$, then

$$
f'\left(z_{0}\right)=e^{-i\phi_{0}}\left(\frac{\partial u}{\partial r}\left(r_{0},\phi_{0}\right)+i\frac{\partial v}{\partial r}\left(r_{0},\phi_{0}\right)\right).
$$

### Solution to Problem 3

From $x=r\cos\phi$, $y=r\sin\phi$ and the chain rule,

$$
\frac{\partial u}{\partial r}=\frac{\partial u}{\partial x}\cos\phi+\frac{\partial u}{\partial y}\sin\phi,\quad
\frac{\partial u}{\partial\phi}=-\frac{\partial u}{\partial x}r\sin\phi+\frac{\partial u}{\partial y}r\cos\phi,
$$

and similarly for $v$. From the Cauchy–Riemann equations (**Theorem 3.2.4**) $\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y}$, $\frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}$, we get

$$
\begin{aligned}&\quad\;\frac{\partial u}{\partial r}\\
&=\frac{\partial v}{\partial y}\cos\phi-\frac{\partial v}{\partial x}\sin\phi\\
&=\frac{1}{r}\left(-\frac{\partial v}{\partial x}r\sin\phi+\frac{\partial v}{\partial y}r\cos\phi\right)\\
&=\frac{1}{r}\frac{\partial v}{\partial\phi}.
\end{aligned}
$$

Similarly,

$$
\begin{aligned}&\quad\;\frac{\partial v}{\partial r}\\
&=\frac{\partial v}{\partial x}\cos\phi+\frac{\partial v}{\partial y}\sin\phi\\
&=-\frac{\partial u}{\partial y}\cos\phi+\frac{\partial u}{\partial x}\sin\phi\\
&=-\frac{1}{r}\left(-\frac{\partial u}{\partial x}r\sin\phi+\frac{\partial u}{\partial y}r\cos\phi\right)\\
&=-\frac{1}{r}\frac{\partial u}{\partial\phi}.
\end{aligned}
$$

This proves the Cauchy–Riemann equations in polar coordinates.

For the second part: by **Theorem 3.3.3**, $f'\left(z_{0}\right)=\frac{\partial f}{\partial z}\left(z_{0}\right)$. At a holomorphic point, $\frac{\partial f}{\partial\bar{z}}=0$; hence from $\frac{\partial z}{\partial r}=e^{i\phi}$ and the chain rule, $\frac{\partial f}{\partial r}\left(z_{0}\right)=\frac{\partial f}{\partial z}\left(z_{0}\right)e^{i\phi_{0}}$, i.e.

$$
f'\left(z_{0}\right)=e^{-i\phi_{0}}\frac{\partial f}{\partial r}\left(z_{0}\right)=e^{-i\phi_{0}}\left(\frac{\partial u}{\partial r}\left(r_{0},\phi_{0}\right)+i\frac{\partial v}{\partial r}\left(r_{0},\phi_{0}\right)\right).
$$

The proposition is proved. $\blacksquare$

### Problem 4

(Problem 3.4-7) Let $a,b,c\in\mathbb{C}$ and let $f:\mathbb{C}\to\mathbb{C}$ be $f\left(z\right)=az^{2}+b\left|z\right|^{2}+c\bar{z}^{2}$. Prove: $f$ is derivable at $z\in\mathbb{C}$ if and only if $bz+2c\bar{z}=0$.

### Solution to Problem 4

Since $\left|z\right|^{2}=z\bar{z}$, we have $f\left(z\right)=az^{2}+bz\bar{z}+c\bar{z}^{2}$. Compute the formal derivatives (**Definition 3.2.2 (Formal Derivatives)**): since the partial derivative of $az^{2}$ with respect to $\bar{z}$ is $0$, $\frac{\partial\left(z\bar{z}\right)}{\partial\bar{z}}=z$, $\frac{\partial\left(\bar{z}^{2}\right)}{\partial\bar{z}}=2\bar{z}$, we get

$$
\frac{\partial f}{\partial\bar{z}}\left(z\right)=bz+2c\bar{z}.
$$

By **Theorem 3.2.4**, $f$ is $\mathbb{C}$-differentiable at $z$ if and only if $\frac{\partial f}{\partial\bar{z}}\left(z\right)=0$, i.e. $bz+2c\bar{z}=0$; by **Theorem 3.3.3**, $\mathbb{C}$-differentiability is equivalent to derivability. Hence $f$ is derivable at $z$ if and only if $bz+2c\bar{z}=0$. $\blacksquare$

### Problem 5

(Problem 3.4-9) Find a function holomorphic on $\mathbb{C}$ such that $\operatorname{Re}f\left(z\right)=e^{x}\left(x\cos y-y\sin y\right)$, $z=x+iy$.

### Solution to Problem 5

Let $f=u+iv$, $u\left(x,y\right)=e^{x}\left(x\cos y-y\sin y\right)$. Since $f$ is holomorphic, $u,v$ satisfy the Cauchy–Riemann equations (**Theorem 3.2.4**): $v_{y}=u_{x}$, $v_{x}=-u_{y}$. Compute

$$
\begin{aligned}u_{x}&=e^{x}\left(x\cos y-y\sin y\right)+e^{x}\cos y=e^{x}\left(\cos y+x\cos y-y\sin y\right),\\
u_{y}&=e^{x}\left(-x\sin y-\sin y-y\cos y\right)=-e^{x}\left(\sin y+x\sin y+y\cos y\right).
\end{aligned}
$$

From $v_{y}=u_{x}$, integrate with respect to $y$:

$$
v\left(x,y\right)=\int e^{x}\left(\cos y+x\cos y-y\sin y\right)\,dy=e^{x}\left(\sin y+x\sin y+\int\left(-y\sin y\right)\,dy\right)+C\left(x\right).
$$

Using $\int\left(-y\sin y\right)\,dy=y\cos y-\sin y$, we get

$$
v\left(x,y\right)=e^{x}\left(\sin y+x\sin y+y\cos y-\sin y\right)+C\left(x\right)=e^{x}\left(x\sin y+y\cos y\right)+C\left(x\right).
$$

Next, from $v_{x}=-u_{y}$: $v_{x}=e^{x}\left(x\sin y+y\cos y\right)+e^{x}\sin y+C'\left(x\right)=e^{x}\left(x\sin y+\sin y+y\cos y\right)+C'\left(x\right)$, while $-u_{y}=e^{x}\left(\sin y+x\sin y+y\cos y\right)$. Equating the two gives $C'\left(x\right)=0$, i.e. $C\left(x\right)$ is a constant. Therefore

$$
f\left(z\right)=e^{x}\left(x\cos y-y\sin y\right)+ie^{x}\left(x\sin y+y\cos y\right)+iC,\quad C\in\mathbb{R}.
$$

Note that $ze^{z}=\left(x+iy\right)e^{x}\left(\cos y+i\sin y\right)$, whose real part is exactly $e^{x}\left(x\cos y-y\sin y\right)$ and whose imaginary part is exactly $e^{x}\left(x\sin y+y\cos y\right)$. Hence

$$
f\left(z\right)=ze^{z}+iC,\quad C\in\mathbb{R}.
$$

Verification: $f'\left(z\right)=\left(z+1\right)e^{z}$ is holomorphic on $\mathbb{C}$, and $\operatorname{Re}f=e^{x}\left(x\cos y-y\sin y\right)$, satisfying the requirement. $\blacksquare$
