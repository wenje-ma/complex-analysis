# Assignment 12

> **Definition 10.3.2** (Blaschke Factor)<br>$$\phi_{a}\left(z\right)=\frac{z-a}{1-\bar{a}z}$$ ($a\in\mathbb{D}$) is an automorphism of $\mathbb{D}$, $\phi_{a}\left(a\right)=0$, $\left|\phi_{a}\left(e^{i\theta}\right)\right|=1$.

> **Theorem 10.3.1** (Schwarz's Lemma)<br>If $f:\mathbb{D}\to\mathbb{D}$ is holomorphic and $f\left(0\right)=0$, then $\left|f\left(z\right)\right|\le\left|z\right|$ and $\left|f'\left(0\right)\right|\le1$; equality holds if and only if $f\left(z\right)=e^{i\theta}z$.

> **Theorem 10.3.4** (Schwarz–Pick)<br>For a holomorphic $f$ on $\mathbb{D}\to\mathbb{D}$, $$\left|\frac{f\left(z\right)-f\left(w\right)}{1-\overline{f\left(w\right)}f\left(z\right)}\right|\le\left|\frac{z-w}{1-\bar{w}z}\right|;$$ the differential form is $$\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\le\frac{1}{1-\left|z\right|^{2}},$$ with equality if and only if $f\in\operatorname{auto}\left(\mathbb{D}\right)$.

> **Theorem 11.2.2** (Riemann Mapping Theorem)<br>Any simply connected domain that is not the whole plane is conformally equivalent to the open unit disk.

> **Definition 11.2.6** (Mapping Radius)<br>For a simply connected domain $D$ with $\mathbb{C}\setminus D\ne\varnothing$ and a point $a\in D$, the positive number $\rho$ for which there exists a unique conformal equivalence $f:D\to\mathbb{D}_{\rho}:=\left\{\left|z\right|<\rho\right\}$ with $f\left(a\right)=0$, $f'\left(a\right)=1$ is called the mapping radius $\rho\left(D,a\right)$ of $D$ relative to $a$.

### Problem 1

(Problem 11.3-1) Let $\gamma$ be a smooth path in the unit disk $\mathbb{D}:=\left\{\left|z\right|<1\right\}$. Define the hyperbolic arc length of $\gamma$ as $L_{h}\left(\gamma\right)=\int_{\gamma}\frac{1}{1-\left|z\right|^{2}}\left|dz\right|$. Let $f:\mathbb{D}\to\mathbb{D}$ be holomorphic. Prove: (i) $L_{h}\left(f\left(\gamma\right)\right)\le L_{h}\left(\gamma\right)$; (ii) $L_{h}\left(f\left(\gamma\right)\right)=L_{h}\left(\gamma\right)$ if and only if $f\in\operatorname{auto}\left(\mathbb{D}\right)$.

### Solution to Problem 1

(i) Changing variables, replacing $\left|dz\right|$ by $\left|f'\left(z\right)\right|\left|dz\right|$, we get

$$
L_{h}\left(f\left(\gamma\right)\right)=\int_{\gamma}\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\left|dz\right|.
$$

By the differential form of **Theorem 10.3.4 (Schwarz–Pick)**, $\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\le\frac{1}{1-\left|z\right|^{2}}$, $\forall z\in\mathbb{D}$, so $L_{h}\left(f\left(\gamma\right)\right)\le L_{h}\left(\gamma\right)$.

(ii) If $f\in\operatorname{auto}\left(\mathbb{D}\right)$, then the Schwarz–Pick differential form is an equality, so $L_{h}\left(f\left(\gamma\right)\right)=L_{h}\left(\gamma\right)$. Conversely, if $L_{h}\left(f\left(\gamma\right)\right)=L_{h}\left(\gamma\right)$, then the integrand inequality $\frac{\left|f'\left(z\right)\right|}{1-\left|f\left(z\right)\right|^{2}}\le\frac{1}{1-\left|z\right|^{2}}$ holds with equality everywhere along $\gamma$; by the equality condition in **Theorem 10.3.4**, $f$ is an automorphism on some open set containing $\gamma$, so $f\in\operatorname{auto}\left(\mathbb{D}\right)$. $\blacksquare$

### Problem 2

(Problem 11.3-2) Suppose that on a domain $G\subset\mathbb{C}\setminus\left\{0\right\}$, every nonvanishing holomorphic function $f$ admits a holomorphic function $g$ on $G$ such that $e^{g\left(z\right)}=f\left(z\right)$, $\forall z\in G$. Prove: $G$ is simply connected.

### Solution to Problem 2

Suppose for contradiction that $G$ is not simply connected; then $\hat{\mathbb{C}}\setminus G$ has a bounded connected component $K$. Take $a\in K$. Since $G\subset\mathbb{C}\setminus\left\{0\right\}$ and $a\notin G$, $f\left(z\right)=z-a$ is holomorphic and nonvanishing on $G$. By assumption, there exists a holomorphic $g$ on $G$ such that $e^{g\left(z\right)}=z-a$, so $g'\left(z\right)=\frac{1}{z-a}$ has a primitive $g$ on $G$.

But $K$ is a hole in $G$; there exists a closed curve $\gamma\subset G$ winding once around $a$. By Example 7.1.2, $\int_{\gamma}\frac{dz}{z-a}=2\pi i\ne0$; yet since $g'$ has primitive $g$, $\int_{\gamma}g'\left(z\right)\,dz=0$, a contradiction. Hence $G$ is simply connected. $\blacksquare$

### Problem 3

(Problem 11.3-9) Let $\Omega\subset\mathbb{C}$ be a domain, and let $H\left(\Omega\right)$ be the set of all holomorphic functions from $\Omega$ to the open unit disk $\mathbb{D}:=\left\{\left|z\right|<1\right\}$. Fix $z_{0}\in\Omega$; for any $f\in H\left(\Omega\right)$, set $g_{f}\left(z\right)=\frac{f\left(z\right)-f\left(z_{0}\right)}{1-\overline{f\left(z_{0}\right)}f\left(z\right)}$. Prove:

(i) $g_{f}'\left(z_{0}\right)=f'\left(z_{0}\right)\left(1-\left|f\left(z_{0}\right)\right|^{2}\right)^{-1}$;

(ii) $\sup\left\{\left|f'\left(z_{0}\right)\right|:f\in H\left(\Omega\right),\ f\left(z_{0}\right)=0\right\}=\sup\left\{\left|f'\left(z_{0}\right)\right|:f\in H\left(\Omega\right)\right\}$;

(iii) if $h\in H\left(\Omega\right)$ satisfies $h'\left(z_{0}\right)=\sup\left\{\left|f'\left(z_{0}\right)\right|:f\in H\left(\Omega\right)\right\}$, then $h\left(z_{0}\right)=0$;

(iv) $\sup\left\{\operatorname{Re}f'\left(0\right):f\in H\left(\mathbb{D}\right)\right\}=\sup\left\{\left|f'\left(0\right)\right|:f\in H\left(\mathbb{D}\right)\right\}=1$;

(v) $h\in H\left(\mathbb{D}\right)$ satisfies $\operatorname{Re}h'\left(0\right)=1$ if and only if $h\left(z\right)=z$.

### Solution to Problem 3

(i) $g_{f}=\phi_{f\left(z_{0}\right)}\circ f$, where $\phi_{a}\left(w\right)=\frac{w-a}{1-\bar{a}w}$. Since $\phi_{a}'\left(w\right)=\frac{1-\left|a\right|^{2}}{\left(1-\bar{a}w\right)^{2}}$, the chain rule gives

$$
g_{f}'\left(z_{0}\right)=\phi_{f\left(z_{0}\right)}'\left(f\left(z_{0}\right)\right)f'\left(z_{0}\right)=\frac{1-\left|f\left(z_{0}\right)\right|^{2}}{\left(1-\left|f\left(z_{0}\right)\right|^{2}\right)^{2}}f'\left(z_{0}\right)=\frac{f'\left(z_{0}\right)}{1-\left|f\left(z_{0}\right)\right|^{2}}.
$$

(ii) The left side $\le$ the right side is obvious (the left set is a subset of the right). Conversely, for any $f\in H\left(\Omega\right)$, $g_{f}\in H\left(\Omega\right)$ and $g_{f}\left(z_{0}\right)=0$; by (i), $\left|g_{f}'\left(z_{0}\right)\right|=\left|f'\left(z_{0}\right)\right|\left(1-\left|f\left(z_{0}\right)\right|^{2}\right)^{-1}\ge\left|f'\left(z_{0}\right)\right|$. Hence $\left|f'\left(z_{0}\right)\right|\le\sup\left\{\left|h'\left(z_{0}\right)\right|:h\in H\left(\Omega\right),h\left(z_{0}\right)=0\right\}$; taking the supremum gives the right side $\le$ the left side. The two are equal.

(iii) Let $a=h\left(z_{0}\right)$. If $a\ne0$, then $g_{h}\in H\left(\Omega\right)$, $g_{h}\left(z_{0}\right)=0$, and $\left|g_{h}'\left(z_{0}\right)\right|=\left|h'\left(z_{0}\right)\right|\left(1-\left|a\right|^{2}\right)^{-1}>\left|h'\left(z_{0}\right)\right|=\sup$, a contradiction. Hence $h\left(z_{0}\right)=0$.

(iv) By **Theorem 10.3.1 (Schwarz's Lemma)**, for $f\in H\left(\mathbb{D}\right)$ with $f\left(0\right)=0$, $\left|f'\left(0\right)\right|\le1$, and $f\left(z\right)=z$ achieves $\left|f'\left(0\right)\right|=1$. By (ii), $\sup\left|f'\left(0\right)\right|=1$. Also, $\operatorname{Re}f'\left(0\right)\le\left|f'\left(0\right)\right|\le1$, and $f\left(z\right)=z$ gives $\operatorname{Re}f'\left(0\right)=1$, so $\sup\operatorname{Re}f'\left(0\right)=1$. Thus both suprema equal $1$.

(v) If $h\left(z\right)=z$, then $\operatorname{Re}h'\left(0\right)=1$. Conversely, if $\operatorname{Re}h'\left(0\right)=1$, then $\left|h'\left(0\right)\right|\ge1$, while Schwarz's lemma gives $\left|h'\left(0\right)\right|\le1$, so $\left|h'\left(0\right)\right|=1$. Equality in Schwarz's lemma: $h\left(z\right)=e^{i\theta}z$. Also $\operatorname{Re}h'\left(0\right)=\cos\theta=1$, so $\theta=0$, i.e. $h\left(z\right)=z$. $\blacksquare$

### Problem 4

(Problem 11.3-11) Let $U\subset\mathbb{C}$ be a connected open set, $U\ne\mathbb{C}$, and suppose every holomorphic function on $U$ has a primitive. Prove: $U$ is conformally equivalent to the open unit disk.

### Solution to Problem 4

That every holomorphic function on $U$ has a primitive is equivalent to the integral over every closed path in $U$ being zero, i.e. $U$ is simply connected (holomorphic functions on simply connected domains have primitives, and the existence of primitives implies simple connectedness). Also $U\ne\mathbb{C}$, so $U$ is a simply connected domain that is not the whole plane. By **Theorem 11.2.2 (Riemann Mapping Theorem)**, $U$ is conformally equivalent to the open unit disk. $\blacksquare$

### Problem 5

(Problem 11.3-14) Let $D\subset\mathbb{C}$ be a simply connected domain with $\mathbb{C}\setminus D\ne\varnothing$. Prove:

(i) for every point $a\in D$ there exists a unique $\rho>0$ such that there is a unique conformal equivalence $f:D\to\mathbb{D}_{\rho}$ between $D$ and the open disk $\mathbb{D}_{\rho}:=\left\{\left|z\right|<\rho\right\}$ satisfying $f\left(a\right)=0$, $f'\left(a\right)=1$; this $\rho$ is called the mapping radius of $D$ relative to the point $a$, denoted $\rho\left(D,a\right)$;

(ii) if $D'\subset D$ is also a simply connected domain, then $\rho\left(D',a\right)\le\rho\left(D,a\right)$, $\forall a\in D'$; if equality holds at some $b\in D'$, then $D'=D$;

(iii) if $g:D\to\mathbb{C}$ is univalent and holomorphic, then $\rho\left(g\left(D\right),g\left(a\right)\right)=\left|g'\left(a\right)\right|\rho\left(D,a\right)$, $\forall a\in D$.

### Solution to Problem 5

(i) Existence: by **Theorem 11.2.2 (Riemann Mapping Theorem)**, there exists a conformal equivalence $F:D\to\mathbb{D}$; adjusting by an automorphism so that $F\left(a\right)=0$. Let $c=F'\left(a\right)\ne0$ and set $f\left(z\right)=\frac{F\left(z\right)}{c}$; then $f:D\to\left\{\left|w\right|<\frac{1}{\left|c\right|}\right\}=\mathbb{D}_{\rho}$ ($\rho=\frac{1}{\left|c\right|}$), with $f\left(a\right)=0$, $f'\left(a\right)=1$.

Uniqueness: suppose $f_{1}:D\to\mathbb{D}_{\rho_{1}}$, $f_{2}:D\to\mathbb{D}_{\rho_{2}}$ are both conformal equivalences with $f_{i}\left(a\right)=0$, $f_{i}'\left(a\right)=1$. Then $h=f_{2}\circ f_{1}^{-1}:\mathbb{D}_{\rho_{1}}\to\mathbb{D}_{\rho_{2}}$ is a conformal equivalence with $h\left(0\right)=0$, $h'\left(0\right)=\frac{f_{2}'\left(a\right)}{f_{1}'\left(a\right)}=1$. Let $\psi\left(w\right)=\frac{\rho_{1}}{\rho_{2}}h\left(\rho_{1}w\right):\mathbb{D}\to\mathbb{D}$; then $\psi\left(0\right)=0$, $\psi'\left(0\right)=\frac{\rho_{1}}{\rho_{2}}\cdot1$. By Schwarz's lemma, $\left|\psi'\left(0\right)\right|\le1$, i.e. $\rho_{1}\le\rho_{2}$; symmetrically $\rho_{2}\le\rho_{1}$, so $\rho_{1}=\rho_{2}$, and $\left|\psi'\left(0\right)\right|=1$. Equality in Schwarz's lemma gives $\psi\left(w\right)=e^{i\theta}w$, and $\psi'\left(0\right)=1$ gives $\theta=0$, so $\psi=\text{id}$, $h=\text{id}$, $f_{1}=f_{2}$. Uniqueness is proved.

(ii) Write $\rho=\rho\left(D,a\right)$; take $f:D\to\mathbb{D}_{\rho}$ with $f\left(a\right)=0$, $f'\left(a\right)=1$. Since $D'\subset D$, $f|_{D'}$ is univalent and holomorphic. By (i), there exists a conformal equivalence $F:D'\to\mathbb{D}_{\rho\left(D',a\right)}$ with $F\left(a\right)=0$, $F'\left(a\right)=1$. If $\rho\left(D',a\right)>\rho$, then $f\circ F^{-1}:\mathbb{D}_{\rho\left(D',a\right)}\to\mathbb{D}_{\rho}$, restricted to $\mathbb{D}_{\rho}$, gives a conformal equivalence $\mathbb{D}_{\rho}\to\mathbb{D}_{\rho}$ whose derivative at $0$ is $=\frac{f'\left(a\right)}{F'\left(a\right)}=1$; by Schwarz's lemma it is the identity, so $F^{-1}\left(\mathbb{D}_{\rho}\right)=D'$ and $f\left(D'\right)=\mathbb{D}_{\rho}$, contradicting $f\left(D'\right)\subsetneq\mathbb{D}_{\rho}$ when $D'\subsetneq D$. Hence $\rho\left(D',a\right)\le\rho\left(D,a\right)$. If equality holds at some $b$, the same argument (composition being the identity) gives $f\left(D'\right)=\mathbb{D}_{\rho}$, i.e. $D'=D$.

(iii) Let $f:D\to\mathbb{D}_{\rho\left(D,a\right)}$ with $f\left(a\right)=0$, $f'\left(a\right)=1$. Since $g$ is univalent, $g\left(D\right)$ is a simply connected domain, and $\widetilde f\left(z\right):=g'\left(a\right)\,f\left(g^{-1}\left(z\right)\right)$ maps $g\left(D\right)$ conformally onto $\mathbb{D}_{\left|g'\left(a\right)\right|\rho\left(D,a\right)}$, with $\widetilde f\left(g\left(a\right)\right)=0$, $\widetilde f'\left(g\left(a\right)\right)=g'\left(a\right)f'\left(a\right)\cdot\frac{1}{g'\left(a\right)}=1$. By the uniqueness in (i), $\rho\left(g\left(D\right),g\left(a\right)\right)\le\left|g'\left(a\right)\right|\rho\left(D,a\right)$. Applying the same argument to $g^{-1}$ gives the reverse inequality, so $\rho\left(g\left(D\right),g\left(a\right)\right)=\left|g'\left(a\right)\right|\rho\left(D,a\right)$. $\blacksquare$

### Problem 6

(Problem 11.3-19) Let $D\subset\mathbb{C}$ be a simply connected domain bounded by a Jordan closed curve. Suppose $f$ and $g$ are both holomorphic on $D$ and satisfy: (i) both $f$ and $g$ extend continuously to the boundary $\partial D$; (ii) both $f$ and $g$ are conformal equivalences from $D$ to some domain; (iii) there exist three distinct points $z_{1},z_{2},z_{3}\in\partial D$ such that $f\left(z_{j}\right)=g\left(z_{j}\right)$, $j=1,2,3$. Prove: $f$ and $g$ are identical on $D$, and give an example showing that the three points in condition (iii) cannot be reduced to two.

### Solution to Problem 6

Since $f,g$ are conformal equivalences and extend continuously to the boundary, they map $\partial D$ homeomorphically onto $f\left(\partial D\right)$ and $g\left(\partial D\right)$. Consider $h=g\circ f^{-1}:f\left(D\right)\to g\left(D\right)$, a conformal equivalence that extends continuously to the boundary of $\overline{f\left(D\right)}$. At the three points $f\left(z_{1}\right),f\left(z_{2}\right),f\left(z_{3}\right)$ on $f\left(\partial D\right)$,

$$
h\left(f\left(z_{j}\right)\right)=g\left(f^{-1}\left(f\left(z_{j}\right)\right)\right)=g\left(z_{j}\right)=f\left(z_{j}\right),
$$

i.e. $h$ fixes three distinct points on $f\left(\partial D\right)$.

$f\left(D\right)$ is also a domain bounded by a Jordan closed curve. Take a conformal equivalence $\Psi:f\left(D\right)\to\mathbb{D}$; then $\widetilde h=\Psi\circ h\circ\Psi^{-1}:\mathbb{D}\to\mathbb{D}$ is a holomorphic automorphism, and it equals the identity at three distinct points $\Psi\left(f\left(z_{1}\right)\right),\Psi\left(f\left(z_{2}\right)\right),\Psi\left(f\left(z_{3}\right)\right)$ on $\partial\mathbb{D}$. All automorphisms of $\mathbb{D}$ are Möbius transformations, and a Möbius transformation is uniquely determined by three pairs of corresponding points, so $\widetilde h=\text{id}$, hence $h=\text{id}$ and $g=f$.

Counterexample (two points are not enough): take $D=\mathbb{D}$, $f\left(z\right)=z$, $g\left(z\right)=\phi_{a}\left(z\right)=\frac{z-a}{1-az}$, where $0<a<1$ is real. Both are automorphisms of $\mathbb{D}$ extending continuously to the boundary. At $z=1$, $\phi_{a}\left(1\right)=1=f\left(1\right)$; at $z=-1$, $\phi_{a}\left(-1\right)=-1=f\left(-1\right)$; i.e. $f,g$ agree at two boundary points, but when $a\ne0$, $f\ne g$. Hence three points cannot be reduced to two. $\blacksquare$
