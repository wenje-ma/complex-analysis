# week10

> **定义 16.1.1 (调和函数)**
> 
> 区域 $D$ 上的实值 $C^{2}$ 函数 $u$ 称为调和的, 若 $\Delta{u}=u_{xx}+u_{yy}=0$ 于 $D$.

> **命题 16.1.6 (均值性质)**
> 
> 调和函数 $u$ 于 $B\left(a,R\right)$ 有

> **定理 16.2.9 (泊松积分)**
> 
> 圆盘 $B\left(a,R\right)$ 上狄利克雷问题有解

> **定理 16.2.10 (有界若当域上的狄利克雷问题)**
> 
> 有界若当域上的狄利克雷问题可解.

> **定义 17.2.1 (典范元)**
> 
> 称 $\left(f,U\right)$ 为典范元, 若 $U$ 是 $\mathbb{C}$ 的非空开集且 $f$ 在 $U$ 上全纯.

> **定义 17.2.2 (直接全纯延拓)**
> 
> 典范元 $\left(f_{1},U_{1}\right)$ 是 $\left(f_{0},U_{0}\right)$ 的直接全纯延拓, 若 $U_{0}\cap{U}_{1}\ne\emptyset$ 且 $f_{0}=f_{1}$ 于 $U_{0}\cap{U}_{1}$.

> **定义 17.2.3 (沿道路的全纯延拓)**
> 
> $\left(f_{0},U_{0}\right)$ 沿道路 $\gamma$ 全纯延拓到 $\left(f_{1},U_{1}\right)$, 若存在一族典范元 $\left(f_{t},U_{t}\right)_{t\in\left[0,1\right]}$ 使每步为直接延拓且 $f_{0},f_{1}$ 为首末元.

> **定理 17.3.6 (单值性定理)**
> 
> 若 $D$ 是单连通区域且 $\left(f,U\right)$ 沿 $D$ 内每条道路都可全纯延拓, 则 $f$ 延拓为 $D$ 上的单值全纯函数.

> **引理 18.1.1 (拼接引理)**
> 
> 区域 $D_{1},D_{2}$ 不相交且有公共边界线段 $\gamma$, $f_{1},f_{2}$ 分别在其上全纯并连续到 $\gamma$, 若 $f_{1}=f_{2}$ 于 $\gamma$, 则拼接的函数在 $D_{1}\cup\gamma\cup{D}_{2}$ 上全纯.

> **定理 18.1.2 (施瓦茨对称原理 I)**
> 
> $D$ 关于实轴对称, $f$ 在 $D^{+}:=D\cap\left\{\operatorname{Im}z>0\right\}$ 全纯, 连续到 $D^{+}\cap\mathbb{R}$ 且在其上取实值, 则 $f$ 延拓为 $D$ 上全纯函数.

> **定理 18.1.3 (施瓦茨对称原理 II)**
> 
> $f$ 在 $D^{+}$ 全纯, 连续到边界线段 $I\subset\mathbb{R}$ 且在其上取实值, 则 $f$ 延拓到 $D^{+}\cup{I}\cup{D}^{-}$ 上, 其中 $D^{-}$ 是 $D^{+}$ 关于实轴的对称, 延拓满足 $f\left(z\right)=\overline{f\left(\overline{z}\right)}$.

## 16.3-2

令 $u=\frac{1}{2\pi}\log\left|z\right|$, $z\in{A}\left(0;0;1\right):=\left\{0<\left|z\right|<1\right\}$. 证明: (i) $u$ 是圆环 $A\left(0;0;1\right)$ 上的调和函数; (ii) 不存在 $A\left(0;0;1\right)$ 上的全纯函数 $f$ 使得 $\operatorname{Re}f=u$; (iii) 令 $f$ 是开圆盘 $\mathbb{D}$ 上具有紧支撑的光滑 (实) 函数, 则 $\int_{\mathbb{D}}u\left(z\right)\Delta{f}\left(z\right)\,dx\,dy=f\left(0\right)$.

