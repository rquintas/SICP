(define (largest a b c)
  (if (and (> a b) (> a c)) a
      (if (and (> b a) (> b c)) b
          c)))

(define (2ndlargest a b c)
  (if (or (and (>= a b) (<= a c)) (and (<= a b) (>= a c))) a
      (if (or (and (>= b a) (<= b c)) (and (<= b a) (>= b c))) b
          c)))


(define (square x)
  (* x x))

(define (multiply2 x y z)
  (* (square (largest x y z)) (square (2ndlargest x y z))))

(multiply2 2 2 4)