# 作业 24

> **定理 21.1.3** (布洛克)<br>存在常数 $B>0$: 若 $f$ 在单位圆盘上全纯且 $f'(0)=1$, 则 $f(\mathbb{D})$ 含一个半径至少 $B$ 的圆盘.

> **定理 21.2.3** (毕卡小定理)<br>非常值整函数取 $\mathbb{C}$ 中每个值或除一个值外的所有值.

> **定理 21.2.4** (毕卡小定理, 亚纯形式)<br>非常值亚纯函数至多漏掉两个值.

> **定理 21.4** (毕卡大定理)<br>全纯函数在本性奇点的任意去心邻域内取每个值无穷多次 (至多漏一个值).

### 习题一

(习题 21.5-4) 利用习题 21.5-3 (朗道) 中的结论证明毕卡小定理.

### 解答 习题一

毕卡小定理: 非常值整函数不能漏掉两个不同的值.

由**习题 21.5-3 (朗道)**, 存在正实函数 $R(a)>0$ ($a\in\mathbb{C}\setminus\{0,1\}$) 使得: 对任意 $a$, 在闭圆盘 $\{|z|\le R(a)\}$ 上不存在全纯函数 $f$ 满足 $f(0)=a$, $f'(0)=1$ 且 $f$ 不取值 $0$ 和 $1$.

设 $F$ 是整函数且不取值 $0,1$. 若 $F$ 非常值, 取 $z_{0}$ 使 $F'(z_{0})\ne0$; 令 $a:=F(z_{0})\in\mathbb{C}\setminus\{0,1\}$. 定义 $g(w):=F\left(z_{0}+\frac{w}{F'(z_{0})}\right)$, 则 $g$ 在 $\mathbb{C}$ (因而在闭圆盘 $\{|w|\le R(a)\}$) 上全纯, $g(0)=F(z_{0})=a$, $g'(0)=1$, 且 $g$ 不取值 $0,1$, 与朗道结论矛盾. 故 $F$ 必为常值, 毕卡小定理得证. $\blacksquare$

### 习题二

(习题 21.5-5) 令 $f,g$ 和 $h$ 都是整函数且满足方程 $e^{f}+e^{g}=h$. 证明: $h$ 要么没有零点要么有无穷多的零点.

### 解答 习题二

设 $F:=e^{f}$, $G:=e^{g}$, 二者均为无零点的整函数, 且 $h=G\left(1+\frac{F}{G}\right)=G\left(1+e^{f-g}\right)$. 记 $H:=e^{f-g}$, 则 $h=G(1+H)$, $G$ 无零点, 故 $h$ 的零点恰是 $1+H=0$ 即 $e^{f-g}=-1$ 的解.

若 $f-g$ 为常值, 则 $H$ 为常值: 若 $H\equiv-1$ 则 $h\equiv0$, 无零点; 若 $H\equiv c\ne-1$, 则 $h=G(1+c)$ 无零点. 故 $h$ 没有零点.

若 $f-g$ 非常值, 由**定理 21.2.3 (毕卡小定理)**, 整函数 $f-g$ 的值域是 $\mathbb{C}$ 或 $\mathbb{C}$ 去掉一点, 故它取无穷多个值 $(2k+1)\pi i$ ($k\in\mathbb{Z}$); 从而 $e^{f-g}$ 在无穷多个点取 $-1$, $h$ 有无穷多个零点. $\blacksquare$

### 习题三

(习题 21.5-6) 若 $f,g$ 都是整函数, $p,q$ 都是多项式且满足方程 $e^{f}+p=e^{g}+q$, $f(0)=g(0)$. 证明: $f=g$ 和 $p=q$.

### 解答 习题三

