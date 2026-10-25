# Assignment 13

> **Theorem 4.3.4** (Circle-Preserving Property)<br>A Möbius transformation maps generalized circles (circles or straight lines) in the extended complex plane to generalized circles, and preserves the angle of intersection.

> **Proposition 4.3.7**<br>When a Möbius transformation maps two intersection points to $0$ and $\infty$, two intersecting circles are mapped to two straight lines through the origin, and the region is mapped to an angular sector.

> **Definition 6.2.4** (Power Function)<br>$z^{\alpha}=e^{\alpha\log z}$ maps the angular sector $\left\{0< \arg z< \beta\right\}$ conformally onto the angular sector $\left\{0< \arg w< \alpha\beta\right\}$ (taking a suitable holomorphic branch).

> **Proposition 5.2.2** (The Exponential Map on a Strip)<br>$z\mapsto e^{z}$ maps the horizontal strip $\left\{0< \operatorname{Im}z< 2\pi\right\}$ conformally onto $\mathbb{C}\setminus\left[0,+\infty\right)$.

> **Proposition 5.2.3**<br>The Möbius transformation $$z\mapsto\frac{z-\alpha}{z-\beta}$$ ($\alpha,\beta\in\mathbb{C}$) maps circles not passing through $\alpha,\beta$ to circles, and $\left|z-\alpha\right|/\left|z-\beta\right|$ is constant on the Apollonius circles.

### Problem 1

(Problem 12.3-1) Find a conformal equivalence mapping the domain $\left\{0< \operatorname{Im}z< \pi\right\}\setminus\left\{x+\frac{\pi}{2}i:x\le0\right\}$ onto the open unit disk.

### Solution to Problem 1

Write $D=\left\{z:0< \operatorname{Im}z< \pi\right\}\setminus\left\{x+\frac{\pi}{2}i:x\le0\right\}$.

Step 1, $w=e^{z}$: maps the horizontal strip $\left\{0< \operatorname{Im}z< \pi\right\}$ to the upper half-plane $\mathbb{H}=\left\{\operatorname{Im}w> 0\right\}$; the ray $z=x+\frac{\pi}{2}i$ ($x\le0$) maps to $w=e^{x}e^{i\pi/2}=ie^{x}$, $x\le0$, i.e. the imaginary axis segment $\left\{iy:0< y\le1\right\}$. Hence $w=e^{z}$ maps $D$ to $D_{1}:=\mathbb{H}\setminus\left(0,i\right]$.

Step 2, $u=w^{2}$: maps $\mathbb{H}$ to $\mathbb{C}\setminus\left[0,+\infty\right)$, and the segment $\left(0,i\right]$ maps to $\left\{u=-y^{2}:0< y\le1\right\}=\left[-1,0\right)$. Hence $u$ maps $D_{1}$ to $D_{2}:=\mathbb{C}\setminus\left[-1,+\infty\right)$.

Step 3, $t=\sqrt{u+1}$ (taking the principal branch on $\mathbb{C}\setminus\left[0,+\infty\right)$): since $u+1\in\mathbb{C}\setminus\left[0,+\infty\right)$, the principal square root maps $\mathbb{C}\setminus\left[0,+\infty\right)$ to the right half-plane $\left\{\operatorname{Re}t> 0\right\}$.

Step 4, the Möbius transformation $s\mapsto\frac{s-1}{s+1}$ maps the right half-plane to the open unit disk. In summary, the desired map is

$$
F\left(z\right)=\frac{\sqrt{e^{2z}+1}-1}{\sqrt{e^{2z}+1}+1},
$$

where the square root takes the principal branch (by the above construction, $e^{2z}+1\in\mathbb{C}\setminus\left[0,+\infty\right)$, so the branch is well defined). $\blacksquare$

### Problem 2

(Problem 12.3-2) Find a conformal equivalence mapping the region bounded by the circle $\left\{\left|z\right|=1\right\}$ and the circle $\left\{\left|z-1\right|=\frac{5}{2}\right\}$ onto a standard annulus (i.e. with concentric inner and outer boundaries).

### Solution to Problem 2

The two circles $C_{1}:\left|z\right|=1$ and $C_{2}:\left|z-1\right|=\frac{5}{2}$ are disjoint (both centers lie on the real axis), with $C_{1}$ contained in the interior of $C_{2}$, bounding the region $D=\left\{1< \left|z\right|< 3.5\ \text{近似的环形}\right\}$ (i.e. $\left|z\right|> 1$ and $\left|z-1\right|< 2.5$).

Use the fractional linear transformation $T\left(z\right)=\frac{z-\alpha}{z-\beta}$ ($\alpha,\beta\in\mathbb{R}$) to map the two circles to concentric circles centered at the origin, i.e. requiring $\frac{\left|z-\alpha\right|}{\left|z-\beta\right|}$ to take constant values $r_{1}$ and $r_{2}$ on $C_{1}$ and $C_{2}$ respectively.

