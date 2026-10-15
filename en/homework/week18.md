# Assignment 18

> **Definition 15.1.1**<br>A function holomorphic everywhere on the complex plane $\mathbb{C}$ is called an entire function; a function holomorphic everywhere except at poles is called a meromorphic function.

> **Theorem 15.2.7** (Argument Principle)<br>If $f$ is meromorphic on a domain $D$, the zeros $a_{j}$ have order $r_{j}$, the poles $p_{k}$ have order $s_{k}$, and $\Gamma$ is a Jordan closed curve in $D$ avoiding these points, then $$\frac{1}{2\pi i}\int_{\Gamma}\frac{f'}{f}\,dz=\sum r_{j}-\sum s_{k}.$$

> **Formula for the Sum of Residues**<br>A meromorphic function on the whole plane has zero integral along a large contour "enclosing all singularities", i.e. the sum of all residues is zero.

### Problem 1

(Problem 15.4-5) Prove: $\frac{1}{\sin^{2}z}=\sum_{n=-\infty}^{+\infty}\frac{1}{\left(z-n\pi\right)^{2}}$.

### Solution to Problem 1

$\frac{1}{\sin^{2}z}$ has double poles at $z=n\pi$, and $\frac{1}{\sin^{2}z}$ near $z=n\pi$ has principal part exactly $\frac{1}{\left(z-n\pi\right)^{2}}$ (since $\sin z\sim\left(-1\right)^{n}\left(z-n\pi\right)$, $\sin^{2}z\sim\left(z-n\pi\right)^{2}$). Define

$$
F\left(z\right):=\frac{1}{\sin^{2}z}-\sum_{n=-\infty}^{+\infty}\frac{1}{\left(z-n\pi\right)^{2}}.
$$

The series converges locally uniformly on compact subsets of $\mathbb{C}$ (outside the punctured neighborhoods of the poles), and has the same principal part as $\frac{1}{\sin^{2}z}$ at each $n\pi$, so $F$ is holomorphic on $\mathbb{C}$ (each pole is canceled), i.e. entire. Also, $\sin^{2}\left(z+\pi\right)=\sin^{2}z$ and $\sum_{n}\frac{1}{\left(z+\pi-n\pi\right)^{2}}=\sum_{n}\frac{1}{\left(z-n\pi\right)^{2}}$, so $F\left(z+\pi\right)=F\left(z\right)$; $F$ has period $\pi$. On the fundamental strip $\left|\operatorname{Re}z\right|\le\frac\pi2$, as $\left|\operatorname{Im}z\right|\to+\infty$, $\frac{1}{\sin^{2}z}\to0$ and the series $\to0$, so $F$ is bounded on the strip; by periodicity, $F$ is bounded on $\mathbb{C}$. By Liouville's theorem, $F$ is constant; since $F\to0$ as $\operatorname{Im}z\to+\infty$, $F\equiv0$, which is the desired identity. $\blacksquare$

### Problem 2

(Problem 15.4-8) Let $P$ and $Q$ be polynomials with $\deg Q\ge\deg P+2$, $g=\frac{P}{Q}$ and $f\left(z\right)=g\left(z\right)\cot\pi z$. Let $Z\left(Q\right)$ be the set of zeros of $Q$. (i) Prove: there exist $M>0$ and $R>0$ such that $\left|g\left(z\right)\right|\le\frac{M}{\left|z\right|^{2}}$, $\forall z\notin\left\{\left|z\right|\le R\right\}$; (ii) let $N\in\mathbb{N}$ with $N>R$, and take the rectangle $C_{N}$ whose four sides lie on the lines $\operatorname{Re}z=\pm\left(N+\frac12\right)$ and $\operatorname{Im}z=\pm N$; prove: $\lim_{N\to\infty}\int_{C_{N}}f\left(z\right)\,dz=0$; (iii) prove: for any $n\in\mathbb{Z}\setminus Z\left(Q\right)$, $\operatorname{Res}_{z=n}f=\frac{g\left(n\right)}{\pi}$; (iv) prove: $\sum_{n=-\infty}^{+\infty}\operatorname{Res}_{z=n}f=-\sum_{a\in Z\left(Q\right)\setminus\mathbb{Z}}\operatorname{Res}_{z=a}f$; (v) take $g\left(z\right)=\frac{1}{z^{2}+c^{2}}$, $c>0$, and compute $\sum_{n=1}^{+\infty}\frac{1}{n^{2}+c^{2}}$.

### Solution to Problem 2

(i) Since $\deg Q\ge\deg P+2$, $g\left(z\right)=\frac{P\left(z\right)}{Q\left(z\right)}$ satisfies $\left|g\left(z\right)\right|\le\frac{C}{\left|z\right|^{2}}$ as $\left|z\right|\to+\infty$, i.e. there exist $M,R>0$ such that $\left|g\left(z\right)\right|\le\frac{M}{\left|z\right|^{2}}$, $\forall \left|z\right|>R$.

(ii) On $C_{N}$, $\left|z\right|\ge N$, so $\left|g\left(z\right)\right|\le\frac{M}{N^{2}}$. On $\operatorname{Im}z=\pm N$ and $\operatorname{Re}z=\pm\left(N+\frac12\right)$, the poles $z=n$ (integers) are avoided, and $\cot\pi z$ is uniformly bounded on these sides (when $\left|\operatorname{Im}z\right|\ge N$, or when $\operatorname{Re}z$ is a half-integer, $\cot\pi z$ is bounded); write $\left|\cot\pi z\right|\le K$. Then $\left|f\right|\le\frac{MK}{N^{2}}$, and the perimeter of $C_{N}$ is $\le C'N$, so

$$
\left|\int_{C_{N}}f\left(z\right)\,dz\right|\le\frac{MK}{N^{2}}\cdot C'N=\frac{C''}{N}\to0.
$$

(iii) If $n\in\mathbb{Z}\setminus Z\left(Q\right)$, then $g$ is holomorphic at $n$ and $g\left(n\right)\ne0$; $\cot\pi z$ has a simple pole at $z=n$, $\cot\pi z\sim\frac{1}{\pi\left(z-n\right)}$, $\operatorname{Res}_{z=n}\cot\pi z=\frac1\pi$. Hence $\operatorname{Res}_{z=n}f=g\left(n\right)\operatorname{Res}_{z=n}\cot\pi z=\frac{g\left(n\right)}{\pi}$.

(iv) By the residue theorem on $C_{N}$ (for $N$ sufficiently large, $C_{N}$ contains all integers $\left|n\right|\le N$ and the poles of $Z\left(Q\right)$ inside it):

$$
\int_{C_{N}}f\,dz=2\pi i\left[\sum_{\left|n\right|\le N}\operatorname{Res}_{z=n}f+\sum_{a\in Z\left(Q\right),\,a\text{ 在 }C_{N}\text{ 内}}\operatorname{Res}_{z=a}f\right].
$$

Letting $N\to\infty$ by (ii), we get $\sum_{n=-\infty}^{+\infty}\operatorname{Res}_{z=n}f+\sum_{a\in Z\left(Q\right)}\operatorname{Res}_{z=a}f=0$. If $Z\left(Q\right)\cap\mathbb{Z}=\emptyset$ (as in part (v)), then $\sum_{a\in Z\left(Q\right)}\operatorname{Res}_{z=a}f=\sum_{a\in Z\left(Q\right)\setminus\mathbb{Z}}\operatorname{Res}_{z=a}f$, which gives the desired identity.

(v) $g\left(z\right)=\frac{1}{z^{2}+c^{2}}$, $Z\left(Q\right)=\left\{ic,-ic\right\}$, which are not integers. By (iii), $\operatorname{Res}_{z=n}f=\frac{1}{\pi\left(n^{2}+c^{2}\right)}$; by (iv),

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

### Problem 3

(Problem 15.4-13) Suppose the boundary of the domain $D\subset\mathbb{C}$ is a piecewise-smooth Jordan closed curve $\Gamma$, $g$ is holomorphic on $\overline{D}=D\cup\Gamma$, and $f$ is meromorphic on $D$ with only finitely many zeros and poles in $D$. Prove: $\frac{1}{2\pi i}\int_{\Gamma}g\left(z\right)\frac{f'\left(z\right)}{f\left(z\right)}\,dz=\sum_{j=1}^{n}r_{j}g\left(a_{j}\right)-\sum_{k=1}^{m}s_{k}g\left(p_{k}\right)$, where $a_{j}$ are the zeros of $f$ of order $r_{j}$, $j=1,\ldots,n$, and $p_{k}$ are the poles of $f$ of order $s_{k}$, $k=1,\ldots,n$.

### Solution to Problem 3

$f$ is meromorphic on $D$. Near the zero $a_{j}$ (order $r_{j}$), $f\left(z\right)=\left(z-a_{j}\right)^{r_{j}}h\left(z\right)$, $h\left(a_{j}\right)\ne0$, so

$$
\frac{f'\left(z\right)}{f\left(z\right)}=\frac{r_{j}}{z-a_{j}}+\frac{h'\left(z\right)}{h\left(z\right)},\quad\operatorname{Res}_{z=a_{j}}\frac{f'}{f}=r_{j};
$$

near the pole $p_{k}$ (order $s_{k}$), $f\left(z\right)=\left(z-p_{k}\right)^{-s_{k}}H\left(z\right)$, $H\left(p_{k}\right)\ne0$, $\frac{f'}{f}=-\frac{s_{k}}{z-p_{k}}+\frac{H'}{H}$, $\operatorname{Res}_{z=p_{k}}\frac{f'}{f}=-s_{k}$. Since $g$ is holomorphic, by the residue theorem inside $\Gamma$:

$$
\frac{1}{2\pi i}\int_{\Gamma}g\left(z\right)\frac{f'\left(z\right)}{f\left(z\right)}\,dz
=\sum_{j=1}^{n}\operatorname{Res}_{z=a_{j}}\left(g\frac{f'}{f}\right)+\sum_{k=1}^{m}\operatorname{Res}_{z=p_{k}}\left(g\frac{f'}{f}\right)
=\sum_{j=1}^{n}r_{j}g\left(a_{j}\right)-\sum_{k=1}^{m}s_{k}g\left(p_{k}\right).
$$

$\blacksquare$
