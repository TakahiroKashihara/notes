# **$G^R=G^{A\dagger}$**

## **定義と計算**
$$
\newcommand{\la}{\langle}

\newcommand{\ra}{\rangle}

\newcommand{\ca}{c_{k,\alpha}}

\newcommand{\cb}{c_{k,\beta}}

\newcommand{\cad}{c_{k,\alpha}^{\dagger}}

\newcommand{\cbd}{c_{k,\beta}^{\dagger}}
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