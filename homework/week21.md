# 作业 21

> **引理 18.1.1** (拼接引理)<br>区域 $D_{1},D_{2}$ 不相交且有公共边界线段 $\gamma$, $f_{1},f_{2}$ 分别在其上全纯并连续到 $\gamma$, 若 $f_{1}=f_{2}$ 于 $\gamma$, 则拼接的函数在 $D_{1}\cup\gamma\cup D_{2}$ 上全纯.

> **定理 18.1.2** (施瓦茨对称原理 I)<br>$D$ 关于实轴对称, $f$ 在 $D^{+}:=D\cap\left\{\operatorname{Im}z>0\right\}$ 全纯, 连续到 $D^{+}\cap\mathbb{R}$ 且在其上取实值, 则 $f$ 延拓为 $D$ 上全纯函数.

> **定理 18.1.3** (施瓦茨对称原理 II)<br>$f$ 在 $D^{+}$ 全纯, 连续到边界线段 $I\subset\mathbb{R}$ 且在其上取实值, 则 $f$ 延拓到 $D^{+}\cup I\cup D^{-}$ 上, 其中 $D^{-}$ 是 $D^{+}$ 关于实轴的对称, 延拓满足 $f\left(z\right)=\overline{f\left(\bar z\right)}$.

### 习题一

(习题 18.4-1) 证明: 任意矩形到另一个矩形的共形等价映射, 如果它将一个矩形的所有顶点映成另外一个矩形的顶点, 那么它是线性的.

### 解答 习题一

设 $f$ 把矩形 $R$ 共形等价地映到矩形 $R'$, 且顶点映顶点. 由边界保持 (若当区域间的共形映射连续延拓到边界), $f$ 把 $R$ 的每条边映成 $R'$ 的边, 边上的取值沿直线段连续.

由**定理 18.1.3 (施瓦茨对称原理 II)**, $f$ 沿每条边可反射延拓: 边映到 $R'$ 的边 (一条直线段), 把 $f$ 反射到与 $R$ 相邻的矩形. 反复反射, $f$ 延拓为整函数 $\mathbb{C}\to\mathbb{C}$ (亚纯于无穷, 但整函数). 设 $R$ 的边长对应方向为 $L_{1},L_{2}$ (实方向与虚方向), $R'$ 相应为 $L'_{1},L'_{2}$, 则延拓满足准周期条件 $f\left(z+L_{1}\right)=f\left(z\right)+L'_{1}$, $f\left(z+L_{2}\right)=f\left(z\right)+L'_{2}$.

对 $f'$ 求导得 $f'\left(z+L_{1}\right)=f'\left(z\right)$, $f'\left(z+L_{2}\right)=f'\left(z\right)$, 即 $f'$ 是双周期整函数 (周期 $L_{1},L_{2}$). 双周期整函数在基本平行四边形上有界, 由刘维尔定理 $f'$ 为常数, 故 $f$ 是线性函数 $f\left(z\right)=az+b$. $\blacksquare$

### 习题二

(习题 18.4-3) 令 $f$ 为圆环 $A\left(0;0;1\right):=\left\{0<\left|z\right|<1\right\}$ 上的全纯函数, 且 $f$ 可以连续延拓到单位圆周 $\left\{\left|z\right|=1\right\}$ 且在其上只取实数值. 证明: $f$ 可以延拓成 $\mathbb{C}\setminus\left\{0\right\}$ 上的全纯函数且满足 $f\left(z\right)=\overline{f\left(\frac{1}{\bar z}\right)}$, $\forall z\ne0$. (注: 原题 OCR 中右端 $\frac{1}{\bar z}$ 的共轭记号缺失, 按施瓦茨对称原理的标准形式补全.)

### 解答 习题二

$f$ 在单位圆盘 $A\left(0;0;1\right)=\left\{\left|z\right|<1\right\}\setminus\left\{0\right\}$ 上全纯, 在 $\left|z\right|=1$ 上连续取实值. 圆 $\left\{\left|z\right|=1\right\}$ 是一段解析曲线, $f$ 在它上面取实值. 由施瓦茨对称原理 (圆的情形, 即**定理 18.1.3** 经莫比乌斯变换把圆映为实轴), $f$ 可越过 $\left|z\right|=1$ 反射延拓: 对 $\left|z\right|>1$ 定义

$$
f\left(z\right):=\overline{f\left(\frac{1}{\bar z}\right)},\quad \left|z\right|>1.
$$

