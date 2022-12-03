# **$G^R=G^{A\dagger}$**

## **定義と計算**
$$
\newcommand{\la}{\langle}

\newcommand{\ra}{\rangle}

\newcommand{\ca}{c_{k,\alpha}}

\newcommand{\cb}{c_{k,\beta}}

\newcommand{\cad}{c_{k,\alpha}^{\dagger}}

\newcommand{\cbd}{c_{k,\beta}^{\dagger}}

\newcommand{\cma}{c_{-k,\alpha}}

\newcommand{\cmb}{c_{-k,\beta}}

\newcommand{\camd}{c_{-k,\alpha}^{\dagger}}

\newcommand{\cbmd}{c_{-k,\beta}^{\dagger}}
\begin{align}
G^R &= -i\theta(t)\langle c_{k,\alpha}(t)c_{k,\beta}^{\dagger} + c_{k,\beta}^{\dagger}c_{k,\alpha}(t)\rangle\\
G^A &= i\theta(-t)\langle c_{k,\alpha}(t)c_{k,\beta}^{\dagger} + c_{k,\beta}^{\dagger}c_{k,\alpha}(t)\rangle
\end{align}

\\

\begin{align}
\langle c_{k,\alpha}(t)c_{k,\beta}^{\dagger}\rangle &= \la 0 |\ca (t) \cbd |0 \ra = \la 0 | e^{iHt}\ca e^{-iHt}\displaystyle \sum_n |n\ra \la n| \cbd |0\ra\\ 

&= \displaystyle \sum_n e^{i(E_0 - E_n)t}\la 0|\ca |n\ra \la n| \cbd | 0\ra\\

\end{align}
\\

\begin{align}
G^R_{\alpha,\beta}(\omega,k) &= \displaystyle \sum_n \frac{\la 0|\ca |n\ra \la n| \cbd | 0\ra}{E_0-E_n + \omega + i\delta } + \frac{\la 0|\cbd |n\ra \la n| \ca |0\ra}{E_n - E_0 + \omega + i\delta}\\
G^A_{\alpha,\beta}(\omega,k) &= \displaystyle \sum_n \frac{\la 0|\ca |n\ra \la n | \cbd | 0\ra}{E_0-E_n + \omega -i\delta} + \frac{\la 0| \cbd |n \ra \la n | \ca | n\ra}{E_n - E_0 + \omega - i\delta}
\end{align}
$$


これにより、$G^R(\omega,k) = G^{A\dagger}(\omega,k)$とわかる。

さらに、これによりスペクトル関数
$$
\begin{align}
A(\omega,k)= -\frac{1}{2\pi i} (G^R(\omega,k)-G^A(\omega,k))
\end{align}
$$
の正定値性も以下のようにして分かる。
上で求めた$G^R(\omega,k),G^A(\omega,k)$の式を使うと、

$$
A(\omega,k) = \displaystyle \sum_n \la 0|\ca|n\ra \la n|\cbd|0\ra \delta(E_0 - E_n + \omega) + \la 0|\cbd|n\ra\la n| \ca | 0\ra \delta (E_n-E_0 + \omega)

\\
と書けるから、複素数\{z_\alpha\} に対して、\\
\begin{align}
\displaystyle \sum_{\alpha,\beta} z^*_\alpha A_{\alpha,\beta}(\omega,k)z_\beta &= \displaystyle \sum_{\alpha,\beta,n} \la 0|z^*_\alpha \ca |n\ra\la n | \cbd z_\beta |0\ra \delta(E_0-E_n + \omega) +  \la 0|z_\beta \cbd|n\ra\la n| z_\alpha^*\ca | 0\ra \delta (E_n-E_0 + \omega)
\end{align}\\
ここで、
\begin{align}
|\phi_k\ra &= \displaystyle \sum_\alpha \cad z_\alpha |0\ra\\ 
|\psi_k\ra &= \displaystyle \sum_\alpha \ca z_\alpha^* |0\ra
\end{align}
\\
を用いると、
\\
\begin{align}
\displaystyle \sum_{\alpha,\beta} z^*_\alpha A_{\alpha,\beta}(\omega,k)z_\beta &= \displaystyle \sum_n |\la \phi_k|n\ra|^2 \delta(E_0 - E_n + \omega) + |\la \psi_k|n\ra |^2\delta(E_n-E_0 + \omega)\geq 0
\end{align}
$$
つまり、エルミート行列$A(\omega,k)$半正定値である。これにより、$A(\omega,k)$の固有値が全て0以上であることがわかる。


