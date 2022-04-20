<br />
<br />

Date Created: 18/04/2022 21:57:22
Tags: #Proposition #In_Progress

Proved by: [[Standard basis of tuple space is an ordered basis]]
Justifications: _Not Applicable_

Generalizations: _Not Applicable_
Counterexamples: _Not Applicable_

``` ad-Proposition
title: Proposition.

_Let $K$ be a field and consider a matrix $A\in\mat{m\times n}{K}$ for some fixed $m,n\in\N$. Then $\col\rank\l(A\r)$ is the number of pivot columns of $A$._

```

_Proof_. Let $R\coloneqq\rref\l(A\r)$ be with $r$ pivot columns and consider $B\coloneqq\l\{\v{b}_{k_1},\dots,\v{b}_{k_r}\r\}$ where each $\v{b}_{k_i}\in K^m$ is a pivot column of $R$. It suffices to show that $B$ is a basis for $\col\l(R\r)$, for then
$$\begin{equation}
    \col\rank\l(A\r)=\dim\col\l(A\r)=\dim\col\l(R\r)=r
\end{equation}$$
is the number of pivot columns of $R$ and thus of $A$ too. To do so, we verify that $B$ is linearly independent and that $\dim\span\l(B\r)=r$. It follows then that $B$ spans $\span\l(B\r)$
* (Linear independence): By $\axiref[2]$ and $\axirref$, each $\v{b}_{k_i}$ has a $1$ in the $i^\textrm{th}$ row and zeros everywhere else, so $\v{b}_{k_i}=\v{e}_i$ is the $i^\textrm{th}$ standard basis vector for $K^m$. Thus $B\subseteq\l\{\v{e}_1,\dots,\v{e}_m\r\}$ is linearly independent because $\l\{\v{e}_1,\dots,\v{e}_m\r\}$ is.

* ($\span\l(B\r)=\col\l(R\r)$): Obviously $\span\l(B\r)\subseteq\span\l\{\v{b}_1,\dots\v{b}_m\r\}=\col\l(R\r)$, so it suffices to show the opposite inclusion.