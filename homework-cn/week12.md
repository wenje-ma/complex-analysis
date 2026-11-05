# week12

> **定义 20.1.1 (黎曼 $\zeta$-函数)**
> 
> 黎曼 $\zeta$-函数对 $\operatorname{Re}z>1$ 由狄利克雷级数定义

> **定理 20.1.6 (亚纯延拓)**
> 
> $\zeta$ 亚纯延拓到 $\mathbb{C}$, 只在 $z=1$ 有简单极点, 且

> **定理 20.2.2 (函数方程)**
> 
> 黎曼 $\zeta$-函数满足函数方程

> **推论 20.2.3 (平凡零点与临界带)**
> 
> $\zeta$ 的平凡零点恰为 $-2,-4,-6,\ldots$; 非平凡零点全落在临界带 $0<\operatorname{Re}z<1$ 内.

> **定理 21.1.3 (布洛克定理)**
> 
> 存在常数 $B>0$: 若 $f$ 在单位圆盘上全纯且 $f'\left(0\right)=1$, 则 $f\left(\mathbb{D}\right)$ 含一个半径至少 $B$ 的圆盘.

> **定理 21.2.3 (毕卡小定理)**
> 
> 非常值整函数取 $\mathbb{C}$ 中每个值或除一个值外的所有值.

> **定理 21.2.4 (毕卡小定理, 亚纯形式)**
> 
> 非常值亚纯函数至多漏掉两个值.

> **定理 21.4 (毕卡大定理)**
> 
> 全纯函数在本性奇点的任意去心邻域内取每个值无穷多次 (至多漏一个值).

> **定义 22.1.5 (正规族)**
> 
> 称区域 $D$ 上的亚纯函数族 $\mathcal{F}$ 在 $D$ 上是正规的, 若 $\mathcal{F}$ 的每个序列在 $\mathfrak{C}\left(D,\widehat{\mathbb{C}}\right)$ 上有收敛子列 (在 $D$ 的紧子集上按球弦度量一致收敛到亚纯函数或 $\infty$).

> **定理 22.1.7 (马蒂准则)**
> 
> $\mathcal{F}$ 在 $D$ 上正规当且仅当对 $D$ 的每个紧子集 $K$, 球面导数

