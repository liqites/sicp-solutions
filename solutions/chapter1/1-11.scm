;; recursive process

(define (recur-f n)
  (if (< n 3)
      n
      (+ (recur-f (- n 1)) (* 2 (recur-f (- n 2))) (* 3 (recur-f (- n 3))))
      ))

;; iterative

(define (iter-f n)
  (if (< n 3)
      n
      (iterative-f n 2 1 0)
      ))

(define (iterative-f n a b c)
  (if (= n 2)
      a
      (iterative-f (- n 1) (+ a (* 2 b) (* 3 c)) a b)
      ))

