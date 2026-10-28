# week21

> **Lemma 18.1.1 (Pasting Lemma)**<br>If domains $D_{1},D_{2}$ are disjoint with a common boundary segment $\gamma$, $f_{1},f_{2}$ are holomorphic on them and continuous to $\gamma$, and $f_{1}=f_{2}$ on $\gamma$, then the pasted function is holomorphic on $D_{1}\cup\gamma\cup D_{2}$.

> **Theorem 18.1.2 (Schwarz Reflection Principle I)**<br>If $D$ is symmetric about the real axis, $f$ is holomorphic on $D^{+}:=D\cap\left\{\operatorname{Im}z> 0\right\}$, continuous to $D^{+}\cap\mathbb{R}$ and real-valued there, then $f$ extends to a holomorphic function on $D$.

> **Theorem 18.1.3 (Schwarz Reflection Principle II)**<br>If $f$ is holomorphic on $D^{+}$, continuous to a boundary segment $I\subset\mathbb{R}$ and real-valued there, then $f$ extends to $D^{+}\cup I\cup D^{-}$, where $D^{-}$ is the reflection of $D^{+}$ across the real axis, with $f\left(z\right)=\overline{f\left(\overline z\right)}$.

---

## 18.4-1

Prove: any conformal equivalence between two rectangles that maps all vertices of one rectangle to vertices of the other is linear.

### Solution 18.4-1

Let $f$ map rectangle $R$ conformally onto rectangle $R'$, sending vertices to vertices. By boundary correspondence (conformal maps between Jordan domains extend continuously to the boundary), $f$ maps each side of $R$ to a side of $R'$, with values continuous along the line segment.

By **Theorem 18.1.3 (Schwarz Reflection Principle II)**, $f$ can be reflected across each side: the side maps to a side of $R'$ (a line segment), and $f$ reflects to the rectangle adjacent to $R$. Repeated reflection extends $f$ to an entire function $\mathbb{C}\to\mathbb{C}$ (meromorphic at infinity, but entire). Let the side-length directions of $R$ be $L_{1},L_{2}$ (real and imaginary directions), and those of $R'$ be $L'_{1},L'_{2}$; the extension satisfies the quasi-periodicity conditions $f\left(z+L_{1}\right)=f\left(z\right)+L'_{1}$, $f\left(z+L_{2}\right)=f\left(z\right)+L'_{2}$.

Differentiating gives $f'\left(z+L_{1}\right)=f'\left(z\right)$, $f'\left(z+L_{2}\right)=f'\left(z\right)$, i.e. $f'$ is a doubly periodic entire function (periods $L_{1},L_{2}$). A doubly periodic entire function is bounded on the fundamental parallelogram; by Liouville's theorem, $f'$ is constant, so $f$ is linear: $f\left(z\right)=az+b$. $\blacksquare$

---

## 18.4-3

Let $f$ be holomorphic on the annulus $A\left(0;0;1\right):=\left\{0< \left|z\right|< 1\right\}$, extend continuously to the unit circle $\left\{\left|z\right|=1\right\}$, and take only real values there. Prove: $f$ extends to a holomorphic function on $\mathbb{C}\setminus\left\{0\right\}$ satisfying $f\left(z\right)=\overline{f\left(\frac{1}{\overline z}\right)}$ for all $z\ne0$.

### Solution 18.4-3

$f$ is holomorphic on the punctured unit disk $A\left(0;0;1\right)=\left\{\left|z\right|< 1\right\}\setminus\left\{0\right\}$, continuous on $\left|z\right|=1$ with real values. The circle $\left\{\left|z\right|=1\right\}$ is an analytic curve, and $f$ is real-valued on it. By the circular case of **Theorem 18.1.3 (Schwarz Reflection Principle II)** (after a Mobius map sends the circle to the real axis), $f$ reflects across $\left|z\right|=1$: define for $\left|z\right|> 1$

$$
f\left(z\right):=\overline{f\left(\frac{1}{\overline z}\right)},\quad \left|z\right|> 1.
$$

