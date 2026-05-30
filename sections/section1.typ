= Случайные события
== Случайные события, классификация событий, операции над ними

*Случайное событие* --- любое подмножество множества $Omega$. Обозначается символами $A, B, C subset Omega$. Замечание: $diameter subset Omega; space Omega subset Omega$

События классифицируются на:
- Невозможное ($diameter$) --- событию не благоприятствует ни один исход эксперимента
- Достоверное ($Omega$) --- событию благоприятствует каждый исход эксперимента
- Событие, противоположное событию $A$ --- $overline(A) = {omega in.not A}$
- Несовместные (события $A, B$) такие, что $A inter B = emptyset$ (не существует ни одного элементарного исхода $omega$, который благоприятствует $A$ и $B$ одновременно).

Пусть $A, B subset Omega$. *Суммой* событий $A$ и $B$ называется событие $C = A union B$ (то есть благоприятствующее одному из событий A или B).

*Произведением* событий $A$ и $B$ называется событие $C = A inter B$, которому благоприятствуют исходы и события $A$, и события $B$ одновременно

Замечание:
+ $A union Omega = Omega$
+ $A inter Omega = A$
+ $A union emptyset = A$
+ $A inter emptyset = emptyset$
+ $A union overline(A) = Omega$
+ $A inter overline(A) = emptyset$

События $A$ и $B$ ($A union B subset.eq Omega$) называются *несовместными*, если $A inter B = emptyset$

*Разностью* совместных событий $A$ и $B$ называется событие $C = A \\ B$, которому благоприятствуют исходы события $A$, не благоприятствующие событию $B$

== Определения: кольцо, алгебра, $sigma$-алгебра, минимальная $sigma$-алгебра над классом К, борелевская $sigma$-алгебра

*Кольцом* над множеством $Omega$ называется класс подмножеств $Re$ такой, что:
+ Если $A, B in Re$, то $A union B in Re$
+ Если $A, B in Re$, то $A \\ B in Re$

*Алгеброй* над множеством $Omega$ называется класс подмножеств $cal(A)$ такой, что
+ Если $A in cal(A)$, то $overline(A) in cal(A)$
+ Если $A, B in cal(A)$, то $A union B in cal(A)$

*$sigma$-алгеброй событий* называется множество $cal(F)$ подмножеств $A subset Omega$, удовлетворяющее условиям:

A1) $Omega in cal(F)$\
A2) Если $A in cal(F)$, то $overline(A) in cal(F)$\
A3) Если ${A_i}_(i=1)^infinity in cal(F)$, то $limits(union.big)^infinity_(i=1) A_i in cal(F)$

*Минимальной $sigma$-алгеброй* над классом $K$ называется $sigma(K)$, такая, что $K in sigma(K)$, а сама $sigma(K) subset cal(F) = sigma(Omega)$

*Борелевская $sigma$-алгебра:*\
Борелевская $sigma$-алгебра $cal(B)$ --- это множество всех возможных подмножеств на числовой прямой, которые представимы в виде конечного или счетного объединения интервалов/промежутков $cal(B)(RR) = {[a, b], space (a, b), space [a, b), space (a, b], space(- infinity, a), space (- infinity, a], space (b, + infinity), space [b, +infinity)}$

== Теорема Каратеодори (о продолжении вероятностной меры)

Пусть $Q(A)$ --- счётно-аддитивная вероятностная мера на алгебре $cal(A)$. Тогда существует единственная счётно-аддитивная вероятностная мера $P(A)$, заданная на минимальной $sigma$-алгебре над классом $cal(A)$, являющаяся продолжением меры $Q(A)$, т.е. $P(A) = Q(A) space forall A in cal(A)$

== Определения: мера, конечно-аддитивная, счётно-аддитивная

*Конечно-аддитивной вероятностной мерой* над множеством $Omega$ называется функция множества $Q: cal(A) -> [0, 1]$, где $cal(A)$ --- алгебра множеств из $Omega$, такая что: \
1) $Q(Omega) = 1$ \
2) $Q(A) >= 0 space forall A in cal(A)$ \
3)  Если $A, B in cal(A) and A inter B = emptyset$, то $Q(A union B) = Q(A) + Q(B)$\
В случае, если речь идет только про несовместные события:\
$Q(limits(union.sq.big)_(i = 1)^n A_i) = limits(sum)_(i = 1)^n Q(A_i)$

