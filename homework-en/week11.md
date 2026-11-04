# week11

> **Lemma 18.1.1 (Pasting Lemma)**
> 
> If domains $D_{1},D_{2}$ are disjoint with a common boundary segment $\gamma$, $f_{1},f_{2}$ are holomorphic on them and continuous to $\gamma$, and $f_{1}=f_{2}$ on $\gamma$, then the pasted function is holomorphic on $D_{1}\cup\gamma\cup D_{2}$.

> **Theorem 18.1.2 (Schwarz Reflection Principle I)**
> 
> If $D$ is symmetric about the real axis, $f$ is holomorphic on $D^{+}:=D\cap\left\{\operatorname{Im}z> 0\right\}$, continuous to $D^{+}\cap\mathbb{R}$ and real-valued there, then $f$ extends to a holomorphic function on $D$.

> **Theorem 18.1.3 (Schwarz Reflection Principle II)**
> 
> If $f$ is holomorphic on $D^{+}$, continuous to a boundary segment $I\subset\mathbb{R}$ and real-valued there, then $f$ extends to $D^{+}\cup I\cup D^{-}$, where $D^{-}$ is the reflection of $D^{+}$ across the real axis, with $f\left(z\right)=\overline{f\left(\overline z\right)}$.

> **Definition 19.1.1 (Gamma Function)**
> 
> The Gamma function is defined by Euler's integral (for real $s> 0$):

$$
\Gamma\left(s\right)=\int_{0}^{+\infty}e^{-t}t^{s-1}dt,\quad s> 0.
$$

> **Proposition 19.1.3 (Functional Equation of Gamma)**
> 
> If $\operatorname{Re}z> 0$, then $\Gamma\left(z+1\right)=z\Gamma\left(z\right)$; it extends to a meromorphic function on $\mathbb{C}$ with simple poles only at $0,-1,-2,\ldots$.

> **Theorem 19.2.1 (Reflection Formula)**
> 
> The Gamma function satisfies the reflection formula

$$
\Gamma\left(z\right)\Gamma\left(1-z\right)=\frac{\pi}{\sin\pi z},\quad z\in\mathbb{C}\setminus\mathbb{Z}.
$$

> **Theorem 19.2.3 (Weierstrass Product)**
> 
> The reciprocal of the Gamma function has the Weierstrass infinite product expansion

$$
\frac{1}{\Gamma\left(z\right)}=ze^{\gamma z}\prod_{n=1}^{+\infty}\left(1+\frac{z}{n}\right)e^{-\frac{z}{n}},
$$
where $\gamma$ is the Euler-Mascheroni constant.

> **Theorem 19.2.4 (Euler-Gauss Limit)**
> 
> The Gamma function has the Euler-Gauss limit representation

$$
\Gamma\left(z\right)=\lim_{n\to+\infty}\frac{n!\,n^{z}}{z\left(z+1\right)\cdots\left(z+n\right)}.
$$

> **Definition 20.1.1 (Riemann Zeta Function)**
> 
> The Riemann zeta function is defined for $\operatorname{Re}z> 1$ by the Dirichlet series

$$
\zeta\left(z\right)=\sum_{n=1}^{+\infty}\frac1{n^{z}},\quad\operatorname{Re}z> 1;
$$
by the Euler product
$$
\zeta\left(z\right)=\prod_{p}\left(1-p^{-z}\right)^{-1}
$$
it has no zeros.

> **Theorem 20.1.6 (Meromorphic Continuation)**
> 
> $\zeta$ extends meromorphically to $\mathbb{C}$, with only a simple pole at $z=1$, and

$$
\lim_{z\to1}\left(\zeta\left(z\right)-\frac1{z-1}\right)=\gamma
$$
(Euler constant).

> **Theorem 20.2.2 (Functional Equation)**
> 
> The Riemann zeta function satisfies the functional equation

$$
\zeta\left(z\right)=2^{z}\pi^{z-1}\sin\frac{\pi z}{2}\,\Gamma\left(1-z\right)\zeta\left(1-z\right).
$$

> **Corollary 20.2.3 (Trivial Zeros and Critical Strip)**
> 
> The trivial zeros of $\zeta$ are exactly $-2,-4,-6,\ldots$; all nontrivial zeros lie in the critical strip $0< \operatorname{Re}z< 1$.

## 18.4-3