For $C_{1}$: $\left|z-\alpha\right|^{2}=r_{1}^{2}\left|z-\beta\right|^{2}$ holds identically on $\left|z\right|=1$; expanding gives $\alpha=r_{1}^{2}\beta$ and $1+\alpha^{2}=r_{1}^{2}\left(1+\beta^{2}\right)$. For $C_{2}$: $\left|z-\alpha\right|^{2}=r_{2}^{2}\left|z-\beta\right|^{2}$ holds identically on $\left|z-1\right|=\frac{5}{2}$; expanding gives $1-\alpha=r_{2}^{2}\left(1-\beta\right)$ and $\frac{25}{4}+\left(1-\alpha\right)^{2}=r_{2}^{2}\left(\frac{25}{4}+\left(1-\beta\right)^{2}\right)$. From the first set we get $\alpha\beta=-1$; from the second set, combined with $\beta=-\frac{1}{\alpha}$, we get $\frac{25}{4}=\left(1-\alpha\right)\left(1-\beta\right)=\frac{1}{\alpha}-\alpha$, i.e.

$$
\alpha^{2}+\frac{25}{4}\alpha-1=0,\quad \alpha=\frac{-25\pm\sqrt{689}}{8}.
$$

Take $\alpha=\frac{-25+\sqrt{689}}{8}$, $\beta=-\frac{1}{\alpha}$. Then $T$ maps $C_{1},C_{2}$ to the concentric circles $\left|w\right|=r_{1}$, $\left|w\right|=r_{2}$, where $r_{1}^{2}=\frac{1+\alpha^{2}}{1+\beta^{2}}$, and the region $D$ maps to the annulus $\left\{r_{1}< \left|w\right|< r_{2}\right\}$. Finally scaling, the desired standard annulus map is

$$
F\left(z\right)=\frac{1}{r_{1}}\cdot\frac{z-\alpha}{z-\beta},
$$

which maps $D$ to the standard annulus $\left\{1< \left|w\right|< \frac{r_{2}}{r_{1}}\right\}$. $\blacksquare$

### Problem 3

(Problem 12.3-3) Find a conformal equivalence mapping the region $\left\{\operatorname{Re}z> 0\right\}\setminus\left\{\left|z-0.5\right|\le1\right\}$ onto the open unit disk.

### Solution to Problem 3

Write $D=\left\{\operatorname{Re}z> 0\right\}\setminus\left\{\left|z-\frac{1}{2}\right|\le1\right\}$. Its boundary is the imaginary axis and the circle $\left|z-\frac{1}{2}\right|=1$, and the two curves intersect at $z=\pm\frac{\sqrt{3}}{2}i$. This is a simply connected region bounded by two generalized circles.

Step 1: use a Möbius transformation to map the two intersection points to $0$ and $\infty$:

$$
w\left(z\right)=\frac{z-\frac{\sqrt{3}}{2}i}{z+\frac{\sqrt{3}}{2}i}.
$$

By **Proposition 4.3.7**, $w$ maps the two circles to two straight lines through the origin, and the region $D$ to an angular sector with vertex at the origin. The angle between the imaginary axis and the circle $\left|z-\frac{1}{2}\right|=1$ at the intersection point $\frac{\sqrt{3}}{2}i$: the tangent direction to the circle at that point has angle $\frac{\pi}{6}$ (the radius from the center $\frac12$ to that point has direction angle $\frac{2\pi}{3}$), and the tangent to the imaginary axis has direction angle $\frac{\pi}{2}$, so the angle is $\frac{\pi}{3}$. Hence $D$ is mapped to the angular sector $\left\{0< \arg w< \frac{\pi}{3}\right\}$.

Step 2: the power function $w\mapsto w^{3}$ maps the angular sector $\left\{0< \arg w< \frac{\pi}{3}\right\}$ to the upper half-plane $\left\{\operatorname{Im}u> 0\right\}$.

Step 3: the Möbius transformation $u\mapsto\frac{u-i}{u+i}$ maps the upper half-plane to the open unit disk. Hence the desired map is

$$
F\left(z\right)=\frac{\left(\frac{z-\frac{\sqrt{3}}{2}i}{z+\frac{\sqrt{3}}{2}i}\right)^{3}-i}{\left(\frac{z-\frac{\sqrt{3}}{2}i}{z+\frac{\sqrt{3}}{2}i}\right)^{3}+i}.
$$

$\blacksquare$

### Problem 4

(Problem 12.3-4) Find a conformal equivalence between the region $\left\{z\in\mathbb{C}:\operatorname{Re}z> 0\ \text{且}\ \arg z\in\left(0,1\right)\right\}$ and the unit disk.

### Solution to Problem 4

Since $0< 1< \frac{\pi}{2}$, the condition $\arg z\in\left(0,1\right)$ already ensures $\operatorname{Re}z=\rho\cos\arg z> 0$, so this region is the angular sector

$$
D=\left\{z=\rho e^{i\theta}:\rho> 0,\ 0< \theta< 1\right\}.
$$

Step 1: the power function $z\mapsto z^{\pi}$ (taking a holomorphic branch) maps the angular sector $\left\{0< \arg z< 1\right\}$ to the angular sector $\left\{0< \arg u< \pi\right\}$, i.e. the upper half-plane $\left\{\operatorname{Im}u> 0\right\}$.

Step 2: the Möbius transformation $u\mapsto\frac{u-i}{u+i}$ maps the upper half-plane to the open unit disk. Hence the desired map is

$$
F\left(z\right)=\frac{z^{\pi}-i}{z^{\pi}+i},
$$

which maps the region $D$ conformally onto the open unit disk. $\blacksquare$
