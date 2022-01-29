<br />
<br />

Date Created: 16/01/2022 15:10:26
Tags: #Proposition #Closed

Proved by: [[Axiom of Extensionality]]
Generalizations: _Not Applicable_

!!! ad-Proposition Proposition.

For any formula $\phi\l(x\r)$, if there exists a set $z$ such that $\fa x\l[x\in z\Leftrightarrow\phi\l(x\r)\r]$, then $z$ is unique.

--- admonition

_Proof_. Suppose, for sake of contradiction, that there exist another set $w$ such that $\fa x\l[x\in w\Leftrightarrow\phi\l(x\r)\r]$. But then $x\in z\Leftrightarrow\phi\l(x\r)\Leftrightarrow x\in w$, so, in particular, we have $x\in z\Leftrightarrow x\in w$. This holds for all sets $x$, so, by Extensionality, we have $z=w$.<span style="float:right;">$\blacksquare$</span>