;; new-if
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)
        )
  )

;; sqrt-iter with new-if
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)
    )
  )

;; at the first galance, we think that `new-if` should work like if original `if`
;; as we've already know, the scheme interperter is use applicative order.
;; but for the primitive `if`, it is actually the normal order.
;; and the `new-if` is applicative order.
;; so they work differently when the parameter is precedure than number.
;; for the if, it will check the predicate first, then do the then-clause or else-clause
;; but for the new-if, all the predicate, then-clause, and else-clause will be
;; evaluated.
