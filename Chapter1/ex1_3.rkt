;Define a procedure that takes three numbers as 
;arguments and returns the sum of the squares of 
;the two larger numbers.

(define (square x)
  (* x x))

(define (sum2 x y z)
  (if (> x y)
      (if (> y z)
          (+ (square x) (square y))
          (+ (square x) (square z)))
      (if (> x z)
          (+ (square x) (square y))
          (+ (square y) (square z)))))

(sum2 2 2 4)