<br />
<br />

Date Created: 04/04/2022 19:55:14
Tags: #Definition #Closed

Types: [[Hamel Basis]]
Examples: _Not Applicable_
Constructions: _Not Applicable_
Generalizations: _Not Applicable_

Properties: [[Enlargement of linearly independent set by adjoining non-spanned vector]], [[Linearly independent subset cannot contain the zero vector]]
Sufficiencies: _Not Applicable_
Equivalences: [Linearly dependent $\Leftrightarrow$ exists span redundant element](Linearly%20dependent%20iff%20exists%20span%20redundant%20element.md)
Justifications: _Not Applicable_

``` ad-Definition
title: Definition.

_Let $K$ be a field and consider a vector space $V$ over $K$. A subset $U\subseteq V$ is said to be **linearly independent** if every sequence $\l\langle u_i\r\rangle$ in $U$ is linearly independent. Formally, if_
$$\begin{equation}
    \fa n\in\N^\ast,\fa\l\langle u_1,\dots,u_n\r\rangle\in U^n:\l\langle u_i\r\rangle\textrm{ \it{is linearly independent}}.
\end{equation}$$

```

**Remark.** Note that the statement (vacuously) holds for $n=0$ since $\em$ is linearly independent (as a sequence), so to prove that $U$ is linearly independent, it suffices to check it for $n\geq1$.<span style="float:right;">$\blacklozenge$</span>

---

**Remark.** It is clear that if $U=\l\{u_1,\dots,u_n\r\}$ is finite, then $U$ is linearly independent iff the sequence $\l\langle u_1,\dots,u_n\r\rangle$ is.<span style="float:right;">$\blacklozenge$</span>