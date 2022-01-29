<br />
<br />

Date Created: 26/01/2022 12:09:33
Tags: #Proposition #Closed 

Proved by: [[Subset relation is transitive]], [[Axiom of Extensionality]]
Generalizations: _Not Applicable_

!!! ad-Proposition Proposition.

Let $X$ be a set. Then the pair $\l\langle X,\subseteq\r\rangle$ is a poset.

--- admonition

_Proof_. Observe that the subset relation is transitive, and it is trivial to see that $x\subseteq x$ for all $x\in X$. For antisymmetry, take $x_1,x_2\in X$ such that $x_1\subseteq x_2$ and $x_2\subseteq x_1$. By definition of subsets and the biconditional, we see that
$$\begin{equation}
    \fa y\l(y\in x_1\Leftrightarrow y\in x_2\r)
\end{equation}$$
and thus $x_1=x_2$ by Extensionality.<span style="float:right;">$\blacksquare$</span>