### 解答 16.3-2

(i) 在极坐标下 $u=\frac{1}{2\pi}\ln{r}$. $u_{r}=\frac{1}{2\pi{r}}$, $u_{rr}=-\frac{1}{2\pi{r}^{2}}$, $u_{\theta\theta}=0$. 由解答 16.3-1 (i) 中的极坐标拉普拉斯算子,

$$
\Delta{u}=u_{rr}+\frac1ru_{r}+\frac1{r^{2}}u_{\theta\theta}=-\frac1{2\pi{r}^{2}}+\frac{1}{2\pi{r}^{2}}+0=0,
$$

故 $u$ 调和于 $A\left(0;0;1\right)$.

(ii) 反设存在全纯 $f=f_{1}+if_{2}$ 使 $f_{1}=u$. 则由柯西-黎曼方程 (极坐标), 共轭调和函数 $f_{2}$ 满足 $r\frac{\partial{f}_{2}}{\partial{r}}=\frac{\partial{u}}{\partial\theta}=0$, $\frac{\partial{f}_{2}}{\partial\theta}=r\frac{\partial{u}}{\partial{r}}=\frac{1}{2\pi}$. 故 $f_{2}$ 与 $r$ 无关且 $\frac{\partial{f}_{2}}{\partial\theta}=\frac{1}{2\pi}$, 即 $f_{2}=\frac{\theta}{2\pi}+c$. 沿 $A$ 内绕原点 $0$ 一圈的闭曲线, $\theta$ 增加 $2\pi$, $f_{2}$ 增加 $1$, 不能回到原值, 与 $f_{2}$ 是单值函数矛盾. 故不存在这样的全纯 $f$.

(iii) $f$ 具紧支撑于 $\mathbb{D}$, 边界上 $f=\frac{\partial{f}}{\partial{n}}=0$. 取小圆 $B\left(0,\varepsilon\right)$ 挖掉原点, 在 $\mathbb{D}\setminus{B}\left(0,\varepsilon\right)$ 上 $u$ 调和, 由格林第二恒等式:

$$
\int_{\mathbb{D}\setminus{B}\left(0,\varepsilon\right)}u\Delta{f}\,dx\,dy=\int_{\partial{B}\left(0,\varepsilon\right)}\left(u\frac{\partial{f}}{\partial{n}}-f\frac{\partial{u}}{\partial{n}}\right)ds,
$$

(边界 $\partial\mathbb{D}$ 上积分为 $0$). 在小圆上 $u=\frac{1}{2\pi}\ln\varepsilon$, $\frac{\partial{u}}{\partial{n}}=\frac{1}{2\pi\varepsilon}$, 故

$$
\int_{\partial{B}\left(0,\varepsilon\right)}u\frac{\partial{f}}{\partial{n}}ds=\frac{1}{2\pi}\ln\varepsilon\int_{\partial{B}\left(0,\varepsilon\right)}\frac{\partial{f}}{\partial{n}}ds\to0,
$$

且 $-\int_{\partial{B}\left(0,\varepsilon\right)}f\frac{\partial{u}}{\partial{n}}ds=-\frac{1}{2\pi\varepsilon}\int_{\partial{B}\left(0,\varepsilon\right)}f\,ds\to-f\left(0\right)$. 取 $\varepsilon\to0$ 得 $\int_{\mathbb{D}}u\Delta{f}\,dx\,dy=f\left(0\right)$. $\blacksquare$

## 16.3-7

令 $\mathbb{H}:=\left\{\operatorname{Im}z>0\right\}$, 在 $\partial\mathbb{H}$ 上给定一个连续函数 $f$ 且 $\lim_{z\to\infty,z\in\partial\mathbb{H}}f\left(z\right)$ 存在且有限. 试求 $\mathbb{H}$ 上的狄利克雷问题的解 $u$ 使得 $u|_{\partial\mathbb{H}}=f$.

### 解答 16.3-7