$$
f^{\#}\left(z\right)=\frac{2\left|f'\left(z\right)\right|}{1+\left|f\left(z\right)\right|^{2}}
$$
在 $K$ 上一致有界 ($f\in\mathcal{F}$).

> **定理 22.2.1 (扎尔克曼引理)**
> 
> $\mathcal{F}$ 不正规当且仅当存在 $f_{n}\in\mathcal{F}$, $z_{n}\to{z}_{0}\in{D}$, $\rho_{n}\to0^{+}$ 使 $g_{n}\left(w\right):=f_{n}\left(z_{n}+\rho_{n}w\right)$ 内紧一致收敛到非常值整函数或亚纯函数.

> **定理 22.2.3 (蒙泰尔定理)**
> 
> 区域 $D$ 上一致漏掉三个不同值 (扩充复平面上的点) 的亚纯函数族是正规的.

## 20.3-3

证明: (i) $\zeta\left(\overline{z}\right)=\overline{\zeta\left(z\right)}$, $\forall{z}\in\mathbb{C}\setminus\left\{1\right\}$; (ii) 若 $z\in\mathbb{C}\setminus\mathbb{R}$ 是 $\zeta$-函数的零点, 则 $\overline{z}$, $1-z$, $1-\overline{z}$ 都是它的零点.

### 解答 20.3-3

(i) 在 $\operatorname{Re}z>1$ 上, $n$ 为实数, $\overline{n^{-z}}=\overline{e^{-z\log{n}}}=e^{-\overline{z}\log{n}}=n^{-\overline{z}}$, 逐项取共轭得 $\overline{\zeta\left(z\right)}=\sum_{n}n^{-\overline{z}}=\zeta\left(\overline{z}\right)$. 由解析延拓 (恒等定理) 对 $\operatorname{Re}z>1$ 成立之等式延拓到 $\mathbb{C}\setminus\left\{1\right\}$, 故 $\zeta\left(\overline{z}\right)=\overline{\zeta\left(z\right)}$, $\forall{z}\in\mathbb{C}\setminus\left\{1\right\}$.

(ii) 设 $z$ 是非实零点, $\zeta\left(z\right)=0$. 由 (i), $\zeta\left(\overline{z}\right)=\overline{\zeta\left(z\right)}=0$, 故 $\overline{z}$ 是零点. 由**定理 20.2.2 (函数方程)** $\zeta\left(z\right)=2^{z}\pi^{z-1}\sin\frac{\pi{z}}{2}\Gamma\left(1-z\right)\zeta\left(1-z\right)$. 因 $z$ 非实, $\sin\frac{\pi{z}}{2}\ne0$, $\Gamma\left(1-z\right)\ne0$, 因子 $2^{z}\pi^{z-1}\ne0$, 故 $\zeta\left(1-z\right)=0$. 再由 (i), $\zeta\left(1-\overline{z}\right)=\overline{\zeta\left(1-z\right)}=0$. 故 $\overline{z}$, $1-z$, $1-\overline{z}$ 都是零点. $\blacksquare$

## 20.3-4

令 $\xi\left(z\right)=\frac12z\left(z-1\right)\pi^{-z/2}\Gamma\left(\frac{z}2\right)\zeta\left(z\right)$. 证明: (i) $\xi\left(z\right)$ 是整函数; (ii) $\xi\left(z\right)$ 的零点恰好是 $\zeta\left(z\right)$ 的非实数零点; (iii) $\xi\left(1-z\right)=\xi\left(z\right)$; (iv) $\xi\left(z\right)$ 在直线 $\operatorname{Re}z=\frac12$ 上取实数值.

### 解答 20.3-4

(i) $\zeta$ 只在 $z=1$ 有简单极点, 因子 $\frac12z\left(z-1\right)$ 在 $z=1$ 为零, 消去该极点; 因子 $\Gamma\left(z/2\right)$ 的极点在 $z=0,-2,-4,\ldots$. 在 $z=0$, 因子 $z$ 为零, 而 $z\left(z-1\right)\to0$, $\Gamma\left(z/2\right)\sim\frac{2}{z}$, 故 $\frac12z\left(z-1\right)\Gamma\left(z/2\right)$ 在 $0$ 处有限 (事实上 $\xi\left(0\right)=\frac12$). 在 $z=-2k$ ($k\ge1$), $\Gamma\left(z/2\right)=\Gamma\left(-k\right)$ 有极点, 但 $\zeta\left(-2k\right)=0$ (平凡零点, **推论 20.2.3 (平凡零点与临界带)**), 抵消极点. 故 $\xi$ 的所有潜在奇点均可去, $\xi$ 是整函数.

(ii) $\frac12z\left(z-1\right)\pi^{-z/2}\Gamma\left(z/2\right)$ 无零点 (在 $z=0,1$ 处 $\xi$ 取有限非零值 $\xi\left(0\right)=\frac12$, $\xi\left(1\right)=\frac12\Gamma\left(\frac12\right)\ne0$; $\pi^{-z/2},\Gamma\left(z/2\right)$ 均无零点). 故 $\xi$ 的零点恰是 $\zeta$ 的零点中去掉实零点 (平凡零点 $-2,-4,\ldots$ 被 $\Gamma$ 极点抵消, 且 $z=0,1$ 非 $\zeta$ 的零点). 而 $\zeta$ 的非平凡零点全在临界带内非实, 故 $\xi$ 的零点恰好是 $\zeta$ 的非实数零点.

(iii) 由**定理 20.2.2 (函数方程)**:

$$
\xi\left(z\right)=\frac12z\left(z-1\right)2^{z}\pi^{\frac{z}2}\frac{\Gamma\left(1-z\right)}{\Gamma\left(1-\frac{z}2\right)}\zeta\left(1-z\right).
$$

用勒让德倍元公式 $\Gamma\left(1-z\right)=2^{1-z}\pi^{-\frac12}\Gamma\left(\frac{1-z}{2}\right)\Gamma\left(1-\frac{z}2\right)$, 得

$$
\xi\left(z\right)=\frac12z\left(z-1\right)\pi^{\frac{z-1}{2}}\Gamma\left(\frac{1-z}{2}\right)\zeta\left(1-z\right)=\xi\left(1-z\right).
$$

(iv) $\xi$ 的系数均为实系数 (由 $\pi,\Gamma,\zeta$ 在实轴取实值), 故 $\xi\left(\overline{z}\right)=\overline{\xi\left(z\right)}$. 对 $z=\frac12+it$, $\overline{z}=1-z$, 由 (iii) $\xi\left(z\right)=\xi\left(1-z\right)=\xi\left(\overline{z}\right)=\overline{\xi\left(z\right)}$, 故 $\xi\left(z\right)\in\mathbb{R}$ 于 $\operatorname{Re}z=\frac12$. $\blacksquare$

## 20.3-5

令 $\zeta_{-}\left(z\right)=1-\frac1{2^{z}}+\frac1{3^{z}}-\cdots=\sum_{n=1}^{+\infty}\frac{\left(-1\right)^{n+1}}{n^{z}}$. 证明: (i) 定义 $\zeta_{-}\left(z\right)$ 的级数对 $\operatorname{Re}z>0$ 都收敛, 给出了半平面 $\operatorname{Re}s>0$ 上的一个全纯函数; (ii) 若 $z>1$, 则 $\zeta_{-}\left(z\right)=\left(1-2^{1-z}\right)\zeta\left(z\right)$; (iii) 利用 (ii) 中的函数方程验证 $\zeta_{-}\left(z\right)$ 在右半平面 $\operatorname{Re}z>1$ 上都没有零点; (iv) 利用 (ii) 验证函数 $\zeta$ 在实区间 $\left(0,1\right)$ 上没有零点.

### 解答 20.3-5

(i) 对 $\operatorname{Re}z>0$, $\left|\frac{\left(-1\right)^{n+1}}{n^{z}}\right|=n^{-\operatorname{Re}z}\to0$ 且单调递减, 交错级数收敛. 在紧子集 $\left\{\operatorname{Re}z\ge\delta>0\right\}$ 上, 交错级数余项不超过首项, 一致收敛, 故 $\zeta_{-}$ 在 $\left\{\operatorname{Re}z>0\right\}$ 上全纯.

(ii) 对 $z>1$ 绝对收敛, 分离偶项:

$$
\zeta_{-}\left(z\right)=\sum_{n=1}^{+\infty}\frac1{n^{z}}-2\sum_{n=1}^{+\infty}\frac1{\left(2n\right)^{z}}=\zeta\left(z\right)-2^{1-z}\zeta\left(z\right)=\left(1-2^{1-z}\right)\zeta\left(z\right).
$$

(iii) 由 (ii) 及解析延拓, 对 $\operatorname{Re}z>1$, $\zeta_{-}\left(z\right)=\left(1-2^{1-z}\right)\zeta\left(z\right)$. 因 $\operatorname{Re}z>1$, $\left|2^{1-z}\right|=2^{1-\operatorname{Re}z}<1$, 故 $1-2^{1-z}\ne0$; 又由**定义 20.1.1 (黎曼 $\zeta$-函数)** 的欧拉乘积, $\zeta\left(z\right)=\prod_{p}\left(1-p^{-z}\right)^{-1}\ne0$. 故 $\zeta_{-}\left(z\right)\ne0$ 于 $\operatorname{Re}z>1$.

(iv) 由 (ii) 解析延拓, 对 $x\in\left(0,1\right)$, $\zeta_{-}\left(x\right)=\left(1-2^{1-x}\right)\zeta\left(x\right)$. 因 $0<{}x<1$ 时 $1-x>0$, $2^{1-x}>1$, $1-2^{1-x}\ne0$; 而 $\zeta_{-}\left(x\right)=\sum_{n}\frac{\left(-1\right)^{n+1}}{n^{x}}>0$ (交错级数首项 $1>0$, 各项绝对值递减且 $\frac{1}{2^{x}}<1$). 故 $\zeta\left(x\right)\ne0$ 于 $\left(0,1\right)$. $\blacksquare$

## 21.5-4

利用习题 21.5-3 (朗道) 中的结论证明毕卡小定理.

### 解答 21.5-4

毕卡小定理: 非常值整函数不能漏掉两个不同的值.

由**习题 21.5-3 (朗道)**, 存在正实函数 $R\left(a\right)>0$ ($a\in\mathbb{C}\setminus\left\{0,1\right\}$) 使得: 对任意 $a$, 在闭圆盘 $\left\{\left|z\right|\le{R}\left(a\right)\right\}$ 上不存在全纯函数 $f$ 满足 $f\left(0\right)=a$, $f'\left(0\right)=1$ 且 $f$ 不取值 $0$ 和 $1$.

设 $F$ 是整函数且不取值 $0,1$. 若 $F$ 非常值, 取 $z_{0}$ 使 $F'\left(z_{0}\right)\ne0$; 令 $a:=F\left(z_{0}\right)\in\mathbb{C}\setminus\left\{0,1\right\}$. 定义 $g\left(w\right):=F\left(z_{0}+\frac{w}{F'\left(z_{0}\right)}\right)$, 则 $g$ 在 $\mathbb{C}$ (因而在闭圆盘 $\left\{\left|w\right|\le{R}\left(a\right)\right\}$) 上全纯, $g\left(0\right)=F\left(z_{0}\right)=a$, $g'\left(0\right)=1$, 且 $g$ 不取值 $0,1$, 与朗道结论矛盾. 故 $F$ 必为常值, 毕卡小定理得证. $\blacksquare$

