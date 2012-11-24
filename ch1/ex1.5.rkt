(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;;; normal-order evaluation
; This will evaluate to 0
;1 substitute the body of the procedure.
((if (= x 0)
     0
     y) 0 (p))

;2 replace procedure arguments with formal parameters:
((if (= 0 0)
     0
     (p)))

;3 the predicate of the if statement is evaluated (in this case true,
;so consequent is chosen: 0

;;; applicative-order evaluation
; this will not terminate.
(test 0 (p))

; in applicative-order, the operands are evaluated first.  As p is
; self-referential, an infinite loop will be created.
