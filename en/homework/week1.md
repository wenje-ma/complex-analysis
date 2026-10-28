# week1

> **Definition 1.1.5 (Real Part, Imaginary Part, Conjugate, Modulus)**<br>For $z=x+iy$, $x$ is the real part and $y$ is the imaginary part, written $x=\operatorname{Re}z$, $y=\operatorname{Im}z$; the conjugate of $z$ is $\overline{z}=x-iy$; the modulus of $z$ is

$$
\left|z\right|=\sqrt{x^{2}+y^{2}}.
$$

> **Definition 1.2.2 (Polar Form of a Complex Number)**<br>The polar form of a nonzero complex number $z=x+iy$ is $z=re^{i\phi}$, where $r=\left|z\right|$, $\phi$ is the argument $\operatorname{Arg}z$ (determined up to an integer multiple of $2\pi$), and $e^{i\phi}=\cos\phi+i\sin\phi$.

> **Definition 1.3.1 (Stereographic Projection)**<br>On the unit sphere $S:\xi^{2}+\eta^{2}+\zeta^{2}=1$, the point $z=\left(x,y\right)$ in the complex plane corresponds to

$$
Z=\left(\xi,\eta,\zeta\right),\quad\xi=\frac{2x}{1+\left|z\right|^{2}},\ \eta=\frac{2y}{1+\left|z\right|^{2}},\ \zeta=\frac{\left|z\right|^{2}-1}{1+\left|z\right|^{2}},
$$

establishing a bijection between $\mathbb{C}$ and $S\setminus\left\{N\right\}$ (the sphere minus the north pole).

> **Definition 1.4.2 (Chordal Metric)**<br>For $z,w\in\mathbb{C}$, the chordal distance is

$$
\rho\left(z,w\right)=\frac{2\left|z-w\right|}{\sqrt{1+\left|z\right|^{2}}\sqrt{1+\left|w\right|^{2}}}.
$$

---

## 1.5-1

Prove: if $\left|z\right|=1$ and $z\ne\pm1$, then

$$
\operatorname{Arg}\frac{z-1}{z+1}=\frac{\pi}{2}\ \text{or}\ \frac{3\pi}{2}\quad\left(\bmod 2\pi\right).
$$

### Solution 1.5-1

Let $z=e^{i\theta}$; then $z\ne\pm1$ is equivalent to $\theta\ne0,\pi\ \left(\bmod 2\pi\right)$. By **Definition 1.2.2 (Polar Form of a Complex Number)**,

$$
\frac{z-1}{z+1}=\frac{e^{i\theta}-1}{e^{i\theta}+1}=\frac{e^{i\theta/2}\left(e^{i\theta/2}-e^{-i\theta/2}\right)}{e^{i\theta/2}\left(e^{i\theta/2}+e^{-i\theta/2}\right)}=\frac{2i\sin\frac{\theta}{2}}{2\cos\frac{\theta}{2}}=i\tan\frac{\theta}{2}.
$$

Since $z\ne\pm1$, $\sin\frac{\theta}{2}\ne0$ and $\cos\frac{\theta}{2}\ne0$, so $\tan\frac{\theta}{2}\ne0$, and $\frac{z-1}{z+1}=i\tan\frac{\theta}{2}$ is a nonzero pure imaginary number. Its argument is $\frac{\pi}{2}$ when $\tan\frac{\theta}{2}> 0$, and $\frac{3\pi}{2}$ when $\tan\frac{\theta}{2}< 0$ (both modulo $2\pi$). This completes the proof. $\blacksquare$

---

## 1.5-3

Prove: if $z_{1},\cdots,z_{n}$ are nonzero complex numbers with $\sum_{k=1}^{n}\frac{1}{z_{k}}=0$, then for any line through the origin $z=0$, these points cannot all lie on one side of the line.

### Solution 1.5-3

Proof by contradiction. Suppose there is a line $L$ through the origin such that all $z_{1},\cdots,z_{n}$ lie strictly on one side of $L$ (i.e. in one open half-plane bounded by $L$). After rotating coordinates, we may assume $L$ is the real axis and all $z_{k}$ lie in the upper half-plane: $\operatorname{Im}z_{k}> 0$, $k=1,\cdots,n$.

Since $z_{k}=x_{k}+iy_{k}\ne0$ and $y_{k}=\operatorname{Im}z_{k}> 0$, using $\frac{1}{z_{k}}=\frac{\overline{z}_{k}}{\left|z_{k}\right|^{2}}$ from **Definition 1.1.5 (Real Part, Imaginary Part, Conjugate, Modulus)**, we get

