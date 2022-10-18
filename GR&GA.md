# **$G^R=G^{A\dagger}$**

## **��`�ƌv�Z**
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


����ɂ��A$G^R(\omega,k) = G^{A\dagger}(\omega,k)$�Ƃ킩��B

����ɁA����ɂ��X�y�N�g���֐�
$$
\begin{align}
A(\omega,k)= -\frac{1}{2\pi i} (G^R(\omega,k)-G^A(\omega,k))
\end{align}
$$
�̐���l�����ȉ��̂悤�ɂ��ĕ�����B
��ŋ��߂�$G^R(\omega,k),G^A(\omega,k)$�̎����g���ƁA

$$
\newcommand{\la}{\langle}

\newcommand{\ra}{\rangle}

\newcommand{\ca}{c_{k,\alpha}}

\newcommand{\cb}{c_{k,\beta}}

\newcommand{\cad}{c_{k,\alpha}^{\dagger}}

\newcommand{\cbd}{c_{k,\beta}^{\dagger}}

A(\omega,k) = \displaystyle \sum_n \la 0|\ca|n\ra \la n|\cbd|0\ra \delta(E_0 - E_n + \omega) + \la 0|\cbd|n\ra\la n| \ca | 0\ra \delta (E_n-E_0 + \omega)
\\
�Ə����邩��A���f��\{z_\alpha\} �ɑ΂��āA\\
\begin{align}
\displaystyle \sum_{\alpha,\beta} z^*_\alpha A_{\alpha,\beta}(\omega,k)z_\beta &= \displaystyle \sum_{\alpha,\beta,n} \la 0|z^*_\alpha \ca |n\ra\la n | \cbd z_\beta |0\ra \delta(E_0-E_n + \omega) +  \la 0|z_\beta \cbd|n\ra\la n| z_\alpha^*\ca | 0\ra \delta (E_n-E_0 + \omega)
\end{align}\\
�����ŁA
\begin{align}
|\phi_k\ra &= \displaystyle \sum_\alpha \cad z_\alpha |0\ra\\ 
|\psi_k\ra &= \displaystyle \sum_\alpha \ca z_\alpha^* |0\ra
\end{align}
\\
��p����ƁA
\\
\begin{align}
\displaystyle \sum_{\alpha,\beta} z^*_\alpha A_{\alpha,\beta}(\omega,k)z_\beta &= \displaystyle \sum_n |\la \phi_k|n\ra|^2 \delta(E_0 - E_n + \omega) + |\la \psi_k|n\ra |^2\delta(E_n-E_0 + \omega)\geq 0
\end{align}
$$
�܂�A�G���~�[�g�s��$A(\omega,k)$������l�ł���B����ɂ��A$A(\omega,k)$�̌ŗL�l���S��0�ȏ�ł��邱�Ƃ��킩��B


����ɁA$T=0,\omega = 0$�ł̏����O���[���֐��̓G���~�[�g�ɂȂ��Ă��邱�Ƃ�������B($G^R(\omega = 0))$�̓G���~�[�g�ɂȂ�Ȃ��B$i\delta$�����邩��B)
���������āA
$$
\begin{align}
GG^{-1} &= I\\
(GG^{-1})^{\dagger}&=I\\
(G^{-1})^{\dagger}G^{\dagger}&=I\\
(G^{-1})^{\dagger}G &= I\\
\end{align}
$$
���A
$$
G^{-1} = (G^{-1})^{\dagger}
$$
�Ȃ̂ŁA���ǗL���n�~���g�j�A��
$$
H_\mathrm{eff}(k) = H(k) + \Sigma(0,k)
$$
�̓G���~�[�g�ł���B
�������A�x���O���[���֐��ɂ���Ǝ���قȂ�B�܂�A
$$
H_\mathrm{eff}^{R}(k) = H(k) + \Sigma^{R}(0,k)
$$
�̓G���~�[�g�Ƃ͌���Ȃ��B���ہAMott�≏�̂Ȃǂł�$$\Sigma^{R}(0,k)$$�̊�^�ɂ��A��G���~�[�g�ɂȂ�B

�������A$$\mathrm{Im}\Sigma^{R}(0,k)  = 0$$
�Ȃ�΁A?����A���߂��B