解由上半平面的泊松积分给出:

$$
u\left(x+iy\right)=\frac{y}{\pi}\int_{-\infty}^{+\infty}\frac{f\left(t\right)}{\left(t-x\right)^{2}+y^{2}}\,dt,\quad{y}>0.
$$

验证: 泊松核 $P_{y}\left(t-x\right):=\frac{y}{\pi\left(\left(t-x\right)^{2}+y^{2}\right)}$ 关于 $\left(x,y\right)$ 是调和的 (它是 $\frac1\pi\operatorname{Im}\frac{1}{t-z}$), 故 $u$ 调和于 $\mathbb{H}$. 又 $\int_{-\infty}^{+\infty}P_{y}\left(t-x\right)dt=1$, 且对 $x_{0}$ 的邻域内 $x$ 一致地有 $P_{y}\left(t-x\right)\to0$ ($t$ 远离 $x_{0}$), 故

$$
\lim_{y\to0^{+}}u\left(x_{0}+iy\right)=\lim_{y\to0^{+}}\int{f}\left(t\right)P_{y}\left(t-x_{0}\right)dt=f\left(x_{0}\right),
$$

即 $u|_{\partial\mathbb{H}}=f$ (逼近性质). 由 $f$ 在 $\infty$ 有有限极限 $L$, $u\left(x+iy\right)\to{L}$ 当 $\left|z\right|\to\infty$, 与边界条件一致. 故所求即上式. $\blacksquare$

## 16.3-8

令 $u$ 是区域 $D\subset\mathbb{C}$ 上的调和函数. 证明: $\forall\left(x_{0},y_{0}\right)\in{D}$, 都存在 $\left(x_{0},y_{0}\right)$ 的一个邻域 $B_{0}\subset{D}$ 使得 $u$ 在 $B_{0}$ 上可以表示成泰勒级数的形式, 即 $u\left(x,y\right)=\sum_{n\in\mathbb{N}}\sum_{m+k=n}\frac{1}{m!k!}\partial_{x}^{m}\partial_{y}^{k}u\left(x_{0},y_{0}\right)\left(x-x_{0}\right)^{m}\left(y-y_{0}\right)^{k}$, $\forall\left(x,y\right)\in{B}_{0}$.

### 解答 16.3-8

调和函数局部是某全纯函数的实部: 在 $\left(x_{0},y_{0}\right)$ 的圆盘 $B_{0}\subset{D}$ 内存在全纯 $F$ 使 $u=\operatorname{Re}F$ (局部可找共轭调和函数). 记 $z_{0}=x_{0}+iy_{0}$, $F$ 在 $B_{0}$ 内泰勒展开 $F\left(z\right)=\sum_{n=0}^{+\infty}c_{n}\left(z-z_{0}\right)^{n}$. 于是 $u\left(x,y\right)=\operatorname{Re}F\left(z\right)$, 而

$$
F\left(z\right)=\sum_{n=0}^{+\infty}c_{n}\left(\left(x-x_{0}\right)+i\left(y-y_{0}\right)\right)^{n}
$$

是一关于 $\left(x-x_{0}\right),\left(y-y_{0}\right)$ 的幂级数, 在 $B_{0}$ 内绝对一致收敛, 逐项展开得实幂级数 $u\left(x,y\right)=\sum_{m,k}\frac{1}{m!k!}\partial_{x}^{m}\partial_{y}^{k}u\left(x_{0},y_{0}\right)\left(x-x_{0}\right)^{m}\left(y-y_{0}\right)^{k}$ (实解析函数的泰勒系数公式). 这正是所证. $\blacksquare$

## 16.3-10