## 21.5-5

令 $f,g$ 和 $h$ 都是整函数且满足方程 $e^{f}+e^{g}=h$. 证明: $h$ 要么没有零点要么有无穷多的零点.

### 解答 21.5-5

设 $F:=e^{f}$, $G:=e^{g}$, 二者均为无零点的整函数, 且 $h=G\left(1+\frac{F}{G}\right)=G\left(1+e^{f-g}\right)$. 记 $H:=e^{f-g}$, 则 $h=G\left(1+H\right)$, $G$ 无零点, 故 $h$ 的零点恰是 $1+H=0$ 即 $e^{f-g}=-1$ 的解.

若 $f-g$ 为常值, 则 $H$ 为常值: 若 $H\equiv-1$ 则 $h\equiv0$, 无零点; 若 $H\equiv{c}\ne-1$, 则 $h=G\left(1+c\right)$ 无零点. 故 $h$ 没有零点.

若 $f-g$ 非常值, 由**定理 21.2.3 (毕卡小定理)**, 整函数 $f-g$ 的值域是 $\mathbb{C}$ 或 $\mathbb{C}$ 去掉一点, 故它取无穷多个值 $\left(2k+1\right)\pi{i}$ ($k\in\mathbb{Z}$); 从而 $e^{f-g}$ 在无穷多个点取 $-1$, $h$ 有无穷多个零点. $\blacksquare$

