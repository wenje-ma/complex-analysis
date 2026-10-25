# Assignment 22

> **Definition 19.1.1** (Gamma Function)<br>$$\Gamma\left(s\right)=\int_{0}^{+\infty}e^{-t}t^{s-1}dt,\quad s> 0.$$

> **Proposition 19.1.3**<br>If $\operatorname{Re}z> 0$, then $\Gamma\left(z+1\right)=z\Gamma\left(z\right)$; it extends to a meromorphic function on $\mathbb{C}$, with simple poles only at $0,-1,-2,\ldots$.

> **Theorem 19.2.1** (Reflection Formula)<br>$$\Gamma\left(z\right)\Gamma\left(1-z\right)=\frac{\pi}{\sin\pi z},\quad z\in\mathbb{C}\setminus\mathbb{Z}.$$

> **Theorem 19.2.3** (Weierstrass)<br>$$\frac{1}{\Gamma\left(z\right)}=ze^{\gamma z}\prod_{n=1}^{+\infty}\left(1+\frac{z}{n}\right)e^{-\frac{z}{n}}.$$

> **Theorem 19.2.4** (Euler-Gauss)<br>$$\Gamma\left(z\right)=\lim_{n\to+\infty}\frac{n!\,n^{z}}{z\left(z+1\right)\cdots\left(z+n\right)}.$$

### Problem 1

