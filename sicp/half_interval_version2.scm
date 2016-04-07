;;use half-interval method to find roots of an equation f(x) = 0

;;it is an rough results if you want (= 0 result) you might get infinite loop
;;version 2

(define (average neg posi)
  (/ (+ neg posi) 2))

(define (close-enough? neg posi)
  (< (abs (- posi neg)) 0.01))

(define (search f neg posi)
  (display neg)
  (let ((mid (average neg posi)))
;    (display mid)
    (if (close-enough? neg posi)
	mid
	(let ((test (f mid)))
;	  (display test)
	      (cond ((< test 0) (search f mid posi))
		    ((> test 0) (search f neg mid))
		    (else
		     mid))))))



(define (f x)
  (+ 1 x))

(search f -2 3)