*Счётно-аддитивной вероятностной мерой* над множеством $Omega$ называется функция множества $P: cal(F) -> [0, 1]$, такая что\
P1) $P(Omega) = 1$\
P2) $P(A) >= 0 space forall A in cal(F)$ \
P3) Если ${A_i}_(i = 1)^infinity in cal(F), A_i inter A_j = emptyset space forall i != j$, то $P(limits(union.big)_(i = 1)^infinity A_i) = limits(sum)_(i = 1)^infinity P(A_i)$\

Аксиомы A1-A3 (см. определение $sigma$-алгебры) и P1-P3 называются *аксиомами Колмогорова*.

== Построение меры Лебега. Верхняя, нижняя, мера Лебега. Измеримое по Лебегу множество

*Построение меры Лебега:*\
Пусть $E = [0; 1] times [0; 1]$. Пусть $A subset E$ --- некоторое множество (не элементарное). Рассмотрим систему прямоугольников ${P_k}$ такую, что $A subset limits(union.sq.big)_k P_k$

*Верхняя мера Лебега* множества $A$ --- это число $mu \*(A) = limits(i n f)_(A subset limits(union.big)_k P_k) limits(sum)_k m(P_k)$.

*Нижняя мера Лебега* множества $A$ из $E$ --- это число $mu_\* (A) = 1 - mu \* (E backslash A)$

*Мерой Лебега* множества $A subset E = [0, 1] times [0, 1]$ называется $mu (A)$ , если $mu_\* (A) = mu \* (A) = mu (A) $

Множество A называется *измеримым по Лебегу*, если $mu_*(A) = mu^*(A)$

== Вероятностная мера, ее свойства, непрерывность вероятностной меры

*Вероятностная мера* --- функция $P: cal(F) -> [0, 1]$, удовлетворяющая условиям:
+ $P(Omega) = 1$\
+ $P(A) >= 0 space forall A in cal(F)$ \
+ Если ${A_i}_(i = 1)^infinity in cal(F), A_i inter A_j = emptyset space forall i != j$, то $P(limits(union.big)_(i = 1)^infinity A_i) = limits(sum)_(i = 1)^infinity P(A_i)$\

*Свойства вероятностной меры:*
+ $P(overline(A)) = 1 - P(A)$

  *Доказательство*: представим $Omega$ в виде $Omega = A union.sq overline(A)$. Тогда $ P(Omega) = 1 \
  P(Omega) = P(A union.sq overline(A)) = P(A) + P(overline(A)) => \ => P(A) + P(overline(A)) = 1 => P(overline(A)) = 1 - P(A) $
+ Пусть $A subset.eq B$. Тогда $ P(A) <= P(B) " и " P(B \\ A) = P(B) - P(A) $

  *Доказательство*: представим $ B = A union.sq (B \\ A) $
  Тогда
  $ P(B) = P(A union.sq (B \\ A)) = underbrace(P(A), >=0) + underbrace(P(B \\ A), >=0) >= P(A) $
