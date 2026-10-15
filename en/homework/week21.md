# Assignment 21

> **Lemma 18.1.1** (Pasting Lemma)<br>If domains $D_{1},D_{2}$ are disjoint and share a common boundary segment $\gamma$, $f_{1},f_{2}$ are holomorphic on them respectively and continuous up to $\gamma$, and $f_{1}=f_{2}$ on $\gamma$, then the pasted function is holomorphic on $D_{1}\cup\gamma\cup D_{2}$.

> **Theorem 18.1.2** (Schwarz Reflection Principle I)<br>If $D$ is symmetric about the real axis, $f$ is holomorphic on $D^{+}:=D\cap\left\{\operatorname{Im}z>0\right\}$, continuous up to $D^{+}\cap\mathbb{R}$ and real-valued there, then $f$ extends to a holomorphic function on $D$.

> **Theorem 18.1.3** (Schwarz Reflection Principle II)<br>If $f$ is holomorphic on $D^{+}$, continuous up to a boundary segment $I\subset\mathbb{R}$ and real-valued there, then $f$ extends to $D^{+}\cup I\cup D^{-}$, where $D^{-}$ is the reflection of $D^{+}$ across the real axis, and the extension satisfies $f\left(z\right)=\overline{f\left(\bar z\right)}$.

### Problem 1

(Problem 18.4-1) Prove: any conformal equivalence between two rectangles that maps every vertex of one rectangle to a vertex of the other must be linear.

### Solution to Problem 1

Let $f$ map the rectangle $R$ conformally onto the rectangle $R'$, with vertices mapped to vertices. By boundary preservation (a conformal map between Jordan domains extends continuously to the boundary), $f$ maps each side of $R$ to a side of $R'$, and the values along each side vary continuously along the line segment.

By **Theorem 18.1.3 (Schwarz Reflection Principle II)**, $f$ can be reflected across each side: a side maps to a side of $R'$ (a line segment), and $f$ reflects to the rectangle adjacent to $R$. Repeated reflection extends $f$ to an entire function $\mathbb{C}\to\mathbb{C}$ (meromorphic at infinity, but entire). Let the side lengths of $R$ in the corresponding directions be $L_{1},L_{2}$ (real and imaginary directions), and those of $R'$ be $L'_{1},L'_{2}$; the extension satisfies the quasi-periodicity conditions $f\left(z+L_{1}\right)=f\left(z\right)+L'_{1}$, $f\left(z+L_{2}\right)=f\left(z\right)+L'_{2}$.

Differentiating $f'$ gives $f'\left(z+L_{1}\right)=f'\left(z\right)$, $f'\left(z+L_{2}\right)=f'\left(z\right)$, i.e. $f'$ is a doubly periodic entire function (with periods $L_{1},L_{2}$). A doubly periodic entire function is bounded on the fundamental parallelogram; by Liouville's theorem, $f'$ is constant, so $f$ is linear: $f\left(z\right)=az+b$. $\blacksquare$

### Problem 2

(Problem 18.4-3) Let $f$ be holomorphic on the annulus $A\left(0;0;1\right):=\left\{0<\left|z\right|<1\right\}$, and suppose $f$ extends continuously to the unit circle $\left\{\left|z\right|=1\right\}$ and takes only real values there. Prove: $f$ extends to a holomorphic function on $\mathbb{C}\setminus\left\{0\right\}$ satisfying $f\left(z\right)=\overline{f\left(\frac{1}{\bar z}\right)}$ for all $\forall z\ne0$. (Note: the OCR of the original problem omitted the conjugation on $\frac{1}{\bar z}$; it is restored according to the standard form of the Schwarz reflection principle.)

### Solution to Problem 2

$f$ is holomorphic on the punctured unit disk $A\left(0;0;1\right)=\left\{\left|z\right|<1\right\}\setminus\left\{0\right\}$, and is continuous and real-valued on $\left|z\right|=1$. The circle $\left\{\left|z\right|=1\right\}$ is an analytic curve, and $f$ is real-valued on it. By the Schwarz reflection principle (for the circle, i.e. **Theorem 18.1.3** after a Möbius transformation maps the circle to the real axis), $f$ can be reflected across $\left|z\right|=1$: for $\left|z\right|>1$ define

$$
f\left(z\right):=\overline{f\left(\frac{1}{\bar z}\right)},\quad \left|z\right|>1.
$$

