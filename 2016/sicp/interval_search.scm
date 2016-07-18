;;find roots of f(x) = x


(define (average neg posi)
  (/ (+ neg posi) 2))

(define (close-enough? neg posi)
  (< (abs (- posi neg)) 0.01))

(define (search f neg posi)
  (let ((mid (average neg posi)))
    (if (close-enough? neg posi)
	mid
	(let ((test (f mid)))
	      (cond ((< test 0) (search f mid posi))
		    ((> test 0) (search f neg mid))
		    (else
		     mid))))))

;(define (sqrt x)
 ; (search g -2 3))

;(define (f (lambda (y) (/ x y))))

(define (f x)
  (+ 1 (/ 1 x)))

(define (g x)
  (- (f x) x))

(search g -2 3)