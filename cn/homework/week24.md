# 作业 24

> **定理 21.1.3** (布洛克)<br>存在常数 $B>0$: 若 $f$ 在单位圆盘上全纯且 $f'\left(0\right)=1$, 则 $f\left(\mathbb{D}\right)$ 含一个半径至少 $B$ 的圆盘.

> **定理 21.2.3** (毕卡小定理)<br>非常值整函数取 $\mathbb{C}$ 中每个值或除一个值外的所有值.

> **定理 21.2.4** (毕卡小定理, 亚纯形式)<br>非常值亚纯函数至多漏掉两个值.

> **定理 21.4** (毕卡大定理)<br>全纯函数在本性奇点的任意去心邻域内取每个值无穷多次 (至多漏一个值).

### 习题一

(习题 21.5-4) 利用习题 21.5-3 (朗道) 中的结论证明毕卡小定理.

### 解答 习题一

毕卡小定理: 非常值整函数不能漏掉两个不同的值.

由**习题 21.5-3 (朗道)**, 存在正实函数 $R\left(a\right)>0$ ($a\in\mathbb{C}\setminus\left\{0,1\right\}$) 使得: 对任意 $a$, 在闭圆盘 $\left\{\left|z\right|\le R\left(a\right)\right\}$ 上不存在全纯函数 $f$ 满足 $f\left(0\right)=a$, $f'\left(0\right)=1$ 且 $f$ 不取值 $0$ 和 $1$.

设 $F$ 是整函数且不取值 $0,1$. 若 $F$ 非常值, 取 $z_{0}$ 使 $F'\left(z_{0}\right)\ne0$; 令 $a:=F\left(z_{0}\right)\in\mathbb{C}\setminus\left\{0,1\right\}$. 定义 $g\left(w\right):=F\left(z_{0}+\frac{w}{F'\left(z_{0}\right)}\right)$, 则 $g$ 在 $\mathbb{C}$ (因而在闭圆盘 $\left\{\left|w\right|\le R\left(a\right)\right\}$) 上全纯, $g\left(0\right)=F\left(z_{0}\right)=a$, $g'\left(0\right)=1$, 且 $g$ 不取值 $0,1$, 与朗道结论矛盾. 故 $F$ 必为常值, 毕卡小定理得证. $\blacksquare$

### 习题二

(习题 21.5-5) 令 $f,g$ 和 $h$ 都是整函数且满足方程 $e^{f}+e^{g}=h$. 证明: $h$ 要么没有零点要么有无穷多的零点.

### 解答 习题二

设 $F:=e^{f}$, $G:=e^{g}$, 二者均为无零点的整函数, 且 $h=G\left(1+\frac{F}{G}\right)=G\left(1+e^{f-g}\right)$. 记 $H:=e^{f-g}$, 则 $h=G\left(1+H\right)$, $G$ 无零点, 故 $h$ 的零点恰是 $1+H=0$ 即 $e^{f-g}=-1$ 的解.

若 $f-g$ 为常值, 则 $H$ 为常值: 若 $H\equiv-1$ 则 $h\equiv0$, 无零点; 若 $H\equiv c\ne-1$, 则 $h=G\left(1+c\right)$ 无零点. 故 $h$ 没有零点.

若 $f-g$ 非常值, 由**定理 21.2.3 (毕卡小定理)**, 整函数 $f-g$ 的值域是 $\mathbb{C}$ 或 $\mathbb{C}$ 去掉一点, 故它取无穷多个值 $\left(2k+1\right)\pi i$ ($k\in\mathbb{Z}$); 从而 $e^{f-g}$ 在无穷多个点取 $-1$, $h$ 有无穷多个零点. $\blacksquare$

### 习题三

(习题 21.5-6) 若 $f,g$ 都是整函数, $p,q$ 都是多项式且满足方程 $e^{f}+p=e^{g}+q$, $f\left(0\right)=g\left(0\right)$. 证明: $f=g$ 和 $p=q$.

### 解答 习题三

