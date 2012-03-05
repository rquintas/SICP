;Recursive implementation
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))


(f 4)
(f 5)

;Iterative implementation
(define (f-iter f1 f2 f3 count)
  (if (= count 0)
      f1
      (f-iter (+ f1 (* 2 f2) (* 3 f3)) f1 f2 (- count 1))))

(define (fi n)
  (if (< n 3)
      n
      (f-iter 2 1 0 (- n 2))))

(fi 4)
(fi 5)