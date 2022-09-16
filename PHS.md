# **QWZ模型のPHS**

## **波数空間での議論**

QWZ模型は、波数空間で
$$
H(k) = \sin k_x \sigma_x + \sin k_y \sigma_y + (M+\cos k_x + \cos k_y)\sigma_z
$$
であるので、
$$
\Xi = \sigma_x K
$$
とすれば、
$$
\Xi^2=1,\quad \Xi H(k)\Xi^{-1} = -H(-k)
$$
なので、QWZ模型はPHSを持ち、AZクラスでのクラスCに属すると分かる。

## **実空間での議論**
QWZ模型は、実空間では

$$
\begin{align}
H=\displaystyle \sum_{x,y} M(c^{\dagger}_{x,y,A}c_{x,y,A}-c^{\dagger}_{x,y,B}c_{x,y,B})\\
+ \frac{1}{2}c^{\dagger}_{x+1,y,A}c_{x,y,A} + \frac{i}{2}c^{\dagger}_{x+1,y,A}c_{x,y,B}-\frac{1}{2}c^{\dagger}_{x+1,y,B}c_{x,y,B} + \frac{i}{2}c^{\dagger}_{x+1,y,B}c_{x,y,A} + c.c.\\
+ \frac{1}{2}c^{\dagger}_{x,y+1,A}c_{x,y,A} + \frac{1}{2}c^{\dagger}_{x,y+1,A}c_{x,y,B}-\frac{1}{2}c^{\dagger}_{x,y+1,B}c_{x,y,B}-\frac{1}{2}c^{\dagger}_{x,y+1,B}c_{x,y,A} + c.c.
\end{align}
$$

であるが、波数空間での議論を参考にして、
$$
c_{x,y,A}\mapsto c^{\dagger}_{x,y,B},\quad c_{x,y,B}\mapsto c^{\dagger}_{x,y,A}
$$
とすればよい。ちゃんと書くなら、荷電共役変換の演算子を
$$
\hat{C}c_{x,y,A}\hat{C}^{-1} = c^{\dagger}_{x,y,B}
$$
などとし、
$$
\hat{C}H\hat{C}^{-1} = H
$$
を確認すればよい。

## **相互作用があるとき**
相互作用があると、化学ポテンシャルと相互作用の項
$$
-\mu \displaystyle \sum_{i}(n_{i,A} + n_{i,B}) + U\displaystyle \sum_{i}n_{i,A}n_{i,B}
$$
が加わる($U=0の時は\mu =0$)
この項も、同じ変換の下で普遍であると分かる。