(i) 验证 $u\left(x+iy\right)=\frac{1}{\pi}\arctan\frac{y}{x}$ 是上半平面 $\mathbb{H}:=\left\{\left(x,y\right):y>0\right\}$ 上的调和函数且可以连续延拓到除原点外的实轴上, 在正实轴上恒等于 $0$, 在负实轴上恒等于 $1$; (ii) 考虑莫比乌斯变换 $\phi\left(z\right):\mathbb{H}\to\mathbb{D}$, $z\mapsto\frac{i-z}{i+z}$, 验证 $\widetilde{u}:=u\circ\phi^{-1}$ 是 $\mathbb{D}$ 上的调和函数而且可连续延拓到除 $\pm1$ 外的边界 $\partial\mathbb{D}$ 上, 在半圆弧 $\left\{e^{i\theta}:0<\theta<\pi\right\}$ 上等于 $0$, 在半圆弧 $\left\{e^{i\theta}:-\pi<\theta<0\right\}$ 上等于 $1$; (iii) 验证 $\widetilde{u}$ 是它的限定在边界上的函数的泊松积分; (iv) 验证对于任意 $a\in\left(0,1\right)$, 都存在序列 $z_{n}\in\mathbb{D}$, $z_{n}\to1$ (或 $-1$) 使得 $\widetilde{u}\left(z_{n}\right)\to{a}$.

### 解答 16.3-10

(i) 于 $\mathbb{H}$, $\frac1\pi\arctan\frac{y}x=\frac1\pi\arg\left(x+iy\right)$, 而 $\arg\left(x+iy\right)=\operatorname{Im}\operatorname{Log}z$ 是调和的, 故 $u$ 调和于 $\mathbb{H}$. 当 $y\to0^{+}$: 若 $x>0$, $\arg\left(x+iy\right)\to0$, $u\to0$; 若 $x<0$, $\arg\left(x+iy\right)\to\pi$, $u\to1$. 故 $u$ 连续延拓到除原点外的实轴, 正实轴取 $0$, 负实轴取 $1$.

(ii) $\phi^{-1}\left(w\right)=i\frac{1-w}{1+w}$. 对 $w=e^{i\theta}\in\partial\mathbb{D}$ ($w\ne\pm1$),

$$
\phi^{-1}\left(e^{i\theta}\right)=i\frac{1-e^{i\theta}}{1+e^{i\theta}}=i\cdot\left(-i\right)\tan\frac{\theta}{2}=\tan\frac{\theta}{2}\in\mathbb{R}.
$$

$\tan\frac{\theta}{2}>0$ 当 $0<\theta<\pi$ (正实轴, $u=0$), $\tan\frac{\theta}{2}<0$ 当 $-\pi<\theta<0$ (负实轴, $u=1$). 因 $\phi$ 是共形等价, $\widetilde{u}=u\circ\phi^{-1}$ 调和于 $\mathbb{D}$ 并连续延拓到 $\partial\mathbb{D}\setminus\left\{\pm1\right\}$, 上半圆弧取 $0$, 下半圆弧取 $1$.

(iii) $\widetilde{u}$ 在 $\partial\mathbb{D}$ 上的边界函数 $g\left(e^{i\theta}\right)$ 为: $0$ 于上半圆弧, $1$ 于下半圆弧 (除 $\pm1$). 由**定理 16.2.9 (泊松积分)**, 圆盘 $\mathbb{D}$ 上以 $g$ 为边界值的调和函数唯一, 而 $\widetilde{u}$ 正是这个解, 故 $\widetilde{u}$ 等于 $g$ 的泊松积分.

(iv) $\widetilde{u}$ 在 $\mathbb{D}$ 上调和且不恒等, 在 $\partial\mathbb{D}$ 上 (除 $\pm1$) 取值于 $\left\{0,1\right\}$. 沿从 $\phi\left(0\right)$ 附近到边界点 $1$ (或 $-1$) 的路径, 边界极限在 $1$ 处介于上半圆弧 ($0$) 与下半圆弧 ($1$) 之间. 由连续性, 对任意 $a\in\left(0,1\right)$ 存在该路径上一点, 故可取序列 $z_{n}\to1$ (或 $-1$) 使 $\widetilde{u}\left(z_{n}\right)\to{a}$. $\blacksquare$

