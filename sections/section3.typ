= Характеристические функции
== Характеристическая функция, определение. Вид для дискретной и абсолютно непрерывной случайной величины.

Пусть $xi_1$ и $xi_2$ --- случайные величины заданные на одном вероятностном пространстве $(Omega; cal(F); P)$

Тогда *комплексной случайной величиной* назовем:
$
eta = xi_1 + i xi_2\
i^2 = - 1
$

*Математическим ожиданием коплексной случайной величины* называется величина $M eta = M xi_1 + i M xi_2$, если определены $M xi_1$ и $M xi_2$

*Характеристическая функция случайной величины* $xi$ --- функция $phi(t)$

$ phi(t) = M e^(i t xi) = limits(integral)_(-infinity)^infinity e^(i t x) d F_xi (x), $

где $t in RR$, $F_xi$ --- функция распределения случайной величины $xi$

*Вид для абсолютно непрерывной случайной величины*:

Пусть случайная величина $xi$ непрерывна. Тогда $d F_xi (x) = f(x) d x$, и
$
phi(t) = limits(integral)_(- infinity)^infinity e^(i t x) f(x) d x,
$

*Вид для дискретной случайной величины*:

Пусть случайная величина $xi$ дискретна. Тогда $d F_xi (x)$ --- ряд распределения, и
$
phi(t) = limits(sum)_(k = 0)^infinity e^(i t x_k) dot p_k,
$ 
где $p_k = P{xi = x_k} = x_k$

== Теорема о существовании характеристической функции

Любая случайная величина имеет характеристическую функцию.

*Доказательство:*

Т.к.
$
M abs(e^(i t xi)) = limits(integral)_(-infinity)^infinity abs(e^(i t xi)) d F_xi (x) = 1
$

То $M e^(i t xi) < + infinity$, и следовательно х.ф. существует.

== Свойства характеристической функции (формулировки)

1. $phi(0) = 1, space abs(phi(t)) <= 1 space forall t in RR$
2. $phi(- t) = overline(phi(t))$
3. Х.ф --- равномерно непрерывна на $forall t in RR$
4. Если существует $M abs(xi^n) < infinity$, то $phi(t)$ имеет $n$ непрерывных первых производных и
	$ phi^((n))(t) = i^n M xi^n . $
5. Если $xi_1, dots, xi_n$ --- независимые сл.в., то х.ф. их суммы
	$ xi = xi_1 + dots + xi_n $
	имеет вид:
	$ phi xi (t) = limits(inter.sq.big)_(i = 1)^n phi (xi_i) (t) $
6. Если $eta = a xi + b$ и $phi xi (t)$ х.ф. сл. в. $xi$, то
	$ phi xi (t) = e^(i t b) phi xi (t a) $

== Доказательство свойства "Равномерная непрерывность характеристической функции" 

Х.ф. --- равномерно непрерывна $forall t in RR$;

*Доказательство:*

По определению требуется показать, что

$
forall epsilon > 0 space exists delta (epsilon) > 0 space #[такое что] forall abs(t_1 - t_2) < delta
$

$
abs(phi(t_1) - phi(t_2)) < epsilon
$

Рассмотрим

$
abs(phi(t_1) - phi(t_2)) = abs(limits(integral)_(-infinity)^infinity (e^(i t_1 x) - e^(i t_2 x)) d F_xi (x)) <=\
<= limits(integral)_(-infinity)^infinity abs(e^(i t_1 x) - e^(i t_2 x)) d F_xi (x) = limits(integral)_(-infinity)^infinity abs(e^(i t_2 x)) dot abs(e^(i(t_1 - t_2) x) - 1) d F_xi (x) <=\
<= limits(integral)_(abs(x) <= A) abs(e^(i (t_1 - t_2) x) - 1) d F_xi (x) + 2 limits(integral)_(abs(x) > A) d F_xi (x) = I_1 + I_2
$

Для заданного $epsilon > 0$ выберем достаточно большое $A$, такое чтобы

$
limits(integral)_(abs(x) > A) d F_xi (x) = P{abs(x) <= A} < epsilon/4
$

Фиксируем найденное $A$, воспользуемся равномерной непрерывностью функции $e^(i (t_1 - t_2) x)$ на ограниченном множестве $abs(x) <= A$, и выберем такое $delta = delta(epsilon)$, что
$
abs(e^(i (t_1 - t_2) x) - 1) < epsilon/2 space #[ при] abs(t_1 - t_2) < delta
$

Тогда имеем

$
abs(phi(t_1) - phi(t_2)) <= epsilon/2 P{abs(x) <= A} + epsilon/2 <= epsilon
$

Таким образом, $phi(t)$ равномерно непрерывна.

== Доказательство свойства "Существование производных и Вычисление моментов с использованием характеристической функции"
Если существует $M abs(xi^n) < infinity$, то $phi(t)$ имеет $n$ непрерывных первых производных и
$ phi^((n))(t) = i^n M xi^n . $

*Доказательство:*

Доказательство проводится по индукции. Пусть $n = 1$.

По условию теоремы $M abs(xi) = limits(integral)_(-infinity)^infinity abs(x) d F (x) < infinity$.

Рассмотрим формальную производную х.ф. $phi'(t) = limits(integral) i x e^(i t x) d F (x)$.

Теорема о дифференицровании под знаком интеграла требует, чтобы интеграл сходися равномерно. Это требование выполнено, в силу того, что $abs(e^(i t x))$ ограничена, а $integral i x e^(i t x) d F(x)$ конечен по условию. Таким образом, дифференцирование возможно, и следовательно:

$
phi'(t) = i integral x e^(i t x) d F(x),
$

$
phi'(0) = i integral x d F(x) = i M xi.
$

== Теорема единственности.
Пусть $F(x)$ и $G(x)$ --- функции распределения с одной и той же х.ф. $phi(t)$, т.е.
$
phi(t) = limits(integral)_(-infinity)^infinity abs(x) d F(x), space space phi(t) = limits(integral)_(-infinity)^infinity abs(x) d G(x)
$

Тогда $F(x) eq.triple G(x)$ в смысле $P{omega: F(x) eq.not G(x)} = 0$

== Теорема Бохнера-Хинчина.
Пусть $phi xi (t), space t in RR$, такая что $phi xi (0) = 1$.

Для того, чтобы функция $phi xi (t)$ являлась х.ф. необходимо и достаточно, чтобы $forall t_1, dots, t_n in RR$, $lambda_1, dots, lambda_n in CC$

$
limits(sum)_(i, j = 1)^n phi xi (t_i - t_j) lambda_i overline(lambda_j) >= 0.
$

== Теорема непрерывности.(Теорема Леви)
Пусть ${F_n (x)}_(n = 1)^infinity$ --- последовательность функций распределений, а ${phi_n (x)}_(n = 1)^infinity$ --- последовательность соответствующих х.ф. $t, x in RR$.

1. Если $F_n (x) ->^omega F(x)$, то $phi_n (x) -> phi(x), space x in RR$
2. Если $forall x in RR$ $space exists limits(lim)_(n -> infinity) phi_n (x)$, и функция $phi(x) = limits(lim)_(n -> infinity) phi_n (x)$ непрерывна в $x = 0$, то $phi(x)$ является х.ф. распределения $F(x)$, такого что $F_n (x) ->^omega F(x)$