## 21.5-6

若 $f,g$ 都是整函数, $p,q$ 都是多项式且满足方程 $e^{f}+p=e^{g}+q$, $f\left(0\right)=g\left(0\right)$. 证明: $f=g$ 和 $p=q$.

### 解答 21.5-6

由等式 $e^{f}-e^{g}=q-p$, 即 $e^{g}\left(e^{f-g}-1\right)=q-p$. 反设 $f-g$ 非常值. 则 $e^{f-g}-1$ 的零点满足 $f-g=2\pi{i}k$, $k\in\mathbb{Z}$. 由**定理 21.2.3 (毕卡小定理)**, 非常值整函数 $f-g$ 的值域是 $\mathbb{C}$ 或 $\mathbb{C}$ 去掉一点, 故取无穷多个值 $2\pi{i}k$, $e^{f-g}-1$ 有无穷多个零点. 但左边 $e^{g}$ 无零点, 右边 $q-p$ 是多项式至多有限个零点, 且 $e^{g}\left(e^{f-g}-1\right)$ 与 $q-p$ 零点相同, 矛盾. 故 $f-g$ 为常值 $c$.

由 $f\left(0\right)=g\left(0\right)$ 得 $c=0$, 即 $f=g$. 代入原方程 $e^{f}+p=e^{f}+q$, 得 $p=q$. $\blacksquare$