$$
\operatorname{Im}\frac{1}{z_{k}}=\operatorname{Im}\frac{x_{k}-iy_{k}}{x_{k}^{2}+y_{k}^{2}}=-\frac{y_{k}}{x_{k}^{2}+y_{k}^{2}}< 0.
$$

Thus

$$
\operatorname{Im}\sum_{k=1}^{n}\frac{1}{z_{k}}=\sum_{k=1}^{n}\operatorname{Im}\frac{1}{z_{k}}< 0,
$$

which contradicts $\sum_{k=1}^{n}\frac{1}{z_{k}}=0$ (whose imaginary part is $0$). Hence these points cannot all lie on one side of a line through the origin. $\blacksquare$

---

## 1.5-5

Let $z_{1},\cdots,z_{n},w_{1},\cdots,w_{n}$ be complex numbers. Prove the following Lagrange identity:

$$
\left|\sum_{j=1}^{n}z_{j}\overline{w}_{j}\right|^{2}=\left(\sum_{j=1}^{n}\left|z_{j}\right|^{2}\right)\left(\sum_{j=1}^{n}\left|w_{j}\right|^{2}\right)-\sum_{1\le j< k\le n}\left|z_{j}\overline{w}_{k}-z_{k}\overline{w}_{j}\right|^{2}.
$$

### Solution 1.5-5

Set $A=\sum_{j=1}^{n}z_{j}\overline{w}_{j}$. By the properties of conjugate and modulus (**Definition 1.1.5 (Real Part, Imaginary Part, Conjugate, Modulus)**),

$$
\left|A\right|^{2}=A\overline{A}=\sum_{j=1}^{n}\sum_{k=1}^{n}z_{j}\overline{w}_{j}\overline{z_{k}\overline{w}_{k}}=\sum_{j=1}^{n}\sum_{k=1}^{n}z_{j}\overline{z}_{k}\overline{w}_{j}w_{k}.
$$

Separate the diagonal terms $j=k$:

$$
\left|A\right|^{2}=\sum_{j=1}^{n}\left|z_{j}\right|^{2}\left|w_{j}\right|^{2}+\sum_{j\ne k}z_{j}\overline{z}_{k}\overline{w}_{j}w_{k}.
$$

On the other hand,

$$
\sum_{1\le j< k\le n}\left|z_{j}\overline{w}_{k}-z_{k}\overline{w}_{j}\right|^{2}=\sum_{j< k}\left(\left|z_{j}\right|^{2}\left|w_{k}\right|^{2}+\left|z_{k}\right|^{2}\left|w_{j}\right|^{2}-z_{j}\overline{w}_{k}\overline{z}_{k}w_{j}-\overline{z}_{j}w_{k}z_{k}\overline{w}_{j}\right),
$$

and

$$
\left(\sum_{j=1}^{n}\left|z_{j}\right|^{2}\right)\left(\sum_{k=1}^{n}\left|w_{k}\right|^{2}\right)=\sum_{j=1}^{n}\left|z_{j}\right|^{2}\left|w_{j}\right|^{2}+\sum_{j< k}\left(\left|z_{j}\right|^{2}\left|w_{k}\right|^{2}+\left|z_{k}\right|^{2}\left|w_{j}\right|^{2}\right).
$$

Subtracting:

$$
\left(\sum_{j=1}^{n}\left|z_{j}\right|^{2}\right)\left(\sum_{j=1}^{n}\left|w_{j}\right|^{2}\right)-\sum_{1\le j< k\le n}\left|z_{j}\overline{w}_{k}-z_{k}\overline{w}_{j}\right|^{2}=\sum_{j=1}^{n}\left|z_{j}\right|^{2}\left|w_{j}\right|^{2}+\sum_{j< k}\left(z_{j}\overline{w}_{k}\overline{z}_{k}w_{j}+\overline{z}_{j}w_{k}z_{k}\overline{w}_{j}\right)=\sum_{j=1}^{n}\left|z_{j}\right|^{2}\left|w_{j}\right|^{2}+\sum_{j< k}\left(z_{j}\overline{z}_{k}\overline{w}_{j}w_{k}+\overline{z}_{j}z_{k}w_{k}\overline{w}_{j}\right).
$$

The sum $\sum_{j< k}\left(z_{j}\overline{z}_{k}\overline{w}_{j}w_{k}+\overline{z}_{j}z_{k}w_{k}\overline{w}_{j}\right)=\sum_{j\ne k}z_{j}\overline{z}_{k}\overline{w}_{j}w_{k}$ (the $j< k$ and $k< j$ terms pair up), so the right side equals $\left|A\right|^{2}$. The Lagrange identity holds. $\blacksquare$

---

## 1.5-7

