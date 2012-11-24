#lang planet neil/sicp

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

when the procedure is called with forman parameters - as in (a-plus-abs-b 1 -5),
the body of the procedure is first retrieved:
(((if (> b 0) + -) a b)), then the formal parameters substituted:
(((if (> -5 0) + -) 1 -5)).

The evaluation of the combination reduces to the evaluation of the if statement.
Here, the  predicate of the if statement is evaluated (in this case false0), so the alternative is chosen (-).

This now is reduced to:
(- 1 -5) whis is evaluated to value 6.
