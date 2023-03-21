# **QWZ模型のグリーン関数のPHS**
$t > 0$として、
$$
\newcommand{\d}{\dagger}
\newcommand{\la}{\langle 0|}
\newcommand{\ra}{|0\rangle }
\newcommand{\C}{\hat{C}}
\newcommand{\Ci}{\hat{C}^{-1}}

\begin{align}
iG_{AB}(k,t) &= \la c_{k,A}(t)c^{\d}_{k,B}(0)\ra\\
&=\la\exp(iHt)c_{k,A}\exp(-iHt)c^{\d}_{k,B}\ra\\
&=\la \Ci\exp(iHt)\C c_{k,A}\Ci\exp(-iHt)\C c^{\d}_{k,B}\Ci\C\ra\\
&=\la \Ci\exp(iHt)c^{\d}_{k,B}\exp(-iHt)c_{k,A}\C\ra\\
&=\la c^{\d}_{k,B}(t)c_{k,A}\ra\\
&=-\la T c_{k,A}c^{\d}_{k,B}\ra\\
&=-iG_{AB}(-t)\\
\end{align}

\\
であるから、
G_{AB}(k,t) = -G_{AB}(k,-t),\\
G_{AB}(k,\omega) = -G_{AB}(k,-\omega)\\
同様にして、
G_{BA}(k,\omega) = -G_{BA}(k,-\omega),G_{AA}(k,\omega) = -G_{BB}(k,-\omega)\\
\\
が成り立つ。
ここで、遅延グリーン関数とホントのグリーン関数は\\
\begin{align}
\mathrm{Im}G^R(k,\omega) &= \mathrm{Im}G(k,\omega)\\
\mathrm{Im}G^R(k,-\omega) &= \mathrm{Im}G(k,-\omega)\\
\mathrm{Re}G^R(k,\omega) &= \mathrm{Re}G(k,\omega)
\end{align}
\\
の関係がある。(ただし、フェルミエネルギーを0とし、\omega>0とした。)
これにより、今回の模型では\\
\begin{align}
\mu - \mathrm{Re}\Sigma^{R}_{AA}(\omega)  &= -\mu + \mathrm{Re}\Sigma^{R}_{BB}(-\omega)\\
\mathrm{Im}\Sigma^{R}_{AA}(\omega) &= \mathrm{Im}\Sigma^{R}_{BB}(-\omega)
\end{align}
\\
が成り立つと分かる。実部の関係式は、\mu = U/2を用いれば、\\

\mathrm{Re}\Sigma^{R}_{AA}(\omega)+\mathrm{Re}\Sigma^{R}_{BB}(-\omega) = U\\
と分かる。ただし、この時\muは化学ポテンシャルではなく、軌道のエネルギーの調整のために導入されたパラメータと考えるべきである。
$$