## 21.5-7

令 $\mathcal{E}\left(z\right)=\exp\left(2\pi{i}\cdot\exp\left(2\pi{i}z\right)\right)$, $z\in\mathbb{C}$, $f\left(z\right)$ 和 $g\left(z\right)$ 均是不为常值的整函数, 且 $\mathcal{E}\left(f\left(z\right)\right)=\mathcal{E}\left(g\left(z\right)\right)$, $\forall{z}\in\mathbb{C}$. 证明: 存在 $m\in\mathbb{Z}$ 使得 $f\left(z\right)=g\left(z\right)+m$, $\forall{z}\in\mathbb{C}$.

### 解答 21.5-7

由 $\exp$ 的性质, $\exp\left(2\pi{i}\cdot{e}^{2\pi{i}f}\right)=\exp\left(2\pi{i}\cdot{e}^{2\pi{i}g}\right)$ 推出 $e^{2\pi{i}f}-e^{2\pi{i}g}\in\mathbb{Z}$ 且连续, 故为常数, 记 $e^{2\pi{i}f}-e^{2\pi{i}g}=m\in\mathbb{Z}$.

反设 $m\ne0$, 则 $e^{2\pi{i}f}=e^{2\pi{i}g}+m$. 因 $g$ 非常值整, 由**定理 21.2.3 (毕卡小定理)**, $g$ 的值域是 $\mathbb{C}$ 或 $\mathbb{C}$ 去掉一点, 故 $e^{2\pi{i}g}$ 取所有非零值 (至多漏一点); 因 $m\ne0$, $-m$ 是非零值, 故存在 $z_{0}$ 使 $e^{2\pi{i}g\left(z_{0}\right)}=-m$, 于是 $e^{2\pi{i}f\left(z_{0}\right)}=-m+m=0$, 与 $\exp$ 无零点矛盾. 故 $m=0$, 即 $e^{2\pi{i}f}=e^{2\pi{i}g}$, 从而 $2\pi{i}\left(f-g\right)=2\pi{i}k$, $k\in\mathbb{Z}$, 即 $f\left(z\right)=g\left(z\right)+k$. $\blacksquare$

## 21.5-19

令 $f$ 是 $\mathbb{C}$ 上的奇整函数. 证明: $f\left(\mathbb{C}\right)=\mathbb{C}$.

### 解答 21.5-19

$f$ 是整函数, 由**定理 21.2.3 (毕卡小定理)**, $f\left(\mathbb{C}\right)=\mathbb{C}$ 或 $f\left(\mathbb{C}\right)=\mathbb{C}\setminus\left\{a\right\}$ (漏一个值 $a$). 若 $f$ 常值, 奇性 $f\left(-z\right)=-f\left(z\right)$ 迫使 $f\equiv0$, 值域 $\left\{0\right\}\ne\mathbb{C}$; 故设 $f$ 非常值, 从而 $f\left(\mathbb{C}\right)=\mathbb{C}$ 或 $\mathbb{C}\setminus\left\{a\right\}$.

