;Cube root using Newton's method

(define (square x)
  (* x x))

(define (cube x)
  (* x (* x x)))

(define (cube-root-iter guess x)
  (if (good-enough? guess (improve guess x))
      (improve guess x)
      (cube-root-iter (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess guess2)
  (and (< (/ guess guess2) 1.001) (> (/ guess guess2) 0.999)))

(define (cube-root x)
  (cube-root-iter 1.0 x))


(cube-root 9)
(cube-root (+ 100 37))
(cube (cube-root 1000))
(cube-root 0.0005)