## 17.4-1

证明: 级数 $1+\sum_{n=1}^{+\infty}\left(iz\right)^{n}$ 与级数 $\frac{1}{1-z}+\sum_{n=1}^{+\infty}\frac{\left(1-i\right)^{n}\left(-z\right)^{n}}{\left(1-z\right)^{1+n}}$ 互为直接全纯延拓.

### 解答 17.4-1

级数 $1$ 是几何级数, 当 $\left|iz\right|<1$ 即 $\left|z\right|<1$ 时收敛, 其和为

$$
1+\sum_{n=1}^{+\infty}\left(iz\right)^{n}=1+\frac{iz}{1-iz}=\frac{1}{1-iz}.
$$

级数 $2$: 提出因子 $\frac{1}{1-z}$,

$$
\frac{1}{1-z}\left[1+\sum_{n=1}^{+\infty}\left(\frac{\left(1-i\right)\left(-z\right)}{1-z}\right)^{n}\right],
$$

当 $\left|\frac{\left(1-i\right)\left(-z\right)}{1-z}\right|<1$, 即 $\sqrt2\left|z\right|<\left|1-z\right|$ 时收敛 (此时 $\left|z\right|<1$ 亦满足), 其和为

$$
\frac{1}{1-z}\cdot\frac{1}{1-\frac{\left(1-i\right)\left(-z\right)}{1-z}}=\frac{1}{1-z-\left(1-i\right)z}=\frac{1}{1-iz}.
$$

两区域 $\left\{\left|z\right|<1\right\}$ 与 $\left\{\sqrt2\left|z\right|<\left|1-z\right|\right\}$ 的交叠非空, 且两级数在此交叠上表示同一个函数 $\frac{1}{1-iz}$. 由**定义 17.2.2 (直接全纯延拓)**, 二者互为直接全纯延拓. $\blacksquare$

## 17.4-3

令 $\gamma:\left[0,1\right]\to\mathbb{C}$ 为道路, 若典范元 $\left(f_{0},U_{0}\right)$ 沿道路 $\gamma$ 全纯延拓成典范元 $\left(f_{1},U_{1}\right)$, 证明: 典范元 $\left(\partial_{z}f_{0},U_{0}\right)$ 也可以沿 $\gamma$ 延拓成典范元 $\left(\partial_{z}f_{1},U_{1}\right)$.

### 解答 17.4-3

由**定义 17.2.3 (沿道路的全纯延拓)**, 存在延拓族 $\left(f_{t},U_{t}\right)_{t\in\left[0,1\right]}$, 相邻元 $f_{t},f_{t+\Delta{t}}$ 在交叠上相等. 因 $f_{t}$ 全纯于 $U_{t}$, 其导数 $\partial_{z}f_{t}$ 也全纯于 $U_{t}$. 若 $f_{s}=f_{t}$ 于 $U_{s}\cap{U}_{t}$, 则 $\partial_{z}f_{s}=\partial_{z}f_{t}$ 于 $U_{s}\cap{U}_{t}$ (解析函数在交叠开集上恒等则各阶导数恒等). 故 $\left(\partial_{z}f_{t},U_{t}\right)_{t\in\left[0,1\right]}$ 构成 $\left(\partial_{z}f_{0},U_{0}\right)$ 沿 $\gamma$ 的全纯延拓族, 其终点为 $\left(\partial_{z}f_{1},U_{1}\right)$. $\blacksquare$

## 17.4-4

令 $\gamma:\left[0,1\right]\to\mathbb{C}$ 是闭道路, $\gamma\left(0\right)=\gamma\left(1\right)=a$, $F_{k}:=\left(f_{k},U_{k}\right)$, $k=0,1$, 都是以 $a$ 为圆心的典范元且 $F_{1}$ 可以由 $F_{0}$ 沿 $\gamma$ 全纯延拓得到. 假设存在一个开集 $\Omega$ 上的全纯函数 $g$ 满足 $f_{0}\left(z\right)=g\left(z\right)$, $\forall{z}\in{U}_{0}\cap\Omega$ 且 $\gamma\subset\Omega$. 如果 $\forall{z}\in{U}_{0}\cap{U}_{1}$, 都有等式 $f_{1}\left(z\right)=\partial_{z}f_{0}\left(z\right)$, 试给出 $f_{0}$ 的所有可能形式.

