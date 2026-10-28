# week12

> **Theorem 10.3.1 (Schwarz Lemma)**<br>If $f:\mathbb{D}\to\mathbb{D}$ is holomorphic with $f\left(0\right)=0$, then $\left|f\left(z\right)\right|\le\left|z\right|$ and $\left|f'\left(0\right)\right|\le1$; equality holds if and only if $f\left(z\right)=e^{i\theta}z$.

> **Definition 10.3.2 (Blaschke Factor)**<br>For $a\in\mathbb{D}$, the Blaschke factor is defined by

$$
\phi_{a}\left(z\right)=\frac{z-a}{1-\overline{a}z}.
$$

It is an automorphism of $\mathbb{D}$, with $\phi_{a}\left(a\right)=0$ and $\left|\phi_{a}\left(e^{i\theta}\right)\right|=1$.

> **Theorem 10.3.4 (Schwarz-Pick Lemma)**<br>For holomorphic $f:\mathbb{D}\to\mathbb{D}$,

$$
\left|\frac{f\left(z\right)-f\left(w\right)}{1-\overline{f\left(w\right)}f\left(z\right)}\right|\le\left|\frac{z-w}{1-\overline{w}z}\right|;
$$

in differential form,

$$
\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\le\frac{1}{1-\left|z\right|^{2}},
$$

with equality if and only if $f\in\operatorname{auto}\left(\mathbb{D}\right)$.

> **Theorem 11.2.2 (Riemann Mapping Theorem)**<br>Every simply connected domain other than the whole plane is conformally equivalent to the open unit disk.

> **Definition 11.2.6 (Mapping Radius)**<br>For a simply connected domain $D$ with $\mathbb{C}\setminus D\ne\varnothing$ and $a\in D$, the positive number $\rho$ for which there exists a unique conformal equivalence $f:D\to\mathbb{D}_{\rho}:=\left\{\left|z\right|< \rho\right\}$ with $f\left(a\right)=0$, $f'\left(a\right)=1$, is called the mapping radius of $D$ at $a$, denoted $\rho\left(D,a\right)$.

---

## 11.3-1

Let $\gamma$ be a smooth path in the unit disk $\mathbb{D}:=\left\{\left|z\right|< 1\right\}$. Define the hyperbolic length of $\gamma$ as $L_{h}\left(\gamma\right)=\int_{\gamma}\frac{1}{1-\left|z\right|^{2}}\left|dz\right|$. Let $f:\mathbb{D}\to\mathbb{D}$ be holomorphic. Prove: (i) $L_{h}\left(f\left(\gamma\right)\right)\le L_{h}\left(\gamma\right)$; (ii) $L_{h}\left(f\left(\gamma\right)\right)=L_{h}\left(\gamma\right)$ if and only if $f\in\operatorname{auto}\left(\mathbb{D}\right)$.

### Solution 11.3-1

(i) By the change of variables $\left|dz\right|\mapsto\left|f'\left(z\right)\right|\left|dz\right|$,

$$
L_{h}\left(f\left(\gamma\right)\right)=\int_{\gamma}\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\left|dz\right|.
$$

By the differential form of **Theorem 10.3.4 (Schwarz-Pick Lemma)**, $\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\le\frac{1}{1-\left|z\right|^{2}}$ for all $z\in\mathbb{D}$, so $L_{h}\left(f\left(\gamma\right)\right)\le L_{h}\left(\gamma\right)$.

(ii) If $f\in\operatorname{auto}\left(\mathbb{D}\right)$, the Schwarz-Pick differential form is an equality, so $L_{h}\left(f\left(\gamma\right)\right)=L_{h}\left(\gamma\right)$. Conversely, if $L_{h}\left(f\left(\gamma\right)\right)=L_{h}\left(\gamma\right)$, the pointwise inequality $\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\le\frac{1}{1-\left|z\right|^{2}}$ holds as equality along $\gamma$; by the equality condition of **Theorem 10.3.4 (Schwarz-Pick Lemma)**, $f$ is an automorphism on some open set containing $\gamma$, so $f\in\operatorname{auto}\left(\mathbb{D}\right)$. $\blacksquare$

