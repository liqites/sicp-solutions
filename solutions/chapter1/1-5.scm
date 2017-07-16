(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))

;; => if applicative-order , the program will run into a infinite loop
;; => if normal-order, if will output 0
;; if applicative-order, the interpreter will evaluate all the argument before run into the body of
;; precedure, and precedure `p` is a infinite loop.
;; if normal-order, it will run into the body of precedure of test, than y will never be executed 
;; since x is 0, and it will only ran into the branch 0;
