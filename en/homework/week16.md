# week16

> **Basic Knowledge: Sum of Residues Formula**<br>For a meromorphic function $f$ on the whole complex plane, the sum of all finite residues plus the residue at $\infty$ is zero, and

$$
\operatorname{Res}_{\infty}f=-\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right).
$$

> **Definition 14.1.1 (Residue)**<br>The residue $\operatorname{Res}_{a}f$ of $f$ at an isolated singularity $a$ is the coefficient $c_{-1}$ of the $\frac{1}{z-a}$ term in its Laurent expansion.

> **Theorem 14.1.3 (Residue Theorem)**<br>If $f$ is holomorphic on a domain $D$ except at finitely many isolated singularities, and $\gamma$ is a Jordan closed curve in $D$ enclosing all these singularities, then

$$
\int_{\gamma}f\,dz=2\pi i\sum\operatorname{Res}f.
$$

---

## 14.3-1

Compute: (i) $\int_{\partial B\left(0,4\right)}\frac{z^{2}+1}{z^{3}+2z^{2}-3z}\,dz$; (ii) $\int_{\partial B\left(0,\pi\right)}z^{2}\sin\frac{1}{z}\,dz$; (iv) $\int_{0}^{2\pi}\frac{1}{4\sin^{2}x+1}\,dx$.

### Solution 14.3-1

(i) $z^{3}+2z^{2}-3z=z\left(z+3\right)\left(z-1\right)$; the singularities $0,1,-3$ all lie in $\left|z\right|< 4$, each a simple pole. The residues:

$$
\operatorname{Res}_{0}=\frac{1}{3\cdot\left(-1\right)}=-\frac13,\quad
\operatorname{Res}_{1}=\frac{1+1}{1\cdot4\cdot1}=\frac12,\quad
\operatorname{Res}_{-3}=\frac{9+1}{\left(-3\right)\cdot1\cdot\left(-4\right)}=\frac56.
$$

Sum: $-\frac13+\frac12+\frac56=1$. By **Theorem 14.1.3 (Residue Theorem)**, $\int_{\partial B\left(0,4\right)}=2\pi i\cdot1=2\pi i$.

(ii) $\sin\frac1z=\sum_{n=0}^{+\infty}\frac{\left(-1\right)^{n}}{\left(2n+1\right)!}\frac{1}{z^{2n+1}}$, so $z^{2}\sin\frac1z=\sum_{n=0}^{+\infty}\frac{\left(-1\right)^{n}}{\left(2n+1\right)!}z^{1-2n}$. The $z^{-1}$ coefficient (residue) comes from $1-2n=-1$, i.e. $n=1$: $\operatorname{Res}_{0}z^{2}\sin\frac1z=\frac{\left(-1\right)^{1}}{3!}=-\frac16$. Hence $\int_{\partial B\left(0,\pi\right)}z^{2}\sin\frac1z\,dz=2\pi i\cdot\left(-\frac16\right)=-\frac{\pi i}{3}$.

(iv) Let $z=e^{ix}$; then $\sin x=\frac{z-z^{-1}}{2i}$, $dz=iz\,dx$, with $\left|z\right|=1$ counterclockwise. $4\sin^{2}x+1=4\cdot\left(-\frac{\left(z-z^{-1}\right)^{2}}{4}\right)+1=3-z^{2}-z^{-2}$, so

$$
\int_{0}^{2\pi}\frac{dx}{4\sin^{2}x+1}=\oint_{\left|z\right|=1}\frac{1}{3-z^{2}-z^{-2}}\frac{dz}{iz}=\oint_{\left|z\right|=1}\frac{z}{i\left(3z^{2}-z^{4}-1\right)}\,dz.
$$