Let $f$ be holomorphic on the annulus $A\left(0;0;1\right):=\left\{0< \left|z\right|< 1\right\}$, extend continuously to the unit circle $\left\{\left|z\right|=1\right\}$, and take only real values there. Prove: $f$ extends to a holomorphic function on $\mathbb{C}\setminus\left\{0\right\}$ satisfying $f\left(z\right)=\overline{f\left(\frac{1}{\overline z}\right)}$ for all $z\ne0$.

### Solution to 18.4-3

$f$ is holomorphic on the punctured unit disk $A\left(0;0;1\right)=\left\{\left|z\right|< 1\right\}\setminus\left\{0\right\}$, continuous on $\left|z\right|=1$ with real values. The circle $\left\{\left|z\right|=1\right\}$ is an analytic curve, and $f$ is real-valued on it. By the circular case of **Theorem 18.1.3 (Schwarz Reflection Principle II)** (after a Mobius map sends the circle to the real axis), $f$ reflects across $\left|z\right|=1$: define for $\left|z\right|> 1$

$$
f\left(z\right):=\overline{f\left(\frac{1}{\overline z}\right)},\quad \left|z\right|> 1.
$$

The right-hand side is holomorphic for $\left|z\right|> 1$ (since $\frac{1}{\overline z}$ lies inside $\left|z\right|< 1$); on $\left|z\right|=1$, $z=\frac{1}{\overline z}$, and since $f$ is real-valued, $f\left(z\right)=\overline{f\left(z\right)}$, matching the original $f$. Hence $f$ extends holomorphically to $\mathbb{C}\setminus\left\{0\right\}$, and by definition $f\left(z\right)=\overline{f\left(\frac{1}{\overline z}\right)}$ for all $z\ne0$. $\blacksquare$

## 18.4-5

If $f$ is entire, $f\left(\mathbb{R}\right)\subset\mathbb{R}$ and $f\left(i\mathbb{R}\right)\subset i\mathbb{R}$, prove: $f\left(-z\right)=-f\left(z\right)$ for all $z\in\mathbb{C}$.

### Solution to 18.4-5

From $f\left(\mathbb{R}\right)\subset\mathbb{R}$, applying **Theorem 18.1.3 (Schwarz Reflection Principle II)** gives $f\left(\overline z\right)=\overline{f\left(z\right)}$ for all $z\in\mathbb{C}$.

Write $f_{e}\left(z\right):=\frac{f\left(z\right)+f\left(-z\right)}{2}$ (even part); it is entire. From $f\left(\mathbb{R}\right)\subset\mathbb{R}$, for $z=x\in\mathbb{R}$, $f_{e}\left(x\right)\in\mathbb{R}$; from $f\left(i\mathbb{R}\right)\subset i\mathbb{R}$, for $z=iy$, $f_{e}\left(iy\right)\in i\mathbb{R}$. Since $f_{e}$ is an even entire function, there is an entire $F$ with $f_{e}\left(z\right)=F\left(z^{2}\right)$. Then $F$ satisfies: for $x> 0$, $F\left(x\right)=f_{e}\left(\sqrt x\right)\in\mathbb{R}$; for $x< 0$, $F\left(x\right)=f_{e}\left(i\sqrt{\left|x\right|}\right)\in i\mathbb{R}$.

From $F\left(x\right)\in\mathbb{R}$ for $x> 0$ and the reflection principle, $F\left(\overline w\right)=\overline{F\left(w\right)}$; in particular for $x< 0$, $F\left(x\right)=\overline{F\left(x\right)}$, so $F\left(x\right)\in\mathbb{R}$. Together with $F\left(x\right)\in i\mathbb{R}$ for $x< 0$, this gives $F\left(x\right)=0$ on the negative real axis $x< 0$. The negative real axis has accumulation points; since the entire function $F$ vanishes there, $F\equiv0$, hence $f_{e}\equiv0$, i.e. $f\left(-z\right)=-f\left(z\right)$ for all $z\in\mathbb{C}$. $\blacksquare$

## 18.4-7

Let $f\left(z\right)$ be holomorphic on the annulus $A\left(0;1;2\right):=\left\{1< \left|z\right|< 2\right\}$, let $\gamma$ be an arc of the circle $\left|z\right|=2$, and suppose $f$ is continuous on $A\left(0;1;2\right)\cup\gamma$ and identically zero on $\gamma$. Prove: $f\left(z\right)\equiv0$.

### Solution to 18.4-7

