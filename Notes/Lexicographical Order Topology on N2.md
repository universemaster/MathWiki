<br />
<br />

Date Created: 07/02/2022 16:26:29
Tags: #Definition #Closed 

Types: _Not Applicable_
Examples: _Not Applicable_
Constructions: _Not Applicable_
Generalizations: _Not Applicable_

Properties: _Not Applicable_
Sufficiencies: _Not Applicable_
Equivalences: _Not Applicable_
Justifications: [[Lexicographical order on N2 is bounded below]]

``` ad-Definition
title: Definition.

_Let $\l\langle\N,<\r\rangle$ be the set of real numbers equipped with its standard order and consider the lexicographical order $<_L$ on $\N^2$. The **lexicographical order topology on $\N^2$** is the order topology $\mc{T}\l(<_L\r)\coloneqq\mc{T}\l(\mc{B}\r)$ generated by the basis $\mc{B}\coloneqq\mc{B}_1\cup\mc{B}_2$ where_
$$\begin{equation}
    \mc{B}_1\coloneqq\l\{B\in\mc{P}\l(\N^2\r)\mid\ex a,b,c,d\in\N:\l\langle a,b\r\rangle<_L\l\langle c,d\r\rangle\land B=\l(\l\langle a,b\r\rangle,\l\langle c,d\r\rangle\r)\r\}
\end{equation}$$
_containing all open intervals in $\l\langle\N^2,<_L\r\rangle$, and_
$$\begin{equation}
    \mc{B_2}\coloneqq\l\{B\in\mc{P}\l(\N^2\r)\mid\ex a,b\in\N:B=\l[\l\langle0,0\r\rangle,\l\langle a,b\r\rangle\r)\r\}
\end{equation}$$
_containing all bounded open rays in $\l\langle\N^2,<_L\r\rangle$._

```