---

## 11.3-2

Suppose that on a domain $G\subset\mathbb{C}\setminus\left\{0\right\}$, every nowhere-vanishing holomorphic function $f$ has a holomorphic logarithm $g$ on $G$ with $e^{g\left(z\right)}=f\left(z\right)$ for all $z\in G$. Prove: $G$ is simply connected.

### Solution 11.3-2

Suppose $G$ is not simply connected; then $\widehat{\mathbb{C}}\setminus G$ has a bounded connected component $K$. Take $a\in K$. Since $G\subset\mathbb{C}\setminus\left\{0\right\}$ and $a\notin G$, $f\left(z\right)=z-a$ is holomorphic and nonzero on $G$. By assumption, there is holomorphic $g$ on $G$ with $e^{g\left(z\right)}=z-a$, so $g'\left(z\right)=\frac{1}{z-a}$ has an antiderivative $g$ on $G$.

But $K$ is a hole of $G$, so there is a closed curve $\gamma\subset G$ winding once around $a$; by Example 7.1.2, $\int_{\gamma}\frac{dz}{z-a}=2\pi i\ne0$. Since $g'$ has antiderivative $g$, $\int_{\gamma}g'\left(z\right)\,dz=0$, a contradiction. Hence $G$ is simply connected. $\blacksquare$

---

## 11.3-9

Let $\Omega\subset\mathbb{C}$ be a domain, $H\left(\Omega\right)$ the set of all holomorphic maps from $\Omega$ to the open unit disk $\mathbb{D}:=\left\{\left|z\right|< 1\right\}$, fix $z_{0}\in\Omega$, and for $f\in H\left(\Omega\right)$ set $g_{f}\left(z\right)=\frac{f\left(z\right)-f\left(z_{0}\right)}{1-\overline{f\left(z_{0}\right)}f\left(z\right)}$. Prove:

(i) $g_{f}'\left(z_{0}\right)=f'\left(z_{0}\right)\left(1-\left|f\left(z_{0}\right)\right|^{2}\right)^{-1}$;

(ii) $\sup\left\{\left|f'\left(z_{0}\right)\right|:f\in H\left(\Omega\right),\ f\left(z_{0}\right)=0\right\}=\sup\left\{\left|f'\left(z_{0}\right)\right|:f\in H\left(\Omega\right)\right\}$;

(iii) if $h\in H\left(\Omega\right)$ satisfies $h'\left(z_{0}\right)=\sup\left\{\left|f'\left(z_{0}\right)\right|:f\in H\left(\Omega\right)\right\}$, then $h\left(z_{0}\right)=0$;

(iv) $\sup\left\{\operatorname{Re}f'\left(0\right):f\in H\left(\mathbb{D}\right)\right\}=\sup\left\{\left|f'\left(0\right)\right|:f\in H\left(\mathbb{D}\right)\right\}=1$;

(v) $h\in H\left(\mathbb{D}\right)$ satisfies $\operatorname{Re}h'\left(0\right)=1$ if and only if $h\left(z\right)=z$.

### Solution 11.3-9

(i) $g_{f}=\phi_{f\left(z_{0}\right)}\circ f$, where $\phi_{a}\left(w\right)=\frac{w-a}{1-\overline{a}w}$. Since $\phi_{a}'\left(w\right)=\frac{1-\left|a\right|^{2}}{\left(1-\overline{a}w\right)^{2}}$, the chain rule gives