The right-hand side is holomorphic for $\left|z\right|> 1$ (since $\frac{1}{\overline z}$ lies inside $\left|z\right|< 1$); on $\left|z\right|=1$, $z=\frac{1}{\overline z}$, and since $f$ is real-valued, $f\left(z\right)=\overline{f\left(z\right)}$, matching the original $f$. Hence $f$ extends holomorphically to $\mathbb{C}\setminus\left\{0\right\}$, and by definition $f\left(z\right)=\overline{f\left(\frac{1}{\overline z}\right)}$ for all $z\ne0$. $\blacksquare$

---

## 18.4-5

If $f$ is entire, $f\left(\mathbb{R}\right)\subset\mathbb{R}$ and $f\left(i\mathbb{R}\right)\subset i\mathbb{R}$, prove: $f\left(-z\right)=-f\left(z\right)$ for all $z\in\mathbb{C}$.

### Solution 18.4-5

From $f\left(\mathbb{R}\right)\subset\mathbb{R}$, applying **Theorem 18.1.3 (Schwarz Reflection Principle II)** gives $f\left(\overline z\right)=\overline{f\left(z\right)}$ for all $z\in\mathbb{C}$.

Write $f_{e}\left(z\right):=\frac{f\left(z\right)+f\left(-z\right)}{2}$ (even part); it is entire. From $f\left(\mathbb{R}\right)\subset\mathbb{R}$, for $z=x\in\mathbb{R}$, $f_{e}\left(x\right)\in\mathbb{R}$; from $f\left(i\mathbb{R}\right)\subset i\mathbb{R}$, for $z=iy$, $f_{e}\left(iy\right)\in i\mathbb{R}$. Since $f_{e}$ is an even entire function, there is an entire $F$ with $f_{e}\left(z\right)=F\left(z^{2}\right)$. Then $F$ satisfies: for $x> 0$, $F\left(x\right)=f_{e}\left(\sqrt x\right)\in\mathbb{R}$; for $x< 0$, $F\left(x\right)=f_{e}\left(i\sqrt{\left|x\right|}\right)\in i\mathbb{R}$.

From $F\left(x\right)\in\mathbb{R}$ for $x> 0$ and the reflection principle, $F\left(\overline w\right)=\overline{F\left(w\right)}$; in particular for $x< 0$, $F\left(x\right)=\overline{F\left(x\right)}$, so $F\left(x\right)\in\mathbb{R}$. Together with $F\left(x\right)\in i\mathbb{R}$ for $x< 0$, this gives $F\left(x\right)=0$ on the negative real axis $x< 0$. The negative real axis has accumulation points; since the entire function $F$ vanishes there, $F\equiv0$, hence $f_{e}\equiv0$, i.e. $f\left(-z\right)=-f\left(z\right)$ for all $z\in\mathbb{C}$. $\blacksquare$

---

## 18.4-7

Let $f\left(z\right)$ be holomorphic on the annulus $A\left(0;1;2\right):=\left\{1< \left|z\right|< 2\right\}$, let $\gamma$ be an arc of the circle $\left|z\right|=2$, and suppose $f$ is continuous on $A\left(0;1;2\right)\cup\gamma$ and identically zero on $\gamma$. Prove: $f\left(z\right)\equiv0$.

### Solution 18.4-7

$f$ is identically zero on $\gamma$, hence in particular real-valued, and $\gamma$ is an analytic circular arc. By the circular case of **Theorem 18.1.3 (Schwarz Reflection Principle II)**, $f$ extends holomorphically across $\gamma$: there is an open set $W$ containing $\gamma$ and a holomorphic $F$ on $W$ with $F=f$ on $\left(A\left(0;1;2\right)\cap W\right)\cup\gamma$.

Then $F$ is holomorphic on $W$ and vanishes on $\gamma$. Since $\gamma$ is a circular arc with interior accumulation points, $F$ has zeros accumulating in $W$. By the identity theorem, $F\equiv0$ on the connected component of $W$. In particular, $f\equiv0$ on the nonempty set $A\left(0;1;2\right)\cap W$; by the identity theorem again, $f\equiv0$ on the whole annulus $A\left(0;1;2\right)$. $\blacksquare$