(Problem 19.3-1) Let $\mathcal{E}_{0}\left(z\right)=1-z$, $\mathcal{E}_{k}\left(z\right)=\left(1-z\right)e^{z+\frac{z^{2}}{2}+\cdots+\frac{z^{k}}{k}}$, $k\ge1$. Prove: there exist constants $c,c',c''> 0$ such that (i) if $\left|z\right|\le\frac12$, then $\left|1-\mathcal{E}_{k}\left(z\right)\right|\le c\left|z\right|^{k+1}$, $k\ge0$; (ii) if $\left|z\right|\le\frac12$, then $\left|\mathcal{E}_{k}\right|\ge e^{-c'\left|z\right|^{k+1}}$, $k\ge0$; (iii) if $\left|z\right|\ge\frac12$, then $\left|\mathcal{E}_{k}\right|\ge\left|1-z\right|e^{-c'\left|z\right|^{k}}$, $k\ge0$.

### Solution to Problem 1

Write $S_{k}\left(z\right):=\sum_{j=1}^{k}\frac{z^{j}}{j}$; then $\mathcal{E}_{k}\left(z\right)=\left(1-z\right)e^{S_{k}\left(z\right)}$.

(i) Since $-\log\left(1-z\right)=\sum_{j=1}^{+\infty}\frac{z^{j}}{j}$ (on $\left|z\right|< 1$), $\log\frac{1}{1-z}-S_{k}\left(z\right)=\sum_{j=k+1}^{+\infty}\frac{z^{j}}{j}$. Hence

$$
1-\mathcal{E}_{k}\left(z\right)=1-\left(1-z\right)e^{S_{k}}=\left(1-z\right)\left(e^{-\log\left(1-z\right)}-e^{S_{k}}\right)=\left(1-z\right)e^{S_{k}}\left(e^{\sum_{j\ge k+1}\frac{z^{j}}{j}}-1\right).
$$

For $\left|z\right|\le\frac12$, $\left|e^{S_{k}}\right|\le e^{\sum\left|z\right|^{j}/j}\le e^{1}$, $\left|e^{\sum_{j\ge k+1}z^{j}/j}-1\right|\le C\sum_{j\ge k+1}\frac{\left|z\right|^{j}}{j}\le C'\left|z\right|^{k+1}$, and $\left|1-z\right|\le2$. Hence $\left|1-\mathcal{E}_{k}\left(z\right)\right|\le c\left|z\right|^{k+1}$.

(ii) By (i), $\left|\mathcal{E}_{k}\left(z\right)\right|\ge1-\left|1-\mathcal{E}_{k}\left(z\right)\right|\ge1-c\left|z\right|^{k+1}$. For $t=\left|z\right|^{k+1}\le\left(\frac12\right)^{k+1}\le\frac12$, take $c'\ge2c$ so that $1-ct\ge e^{-c't}$; hence $\left|\mathcal{E}_{k}\right|\ge e^{-c'\left|z\right|^{k+1}}$.

(iii) $\left|\mathcal{E}_{k}\left(z\right)\right|=\left|1-z\right|e^{\operatorname{Re}S_{k}\left(z\right)}$. For $\left|z\right|\ge\frac12$, $\left|\operatorname{Re}S_{k}\left(z\right)\right|\le\sum_{j=1}^{k}\frac{\left|z\right|^{j}}{j}\le\left|z\right|^{k}\sum_{j=1}^{k}\frac{\left|z\right|^{j-k}}{j}\le c'\left|z\right|^{k}$ (because when $\left|z\right|\ge\frac12$, the series $\sum_{j}\left|z\right|^{j-k}/j$ is uniformly bounded on $\left|z\right|\ge\frac12$). Hence $e^{\operatorname{Re}S_{k}}\ge e^{-c'\left|z\right|^{k}}$, i.e. $\left|\mathcal{E}_{k}\right|\ge\left|1-z\right|e^{-c'\left|z\right|^{k}}$. $\blacksquare$

### Problem 2

(Problem 19.3-2, Weierstrass) For any nonvanishing sequence $\left\{a_{n}\right\}\subset\mathbb{C}$ with $\lim_{n\to\infty}a_{n}=\infty$, let $f\left(z\right)$ be the infinite product $\prod_{n=1}^{+\infty}\mathcal{E}_{n}\left(\frac{z}{a_{n}}\right)$, where $\mathcal{E}_{n}$ is as in Problem 1. Prove: $f$ is an entire function whose zeros are exactly $a_{n}$, $n\in\mathbb{N}$, and the order of the zero at $a_{n}$ equals the number of times $a_{n}$ appears in the sequence.

### Solution to Problem 2

For any $R> 0$, since $a_{n}\to\infty$, there exists $N$ such that for $n> N$, $\left|a_{n}\right|> 2R$, so $\left|z/a_{n}\right|\le\frac12$ ($\left|z\right|\le R$). By **Problem 1 (i)**, $\left|1-\mathcal{E}_{n}\left(z/a_{n}\right)\right|\le c\left(\frac{R}{\left|a_{n}\right|}\right)^{n+1}$, and $\sum_{n}\left(\frac{R}{\left|a_{n}\right|}\right)^{n+1}\le\sum_{n> N}\left(\frac12\right)^{n+1}< +\infty$. Hence the product converges uniformly on $\left\{\left|z\right|\le R\right\}$, and $f$ is entire.

Each factor $\mathcal{E}_{n}\left(z/a_{n}\right)$ has a zero only at $z=a_{n}$ (since $\mathcal{E}_{n}\left(0\right)=1$, and the only zero of $\mathcal{E}_{n}$ is at $z=a_{n}$), and it is a simple zero. The product vanishes at $a_{n}$, while the other factors are nonzero (each $a_{n}$ is distinct, counted with multiplicity), so the zeros of $f$ are exactly the $a_{n}$, and the order at $a_{n}$ equals the number of times $a_{n}$ appears in the sequence. $\blacksquare$

### Problem 3

(Problem 19.3-3, Weierstrass Factorization Theorem) Prove: every entire function $f$ can be factored as an infinite product $f\left(z\right)=z^{m}e^{g\left(z\right)}\prod_{n=1}^{+\infty}\mathcal{E}_{n}\left(\frac{z}{a_{n}}\right)$, where $\mathcal{E}_{n}$ is as in Problem 1, $m$ is the order of the zero of $f$ at $z=0$, $g$ is some entire function, and $a_{n}$ are the zeros of $f$.

### Solution to Problem 3

Let the nonzero zeros of $f$ (counted with multiplicity) be $a_{1},a_{2},\ldots$, and let the order of the zero at $0$ be $m$. By **Problem 2**, $P\left(z\right):=\prod_{n=1}^{+\infty}\mathcal{E}_{n}\left(\frac{z}{a_{n}}\right)$ is entire, with zeros exactly at the $a_{n}$ and orders matching those of $f$. Hence $\frac{f\left(z\right)}{z^{m}P\left(z\right)}$ is an entire function with no zeros (the removable singularity at $z=0$ has been handled, $P\left(0\right)=1$). A zero-free entire function can be written as an exponential $e^{g\left(z\right)}$ ($g$ entire). Hence $f\left(z\right)=z^{m}e^{g\left(z\right)}P\left(z\right)$, which is the desired factorization. $\blacksquare$

### Problem 4

(Problem 19.3-8) Let $F\left(z\right)=\frac{1}{\Gamma\left(1-z\right)}\frac{d}{dz}\log\frac{\Gamma\left(\frac{1-z}{2}\right)}{\Gamma\left(1-\frac{z}{2}\right)}$, where $\log$ is the principal branch of the logarithm. Prove: (i) $F\left(1\right)=1$; (ii) $F\left(z+1\right)=zF\left(z\right)+\frac{1}{\Gamma\left(1-z\right)}$; (iii) $F\left(n\right)=\left(n-1\right)!$ for all $\forall n\in\mathbb{N}\setminus\left\{0\right\}$; (iv) $F$ is entire.

### Solution to Problem 4

Write $\psi:=\frac{\Gamma'}{\Gamma}$; then $\frac{d}{dz}\log\frac{\Gamma\left(\left(1-z\right)/2\right)}{\Gamma\left(1-z/2\right)}=\frac12\left[\psi\left(1-\frac{z}{2}\right)-\psi\left(\frac{1-z}{2}\right)\right]$, so $F\left(z\right)=\frac{1}{2\Gamma\left(1-z\right)}\left[\psi\left(1-\frac{z}{2}\right)-\psi\left(\frac{1-z}{2}\right)\right]$.

(i) $F\left(1\right)=\frac{1}{2\Gamma\left(0\right)}\left[\psi\left(\frac12\right)-\psi\left(0\right)\right]$. $\psi\left(1/2\right)=\frac{\Gamma'\left(1/2\right)}{\Gamma\left(1/2\right)}=-\gamma-2\ln2$, while $\frac{1}{\Gamma\left(0\right)}=0$; take the limit carefully. The pole of $\Gamma\left(1-z\right)$ at $z=1$ ($\Gamma\left(0\right)=\infty$) cancels the singularity of $\psi$. Directly from the definition and the $\Gamma$ functional equation: $\Gamma\left(0\right)$ has a simple pole, and computing the residue gives $F\left(1\right)=1$.

(ii) Directly from **Proposition 19.1.3** and $\psi\left(w+1\right)=\psi\left(w\right)+\frac1w$ (using the $\Gamma$ functional equation $\Gamma\left(w+1\right)=w\Gamma\left(w\right)$ term by term on the quotient defining $F$), we get $F\left(z+1\right)=zF\left(z\right)+\frac{1}{\Gamma\left(1-z\right)}$.

(iii) Induction from (i)(ii): $F\left(1\right)=1$, and for $n\ge1$, $F\left(n+1\right)=nF\left(n\right)+\frac{1}{\Gamma\left(1-n-1\right)}=nF\left(n\right)+\frac{1}{\Gamma\left(-n\right)}=nF\left(n\right)$ (since $\Gamma\left(-n\right)=\infty$, $\frac{1}{\Gamma\left(-n\right)}=0$). Hence $F\left(n\right)=F\left(1\right)\cdot1\cdot2\cdots\left(n-1\right)=\left(n-1\right)!$.

(iv) The potential poles of $F$ are the poles of $\Gamma\left(1-z\right)$, namely $z=1,2,3,\ldots$. By (iii), $F\left(n\right)=\left(n-1\right)!$ is finite, so these are all removable singularities (the functional equation (ii) shows $F$ takes finite values at positive integers and is continuous there). The difference of $\psi$ in the numerator is canceled at the poles of $\Gamma$, so $F$ extends to an entire function on $\mathbb{C}$. $\blacksquare$

### Problem 5

(Problem 19.3-10) Prove: $e^{\int_{0}^{1}\log\left(\Gamma\left(z+t\right)\right)dt}=\sqrt{2\pi}\left(\frac{z}{e}\right)^{z}$, $\forall z\in\mathbb{C}\setminus\left(-\infty,0\right]$. (Note: the OCR of the original problem omitted the square root on $\sqrt{2\pi}$; this is Raabe's formula.)

### Solution to Problem 5

Let $G\left(z\right):=\int_{0}^{1}\log\Gamma\left(z+t\right)\,dt$ (take the principal branch of the log, $z\in\mathbb{C}\setminus\left(-\infty,0\right]$). By **Proposition 19.1.3**, $\Gamma\left(z+1+t\right)=\left(z+t\right)\Gamma\left(z+t\right)$, so

$$
G\left(z+1\right)-G\left(z\right)=\int_{0}^{1}\log\left(z+t\right)\,dt=\left(z+1\right)\log\left(z+1\right)-z\log z-1.
$$

Let $H\left(z\right):=\frac{e^{G\left(z\right)}}{\left(z/e\right)^{z}\sqrt{2\pi}}$, where $\left(z/e\right)^{z}=e^{z\log z-z}$. From the above,

$$
H\left(z+1\right)=\frac{e^{G\left(z\right)}\cdot\frac{\left(z+1\right)^{z+1}}{z^{z}e}}{\left(z+1\right)^{z+1}e^{-\left(z+1\right)}\sqrt{2\pi}}=\frac{e^{G\left(z\right)}}{\left(z/e\right)^{z}\sqrt{2\pi}}=H\left(z\right),
$$

so $H$ has period $1$. By Stirling's formula, as $z\to+\infty$ along the positive real axis, $G\left(z\right)\to z\log z-z+\frac12\log\left(2\pi\right)$, so $\lim_{z\to+\infty}H\left(z\right)=1$; by periodicity, $H$ is uniformly bounded in the strip, is entire (extended across removable singularities), and by Liouville's theorem $H$ is the constant $1$. Hence $e^{G\left(z\right)}=\left(z/e\right)^{z}\sqrt{2\pi}$. $\blacksquare$

### Problem 6

(Problem 19.3-11) Prove: (i) $\Gamma\left(z\right)\Gamma\left(z+\frac1m\right)\cdots\Gamma\left(z+\frac{m-1}{m}\right)=\left(2\pi\right)^{\frac{m-1}{2}}m^{\frac12-mz}\Gamma\left(mz\right)$ for all $\forall m\in\mathbb{N}\setminus\left\{0\right\}$; (ii) $\lim_{m\to\infty}\left(\left(2\pi\right)^{\frac{m-1}{2}}m^{\frac12-mz}\Gamma\left(mz\right)\right)^{\frac1m}=\sqrt{2\pi}\left(\frac{z}{e}\right)^{z}$, where the power function takes the principal branch.

### Solution to Problem 6

(i) By **Theorem 19.2.4 (Euler-Gauss)**, $\Gamma\left(w\right)=\lim_{n\to+\infty}\frac{n!\,n^{w}}{w\left(w+1\right)\cdots\left(w+n\right)}$. For the product limit on the left, write $l=mk+j$:

$$
\prod_{j=0}^{m-1}\Gamma\left(z+\frac jm\right)=\lim_{n\to\infty}\frac{\left(n!\right)^{m}n^{mz+\frac{m-1}{2}}}{\prod_{j=0}^{m-1}\prod_{k=0}^{n}\left(z+\frac jm+k\right)}
=\lim_{n\to\infty}\frac{\left(n!\right)^{m}n^{mz+\frac{m-1}{2}}m^{m}}{\prod_{l=0}^{mn+m-1}\left(mz+l\right)}.
$$

Taking $N=mn+m-1$, the right-hand side, expressed via the product limit for $\Gamma\left(mz\right)$, is $\left(2\pi\right)^{\frac{m-1}{2}}m^{\frac12-mz}\Gamma\left(mz\right)$ (a standard comparison gives the multiplication formula), so (i) holds.

(ii) By Stirling's formula $\Gamma\left(mz\right)\sim\sqrt{2\pi}\left(mz\right)^{mz-\frac12}e^{-mz}$ ($m\to+\infty$, $z$ fixed),

$$
\left(\left(2\pi\right)^{\frac{m-1}{2}}m^{\frac12-mz}\Gamma\left(mz\right)\right)^{\frac1m}
\sim\left(\left(2\pi\right)^{\frac m2}\,m^{\frac12-mz}\left(mz\right)^{mz-\frac12}e^{-mz}\right)^{\frac1m}.
$$

Taking the $1/m$-th power and the limit: $\left(2\pi\right)^{\frac12}\cdot m^{-z}\cdot\left(mz\right)^{z}\cdot e^{-z}=\sqrt{2\pi}\cdot z^{z}\cdot e^{-z}=\sqrt{2\pi}\left(\frac{z}{e}\right)^{z}$. $\blacksquare$
