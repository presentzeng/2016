;;(1, 2) + (3, 8) = (4, 10)
(define (make-interval a b ) (cons a b))

(define (lower a) (car a))
(define (up b) (cdr b))

(define (add-interval x y)
  (make-interval (+ (lower x) (lower y))
		 (+ (up x) (up y))))
		    
(define (mul-interval x y)
  (let ((p1 (* (lower x) (lower y)))
	(p2 (* (lower x) (up y)))
 	(p3 (* (up x) (lower y)))
	(p4 (* (up x) (up y))))
    (make-interval 
     (min p1 p2 p3 p4)
     (max p1 p2 p3 p4))))
     
(define (div-interval x y)
  (mul-interval x
		(make-interval (/ 1.0 (up y))
			       (/ 1.0 (lower y)))))

(define (sub-interval x y)
  (make-interval (- (lower x) (up y))
		 (- (up x) (lower y))))
				  

(define num1 (make-interval -1 3))
(define num2 (make-interval 4 5))

(define num3 (sub-interval num1 num2))

(car num3)
