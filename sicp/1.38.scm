;;(e)-2
(define (f n d k)
  (define (g i)
    (if (= k i)
	(/ (n i) (d i))
	 (/ (n i)
	    (+ (d i) (g (+ i 1))))))
  (g 1))

;;121 141 161 181
(define (succ n)
  (if (= (remainder n 3) 2)
      (* 2 (/ (+ n 1) 3))
      1))
  

(f (lambda(i) 1.0) succ 2)
;(succ 5)	