右端在 $\left|z\right|>1$ 处全纯 (因 $\frac{1}{\bar z}$ 落在 $\left|z\right|<1$ 内), 且在 $\left|z\right|=1$ 上 $z=\frac{1}{\bar z}$, 由 $f$ 实值得 $f\left(z\right)=\overline{f\left(z\right)}$, 与原来的 $f$ 吻合. 故 $f$ 延拓成 $\mathbb{C}\setminus\left\{0\right\}$ 上的全纯函数, 且由定义恒有 $f\left(z\right)=\overline{f\left(\frac{1}{\bar z}\right)}$, $\forall z\ne0$. $\blacksquare$

### 习题三

(习题 18.4-5) 若 $f$ 为整函数, $f\left(\mathbb{R}\right)\subset\mathbb{R}$ 且 $f\left(i\mathbb{R}\right)\subset i\mathbb{R}$, 证明: $f\left(-z\right)=-f\left(z\right)$, $\forall z\in\mathbb{C}$.

### 解答 习题三

由 $f\left(\mathbb{R}\right)\subset\mathbb{R}$, 应用**定理 18.1.3 (施瓦茨对称原理 II)** 得 $f\left(\bar z\right)=\overline{f\left(z\right)}$, $\forall z\in\mathbb{C}$.

记 $f_{e}\left(z\right):=\frac{f\left(z\right)+f\left(-z\right)}{2}$ (偶部), 它是整函数. 由 $f\left(\mathbb{R}\right)\subset\mathbb{R}$, 对 $z=x\in\mathbb{R}$ 有 $f_{e}\left(x\right)\in\mathbb{R}$; 由 $f\left(i\mathbb{R}\right)\subset i\mathbb{R}$, 对 $z=iy$ 有 $f_{e}\left(iy\right)\in i\mathbb{R}$. 因 $f_{e}$ 是偶整函数, 存在整函数 $F$ 使 $f_{e}\left(z\right)=F\left(z^{2}\right)$. 于是 $F$ 满足: $x>0$ 时 $F\left(x\right)=f_{e}\left(\sqrt x\right)\in\mathbb{R}$; $x<0$ 时 $F\left(x\right)=f_{e}\left(i\sqrt{\left|x\right|}\right)\in i\mathbb{R}$.

由 $F\left(x\right)\in\mathbb{R}$ 于 $x>0$ 及对称原理, $F\left(\bar w\right)=\overline{F\left(w\right)}$, 特别对 $x<0$: $F\left(x\right)=\overline{F\left(x\right)}$, 故 $F\left(x\right)\in\mathbb{R}$. 结合 $F\left(x\right)\in i\mathbb{R}$ 于 $x<0$, 得 $F\left(x\right)=0$ 于负实轴 $x<0$. 负实轴有聚点, $F$ 整函数在其上为零, 故 $F\equiv0$, 从而 $f_{e}\equiv0$, 即 $f\left(-z\right)=-f\left(z\right)$, $\forall z\in\mathbb{C}$. $\blacksquare$

### 习题四

(习题 18.4-7) 令 $f\left(z\right)$ 为圆环 $A\left(0;1;2\right):=\left\{1<\left|z\right|<2\right\}$ 上的全纯函数, $\gamma$ 是圆周 $\left|z\right|=2$ 上的一段圆弧, $f\left(z\right)$ 在 $A\left(0;1;2\right)\cup\gamma$ 上连续, 且 $f$ 在 $\gamma$ 上恒取零值. 证明: $f\left(z\right)\equiv0$.

### 解答 习题四

$f$ 在 $\gamma$ 上恒取零值, 特别取实值, 且 $\gamma$ 是一段解析圆弧. 由施瓦茨对称原理 (圆的情形), $f$ 可越过 $\gamma$ 全纯延拓: 存在包含 $\gamma$ 的开集 $W$ 及 $W$ 上的全纯函数 $F$, 使 $F=f$ 于 $\left(A\left(0;1;2\right)\cap W\right)\cup\gamma$.

于是 $F$ 在 $W$ 上全纯且在 $\gamma$ 上为 $0$. $\gamma$ 是一段圆弧, 作为连通集其内部含聚点, 故 $F$ 在 $W$ 上 (含聚点的邻域) 有零点. 由恒等定理, $F\equiv0$ 于 $W$ 的连通分支. 特别 $f\equiv0$ 于 $A\left(0;1;2\right)\cap W\ne\emptyset$, 再由恒等定理 $f\equiv0$ 于整个圆环 $A\left(0;1;2\right)$. $\blacksquare$