由等式 $e^{f}-e^{g}=q-p$, 即 $e^{g}\left(e^{f-g}-1\right)=q-p$. 反设 $f-g$ 非常值. 则 $e^{f-g}-1$ 的零点满足 $f-g=2\pi ik$, $k\in\mathbb{Z}$. 由**定理 21.2.3 (毕卡小定理)**, 非常值整函数 $f-g$ 的值域是 $\mathbb{C}$ 或 $\mathbb{C}$ 去掉一点, 故取无穷多个值 $2\pi ik$, $e^{f-g}-1$ 有无穷多个零点. 但左边 $e^{g}$ 无零点, 右边 $q-p$ 是多项式至多有限个零点, 且 $e^{g}(e^{f-g}-1)$ 与 $q-p$ 零点相同, 矛盾. 故 $f-g$ 为常值 $c$.

由 $f(0)=g(0)$ 得 $c=0$, 即 $f=g$. 代入原方程 $e^{f}+p=e^{f}+q$, 得 $p=q$. $\blacksquare$

### 习题四

(习题 21.5-7) 令 $\mathcal{E}(z)=\exp\left(2\pi i\cdot\exp(2\pi i z)\right)$, $z\in\mathbb{C}$, $f(z)$ 和 $g(z)$ 均是不为常值的整函数, 且 $\mathcal{E}(f(z))=\mathcal{E}(g(z))$, $\forall z\in\mathbb{C}$. 证明: 存在 $m\in\mathbb{Z}$ 使得 $f(z)=g(z)+m$, $\forall z\in\mathbb{C}$.

### 解答 习题四

由 $\exp$ 的性质, $\exp\left(2\pi i\cdot e^{2\pi if}\right)=\exp\left(2\pi i\cdot e^{2\pi ig}\right)$ 推出 $e^{2\pi if}-e^{2\pi ig}\in\mathbb{Z}$ 且连续, 故为常数, 记 $e^{2\pi if}-e^{2\pi ig}=m\in\mathbb{Z}$.

反设 $m\ne0$, 则 $e^{2\pi if}=e^{2\pi ig}+m$. 因 $g$ 非常值整, 由**定理 21.2.3**, $g$ 的值域是 $\mathbb{C}$ 或 $\mathbb{C}$ 去掉一点, 故 $e^{2\pi ig}$ 取所有非零值 (至多漏一点); 因 $m\ne0$, $-m$ 是非零值, 故存在 $z_{0}$ 使 $e^{2\pi ig(z_{0})}=-m$, 于是 $e^{2\pi if(z_{0})}=-m+m=0$, 与 $\exp$ 无零点矛盾. 故 $m=0$, 即 $e^{2\pi if}=e^{2\pi ig}$, 从而 $2\pi i(f-g)=2\pi ik$, $k\in\mathbb{Z}$, 即 $f(z)=g(z)+k$. $\blacksquare$

### 习题五

(习题 21.5-19) 令 $f$ 是 $\mathbb{C}$ 上的奇整函数. 证明: $f(\mathbb{C})=\mathbb{C}$.

### 解答 习题五

$f$ 是整函数, 由**定理 21.2.3 (毕卡小定理)**, $f(\mathbb{C})=\mathbb{C}$ 或 $f(\mathbb{C})=\mathbb{C}\setminus\{a\}$ (漏一个值 $a$). 若 $f$ 常值, 奇性 $f(-z)=-f(z)$ 迫使 $f\equiv0$, 值域 $\{0\}\ne\mathbb{C}$; 故设 $f$ 非常值, 从而 $f(\mathbb{C})=\mathbb{C}$ 或 $\mathbb{C}\setminus\{a\}$.

因 $f$ 是奇函数, $w\in f(\mathbb{C})$ 当且仅当 $-w\in f(\mathbb{C})$ (取 $-z$ 即得), 故 $f(\mathbb{C})$ 关于原点对称. 若 $f(\mathbb{C})=\mathbb{C}\setminus\{a\}$, 对称性要求 $\mathbb{C}\setminus\{a\}=\mathbb{C}\setminus\{-a\}$, 得 $a=-a$, 即 $a=0$. 但 $f(0)=0$ (奇函数), 故 $0\in f(\mathbb{C})$, 与 $a=0$ 矛盾. 故 $f(\mathbb{C})=\mathbb{C}$. $\blacksquare$
