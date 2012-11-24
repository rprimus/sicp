#lang planet neil/sicp

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-squares-larger-2-of-3 x y x)
  (sum-of-squares (largest-two-of x y z)))


(define (largest-two-of a b c)
  (cond ((first-two-larger? a b c) (list a b))
        ((first-two-larger? a c b) (list a c))
        (else (list b c))))

(define (first-two-larger? a b c)
  (or (> a b c) (> b a c)))
