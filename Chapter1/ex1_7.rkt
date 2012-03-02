(define (square x)
  (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      (improve guess x)
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess guess2)
  (and (< (/ guess guess2) 1.001) (> (/ guess guess2) 0.999)))


(define (sqrt x)
  (sqrt-iter 1.0 x))


(sqrt 9)

(sqrt (+ 100 37))

(sqrt (+ (sqrt 2) (sqrt 3)))

(square (sqrt 1000))


(sqrt 0.0005)