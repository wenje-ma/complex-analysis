# Assignment 7

> **Definition 7.1.1** (Path Integral)<br>The integral of $f$ along a piecewise smooth path $\gamma:\left[a,b\right]\to\mathbb{C}$ is $$\int_{\gamma}f\,dz=\int_{a}^{b}f\left(\gamma\left(t\right)\right)\gamma'\left(t\right)\,dt.$$

> **Definition 7.2.1** (Primitive)<br>A holomorphic function $F$ on a domain $D$ is called a primitive of $f$ if $F'=f$ on $D$; $f$ has a primitive if and only if the integral of $f$ along any closed path in $D$ is zero.

> **Theorem 7.2.3**<br>$\frac{1}{z}$ has a primitive on a domain $D\subset\mathbb{C}\setminus\left\{0\right\}$ if and only if there exists a holomorphic branch of $\operatorname{Ln}z$ on $D$.

### Problem 1

(Problem 7.4-1) (i) Let $P\left(z\right)=z^{n}+a_{n-1}z^{n-1}+\cdots+a_{0}$ be a polynomial with leading coefficient $1$. Prove: $\max_{\left|z\right|=1}\left|P\left(z\right)\right|\ge1$. (ii) Does there exist a polynomial $P\left(z\right)=\sum_{j=1}^{n}a_{j}z^{j}$ such that $\max_{\left|z\right|=1}\left|P\left(z\right)-\frac{1}{z^{2}}\right|< 1$?

### Solution to Problem 1

(i) By Parseval's identity (Fourier series), $P\left(e^{i\theta}\right)=\sum_{j=0}^{n}a_{j}e^{ij\theta}$ ($a_{n}=1$),

$$
\frac{1}{2\pi}\int_{0}^{2\pi}\left|P\left(e^{i\theta}\right)\right|^{2}\,d\theta=\sum_{j=0}^{n}\left|a_{j}\right|^{2}\ge\left|a_{n}\right|^{2}=1.
$$

If $\left|P\left(e^{i\theta}\right)\right|< 1$ for all $\theta$, then the left-hand side would be $< 1$, a contradiction. Hence there exists $\theta$ such that $\left|P\left(e^{i\theta}\right)\right|\ge1$, i.e. $\max_{\left|z\right|=1}\left|P\left(z\right)\right|\ge1$.

(ii) No. On $\left|z\right|=1$, $P\left(z\right)-\frac{1}{z^{2}}=\sum_{j=1}^{n}a_{j}z^{j}-z^{-2}$, whose $z^{-2}$ coefficient is $-1$. By Parseval's identity,

$$
\frac{1}{2\pi}\int_{0}^{2\pi}\left|P\left(e^{i\theta}\right)-e^{-2i\theta}\right|^{2}d\theta=\sum_{j=1}^{n}\left|a_{j}\right|^{2}+1\ge1.
$$

Hence there exists $\theta$ such that $\left|P\left(e^{i\theta}\right)-e^{-2i\theta}\right|\ge1$, i.e. $\max_{\left|z\right|=1}\left|P\left(z\right)-\frac{1}{z^{2}}\right|\ge1$. Therefore $\max< 1$ is impossible. $\blacksquare$

### Problem 2

(Problem 7.4-3) Compute the integrals: (i) $\int_{\left|z\right|=1}\left(z+\frac{1}{z}\right)^{2n}\frac{1}{z}\,dz$ ($n\in\mathbb{N}$); (ii) $\int_{\left|z\right|=r}\frac{1}{\left(z-a\right)\left(z-b\right)}\,dz$, $\left|a\right|< r< \left|b\right|$.

### Solution to Problem 2

(i) Expand $\left(z+\frac{1}{z}\right)^{2n}=\sum_{k=0}^{2n}\binom{2n}{k}z^{2n-2k}$, which contains only even powers. After multiplying by $\frac1z$, the coefficient of the $z^{-1}$ term comes from the constant term of $\left(z+\frac1z\right)^{2n}$ ($2n-2k=0$, i.e. $k=n$), with coefficient $\binom{2n}{n}$. By **Definition 7.1.1** and $\int_{\left|z\right|=1}z^{m}dz=0$ ($m\ne-1$), $\int_{\left|z\right|=1}\frac{dz}{z}=2\pi i$,

$$
\int_{\left|z\right|=1}\left(z+\frac{1}{z}\right)^{2n}\frac{1}{z}\,dz=2\pi i\binom{2n}{n}.
$$

(ii) Inside $\left\{\left|z\right|=r\right\}$ ($\left|a\right|< r< \left|b\right|$) there is only the simple pole $z=a$, with residue $\frac{1}{a-b}$. By the residue/Cauchy integral theorem,

$$
\int_{\left|z\right|=r}\frac{1}{\left(z-a\right)\left(z-b\right)}\,dz=2\pi i\cdot\frac{1}{a-b}.
$$

$\blacksquare$

### Problem 3

(Problem 7.4-5) Construct a primitive of $e^{\frac{1}{z}}$ along the path $\gamma\left(t\right):=e^{4\pi it}$, $t\in\left[0,1\right]$, and use it to compute the integral $\int_{\gamma}e^{\frac{1}{z}}\,dz$.

### Solution to Problem 3

$e^{\frac1z}=\sum_{n=0}^{+\infty}\frac{1}{n!}\frac{1}{z^{n}}$ (Laurent expansion, $z\ne0$). One of its primitives (taking the continuous branch along the path) is