Let $\left\langle\cdot,\cdot\right\rangle$ be the standard inner product on $\mathbb{R}^{2}$, i.e. $\left\langle X,Y\right\rangle=x_{1}y_{1}+x_{2}y_{2}$ ($X=\left(x_{1},x_{2}\right)\in\mathbb{R}^{2}$, $Y=\left(y_{1},y_{2}\right)\in\mathbb{R}^{2}$); let $\left(z,w\right)=z\overline{w}$ for $z,w\in\mathbb{C}$ be the Hermitian inner product on $\mathbb{C}$. Prove:

$$
\left\langle z,w\right\rangle=\frac{1}{2}\left(\left(z,w\right)+\left(w,z\right)\right)=\operatorname{Re}\left(z,w\right).
$$

### Solution 1.5-7

View $z=x_{1}+ix_{2}$ and $w=y_{1}+iy_{2}$ as vectors $X=\left(x_{1},x_{2}\right)$, $Y=\left(y_{1},y_{2}\right)$ in $\mathbb{R}^{2}$. By the definition of the standard inner product,

$$
\left\langle z,w\right\rangle=\left\langle X,Y\right\rangle=x_{1}y_{1}+x_{2}y_{2}.
$$

On the other hand, $\left(z,w\right)=z\overline{w}=\left(x_{1}+ix_{2}\right)\left(y_{1}-iy_{2}\right)=x_{1}y_{1}+x_{2}y_{2}+i\left(x_{2}y_{1}-x_{1}y_{2}\right)$, so

$$
\operatorname{Re}\left(z,w\right)=x_{1}y_{1}+x_{2}y_{2}=\left\langle z,w\right\rangle.
$$

Since $\overline{\left(z,w\right)}=\overline{z\overline{w}}=\overline{z}w=\left(w,z\right)$,

$$
\frac{1}{2}\left(\left(z,w\right)+\left(w,z\right)\right)=\frac{1}{2}\left(\left(z,w\right)+\overline{\left(z,w\right)}\right)=\operatorname{Re}\left(z,w\right).
$$

Hence $\left\langle z,w\right\rangle=\frac{1}{2}\left(\left(z,w\right)+\left(w,z\right)\right)=\operatorname{Re}\left(z,w\right)$. $\blacksquare$

---

## 1.5-9

(Spherical metric) For any $a,b\in\mathbb{C}$, let $A,B$ be their stereographic projections, and define

$$
\operatorname{dist}_{\sigma}\left(a,b\right)=\text{the shortest great-circle arc length between }A,B\text{ on the unit sphere }S.
$$

Prove: (i) $\operatorname{dist}_{\sigma}\left(a,b\right)=2\arctan\left|\frac{a-b}{1+\overline{a}b}\right|$; (ii) $\rho\left(a,b\right)=2\sin\frac{1}{2}\operatorname{dist}_{\sigma}\left(a,b\right)$; (iii) $\frac{2}{\pi}\operatorname{dist}_{\sigma}\left(a,b\right)\le\rho\left(a,b\right)\le\operatorname{dist}_{\sigma}\left(a,b\right)$, where $\rho$ is the chordal metric.

### Solution 1.5-9

Let $d=\operatorname{dist}_{\sigma}\left(a,b\right)$. The unit sphere has radius $1$, so $d$ equals the central angle $\angle AOB$ ($O$ being the center), and the chord length $\left|AB\right|=2\sin\frac{d}{2}$. By the relation between stereographic projection and the chordal metric (**Definition 1.4.2 (Chordal Metric)**), $\left|AB\right|=\rho\left(a,b\right)$, so

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

Finally prove (iii). Let $t=\frac{d}{2}\in\left[0,\frac{\pi}{2}\right]$; then $\rho\left(a,b\right)=2\sin t$. Right inequality: since $\sin t\le t$, $\rho\left(a,b\right)=2\sin t\le2t=d=\operatorname{dist}_{\sigma}\left(a,b\right)$. Left inequality: the function $\frac{\sin t}{t}$ is decreasing on $\left(0,\frac{\pi}{2}\right]$ (its derivative $\frac{t\cos t-\sin t}{t^{2}}< 0$), so for $t\in\left(0,\frac{\pi}{2}\right]$,

$$
\frac{\sin t}{t}\ge\frac{\sin\frac{\pi}{2}}{\frac{\pi}{2}}=\frac{2}{\pi},
$$

i.e. $\sin t\ge\frac{2t}{\pi}$, giving $\rho\left(a,b\right)=2\sin t\ge\frac{4t}{\pi}=\frac{2}{\pi}d=\frac{2}{\pi}\operatorname{dist}_{\sigma}\left(a,b\right)$. Combining gives (iii). $\blacksquare$
