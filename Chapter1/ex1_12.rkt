;Pascal Triangle

(define (pascal n k)
  (if (or (= n 0) (= k 0) (= n k))
      1
      (+ (pascal (- n 1) (- k 1)) (pascal (- n 1) k))))

(pascal 0 0) ;n > k
(pascal 1 0)
(pascal 1 1)
(pascal 2 0)
(pascal 2 1)
(pascal 2 2)
(pascal 3 0)
(pascal 3 1)
(pascal 3 2)
(pascal 3 3)