### 解答 17.4-4

因 $f_{0}=g$ 于 $U_{0}\cap\Omega$ 且 $\gamma\subset\Omega$, $g$ 在 $\Omega$ 上全纯 (单值), 故 $f_{0}$ 沿 $\gamma$ 的全纯延拓恰为 $g$ 沿 $\gamma$ 的延拓. 由于 $\gamma$ 是 $\Omega$ 内闭曲线而 $g$ 单值, 绕 $\gamma$ 一圈后 $g$ 回到自身: $f_{1}=g=f_{0}$ 于 $U_{1}$ (在 $U_{0}\cap{U}_{1}$ 上 $f_{1}=f_{0}$). 结合条件 $f_{1}=\partial_{z}f_{0}$ 于 $U_{0}\cap{U}_{1}$, 得 $f_{0}=\partial_{z}f_{0}$ 于非空开集 $U_{0}\cap{U}_{1}$. 解常微分方程 $f_{0}'=f_{0}$: $f_{0}\left(z\right)=Ce^{z}$, 且 $f_{1}=f_{0}$ 给出同一常数. 故 $f_{0}$ 的所有可能形式为 $f_{0}\left(z\right)=Ce^{z}$, $C\in\mathbb{C}$. $\blacksquare$

## 17.4-5

令 $U_{0}=B\left(1,1\right):=\left\{\left|z-1\right|<1\right\}$, $f_{0}$ 为对数函数 $\operatorname{Log}z$ 在 $U_{0}$ 上的一个全纯分支. 对任意 $n\in\mathbb{Z}\setminus\left\{0\right\}$, 令 $\gamma_{n}\left(t\right)=e^{2\pi{i}nt}$, $t\in\left[0,1\right]$. 给出元 $\left(f_{0},U_{0}\right)$ 沿道路 $\gamma_{n}$ 的延拓族 $\left(f_{t},U_{t}\right)$, 并说明 $f_{1}=f_{0}+2n\pi{i}$.

### 解答 17.4-5

$\gamma_{n}$ 从 $1$ 出发绕原点 $\left|n\right|$ 圈回到 $1$ (方向由 $n$ 的符号决定). 沿 $\gamma_{n}$, $\operatorname{Log}z$ 的幅角连续累积 $2\pi{n}t$. 对每个 $t\in\left[0,1\right]$, 取 $U_{t}=B\left(\gamma_{n}\left(t\right),\delta\right)$ (小邻域, 不含原点 $0$), 并定义

$$
f_{t}\left(z\right):=f_{0}\left(z\right)+2\pi{i}nt,\quad{z}\in{U}_{t},
$$

这里把 $f_{0}$ 视为 $\operatorname{Log}z$ 在 $1$ 附近的分支, 幅角从 $0$ 出发; 在 $U_{t}$ 上 $f_{t}$ 是 $\operatorname{Log}z$ 的一个全纯分支 (幅角相对 $1$ 处累积了 $2\pi{n}t$). 相邻元在交叠上取同一分支, 故 $\left(f_{t},U_{t}\right)_{t\in\left[0,1\right]}$ 是 $\left(f_{0},U_{0}\right)$ 沿 $\gamma_{n}$ 的延拓族. 当 $t=1$ 时 $\gamma_{n}\left(1\right)=1$, $U_{1}=B\left(1,\delta\right)$, $f_{1}\left(z\right)=f_{0}\left(z\right)+2\pi{i}n$, 即 $f_{1}=f_{0}+2n\pi{i}$. $\blacksquare$

