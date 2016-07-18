;;caculate tanx

;;
(define (tan-cf x k)
  (define (g i)
    (define (odd n)
      (- (* 2 n) 1))
    (define (isSquare n j)
      (if (= n 1)
	  j
	  (square j)))
    (if (= k i)
	(/ (isSquare i x) (odd i))
	(/ (isSquare i x) 
	   (- (odd i) (g (+ i 1))))))
  (g 1))

;(tan-cf 1.0 200)
(tan 1)