$$
F\left(z\right):=z+\log z+\sum_{n=2}^{+\infty}\frac{1}{n!}\frac{z^{1-n}}{1-n},
$$

where $\log z$ takes the continuous branch along $\gamma$. Direct differentiation: $F'\left(z\right)=1+\frac{1}{z}+\sum_{n=2}^{+\infty}\frac{1}{n!}\frac{\left(1-n\right)z^{-n}}{1-n}=1+\frac{1}{z}+\sum_{n=2}^{+\infty}\frac{1}{n!}\frac{1}{z^{n}}=e^{\frac1z}$.

Hence $\int_{\gamma}e^{\frac1z}dz=F\left(\gamma\left(1\right)\right)-F\left(\gamma\left(0\right)\right)$ (taking the continuous branch along $\gamma$). The parameter of $\gamma$ is $e^{4\pi it}$, with $t$ going from $0$ to $1$, and the argument increases from $0$ to $4\pi$, i.e. winding twice around the origin $0$; hence $\log z$, varying continuously along $\gamma$, increases by $2\cdot2\pi i=4\pi i$, while the other terms ($z$ and the $\sum_{n\ge2}$ terms) return to their original values on the closed path. Therefore

$$
\int_{\gamma}e^{\frac1z}\,dz=4\pi i.
$$

(This can also be seen by residues: $\operatorname{Res}_{0}e^{1/z}=1$, and the winding number of $\gamma$ around $0$ is $2$, giving $\int_{\gamma}=2\pi i\cdot2\cdot1=4\pi i$.) $\blacksquare$

### Problem 4

(Problem 7.4-7) Determine whether the following functions have a primitive on the domain $\mathbb{C}\setminus\left\{0\right\}$: (i) $\sin\frac{1}{z}$; (ii) $\cos\frac{1}{z}$; (iii) $e^{\frac{1}{z^{3}}}$.

### Solution to Problem 4

By **Definition 7.2.1**, $f$ has a primitive on $\mathbb{C}\setminus\left\{0\right\}$ if and only if the integral of $f$ along any closed curve winding around $0$ is zero, i.e. the residue of $f$ at $z=0$ (an essential singularity) is zero.

(i) $\sin\frac{1}{z}=\frac{1}{z}-\frac{1}{3!z^{3}}+\frac{1}{5!z^{5}}-\cdots$ contains a $z^{-1}$ term with coefficient (residue) $1\ne0$. Hence $\sin\frac1z$ has no primitive on $\mathbb{C}\setminus\left\{0\right\}$.

(ii) $\cos\frac{1}{z}=1-\frac{1}{2!z^{2}}+\frac{1}{4!z^{4}}-\cdots$ contains no $z^{-1}$ term, so the residue is $0$. In fact $F\left(z\right)=z+\frac{1}{2z}-\frac{1}{72z^{3}}+\cdots$ (termwise integration) is a single-valued holomorphic function on $\mathbb{C}\setminus\left\{0\right\}$ with $F'=\cos\frac1z$. Hence $\cos\frac1z$ has a primitive on $\mathbb{C}\setminus\left\{0\right\}$.

(iii) $e^{\frac{1}{z^{3}}}=1+\frac{1}{z^{3}}+\frac{1}{2!z^{6}}+\cdots$ contains only $z^{-3k}$ ($k\ge0$) terms, no $z^{-1}$ term, so the residue is $0$. Its termwise integral $F\left(z\right)=z-\frac{1}{2z^{2}}+\cdots$ is a single-valued holomorphic function on $\mathbb{C}\setminus\left\{0\right\}$ with $F'=e^{1/z^{3}}$. Hence $e^{1/z^{3}}$ has a primitive on $\mathbb{C}\setminus\left\{0\right\}$. $\blacksquare$

### Problem 5

(Problem 7.4-9) Suppose that on a domain $D\subset\mathbb{C}\setminus\left\{0\right\}$ there is a primitive $F\left(z\right)$ of the function $f\left(z\right)=\frac{1}{z}$. Prove: there exists $c\in\mathbb{C}$ such that $F\left(z\right)+c\in\operatorname{Ln}z$ for all $\forall z\in D$.

### Solution to Problem 5

$F'=\frac{1}{z}$ on $D$. Let $G\left(z\right):=e^{F\left(z\right)}$; then $G$ is holomorphic on $D$ and

$$
G'\left(z\right)=e^{F\left(z\right)}F'\left(z\right)=\frac{e^{F\left(z\right)}}{z}=\frac{G\left(z\right)}{z}.
$$

Hence $\left(\frac{G\left(z\right)}{z}\right)'=\frac{G'\left(z\right)z-G\left(z\right)}{z^{2}}=\frac{G\left(z\right)-G\left(z\right)}{z^{2}}=0$, so $\frac{G\left(z\right)}{z}$ is constant on the connected domain $D$; write $\frac{G\left(z\right)}{z}=e^{c}$ ($c\in\mathbb{C}$). Then

$$
e^{F\left(z\right)}=e^{c}z=e^{c+\operatorname{Ln}z},
$$

so $e^{F\left(z\right)-c-\operatorname{Ln}z}=1$, i.e. $F\left(z\right)-c-\operatorname{Ln}z\in2\pi i\mathbb{Z}$, and hence $F\left(z\right)-c\in\operatorname{Ln}z$. Taking $c':=-c$, we get $F\left(z\right)+c'\in\operatorname{Ln}z$ for all $\forall z\in D$. $\blacksquare$