+ (Теорема сложения вероятностей)\
  Пусть $A, B in cal(F)$, тогда вероятность суммы этих событий равна сумме вероятностей, минус вероятность произведения:
  $ P(A union B) = P(A) + P(B) - P(A inter B) $

  *Доказательство*: Запишем $C = A union B$ в виде суммы несовместных событий. Тогда
  $ P(A union B) = P(A union.sq (B \\ (A inter B)) = P(A) + P( B \\ A inter B) =\
    =  P(A) + P(B) - P(A inter B) $
+ (Сравнение) \
  $ P (A union B) lt.eq P(A) + P(B) $


$ P (limits(union.big)_(i = 1)^n A _i) lt.eq limits(sum)^n_(i = 1) P(A_i) $

*Свойство непрерывности вероятностной меры:*

  Пусть ${A_i}^infinity_(i=1)$ такое что $A_i subset A_(i + 1) forall i = 1,2 ...$. Тогда $P(limits(union.big)_(i = 1)^infinity A_i) = limits(lim)_(n->infinity) P (A_n)$.

  Если ${A_i}^infinity_(i = 1)$  такое, что $A_(i + 1) subset A_i$, то $P(limits(inter.big)^infinity_(i = 1) A_i) = limits(lim)_(n -> infinity) P (A_n)$

Доказательство: Представим событие $A = limits(union.big)_(i = 1)^infinity A_i$ в виде суммы несовместных событий:

$B_1 = A, space B_2 = A_2 \\ A_1, space ...$\
$A = limits(union.sq.big)_(i = 1)^infinity B_i$

Тогда применим аксиому $P 3$ ($P(limits(union.sq.big)_(i = 1)^infinity A_i) = limits(sum)_(i = 1)^infinity P(A_i)$):

$ P(limits(union.big)_(i = 1)^infinity A_i) = P(limits(union.sq.big)_(i = 1)^infinity B_i) = limits(sum)_(i = 1)^infinity P(B_i) = limits(lim)_(n -> +infinity) limits(sum)_(i = 1)^n P(B_i) = limits(lim)_(n -> +infinity) P(limits(union.sq.big)_(i = 1)^n B_i) = limits(lim)_(n -> infinity) P(A_n) $

== Классическое вероятностное пространство. Классическое определение вероятности

*Классическое вероятностное пространство* --- это $(Omega, cal(F), P)$, где
- $Omega = {omega_i}_(i = 1)^n$ --- конечное множество равновозможных исходов
- $cal(F)$ --- $sigma$-алгебра событий (все возможные события в эксперименте).
- Построим $P$. Представим $Omega = limits(union.sq.big)^n_(i = 1) {omega_i}$, тогда по аксиоме $P 1$ $P (Omega) = 1$. По аксиоме $P 3$ 
  $ P(limits(union.sq.big)^n_(i = 1) {omega_i}) = limits(sum)^n_(i = 1) P(w_i) = limits(sum)^n_(i = 1) p = n p => $
  $
    => n p = 1 => p = frac(1, n), "то есть" \
    P(omega_i) = frac(1, n) forall i = overline(1\, n)
  $

  Пусть $A = {omega_(i 1), dots, omega_(i k)} space$ $space 0 lt.eq k lt.eq n$. Тогда вероятностная мера в классическом вероятностном пространстве имеет вид:

  $
  P(A) = P(limits(union.sq.big)_(j = 1)^k omega_(i j)) = limits(sum)_(j = 1)^k P(omega_(i j)) = limits(sum)_(j = 1)^k 1/n = k/n
  $
  $P(A) = k/n$ --- называется *классической вероятностью*

  где $k$ --- количество благоприятных элементарных исходов $A$, $n$ --- количество элементарных исходов эксперимента.


== Дискретное вероятностное пространство

Дискретное вероятностное пространство --- это $(Omega, cal(F), P)$, где

- $Omega = {omega_1, omega_2, ..., omega_n, ...}$ --- #underline("неравновозможные") исходы
- $cal(F)$ --- $sigma$-алгебра событий (все возможные события в эксперименте).
- $P(A) = limits(sum)_(omega in A) P(omega)$, где $P(omega_i) = p_i, space p_i > 0, space limits(sum)_(i = 1)^infinity p_i = 1$

_Замечание: В этом пространстве множество исходов либо счетное, но исходы не равновозможные, либо несчетное, но исходы равновозможные._

== Условная вероятность. Теорема умножения вероятностей

Пусть $A, B in cal(F)$; $P(B) > 0$. *Условной вероятностью* события $A$, при условии, что наступило событие $B$, называется число 

$ P(A|B) = P(A inter B )/P(B) $

*Свойства:*

+ $P(B|B) = 1 $
+ $P(A|B) gt.eq 0,$ $forall A in cal(F)$
+ Если ${A_i}^infinity_(i = 1)$, $A_i inter A_j = emptyset space forall i != j$, то

$ P(limits(union.sq.big)_(i = 1)^infinity A_i | B) = limits(sum)_(i = 1)^infinity P(A_i|B) $

*Теорема умножения вероятностей*

Пусть $A, B in cal(F); space P(B) gt 0$. Тогда

$ P(A inter B) = P(B) dot P(A|B) $

Пусть $A_1,A_2,A_3 in cal(F); space P(A_1) > 0, space P(A_1 inter A_2) > 0$. Тогда

$ P(A_1 inter A_2 inter A_3) = P(A_1) dot P(A_2|A_1) dot P(A_3 | A_1 inter A_2) $

== Формулы полной вероятности и Байеса

*Формула полной вероятности*

Пусть ${A_i}^infinity_(i = 1)$ --- полная группа попарно несовместимых событий

$ limits(union.big.sq)_(i = 1)^infinity A_i = Omega; space P(A_i) > 0 space forall i $

Пусть $A$ --- случайное событие для которого $P(A| A_i) gt.eq 0$. Тогда

$ P(A) = limits(sum)_(i = 1)^infinity P(A_i) dot P(A | A_i) $

Доказательство:

Мы нарисовали события:

#image("../imgs/009.png", height: 14em)

Мы измеряем событие $A$...

#image("../imgs/010.png", height: 16em)

Представим $A$ как

$
  P(A) = P(A inter Omega) = P(A inter (limits(union.sq.big)_(i = 1)^infinity A_i))=\
  = P(limits(union.sq.big)_(i = 1)^infinity A inter A_i) = limits(sum)_(i = 1)^infinity P(A inter A_i) =\
  = limits(sum)_(i = 1)^infinity P(A_i) dot P(A | A_i)
$

*Формулы Байеса*

Пусть ${A_i}_(i = 1)^infinity$ такое, что $limits(union.big.sq)_(i = 1)^infinity A_i = Omega; P(A_i) > 0$ и для $A in cal(F)$ известно, что $P(A) > 0$, $ P(A|A_i) >=0$ и 

$ P(A) = limits(sum)_(i = 1)^infinity P(A_i) dot P(A | A_i). $

Тогда $forall i$

$ P(A_i | A) = (P(A_i) dot P(A | A_i))/(P(A)) $

*Доказательство*:
$
	cases(
		P(A inter A_i) = P(A_i) dot P(A | A_i),
		P(A inter A_i) = P(A) dot P(A_i | A)
	)
$

== Независимость событий.  Независимость в совокупности

Случайные события $A$ и $B$ называются *независимыми*, если 

$ P(A inter B) = P(A) dot P(B) $

Случайные события $A_1, A_2, ..., A_n$ называются *независимыми в совокупности*, если $forall 2 <= k <= n$

$ P(limits(inter.big)_(j = 1)^k A_(i j)) = limits(product)_(j = 1)^k P(A_(i j)) $

== Теорема о независимости противоположных событий. Критерий независимости случайных событий

*Теорема о независимости противоположных событий*

Пусть $A, B$ --- независимые случайные события. Тогда независимы в парах события $A$ и $overline(B)$, $overline(A)$ и $B$, $overline(A)$ и $overline(B)$.

*Доказательство*:

Докажем, что $A$ и $overline(B)$ независимы.

#image("../imgs/007.png")

$
  P(A inter overline(B)) = P(A \\ (A inter B)) = P(A) - P(A inter B) =\
  = P(A) - P(A) dot P(B) = P(A) (1 - P(B)) = P(A) dot P(overline(B))
$

_"Остальное самостоятельно"? Короче напишем, что остальное очевидно. Очевидно же? Нет? А вот это уже явно не моя проблема_

#image("../imgs/rofls1.png")

*Теорема Критерий независимости случайных событий.*

Пусть $A, B in cal(F)$, $P(B) > 0$. События $A$ и $B$ независимы $ <=> P(A | B) = P(A)$

*Доказательство*:

$arrow.double.bar.long$: Пусть $A$ и $B$ --- независимы. По определению верно $P(A inter B) = P(A) dot P(B)$.

Тогда

$ P(A|B) = P(A inter B )/P(B) = (P(A) dot P(B))/P(B) = P(A). $

$arrow.double.bar.long.l$: Пусть $P(A | B) = P(A)$. По теореме умножения вероятностей

$ P(A inter B) = P(B) dot P(A | B) = P(B) dot P(A). $

Тогда по определению $A$ и $B$ независимы.
