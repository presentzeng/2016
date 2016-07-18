;;caculate x = 1 + 1/x

;;test if small enough
(define (close-enough? val)
  (if (< val 0.001)
      true
      false))

;;caculate average
(define (average arg1 arg2)
  (/ (+ arg1 arg2) 2))

;; find x = (neg, pos) such that f(x) = 0
(define (search f neg pos)
  (let ((mid (average neg pos)))
    (cond ((close-enough?(- pos neg)) mid)
	  ((< (f mid) 0) (search f mid pos))
	  ((> (f mid) 0) (search f neg mid)))))
;(display "hello")))))

(define (f x)
  (+ x 1))
  

;(search (lambda (x) (x + 1)) -3 3)
(search f -3 4)