さらに、$T=0,\omega = 0$での松原グリーン関数はエルミートになっていることが分かる。($G^R(\omega = 0))$はエルミートにならない。$i\delta$があるから。)
したがって、
$$
\begin{align}
GG^{-1} &= I\\
(GG^{-1})^{\dagger}&=I\\
(G^{-1})^{\dagger}G^{\dagger}&=I\\
(G^{-1})^{\dagger}G &= I\\
\end{align}
$$
より、
$$
G^{-1} = (G^{-1})^{\dagger}
$$
なので、結局有効ハミルトニアン
$$
H_\mathrm{eff}(k) = H(k) + \Sigma(0,k)
$$
はエルミートである。
しかし、遅延グリーン関数にすると事情が異なる。つまり、
$$
H_\mathrm{eff}^{R}(k) = H(k) + \Sigma^{R}(0,k)
$$
はエルミートとは限らない。実際、Mott絶縁体などでは$$\Sigma^{R}(0,k)$$の寄与により、非エルミートになる。

しかし、$$\mathrm{Im}\Sigma^{R}(0,k)  = 0$$
ならば、?いや、だめか。

レーマン表示を用いると、QWZ模型のPHSにより
$$

\begin{align}
G^R_{\alpha,\beta}(\omega,k) &= \displaystyle \sum_n \frac{\la 0|C^{-1}C\ca C^{-1}C |n\ra \la n|C^{-1}C \cbd C^{-1}C| 0\ra}{E_0-E_n + \omega + i\delta } + \frac{\la 0|C^{-1}C\cbd C^{-1}C|n\ra \la n|C^{-1}C \ca C^{-1}C|0\ra}{E_n - E_0 + \omega + i\delta}\\
&=\displaystyle \sum_n \frac{\la 0|\cbmd |n\ra \la n| \cma | 0\ra}{E_0-E_n + \omega + i\delta } + \frac{\la 0|\cma |n\ra \la n| \cbmd |0\ra}{E_n - E_0 + \omega + i\delta}\\
&=-G^{R*}(-\omega,-k)_{\beta\alpha}
\end{align}
$$
と分かる。同様にして、
$$
\begin{align}
G^R_{\alpha,\alpha}(\omega,k) &=-G^{R*}(-\omega,-k)_{\beta\beta}\\
G^R_{\beta,\beta}(\omega,k) &=-G^{R*}(-\omega,-k)_{\alpha\alpha}\\
G^R_{\beta,\alpha}(\omega,k) &=-G^{R*}(-\omega,-k)_{\alpha\beta}

\end{align}
$$
を得る。従って、

$$
\begin{align}
\Big( \omega-H(k)+U/2-\Sigma^R(\omega,k)\Big)_{\alpha\alpha}=-\Big(-\omega-H^{*}(-k)+U/2-\Sigma^{R*}(-\omega,-k)\Big)_{\beta\beta}
\end{align}
$$
であるから、QWZ模型の$H(k)$を当てはめると、

$$
\begin{align}
U=\Sigma^R(\omega,k)_{\alpha\alpha}+\Sigma^{R*}(-\omega,-k)_{\beta\beta}
\end{align}
$$
を得る。自己エネルギーの波数依存性を無視し、実部と虚部に分けて記述すると、
$$
\begin{align}
U&=\mathrm{Re} \Sigma^R(\omega)_{\alpha\alpha}+\mathrm{Re} \Sigma^R(-\omega)_{\beta\beta}\\
0&=\mathrm{Im}\Sigma^{R}(\omega)_{\alpha\alpha}-\mathrm{Im}\Sigma^{R}(-\omega)_{\beta\beta}
\end{align}
$$

また、スペクトル関数$A(\omega,k)
=-\mathrm{ImTr}G^R(\omega,k)$については、
$$
A(\omega,k)=A(-\omega,-k)
$$
が成り立つと分かる。