## 17.4-8

令级数 $\sum_{n=0}^{+\infty}c_{n}z^{n}$ 的收敛半径为 $R=1$, $c_{n}\ge0$, $n=1,2,\cdots$, 而 $f\left(z\right)$ 是它的和函数. 证明: (i) $\alpha_{k}=\frac{f^{\left(k\right)}\left(\frac12\right)}{k!}\ge0$ ($k=0,1,2,\cdots$); (ii) 令 $\beta_{k}=\frac{f^{\left(k\right)}\left(\frac{e^{i\theta}}{2}\right)}{k!}$, 则有 $\left|\beta_{k}\right|\le\alpha_{k}$; (iii) $z=1$ 是和函数 $f$ 的一个奇点.

### 解答 17.4-8

(i) 逐项求导 (幂级数在 $\left|z\right|<1$ 内可逐项求导):

$$
\frac{f^{\left(k\right)}\left(z\right)}{k!}=\sum_{n=k}^{+\infty}c_{n}\binom{n}{k}z^{n-k}.
$$

取 $z=\frac12$ (正实数, $0<\frac12<1$):

$$
\alpha_{k}=\sum_{n=k}^{+\infty}c_{n}\binom{n}{k}\left(\frac12\right)^{n-k}\ge0,
$$

因 $c_{n}\ge0$.

(ii) 取 $z=\frac{e^{i\theta}}{2}$, 则 $\left|z\right|=\frac12<1$,

$$
\beta_{k}=\sum_{n=k}^{+\infty}c_{n}\binom{n}{k}\left(\frac{e^{i\theta}}{2}\right)^{n-k},\quad
\left|\beta_{k}\right|\le\sum_{n=k}^{+\infty}c_{n}\binom{n}{k}\left(\frac{\left|e^{i\theta}\right|}{2}\right)^{n-k}=\alpha_{k}.
$$

(iii) 反设 $1$ 是 $f$ 的正则点, 则 $f$ 在 $z=1$ 的某邻域全纯, 由幂级数理论其收敛半径必大于 $1$ (在 $1$ 邻域收敛 ⟹ 收敛半径 $>1$). 但这与收敛半径恰为 $R=1$ 矛盾. 故 $z=1$ 是 $f$ 的奇点. $\blacksquare$

## 18.4-1

证明: 任意矩形到另一个矩形的共形等价映射, 如果它将一个矩形的所有顶点映成另外一个矩形的顶点, 那么它是线性的.

### 解答 18.4-1

设 $f$ 把矩形 $R$ 共形等价地映到矩形 $R'$, 且顶点映顶点. 由边界保持 (若当区域间的共形映射连续延拓到边界), $f$ 把 $R$ 的每条边映成 $R'$ 的边, 边上的取值沿直线段连续.

由**定理 18.1.3 (施瓦茨对称原理 II)**, $f$ 沿每条边可反射延拓: 边映到 $R'$ 的边 (一条直线段), 把 $f$ 反射到与 $R$ 相邻的矩形. 反复反射, $f$ 延拓为整函数 $\mathbb{C}\to\mathbb{C}$ (亚纯于无穷, 但整函数). 设 $R$ 的边长对应方向为 $L_{1},L_{2}$ (实方向与虚方向), $R'$ 相应为 $L'_{1},L'_{2}$, 则延拓满足准周期条件 $f\left(z+L_{1}\right)=f\left(z\right)+L'_{1}$, $f\left(z+L_{2}\right)=f\left(z\right)+L'_{2}$.

对 $f'$ 求导得 $f'\left(z+L_{1}\right)=f'\left(z\right)$, $f'\left(z+L_{2}\right)=f'\left(z\right)$, 即 $f'$ 是双周期整函数 (周期 $L_{1},L_{2}$). 双周期整函数在基本平行四边形上有界, 由刘维尔定理 $f'$ 为常数, 故 $f$ 是线性函数 $f\left(z\right)=az+b$. $\blacksquare$