The right-hand side is holomorphic for $\left|z\right|>1$ (since $\frac{1}{\bar z}$ lies inside $\left|z\right|<1$), and on $\left|z\right|=1$, $z=\frac{1}{\bar z}$; since $f$ is real-valued, $f\left(z\right)=\overline{f\left(z\right)}$, which matches the original $f$. Hence $f$ extends to a holomorphic function on $\mathbb{C}\setminus\left\{0\right\}$, and by definition $f\left(z\right)=\overline{f\left(\frac{1}{\bar z}\right)}$ for all $\forall z\ne0$. $\blacksquare$

### Problem 3

(Problem 18.4-5) If $f$ is entire, $f\left(\mathbb{R}\right)\subset\mathbb{R}$ and $f\left(i\mathbb{R}\right)\subset i\mathbb{R}$, prove: $f\left(-z\right)=-f\left(z\right)$ for all $\forall z\in\mathbb{C}$.

### Solution to Problem 3

From $f\left(\mathbb{R}\right)\subset\mathbb{R}$, applying **Theorem 18.1.3 (Schwarz Reflection Principle II)** gives $f\left(\bar z\right)=\overline{f\left(z\right)}$ for all $\forall z\in\mathbb{C}$.

Write $f_{e}\left(z\right):=\frac{f\left(z\right)+f\left(-z\right)}{2}$ (the even part); it is entire. From $f\left(\mathbb{R}\right)\subset\mathbb{R}$, for $z=x\in\mathbb{R}$ we have $f_{e}\left(x\right)\in\mathbb{R}$; from $f\left(i\mathbb{R}\right)\subset i\mathbb{R}$, for $z=iy$ we have $f_{e}\left(iy\right)\in i\mathbb{R}$. Since $f_{e}$ is an even entire function, there exists an entire function $F$ such that $f_{e}\left(z\right)=F\left(z^{2}\right)$. Then $F$ satisfies: for $x>0$, $F\left(x\right)=f_{e}\left(\sqrt x\right)\in\mathbb{R}$; for $x<0$, $F\left(x\right)=f_{e}\left(i\sqrt{\left|x\right|}\right)\in i\mathbb{R}$.

Since $F\left(x\right)\in\mathbb{R}$ for $x>0$, by the reflection principle $F\left(\bar w\right)=\overline{F\left(w\right)}$; in particular, for $x<0$, $F\left(x\right)=\overline{F\left(x\right)}$, so $F\left(x\right)\in\mathbb{R}$. Together with $F\left(x\right)\in i\mathbb{R}$ for $x<0$, we get $F\left(x\right)=0$ on the negative real axis $x<0$. The negative real axis has accumulation points, and the entire function $F$ is zero on it, so $F\equiv0$, hence $f_{e}\equiv0$, i.e. $f\left(-z\right)=-f\left(z\right)$ for all $\forall z\in\mathbb{C}$. $\blacksquare$

### Problem 4

(Problem 18.4-7) Let $f\left(z\right)$ be holomorphic on the annulus $A\left(0;1;2\right):=\left\{1<\left|z\right|<2\right\}$, let $\gamma$ be an arc on the circle $\left|z\right|=2$, suppose $f\left(z\right)$ is continuous on $A\left(0;1;2\right)\cup\gamma$, and $f$ vanishes identically on $\gamma$. Prove: $f\left(z\right)\equiv0$.

### Solution to Problem 4

$f$ vanishes identically on $\gamma$, in particular it is real-valued there, and $\gamma$ is an analytic circular arc. By the Schwarz reflection principle (for the circle), $f$ can be holomorphically extended across $\gamma$: there exists an open set $W$ containing $\gamma$ and a holomorphic function $F$ on $W$ such that $F=f$ on $\left(A\left(0;1;2\right)\cap W\right)\cup\gamma$.

Then $F$ is holomorphic on $W$ and is $0$ on $\gamma$. Since $\gamma$ is a circular arc, as a connected set it has interior accumulation points, so $F$ has zeros in a neighborhood (containing accumulation points) on $W$. By the identity theorem, $F\equiv0$ on the connected component of $W$. In particular, $f\equiv0$ on $A\left(0;1;2\right)\cap W\ne\emptyset$, and again by the identity theorem, $f\equiv0$ on the entire annulus $A\left(0;1;2\right)$. $\blacksquare$