$$
g_{f}'\left(z_{0}\right)=\phi_{f\left(z_{0}\right)}'\left(f\left(z_{0}\right)\right)f'\left(z_{0}\right)=\frac{1-\left|f\left(z_{0}\right)\right|^{2}}{\left(1-\left|f\left(z_{0}\right)\right|^{2}\right)^{2}}f'\left(z_{0}\right)=\frac{f'\left(z_{0}\right)}{1-\left|f\left(z_{0}\right)\right|^{2}}.
$$

(ii) The left side $\le$ right side is immediate (the left set is a subset). Conversely, for any $f\in H\left(\Omega\right)$, $g_{f}\in H\left(\Omega\right)$ with $g_{f}\left(z_{0}\right)=0$, and by (i) $\left|g_{f}'\left(z_{0}\right)\right|=\left|f'\left(z_{0}\right)\right|\left(1-\left|f\left(z_{0}\right)\right|^{2}\right)^{-1}\ge\left|f'\left(z_{0}\right)\right|$. Hence $\left|f'\left(z_{0}\right)\right|\le\sup\left\{\left|h'\left(z_{0}\right)\right|:h\in H\left(\Omega\right),h\left(z_{0}\right)=0\right\}$; taking the supremum gives right $\le$ left. Equality.

(iii) Let $a=h\left(z_{0}\right)$. If $a\ne0$, then $g_{h}\in H\left(\Omega\right)$, $g_{h}\left(z_{0}\right)=0$, and $\left|g_{h}'\left(z_{0}\right)\right|=\left|h'\left(z_{0}\right)\right|\left(1-\left|a\right|^{2}\right)^{-1}> \left|h'\left(z_{0}\right)\right|=\sup$, a contradiction. Hence $h\left(z_{0}\right)=0$.

(iv) By **Theorem 10.3.1 (Schwarz Lemma)**, for $f\in H\left(\mathbb{D}\right)$ with $f\left(0\right)=0$, $\left|f'\left(0\right)\right|\le1$, and $f\left(z\right)=z$ attains $\left|f'\left(0\right)\right|=1$. By (ii), $\sup\left|f'\left(0\right)\right|=1$. Also $\operatorname{Re}f'\left(0\right)\le\left|f'\left(0\right)\right|\le1$, and $f\left(z\right)=z$ gives $\operatorname{Re}f'\left(0\right)=1$, so $\sup\operatorname{Re}f'\left(0\right)=1$. Both suprema are $1$.

(v) If $h\left(z\right)=z$, then $\operatorname{Re}h'\left(0\right)=1$. Conversely, if $\operatorname{Re}h'\left(0\right)=1$, then $\left|h'\left(0\right)\right|\ge1$, while **Theorem 10.3.1 (Schwarz Lemma)** gives $\left|h'\left(0\right)\right|\le1$, so $\left|h'\left(0\right)\right|=1$. Equality in Schwarz gives $h\left(z\right)=e^{i\theta}z$; and $\operatorname{Re}h'\left(0\right)=\cos\theta=1$, so $\theta=0$, i.e. $h\left(z\right)=z$. $\blacksquare$

---

## 11.3-11

Let $U\subset\mathbb{C}$ be a connected open set, $U\ne\mathbb{C}$, and suppose every holomorphic function on $U$ has an antiderivative. Prove: $U$ is conformally equivalent to the open unit disk.

### Solution 11.3-11

If every holomorphic function on $U$ has an antiderivative, then the integral around every closed path in $U$ is zero, i.e. $U$ is simply connected (holomorphic functions on simply connected domains have antiderivatives, and conversely existence of antiderivatives implies simple connectivity). Since $U\ne\mathbb{C}$, $U$ is a simply connected domain other than the whole plane. By **Theorem 11.2.2 (Riemann Mapping Theorem)**, $U$ is conformally equivalent to the open unit disk. $\blacksquare$

---

## 11.3-14

Let $D\subset\mathbb{C}$ be simply connected with $\mathbb{C}\setminus D\ne\varnothing$. Prove:

(i) for every $a\in D$ there is a unique $\rho> 0$ such that there is a unique conformal equivalence $f:D\to\mathbb{D}_{\rho}:=\left\{\left|z\right|< \rho\right\}$ with $f\left(a\right)=0$, $f'\left(a\right)=1$; $\rho$ is the mapping radius $\rho\left(D,a\right)$;

(ii) if $D'\subset D$ is also simply connected, then $\rho\left(D',a\right)\le\rho\left(D,a\right)$ for all $a\in D'$; if equality holds at some $b\in D'$, then $D'=D$;

(iii) if $g:D\to\mathbb{C}$ is univalent holomorphic, then $\rho\left(g\left(D\right),g\left(a\right)\right)=\left|g'\left(a\right)\right|\rho\left(D,a\right)$ for all $a\in D$.

### Solution 11.3-14

(i) Existence: by **Theorem 11.2.2 (Riemann Mapping Theorem)**, there is a conformal equivalence $F:D\to\mathbb{D}$; adjust by an automorphism so that $F\left(a\right)=0$. Let $c=F'\left(a\right)\ne0$ and set $f\left(z\right)=\frac{F\left(z\right)}{c}$; then $f:D\to\left\{\left|w\right|< \frac{1}{\left|c\right|}\right\}=\mathbb{D}_{\rho}$ ($\rho=\frac{1}{\left|c\right|}$), with $f\left(a\right)=0$, $f'\left(a\right)=1$.

Uniqueness: let $f_{1}:D\to\mathbb{D}_{\rho_{1}}$, $f_{2}:D\to\mathbb{D}_{\rho_{2}}$ both be conformal equivalences with $f_{i}\left(a\right)=0$, $f_{i}'\left(a\right)=1$. Then $h=f_{2}\circ f_{1}^{-1}:\mathbb{D}_{\rho_{1}}\to\mathbb{D}_{\rho_{2}}$ is a conformal equivalence with $h\left(0\right)=0$, $h'\left(0\right)=\frac{f_{2}'\left(a\right)}{f_{1}'\left(a\right)}=1$. Set $\psi\left(w\right)=\frac{\rho_{1}}{\rho_{2}}h\left(\rho_{1}w\right):\mathbb{D}\to\mathbb{D}$; then $\psi\left(0\right)=0$, $\psi'\left(0\right)=\frac{\rho_{1}}{\rho_{2}}$. By **Theorem 10.3.1 (Schwarz Lemma)** $\left|\psi'\left(0\right)\right|\le1$, i.e. $\rho_{1}\le\rho_{2}$; symmetrically $\rho_{2}\le\rho_{1}$, so $\rho_{1}=\rho_{2}$ and $\left|\psi'\left(0\right)\right|=1$. Equality in Schwarz gives $\psi\left(w\right)=e^{i\theta}w$; since $\psi'\left(0\right)=1$, $\theta=0$, $\psi=\text{id}$, $h=\text{id}$, $f_{1}=f_{2}$.

(ii) Write $\rho=\rho\left(D,a\right)$, and take $f:D\to\mathbb{D}_{\rho}$ with $f\left(a\right)=0$, $f'\left(a\right)=1$. Since $D'\subset D$, $f|_{D'}$ is univalent holomorphic. By (i), there is a conformal equivalence $F:D'\to\mathbb{D}_{\rho\left(D',a\right)}$ with $F\left(a\right)=0$, $F'\left(a\right)=1$. If $\rho\left(D',a\right)> \rho$, then $f\circ F^{-1}:\mathbb{D}_{\rho\left(D',a\right)}\to\mathbb{D}_{\rho}$, restricted to $\mathbb{D}_{\rho}$, gives a conformal equivalence $\mathbb{D}_{\rho}\to\mathbb{D}_{\rho}$ with derivative at $0$ equal to $\frac{f'\left(a\right)}{F'\left(a\right)}=1$; by Schwarz it is the identity, so $F^{-1}\left(\mathbb{D}_{\rho}\right)=D'$ and $f\left(D'\right)=\mathbb{D}_{\rho}$, contradicting $f\left(D'\right)\subsetneq\mathbb{D}_{\rho}$ when $D'\subsetneq D$. Hence $\rho\left(D',a\right)\le\rho\left(D,a\right)$. If equality holds at some $b$, the same argument gives $f\left(D'\right)=\mathbb{D}_{\rho}$, i.e. $D'=D$.

(iii) Let $f:D\to\mathbb{D}_{\rho\left(D,a\right)}$ with $f\left(a\right)=0$, $f'\left(a\right)=1$. Since $g$ is univalent, $g\left(D\right)$ is simply connected, and $\widetilde f\left(z\right):=g'\left(a\right)\,f\left(g^{-1}\left(z\right)\right)$ maps $g\left(D\right)$ conformally onto $\mathbb{D}_{\left|g'\left(a\right)\right|\rho\left(D,a\right)}$, with $\widetilde f\left(g\left(a\right)\right)=0$ and $\widetilde f'\left(g\left(a\right)\right)=g'\left(a\right)f'\left(a\right)\cdot\frac{1}{g'\left(a\right)}=1$. By uniqueness in (i), $\rho\left(g\left(D\right),g\left(a\right)\right)\le\left|g'\left(a\right)\right|\rho\left(D,a\right)$. Applying the same argument to $g^{-1}$ gives the reverse inequality, so $\rho\left(g\left(D\right),g\left(a\right)\right)=\left|g'\left(a\right)\right|\rho\left(D,a\right)$. $\blacksquare$

---

## 11.3-19

Let $D\subset\mathbb{C}$ be simply connected bounded by a Jordan closed curve. Suppose $f,g$ are holomorphic on $D$ with: (i) both extend continuously to $\partial D$; (ii) both are conformal equivalences from $D$ onto some domains; (iii) there are three distinct points $z_{1},z_{2},z_{3}\in\partial D$ with $f\left(z_{j}\right)=g\left(z_{j}\right)$, $j=1,2,3$. Prove $f=g$ on $D$, and give an example showing that three points in (iii) cannot be reduced to two.

### Solution 11.3-19

Since $f,g$ are conformal equivalences and extend continuously to the boundary, they map $\partial D$ homeomorphically onto $f\left(\partial D\right)$ and $g\left(\partial D\right)$. Consider $h=g\circ f^{-1}:f\left(D\right)\to g\left(D\right)$, a conformal equivalence extending continuously to the boundary of $\overline{f\left(D\right)}$. At the three points $f\left(z_{1}\right),f\left(z_{2}\right),f\left(z_{3}\right)\in f\left(\partial D\right)$,

$$
h\left(f\left(z_{j}\right)\right)=g\left(f^{-1}\left(f\left(z_{j}\right)\right)\right)=g\left(z_{j}\right)=f\left(z_{j}\right),
$$

i.e. $h$ fixes three distinct points on $f\left(\partial D\right)$.

$f\left(D\right)$ is also bounded by a Jordan curve. Take a conformal equivalence $\Psi:f\left(D\right)\to\mathbb{D}$; then $\widetilde h=\Psi\circ h\circ\Psi^{-1}:\mathbb{D}\to\mathbb{D}$ is a holomorphic automorphism equal to the identity at three distinct points $\Psi\left(f\left(z_{1}\right)\right),\Psi\left(f\left(z_{2}\right)\right),\Psi\left(f\left(z_{3}\right)\right)\in\partial\mathbb{D}$. Automorphisms of $\mathbb{D}$ are Mobius transformations, and a Mobius transformation is uniquely determined by three pairs of corresponding points, so $\widetilde h=\text{id}$, hence $h=\text{id}$, $g=f$.

Counterexample (two points do not suffice): take $D=\mathbb{D}$, $f\left(z\right)=z$, $g\left(z\right)=\phi_{a}\left(z\right)=\frac{z-a}{1-az}$ for real $0< a< 1$. Both are automorphisms of $\mathbb{D}$ extending continuously to the boundary. At $z=1$, $\phi_{a}\left(1\right)=1=f\left(1\right)$; at $z=-1$, $\phi_{a}\left(-1\right)=-1=f\left(-1\right)$; so $f,g$ agree at two boundary points, but $f\ne g$ when $a\ne0$. Hence three points cannot be reduced to two. $\blacksquare$
