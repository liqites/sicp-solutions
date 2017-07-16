(define (square n)
  (* n n))

(define (<= a b)
  (not (> a b)))

(define (>= a b)
  (not (< a b)))

(define (sum-of-squares a b)
  (+ (square a) (square b)))

(define (f a b c)
  (cond ((and (<= a b) (<= a c)) (sum-of-squares b c))
  ((and (<= b a) (<= b c)) (sum-of-squares a c))
  ((and (<= c a) (<= c b)) (sum-of-squares a b))
    ))
