# week18

> **Basic Knowledge: Sum of Residues Formula**<br>A meromorphic function on the whole plane has zero integral along a large contour enclosing all singularities, i.e. the sum of all residues is zero.

> **Definition 15.1.1 (Entire and Meromorphic Functions)**<br>A function holomorphic everywhere on the complex plane $\mathbb{C}$ is called entire; a function holomorphic except at poles is called meromorphic.

> **Theorem 15.2.7 (Argument Principle)**<br>If $f$ is meromorphic on a domain $D$, the zeros $a_{j}$ have order $r_{j}$, the poles $p_{k}$ have order $s_{k}$, and $\Gamma$ is a Jordan closed curve in $D$ avoiding these points, then

$$
\frac{1}{2\pi i}\int_{\Gamma}\frac{f'}{f}\,dz=\sum r_{j}-\sum s_{k}.
$$

---

## 15.4-5

Prove: $\frac{1}{\sin^{2}z}=\sum_{n=-\infty}^{+\infty}\frac{1}{\left(z-n\pi\right)^{2}}$.

### Solution 15.4-5

$\frac{1}{\sin^{2}z}$ has second-order poles at $z=n\pi$, and its principal part near $z=n\pi$ is exactly $\frac{1}{\left(z-n\pi\right)^{2}}$ (since $\sin z\sim\left(-1\right)^{n}\left(z-n\pi\right)$, $\sin^{2}z\sim\left(z-n\pi\right)^{2}$). Write

$$
F\left(z\right):=\frac{1}{\sin^{2}z}-\sum_{n=-\infty}^{+\infty}\frac{1}{\left(z-n\pi\right)^{2}}.
$$

The series converges locally uniformly on compact subsets of $\mathbb{C}$ (away from punctured neighborhoods of the poles), and its principal part at each $n\pi$ matches that of $\frac{1}{\sin^{2}z}$, so $F$ is holomorphic on $\mathbb{C}$ (each pole is canceled); it is an entire function by **Definition 15.1.1 (Entire and Meromorphic Functions)**. Also $\sin^{2}\left(z+\pi\right)=\sin^{2}z$ and $\sum_{n}\frac{1}{\left(z+\pi-n\pi\right)^{2}}=\sum_{n}\frac{1}{\left(z-n\pi\right)^{2}}$, so $F\left(z+\pi\right)=F\left(z\right)$, i.e. $F$ has period $\pi$. On the fundamental strip $\left|\operatorname{Re}z\right|\le\frac\pi2$, as $\left|\operatorname{Im}z\right|\to+\infty$, $\frac{1}{\sin^{2}z}\to0$ and the series $\to0$, so $F$ is bounded on the strip; by periodicity, bounded on $\mathbb{C}$. By Liouville's theorem, $F$ is constant; and $F\to0$ as $\operatorname{Im}z\to+\infty$, so $F\equiv0$, as claimed. $\blacksquare$

---

## 15.4-8

Let $P,Q$ be polynomials with $\deg Q\ge\deg P+2$, $g=\frac{P}{Q}$, and $f\left(z\right)=g\left(z\right)\cot\pi z$. Let $Z\left(Q\right)$ be the set of zeros of $Q$. (i) Prove: there exist $M> 0$ and $R> 0$ such that $\left|g\left(z\right)\right|\le\frac{M}{\left|z\right|^{2}}$ for all $z\notin\left\{\left|z\right|\le R\right\}$; (ii) let $N\in\mathbb{N}$ with $N> R$, and let $C_{N}$ be the rectangle with sides on $\operatorname{Re}z=\pm\left(N+\frac12\right)$ and $\operatorname{Im}z=\pm N$; prove $\lim_{N\to\infty}\int_{C_{N}}f\left(z\right)\,dz=0$; (iii) prove: for any $n\in\mathbb{Z}\setminus Z\left(Q\right)$, $\operatorname{Res}_{z=n}f=\frac{g\left(n\right)}{\pi}$; (iv) prove: $\sum_{n=-\infty}^{+\infty}\operatorname{Res}_{z=n}f=-\sum_{a\in Z\left(Q\right)\setminus\mathbb{Z}}\operatorname{Res}_{z=a}f$; (v) take $g\left(z\right)=\frac{1}{z^{2}+c^{2}}$, $c> 0$, and compute $\sum_{n=1}^{+\infty}\frac{1}{n^{2}+c^{2}}$.

### Solution 15.4-8

(i) Since $\deg Q\ge\deg P+2$, $g\left(z\right)=\frac{P\left(z\right)}{Q\left(z\right)}$ satisfies $\left|g\left(z\right)\right|\le\frac{C}{\left|z\right|^{2}}$ as $\left|z\right|\to+\infty$, i.e. there exist $M,R> 0$ with $\left|g\left(z\right)\right|\le\frac{M}{\left|z\right|^{2}}$ for all $\left|z\right|> R$.

(ii) On $C_{N}$, $\left|z\right|\ge N$, so $\left|g\left(z\right)\right|\le\frac{M}{N^{2}}$. On $\operatorname{Im}z=\pm N$ and $\operatorname{Re}z=\pm\left(N+\frac12\right)$, the poles $z=n$ (integers) are avoided, and $\cot\pi z$ is uniformly bounded on these sides (when $\left|\operatorname{Im}z\right|\ge N$, or $\operatorname{Re}z$ is a half-integer, $\cot\pi z$ is bounded); write $\left|\cot\pi z\right|\le K$. Then $\left|f\right|\le\frac{MK}{N^{2}}$, while the perimeter of $C_{N}$ is $\le C'N$, so

$$
\left|\int_{C_{N}}f\left(z\right)\,dz\right|\le\frac{MK}{N^{2}}\cdot C'N=\frac{C''}{N}\to0.
$$

(iii) For $n\in\mathbb{Z}\setminus Z\left(Q\right)$, $g$ is holomorphic at $n$ with $g\left(n\right)\ne0$; $\cot\pi z$ has a simple pole at $z=n$ with $\cot\pi z\sim\frac{1}{\pi\left(z-n\right)}$, $\operatorname{Res}_{z=n}\cot\pi z=\frac1\pi$. Hence $\operatorname{Res}_{z=n}f=g\left(n\right)\operatorname{Res}_{z=n}\cot\pi z=\frac{g\left(n\right)}{\pi}$.

(iv) By the residue theorem on $C_{N}$ (for large $N$, $C_{N}$ contains all integers $\left|n\right|\le N$ and the poles from $Z\left(Q\right)$ inside):

$$
\int_{C_{N}}f\,dz=2\pi i\left[\sum_{\left|n\right|\le N}\operatorname{Res}_{z=n}f+\sum_{a\in Z\left(Q\right),\,a\text{ inside }C_{N}}\operatorname{Res}_{z=a}f\right].
$$

By (ii), letting $N\to\infty$ gives $\sum_{n=-\infty}^{+\infty}\operatorname{Res}_{z=n}f+\sum_{a\in Z\left(Q\right)}\operatorname{Res}_{z=a}f=0$. If $Z\left(Q\right)\cap\mathbb{Z}=\emptyset$ (as in (v)), then $\sum_{a\in Z\left(Q\right)}\operatorname{Res}_{z=a}f=\sum_{a\in Z\left(Q\right)\setminus\mathbb{Z}}\operatorname{Res}_{z=a}f$, as claimed.

(v) $g\left(z\right)=\frac{1}{z^{2}+c^{2}}$, $Z\left(Q\right)=\left\{ic,-ic\right\}$ (non-integers). By (iii), $\operatorname{Res}_{z=n}f=\frac{1}{\pi\left(n^{2}+c^{2}\right)}$; by (iv),

$$
\sum_{n=-\infty}^{+\infty}\frac{1}{\pi\left(n^{2}+c^{2}\right)}=-\left(\operatorname{Res}_{z=ic}f+\operatorname{Res}_{z=-ic}f\right).
$$

$\operatorname{Res}_{z=ic}g=\frac{1}{2ic}$, $\operatorname{Res}_{z=-ic}g=-\frac{1}{2ic}$; $\cot\left(i\pi c\right)=-i\coth\left(\pi c\right)$, $\cot\left(-i\pi c\right)=i\coth\left(\pi c\right)$. Hence

$$
\operatorname{Res}_{z=ic}f=\frac{1}{2ic}\cdot\left(-i\coth\left(\pi c\right)\right)=-\frac{\coth\left(\pi c\right)}{2c},\quad
\operatorname{Res}_{z=-ic}f=\left(-\frac{1}{2ic}\right)\cdot\left(i\coth\left(\pi c\right)\right)=-\frac{\coth\left(\pi c\right)}{2c}.
$$

Thus $\sum_{n=-\infty}^{+\infty}\frac{1}{n^{2}+c^{2}}=\frac{\pi\coth\left(\pi c\right)}{c}$. Since $\sum_{n=-\infty}^{+\infty}=2\sum_{n=1}^{+\infty}+\frac1{c^{2}}$,

$$
\sum_{n=1}^{+\infty}\frac{1}{n^{2}+c^{2}}=\frac12\left(\frac{\pi\coth\left(\pi c\right)}{c}-\frac{1}{c^{2}}\right)=\frac{\pi}{2c}\coth\left(\pi c\right)-\frac{1}{2c^{2}}.
$$

$\blacksquare$

---

## 15.4-13

Suppose the boundary of a domain $D\subset\mathbb{C}$ is a piecewise smooth Jordan closed curve $\Gamma$, $g$ is holomorphic on $\overline{D}=D\cup\Gamma$, and $f$ is meromorphic on $D$ with only finitely many zeros and poles in $D$. Prove: $\frac{1}{2\pi i}\int_{\Gamma}g\left(z\right)\frac{f'\left(z\right)}{f\left(z\right)}\,dz=\sum_{j=1}^{n}r_{j}g\left(a_{j}\right)-\sum_{k=1}^{m}s_{k}g\left(p_{k}\right)$, where $a_{j}$ are zeros of $f$ of order $r_{j}$, $j=1,\ldots,n$, and $p_{k}$ are poles of $f$ of order $s_{k}$, $k=1,\ldots,n$.

### Solution 15.4-13

$f$ is meromorphic on $D$. Near a zero $a_{j}$ of order $r_{j}$, $f\left(z\right)=\left(z-a_{j}\right)^{r_{j}}h\left(z\right)$ with $h\left(a_{j}\right)\ne0$, so

$$
\frac{f'\left(z\right)}{f\left(z\right)}=\frac{r_{j}}{z-a_{j}}+\frac{h'\left(z\right)}{h\left(z\right)},\quad\operatorname{Res}_{z=a_{j}}\frac{f'}{f}=r_{j};
$$

near a pole $p_{k}$ of order $s_{k}$, $f\left(z\right)=\left(z-p_{k}\right)^{-s_{k}}H\left(z\right)$ with $H\left(p_{k}\right)\ne0$, $\frac{f'}{f}=-\frac{s_{k}}{z-p_{k}}+\frac{H'}{H}$, $\operatorname{Res}_{z=p_{k}}\frac{f'}{f}=-s_{k}$. Since $g$ is holomorphic, by the residue theorem inside $\Gamma$:

$$
\frac{1}{2\pi i}\int_{\Gamma}g\left(z\right)\frac{f'\left(z\right)}{f\left(z\right)}\,dz
=\sum_{j=1}^{n}\operatorname{Res}_{z=a_{j}}\left(g\frac{f'}{f}\right)+\sum_{k=1}^{m}\operatorname{Res}_{z=p_{k}}\left(g\frac{f'}{f}\right)
=\sum_{j=1}^{n}r_{j}g\left(a_{j}\right)-\sum_{k=1}^{m}s_{k}g\left(p_{k}\right).
$$

$\blacksquare$
