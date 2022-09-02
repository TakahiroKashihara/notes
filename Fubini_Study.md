# **Fubini_Study計量からQMを計算**
## **ケーラー形式**
簡単のため、2バンドのモデルで考える。この場合は一次元の複素射影平面$\mathbb{C}P^1$
を考えることになる。

局所座標を表すパラメータを$\xi$とすると、ケーラー形式は、
$$
\Omega = i \frac{1}{(1+|\xi|^2)^2}d\xi \wedge d \bar{\xi}
$$
で与えられる。

## **SSH模型**
一つ目の例として、SSH模型のQMを計算してみる。SSH模型のハミルトニアンは
$$
H(k) = (t_1 + t_2 \cos(k))\sigma_x + t_2 \sin (k)\sigma_y
$$
で与えられるが、簡単のため$t_1 = 0,t_2 = 1$とする。(トポロジカル相)

この時、低いエネルギーの固有状態は
$$
u(k) = (1,-\exp(ik))/\sqrt{2}
$$
で与えられる。これを$\mathbb{C}P^1$の元として見ると、$-\exp(ik)$である。これを微分して、$-i\exp(ik)$を得る。

つまり、ケーラー形式の式で
$$
\xi = -\exp(ik),Z = -i\exp(ik)\frac{\partial}{\partial \xi},JZ = \exp(ik)\frac{\partial}{\partial \bar{\xi}}
$$
とすればよい。**ただし、$JZ$の係数は、内積を計算するときは複素共役を取る必要がある。**
そうすれば、
$$
\begin{align}
\Omega(Z,JZ) &= i\cdot \frac{1}{(1+|-i\exp(ik)|^2)^2}\cdot (-i\exp(ik))\cdot(\exp(-ik))\\
&=1/4
\end{align}
$$
となる。これは、QMを定義通り計算した結果と一致する。

## **Bloch Sphere**
もう一つの例として、
$$
H(\theta,\phi) = \mathbb{n}\cdot\mathbb{\sigma}
$$
の場合を考える。
エネルギーが低い固有状態は、
$$
u(\theta,\phi) = (\exp(-i\phi/2)\sin\theta/2,-\exp(i\phi/2)\cos\theta/2)
$$
である。$\mathbb{C}P^1$の元としてみると$-i\exp(i\phi)\cot(\theta/2)$である。後は同様にやればよい。