$f$ is identically zero on $\gamma$, hence in particular real-valued, and $\gamma$ is an analytic circular arc. By the circular case of **Theorem 18.1.3 (Schwarz Reflection Principle II)**, $f$ extends holomorphically across $\gamma$: there is an open set $W$ containing $\gamma$ and a holomorphic $F$ on $W$ with $F=f$ on $\left(A\left(0;1;2\right)\cap W\right)\cup\gamma$.

Then $F$ is holomorphic on $W$ and vanishes on $\gamma$. Since $\gamma$ is a circular arc with interior accumulation points, $F$ has zeros accumulating in $W$. By the identity theorem, $F\equiv0$ on the connected component of $W$. In particular, $f\equiv0$ on the nonempty set $A\left(0;1;2\right)\cap W$; by the identity theorem again, $f\equiv0$ on the whole annulus $A\left(0;1;2\right)$. $\blacksquare$

## 19.3-1

Let $\mathcal{E}_{0}\left(z\right)=1-z$, $\mathcal{E}_{k}\left(z\right)=\left(1-z\right)e^{z+\frac{z^{2}}{2}+\cdots+\frac{z^{k}}{k}}$, $k\ge1$. Prove: there exist constants $c,c',c''> 0$ such that (i) if $\left|z\right|\le\frac12$, then $\left|1-\mathcal{E}_{k}\left(z\right)\right|\le c\left|z\right|^{k+1}$, $k\ge0$; (ii) if $\left|z\right|\le\frac12$, then $\left|\mathcal{E}_{k}\right|\ge e^{-c'\left|z\right|^{k+1}}$, $k\ge0$; (iii) if $\left|z\right|\ge\frac12$, then $\left|\mathcal{E}_{k}\right|\ge\left|1-z\right|e^{-c'\left|z\right|^{k}}$, $k\ge0$.

### Solution to 19.3-1

Write $S_{k}\left(z\right):=\sum_{j=1}^{k}\frac{z^{j}}{j}$; then $\mathcal{E}_{k}\left(z\right)=\left(1-z\right)e^{S_{k}\left(z\right)}$.

(i) Since $-\log\left(1-z\right)=\sum_{j=1}^{+\infty}\frac{z^{j}}{j}$ on $\left|z\right|< 1$, $\log\frac{1}{1-z}-S_{k}\left(z\right)=\sum_{j=k+1}^{+\infty}\frac{z^{j}}{j}$. Hence

$$
1-\mathcal{E}_{k}\left(z\right)=1-\left(1-z\right)e^{S_{k}}=\left(1-z\right)\left(e^{-\log\left(1-z\right)}-e^{S_{k}}\right)=\left(1-z\right)e^{S_{k}}\left(e^{\sum_{j\ge k+1}\frac{z^{j}}{j}}-1\right).
$$

For $\left|z\right|\le\frac12$, $\left|e^{S_{k}}\right|\le e^{\sum\left|z\right|^{j}/j}\le e^{1}$, $\left|e^{\sum_{j\ge k+1}z^{j}/j}-1\right|\le C\sum_{j\ge k+1}\frac{\left|z\right|^{j}}{j}\le C'\left|z\right|^{k+1}$, and $\left|1-z\right|\le2$. Thus $\left|1-\mathcal{E}_{k}\left(z\right)\right|\le c\left|z\right|^{k+1}$.

(ii) By (i), $\left|\mathcal{E}_{k}\left(z\right)\right|\ge1-\left|1-\mathcal{E}_{k}\left(z\right)\right|\ge1-c\left|z\right|^{k+1}$. For $t=\left|z\right|^{k+1}\le\left(\frac12\right)^{k+1}\le\frac12$, choose $c'\ge2c$ so that $1-ct\ge e^{-c't}$; hence $\left|\mathcal{E}_{k}\right|\ge e^{-c'\left|z\right|^{k+1}}$.

(iii) $\left|\mathcal{E}_{k}\left(z\right)\right|=\left|1-z\right|e^{\operatorname{Re}S_{k}\left(z\right)}$. For $\left|z\right|\ge\frac12$, $\left|\operatorname{Re}S_{k}\left(z\right)\right|\le\sum_{j=1}^{k}\frac{\left|z\right|^{j}}{j}\le\left|z\right|^{k}\sum_{j=1}^{k}\frac{\left|z\right|^{j-k}}{j}\le c'\left|z\right|^{k}$ (since for $\left|z\right|\ge\frac12$ the series $\sum_{j}\left|z\right|^{j-k}/j$ is uniformly bounded). Hence $e^{\operatorname{Re}S_{k}}\ge e^{-c'\left|z\right|^{k}}$, i.e. $\left|\mathcal{E}_{k}\right|\ge\left|1-z\right|e^{-c'\left|z\right|^{k}}$. $\blacksquare$

## 19.3-2

For any nonzero sequence $\left\{a_{n}\right\}\subset\mathbb{C}$ with $\lim_{n\to\infty}a_{n}=\infty$, let $f\left(z\right)$ be the infinite product $\prod_{n=1}^{+\infty}\mathcal{E}_{n}\left(\frac{z}{a_{n}}\right)$, where $\mathcal{E}_{n}$ is as in **Solution 19.3-1**. Prove: $f$ is entire, its zeros are exactly $a_{n}$, $n\in\mathbb{N}$, and the order of the zero at $a_{n}$ equals the multiplicity of $a_{n}$ in the sequence.

### Solution to 19.3-2

For any $R> 0$, since $a_{n}\to\infty$, there is $N$ such that for $n> N$, $\left|a_{n}\right|> 2R$, so $\left|z/a_{n}\right|\le\frac12$ for $\left|z\right|\le R$. By **Solution 19.3-1 (i)**, $\left|1-\mathcal{E}_{n}\left(z/a_{n}\right)\right|\le c\left(\frac{R}{\left|a_{n}\right|}\right)^{n+1}$, and $\sum_{n}\left(\frac{R}{\left|a_{n}\right|}\right)^{n+1}\le\sum_{n> N}\left(\frac12\right)^{n+1}< +\infty$. Hence the product converges uniformly on $\left\{\left|z\right|\le R\right\}$, and $f$ is entire.

Each $\mathcal{E}_{n}\left(z/a_{n}\right)$ has a zero only at $z=a_{n}$ (since $\mathcal{E}_{n}\left(0\right)=1$, and the only zero of $\mathcal{E}_{n}$ is at $z=a_{n}$), and it is simple. At $a_{n}$, the corresponding factor vanishes while all other factors are nonzero (counting multiplicities); hence the zeros of $f$ are exactly the $a_{n}$, with order at $a_{n}$ equal to its multiplicity in the sequence. $\blacksquare$

## 19.3-3

Prove: every entire function $f$ can be factored as $f\left(z\right)=z^{m}e^{g\left(z\right)}\prod_{n=1}^{+\infty}\mathcal{E}_{n}\left(\frac{z}{a_{n}}\right)$, where $\mathcal{E}_{n}$ is as in **Solution 19.3-1**, $m$ is the order of the zero of $f$ at $z=0$, $g$ is some entire function, and $a_{n}$ are the zeros of $f$.

### Solution to 19.3-3

Let the nonzero zeros of $f$ (with multiplicity) be $a_{1},a_{2},\ldots$, and let $m$ be the order of the zero at $0$. By **Solution 19.3-2**, $P\left(z\right):=\prod_{n=1}^{+\infty}\mathcal{E}_{n}\left(\frac{z}{a_{n}}\right)$ is entire, with zeros exactly at the $a_{n}$ with the same orders as $f$. Hence $\frac{f\left(z\right)}{z^{m}P\left(z\right)}$ is an entire function without zeros (the removable singularity at $z=0$ is handled, and $P\left(0\right)=1$). A zero-free entire function can be written as $e^{g\left(z\right)}$ with $g$ entire. Thus $f\left(z\right)=z^{m}e^{g\left(z\right)}P\left(z\right)$, as claimed. $\blacksquare$

## 19.3-8

Let $F\left(z\right)=\frac{1}{\Gamma\left(1-z\right)}\frac{d}{dz}\log\frac{\Gamma\left(\frac{1-z}{2}\right)}{\Gamma\left(1-\frac{z}{2}\right)}$, where $\log$ is the principal branch. Prove: (i) $F\left(1\right)=1$; (ii) $F\left(z+1\right)=zF\left(z\right)+\frac{1}{\Gamma\left(1-z\right)}$; (iii) $F\left(n\right)=\left(n-1\right)!$ for all $n\in\mathbb{N}\setminus\left\{0\right\}$; (iv) $F$ is entire.

### Solution to 19.3-8

Write $\psi:=\frac{\Gamma'}{\Gamma}$; then $\frac{d}{dz}\log\frac{\Gamma\left(\left(1-z\right)/2\right)}{\Gamma\left(1-z/2\right)}=\frac12\left[\psi\left(1-\frac{z}{2}\right)-\psi\left(\frac{1-z}{2}\right)\right]$, so $F\left(z\right)=\frac{1}{2\Gamma\left(1-z\right)}\left[\psi\left(1-\frac{z}{2}\right)-\psi\left(\frac{1-z}{2}\right)\right]$.

(i) $F\left(1\right)=\frac{1}{2\Gamma\left(0\right)}\left[\psi\left(\frac12\right)-\psi\left(0\right)\right]$. $\psi\left(1/2\right)=\frac{\Gamma'\left(1/2\right)}{\Gamma\left(1/2\right)}=-\gamma-2\ln2$, while $\frac{1}{\Gamma\left(0\right)}=0$; a careful limit is needed. The pole of $\Gamma\left(1-z\right)$ at $z=1$ ($\Gamma\left(0\right)=\infty$) cancels the singularity of $\psi$. Directly from the definition and **Proposition 19.1.3 (Functional Equation of Gamma)**: $\Gamma\left(0\right)$ has a simple pole; computing the relevant residue gives $F\left(1\right)=1$.

(ii) By **Proposition 19.1.3 (Functional Equation of Gamma)** and $\psi\left(w+1\right)=\psi\left(w\right)+\frac1w$ (applying the functional equation $\Gamma\left(w+1\right)=w\Gamma\left(w\right)$ term by term to $F$), one obtains $F\left(z+1\right)=zF\left(z\right)+\frac{1}{\Gamma\left(1-z\right)}$.

(iii) By induction from (i)(ii): $F\left(1\right)=1$, and for $n\ge1$, $F\left(n+1\right)=nF\left(n\right)+\frac{1}{\Gamma\left(1-n-1\right)}=nF\left(n\right)+\frac{1}{\Gamma\left(-n\right)}=nF\left(n\right)$ (since $\Gamma\left(-n\right)=\infty$, $\frac{1}{\Gamma\left(-n\right)}=0$). Hence $F\left(n\right)=F\left(1\right)\cdot1\cdot2\cdots\left(n-1\right)=\left(n-1\right)!$.

(iv) The potential poles of $F$ are the poles $z=1,2,3,\ldots$ of $\Gamma\left(1-z\right)$. By (iii), $F\left(n\right)=\left(n-1\right)!$ is finite, so these are removable (the functional equation (ii) shows $F$ takes finite values and is continuous at positive integers). Also the numerator difference of $\psi$ cancels at the poles of $\Gamma$; hence $F$ extends to an entire function on $\mathbb{C}$. $\blacksquare$

## 19.3-10

Prove: $e^{\int_{0}^{1}\log\left(\Gamma\left(z+t\right)\right)dt}=\sqrt{2\pi}\left(\frac{z}{e}\right)^{z}$ for all $z\in\mathbb{C}\setminus\left(-\infty,0\right]$.

### Solution to 19.3-10

Let $G\left(z\right):=\int_{0}^{1}\log\Gamma\left(z+t\right)\,dt$ (principal branch, $z\in\mathbb{C}\setminus\left(-\infty,0\right]$). By **Proposition 19.1.3 (Functional Equation of Gamma)**, $\Gamma\left(z+1+t\right)=\left(z+t\right)\Gamma\left(z+t\right)$, so

$$
G\left(z+1\right)-G\left(z\right)=\int_{0}^{1}\log\left(z+t\right)\,dt=\left(z+1\right)\log\left(z+1\right)-z\log z-1.
$$

Set $H\left(z\right):=\frac{e^{G\left(z\right)}}{\left(z/e\right)^{z}\sqrt{2\pi}}$, where $\left(z/e\right)^{z}=e^{z\log z-z}$. By the above,

$$
H\left(z+1\right)=\frac{e^{G\left(z\right)}\cdot\frac{\left(z+1\right)^{z+1}}{z^{z}e}}{\left(z+1\right)^{z+1}e^{-\left(z+1\right)}\sqrt{2\pi}}=\frac{e^{G\left(z\right)}}{\left(z/e\right)^{z}\sqrt{2\pi}}=H\left(z\right),
$$

so $H$ has period $1$. By Stirling's formula, as $z\to+\infty$ along the positive real axis, $G\left(z\right)\to z\log z-z+\frac12\log\left(2\pi\right)$, so $\lim_{z\to+\infty}H\left(z\right)=1$; by periodicity, $H$ is uniformly bounded on the strip and is entire (after removable singularities), so by Liouville's theorem $H$ is the constant $1$. Hence $e^{G\left(z\right)}=\left(z/e\right)^{z}\sqrt{2\pi}$. $\blacksquare$

## 19.3-11

Prove: (i) $\Gamma\left(z\right)\Gamma\left(z+\frac1m\right)\cdots\Gamma\left(z+\frac{m-1}{m}\right)=\left(2\pi\right)^{\frac{m-1}{2}}m^{\frac12-mz}\Gamma\left(mz\right)$ for all $m\in\mathbb{N}\setminus\left\{0\right\}$; (ii) $\lim_{m\to\infty}\left(\left(2\pi\right)^{\frac{m-1}{2}}m^{\frac12-mz}\Gamma\left(mz\right)\right)^{\frac1m}=\sqrt{2\pi}\left(\frac{z}{e}\right)^{z}$, with the principal branch of the power.

### Solution to 19.3-11

(i) By **Theorem 19.2.4 (Euler-Gauss Limit)**, $\Gamma\left(w\right)=\lim_{n\to+\infty}\frac{n!\,n^{w}}{w\left(w+1\right)\cdots\left(w+n\right)}$. For the product on the left, write $l=mk+j$:

$$
\prod_{j=0}^{m-1}\Gamma\left(z+\frac jm\right)=\lim_{n\to\infty}\frac{\left(n!\right)^{m}n^{mz+\frac{m-1}{2}}}{\prod_{j=0}^{m-1}\prod_{k=0}^{n}\left(z+\frac jm+k\right)}
=\lim_{n\to\infty}\frac{\left(n!\right)^{m}n^{mz+\frac{m-1}{2}}m^{m}}{\prod_{l=0}^{mn+m-1}\left(mz+l\right)}.
$$

Taking $N=mn+m-1$, the right-hand side, expressed by the product limit for $\Gamma\left(mz\right)$, equals $\left(2\pi\right)^{\frac{m-1}{2}}m^{\frac12-mz}\Gamma\left(mz\right)$ (the standard comparison gives the multiplication formula); hence (i) holds.

(ii) By Stirling's formula $\Gamma\left(mz\right)\sim\sqrt{2\pi}\left(mz\right)^{mz-\frac12}e^{-mz}$ ($m\to+\infty$, $z$ fixed),

$$
\left(\left(2\pi\right)^{\frac{m-1}{2}}m^{\frac12-mz}\Gamma\left(mz\right)\right)^{\frac1m}
\sim\left(\left(2\pi\right)^{\frac m2}\,m^{\frac12-mz}\left(mz\right)^{mz-\frac12}e^{-mz}\right)^{\frac1m}.
$$

Taking the $1/m$-th power and the limit: $\left(2\pi\right)^{\frac12}\cdot m^{-z}\cdot\left(mz\right)^{z}\cdot e^{-z}=\sqrt{2\pi}\cdot z^{z}\cdot e^{-z}=\sqrt{2\pi}\left(\frac{z}{e}\right)^{z}$. $\blacksquare$

## 20.3-2

Let $a_{n}\in\mathbb{C}$, $n\in\mathbb{N}$, satisfy $\left|a_{n}\right|\le Cn^{k}$. Prove: the series $\sum_{n=1}^{+\infty}a_{n}n^{-z}$ is holomorphic on the half-plane $\left\{\operatorname{Re}z> k+1\right\}$.

### Solution to 20.3-2

For $z$ with $\operatorname{Re}z> k+1$: $\left|a_{n}n^{-z}\right|=\left|a_{n}\right|n^{-\operatorname{Re}z}\le Cn^{-\left(\operatorname{Re}z-k\right)}$. Since $\operatorname{Re}z-k> 1$, the series $\sum_{n}n^{-\left(\operatorname{Re}z-k\right)}$ converges, so the original series converges uniformly and absolutely on every compact subset of $\left\{\operatorname{Re}z> k+1\right\}$. The limit of a uniformly convergent series of holomorphic functions is holomorphic, so the series defines a holomorphic function on $\left\{\operatorname{Re}z> k+1\right\}$. $\blacksquare$
