(define (length list)
  (if (null? list)
      0
      (+ 1 (length (cdr list)))))




(define (count-leaves x)
  (cond ((null? x) 0)
	((not (pair? x)) 1)
	(else
	 (+ (count-leaves (car x))
	    (count-leaves (cdr x))))))


(define one (list 1 2 3))
(define two (list 1 (list 2 (list 3 4))))
(count-leaves two)
