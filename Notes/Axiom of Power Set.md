---
mathLink: $\axipow$
---

<br />
<br />

Date Created: 17/01/2022 19:08:57
Tags: #Axiom #Later/Set_Theory

Equivalences: _Not Applicable_
Constructions: [[Power Set]]

``` ad-Axiom
title: Axiom.

_Consider the first-order language $\mc{L}$ consisting of one binary relation symbol $\in$. The **Axiom of Power Set** is the $\mc{L}$-formula_
$$\begin{equation}
    \axipow\,\colon\!\Leftrightarrow\fa x\ex z\fa v\l[\fa u\l(u\in v\Rightarrow u\in x\r)\Rightarrow v\in z\r].
\end{equation}$$

```

**Remark.** Letting $\mc{L}'\coloneqq\mc{L}\cup\l\{\subseteq\r\}$ where $\subseteq$ is a binary relation interpreted as the subset relation, we can rewrite $\axipow$ as the $\mc{L}'$-formula
$$\begin{equation}
    \fa x\ex z\fa v\l(v\subseteq x\Rightarrow v\in z\r).\exqedin
\end{equation}$$

---

**Remark.** This axiom does not directly define the $\textrm{`}$power set$\textrm{'}$ $\pow x$ of $x$. Rather, it asserts the existence of some superset of the power set, from which the power set is then constructed from $\axispec$.<span style="float:right;">$\blacklozenge$</span>