因 $f$ 是奇函数, $w\in{f}\left(\mathbb{C}\right)$ 当且仅当 $-w\in{f}\left(\mathbb{C}\right)$ (取 $-z$ 即得), 故 $f\left(\mathbb{C}\right)$ 关于原点对称. 若 $f\left(\mathbb{C}\right)=\mathbb{C}\setminus\left\{a\right\}$, 对称性要求 $\mathbb{C}\setminus\left\{a\right\}=\mathbb{C}\setminus\left\{-a\right\}$, 得 $a=-a$, 即 $a=0$. 但 $f\left(0\right)=0$ (奇函数), 故 $0\in{f}\left(\mathbb{C}\right)$, 与 $a=0$ 矛盾. 故 $f\left(\mathbb{C}\right)=\mathbb{C}$. $\blacksquare$

## 22.4-1

令 $\mathcal{F}$ 是区域 $D\subset\mathbb{C}$ 上的一个亚纯函数族, 若对于任意 $a\in{D}$, 都存在它的邻域 $U\subset{D}$ 使得 $\mathcal{F}$ 是 $U$ 上的正规族. 证明: $\mathcal{F}$ 是 $D$ 上的正规族.

### 解答 22.4-1

取 $D$ 的穷竭序列 $\left\{K_{m}\right\}$: 紧集 $K_{1}\subset{K}_{2}\subset\cdots\subset{D}$, $\bigcup_{m}K_{m}=D$, 且 $K_{m}\subset{K}_{m+1}^{\circ}$. 固定 $m$: 由紧性, $K_{m}$ 被有限个邻域 $U_{a}$ 覆盖, 而 $\mathcal{F}$ 在每个 $U_{a}$ 上正规.

先证明 $\mathcal{F}$ 在 $K_{m}$ 上正规. 任取序列 $\left\{f_{n}\right\}\subset\mathcal{F}$. 因 $\mathcal{F}$ 在 $U_{a}$ 上正规, 由有限覆盖及对角线取法, 可依次抽出子列 $\left\{f_{n}^{\left(j\right)}\right\}$ 使 $\left\{f_{n}^{\left(j\right)}\right\}$ 在 $U_{a_{j}}$ ($j=1,\ldots,N$) 上内紧收敛. 于是存在 $\left\{f_{n}\right\}$ 的子列在 $K_{m}$ 上内紧一致收敛.

再对整个 $D$ 用对角线法: 对每个 $m$, 抽出在 $K_{m}$ 上内紧收敛的子列, 对角线子列在一切 $K_{m}$ 上内紧收敛. 因 $\left\{K_{m}\right\}$ 穷竭 $D$, 该子列在 $D$ 上内紧一致收敛. 由**定义 22.1.5 (正规族)**, $\mathcal{F}$ 在 $D$ 上正规. $\blacksquare$

## 22.4-2

令 $\mathcal{F}$ 是区域 $D\subset\mathbb{C}$ 上的全纯函数族且存在不同 $a,b\in\mathbb{C}$ 和自然数 $n\ge1$ 使得对于任意 $f\in\mathcal{F}$ 都有 $f\left(D\right)\subset\mathbb{C}\setminus\left\{a\right\}$ 而 $f^{-1}\left(b\right)\cap{D}$ 的元素不超过 $n$ 个. 证明: $\mathcal{F}$ 是 $D$ 上的正规族.

### 解答 22.4-2

反设 $\mathcal{F}$ 不正规. 由**定理 22.2.1 (扎尔克曼引理)**, 存在 $f_{n}\in\mathcal{F}$, $z_{n}\to{z}_{0}\in{D}$, $\rho_{n}\to0^{+}$ 使 $g_{n}\left(w\right):=f_{n}\left(z_{n}+\rho_{n}w\right)$ 内紧一致收敛到非常值整函数 $g$.

因 $f_{n}$ 漏 $a$, 极限 $g$ 也漏 $a$ ($g\left(\mathbb{C}\right)\subset\mathbb{C}\setminus\left\{a\right\}$). 由**定理 21.2.3 (毕卡小定理)**, 非常值整函数 $g$ 的值域是 $\mathbb{C}$ 或 $\mathbb{C}$ 去掉一点, 而 $a$ 已漏, 故 $g$ 取 $b$ ($b\ne{a}$) 无穷多次: $g$ 有无穷多个 $b$-点, 它们无聚点.

