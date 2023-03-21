# **NTWinvariant##

## **摂動論**
以下では、ハミルトニアンを$H=H_0 + V$,$V = \hat{A}F\exp(i\omega t)$と書き、$|n\rangle$を$H_0$の固有状態、基底状態を$|0\rangle$とし、縮退はないものとする。また、系は$t=-\infty$で基底状態にあったとする。

相互作用表示での波動関数を$|n\rangle$で展開し、
$$
|\Psi_I(t)\rangle = \displaystyle \sum_n c_n(t)|n\rangle
$$
と書く。この時、物理量$B$の期待値は
$$
\begin{align}
<B>(t) &= \langle \Psi(t)|B|\Psi(t)\rangle\\
&=\displaystyle \sum_{n,m} \exp(i(E_m-E_n)t)c_m^*(t)c_n(t)\langle m|B|n\rangle\\
\end{align}
$$
であるが、摂動論の一般論から、
$$
c_n(t) = \delta_{0,n} + \frac{1}{i}\int_{-\infty}^{t}dt' \langle n|V_I(t)|0\rangle
$$
と分かるので、
$$ 
c_m^*(t)c_n(t) = \delta_{0,m}\delta_{0,n}-\frac{\delta_{0,n}}{i}\int_{-\infty}^{t}dt' \langle 0|V_I(t)|m\rangle + \frac{\delta_{0,n}}{i}\int_{-\infty}^{t}dt' \langle n|V_I(t)|0\rangle 
$$
である。これを代入すると、
$$
\langle B\rangle = \langle 0|B|0\rangle + \displaystyle \sum_n \frac{1}{i}\int_{-\infty}^{t}\langle n|V_I(t')|0\rangle\exp(i(E_0-E_n)t)\langle 0 |B|n\rangle-\langle 0|V_I(t')|n\rangle \exp(i(E_n-E_))