由等式 $e^{f}-e^{g}=q-p$, 即 $e^{g}\left(e^{f-g}-1\right)=q-p$. 反设 $f-g$ 非常值. 则 $e^{f-g}-1$ 的零点满足 $f-g=2\pi ik$, $k\in\mathbb{Z}$. 由**定理 21.2.3 (毕卡小定理)**, 非常值整函数 $f-g$ 的值域是 $\mathbb{C}$ 或 $\mathbb{C}$ 去掉一点, 故取无穷多个值 $2\pi ik$, $e^{f-g}-1$ 有无穷多个零点. 但左边 $e^{g}$ 无零点, 右边 $q-p$ 是多项式至多有限个零点, 且 $e^{g}\left(e^{f-g}-1\right)$ 与 $q-p$ 零点相同, 矛盾. 故 $f-g$ 为常值 $c$.

由 $f\left(0\right)=g\left(0\right)$ 得 $c=0$, 即 $f=g$. 代入原方程 $e^{f}+p=e^{f}+q$, 得 $p=q$. $\blacksquare$

### 习题四

(习题 21.5-7) 令 $\mathcal{E}\left(z\right)=\exp\left(2\pi i\cdot\exp\left(2\pi i z\right)\right)$, $z\in\mathbb{C}$, $f\left(z\right)$ 和 $g\left(z\right)$ 均是不为常值的整函数, 且 $\mathcal{E}\left(f\left(z\right)\right)=\mathcal{E}\left(g\left(z\right)\right)$, $\forall z\in\mathbb{C}$. 证明: 存在 $m\in\mathbb{Z}$ 使得 $f\left(z\right)=g\left(z\right)+m$, $\forall z\in\mathbb{C}$.

### 解答 习题四

由 $\exp$ 的性质, $\exp\left(2\pi i\cdot e^{2\pi if}\right)=\exp\left(2\pi i\cdot e^{2\pi ig}\right)$ 推出 $e^{2\pi if}-e^{2\pi ig}\in\mathbb{Z}$ 且连续, 故为常数, 记 $e^{2\pi if}-e^{2\pi ig}=m\in\mathbb{Z}$.

反设 $m\ne0$, 则 $e^{2\pi if}=e^{2\pi ig}+m$. 因 $g$ 非常值整, 由**定理 21.2.3**, $g$ 的值域是 $\mathbb{C}$ 或 $\mathbb{C}$ 去掉一点, 故 $e^{2\pi ig}$ 取所有非零值 (至多漏一点); 因 $m\ne0$, $-m$ 是非零值, 故存在 $z_{0}$ 使 $e^{2\pi ig\left(z_{0}\right)}=-m$, 于是 $e^{2\pi if\left(z_{0}\right)}=-m+m=0$, 与 $\exp$ 无零点矛盾. 故 $m=0$, 即 $e^{2\pi if}=e^{2\pi ig}$, 从而 $2\pi i\left(f-g\right)=2\pi ik$, $k\in\mathbb{Z}$, 即 $f\left(z\right)=g\left(z\right)+k$. $\blacksquare$

### 习题五

(习题 21.5-19) 令 $f$ 是 $\mathbb{C}$ 上的奇整函数. 证明: $f\left(\mathbb{C}\right)=\mathbb{C}$.

### 解答 习题五

$f$ 是整函数, 由**定理 21.2.3 (毕卡小定理)**, $f\left(\mathbb{C}\right)=\mathbb{C}$ 或 $f\left(\mathbb{C}\right)=\mathbb{C}\setminus\left\{a\right\}$ (漏一个值 $a$). 若 $f$ 常值, 奇性 $f\left(-z\right)=-f\left(z\right)$ 迫使 $f\equiv0$, 值域 $\left\{0\right\}\ne\mathbb{C}$; 故设 $f$ 非常值, 从而 $f\left(\mathbb{C}\right)=\mathbb{C}$ 或 $\mathbb{C}\setminus\left\{a\right\}$.

因 $f$ 是奇函数, $w\in f\left(\mathbb{C}\right)$ 当且仅当 $-w\in f\left(\mathbb{C}\right)$ (取 $-z$ 即得), 故 $f\left(\mathbb{C}\right)$ 关于原点对称. 若 $f\left(\mathbb{C}\right)=\mathbb{C}\setminus\left\{a\right\}$, 对称性要求 $\mathbb{C}\setminus\left\{a\right\}=\mathbb{C}\setminus\left\{-a\right\}$, 得 $a=-a$, 即 $a=0$. 但 $f\left(0\right)=0$ (奇函数), 故 $0\in f\left(\mathbb{C}\right)$, 与 $a=0$ 矛盾. 故 $f\left(\mathbb{C}\right)=\mathbb{C}$. $\blacksquare$
