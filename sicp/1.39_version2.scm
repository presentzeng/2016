(define (f n d k x)
  (define (g i)
    (if (= k i)
	(/ (n i x) (d i))
	 (/ (n i x)
	    (- (d i) (g (+ i 1))))))
  (g 1))

(define (odd n)
  (- (* 2 n) 1))

(define (isSquare n j)
  (if (= n 1)
      j
      (square j)))

(f isSquare odd 20 1.0)