$3z^{2}-z^{4}-1=-\left(z^{4}-3z^{2}+1\right)$, and $z^{4}-3z^{2}+1=0$ gives $z^{2}=\frac{3\pm\sqrt5}{2}$. Inside $\left|z\right|=1$, only the two roots $\pm\sqrt{\frac{3-\sqrt5}{2}}$ from $z^{2}=\frac{3-\sqrt5}{2}$ (the other pair has $\left|z\right|> 1$). Write $a^{2}=u:=\frac{3-\sqrt5}{2}$; at $z=a$,

$$
\operatorname{Res}_{a}\frac{z}{i\left(3z^{2}-z^{4}-1\right)}=\frac{a}{i\left(-\left(4a^{3}-6a\right)\right)}=\frac{1}{i\left(-\left(4u-6\right)\right)}=\frac{1}{i\left(-\left(-2\sqrt5\right)\right)}=\frac{1}{2\sqrt5\,i},
$$

and the residue at $-a$ is the same. Sum: $\frac{1}{\sqrt5\,i}$. Hence

$$
\int_{0}^{2\pi}\frac{dx}{4\sin^{2}x+1}=2\pi i\cdot\frac{1}{\sqrt5\,i}=\frac{2\pi}{\sqrt5}.
$$

$\blacksquare$

---

## 14.3-2

Let $\gamma\subset\mathbb{C}$ be a Jordan closed curve, and $f$ holomorphic on $\mathbb{C}\setminus\left\{a_{1},\ldots,a_{n}\right\}$, where $a_{1},\ldots,a_{n}$ are interior points of the region bounded by $\gamma$. Prove: $\frac{1}{2\pi i}\int_{\gamma}f\left(z\right)\,dz=\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right)$.

### Solution 14.3-2

The isolated singularities of $f$ are $a_{1},\ldots,a_{n}$ (all inside $\gamma$); by **Theorem 14.1.3 (Residue Theorem)**,

$$
\frac{1}{2\pi i}\int_{\gamma}f\left(z\right)\,dz=\sum_{j=1}^{n}\operatorname{Res}_{a_{j}}f.
$$

For the meromorphic $f$ on the whole plane, choose $R$ large enough that $\gamma$ and all $a_{j}$ lie in $\left\{\left|z\right|< R\right\}$. Applying the residue theorem on $\left\{\left|z\right|\le R\right\}$ and treating $\infty$ as a singularity gives $\sum_{j}\operatorname{Res}_{a_{j}}f+\operatorname{Res}_{\infty}f=0$. Also

$$
\operatorname{Res}_{\infty}f=-\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right),
$$

so $\sum_{j}\operatorname{Res}_{a_{j}}f=\operatorname{Res}_{0}\left(\frac{1}{z^{2}}f\left(\frac{1}{z}\right)\right)$, as claimed. $\blacksquare$

---

## 14.3-3

Prove: $\int_{\partial B\left(0,1\right)}e^{z+\frac{1}{z}}\,dz=2\pi i\sum_{n=0}^{+\infty}\frac{1}{n!\left(n+1\right)!}$.

### Solution 14.3-3

$e^{z+\frac1z}=e^{z}e^{\frac1z}=\left(\sum_{m=0}^{+\infty}\frac{z^{m}}{m!}\right)\left(\sum_{k=0}^{+\infty}\frac{1}{k!}\frac{1}{z^{k}}\right)$. The $z^{-1}$ coefficient satisfies $m-k=-1$, i.e. $m=k-1$, so

$$
\operatorname{Res}_{0}e^{z+\frac1z}=\sum_{k=1}^{+\infty}\frac{1}{\left(k-1\right)!k!}=\sum_{n=0}^{+\infty}\frac{1}{n!\left(n+1\right)!}.
$$

By **Theorem 14.1.3 (Residue Theorem)**,

$$
\int_{\partial B\left(0,1\right)}e^{z+\frac1z}\,dz=2\pi i\operatorname{Res}_{0}e^{z+\frac1z}=2\pi i\sum_{n=0}^{+\infty}\frac{1}{n!\left(n+1\right)!}.
$$

$\blacksquare$