取紧圆盘 $K$ 含 $g$ 的 $n+1$ 个 $b$-点. 因 $g_{n}\to{g}$ 于 $K$ 一致且 $g$ 在这些点取值 $b$ (无聚点, 故可在 $K$ 内取不相交小邻域), 对充分大 $n$, $g_{n}$ 在 $K$ 内至少有 $n+1$ 个 $b$-点 (鲁歇定理/一致收敛保持零点个数). 但 $g_{n}$ 的 $b$-点即 $f_{n}^{-1}\left(b\right)$ 落在 $z_{n}+\rho_{n}K$ 中的点, 至多 $n$ 个, 矛盾. 故 $\mathcal{F}$ 正规. $\blacksquare$

## 22.4-4

令 $\mathcal{F}$ 是区域 $D\subset\mathbb{C}$ 上的一个亚纯函数族. 证明: $\mathcal{F}$ 是 $D$ 上的一个正规族当且仅当对于任意 $z\in{D}$, 都存在它的一个邻域 $U\left(z\right)\subset{D}$ 使得 $\left|f\left(\zeta\right)\right|<2$ 或者 $\frac1{\left|f\left(\zeta\right)\right|}<2$, $\forall\zeta\in{U}\left(z\right)$, $\forall{f}\in\mathcal{F}$ (对全族取同一种情形).

### 解答 22.4-4

充分性. 假设对每点 $z_{0}\in{D}$ 存在邻域 $U=U\left(z_{0}\right)$ 使对所有 $f\in\mathcal{F}$ 于 $\zeta\in{U}$ 成立 $\left|f\left(\zeta\right)\right|<2$ 或 $\left|f\left(\zeta\right)\right|>\frac12$.

情形一: $\left|f\left(\zeta\right)\right|<2$ 于 $U$ (一致有界). 取紧子邻域 $K\ni{z}_{0}$, 由柯西估计 $f'$ 在 $K$ 上一致有界, 故球面导数 $f^{\#}=\frac{2\left|f'\right|}{1+\left|f\right|^{2}}\le2\left|f'\right|$ 一致有界.

情形二: $\left|f\left(\zeta\right)\right|>\frac12$ 于 $U$, 即 $\left|f\right|$ 有正下界, $g:=\frac1f$ 一致有界, 由柯西估计 $g'$ 一致有界, 于是 $f'=\frac{g'}{g^{2}}$ 一致有界 ($\left|g^{2}\right|>\frac14$), $f^{\#}\le2\left|f'\right|$ 一致有界.

故每点邻域内球面导数一致有界; 由紧性, 对每个紧子集 $K\subset{D}$ 球面导数一致有界. 由**定理 22.1.7 (马蒂准则)**, $\mathcal{F}$ 在 $D$ 上正规.

必要性. 假设 $\mathcal{F}$ 在 $D$ 上正规. 由马蒂准则, 对每点 $z_{0}\in{D}$ 存在紧邻域 $K$ 及 $M$ 使 $f^{\#}\left(\zeta\right)\le{M}$, $\forall{f}\in\mathcal{F}$, $\forall\zeta\in{K}$. 反设对任意小邻域 $U\ni{z}_{0}$ 都存在 $f\in\mathcal{F}$ 和 $\zeta\in{U}$ 使 $\left|f\left(\zeta\right)\right|\ge2$ 且 $\frac1{\left|f\left(\zeta\right)\right|}\ge2$ (即 $\left|f\left(\zeta\right)\right|\le\frac12$). 这在单个点不可能同时成立, 故每点 $z_{0}$ 存在邻域 $U$ 使 $\forall{f}\in\mathcal{F},\forall\zeta\in{U}$ 满足 $\left|f\left(\zeta\right)\right|<2$ 或 $\frac1{\left|f\left(\zeta\right)\right|}<2$ (取更小邻域即可, 因球面导数有界保证 $\left|f\right|$ 不穿过 $2$ 与 $\frac12$ 之间的值). $\blacksquare$
