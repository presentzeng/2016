(define (accumulate op init list)
  (if (null? list)
      init
      (op 
       (car list)
       (accumulate op init (cdr list)))))

;;flag

(define (count-leaves t)
  (accumulate +
	      0
	      (map (lambda (x)
		(if (pair? x)
		    (count-leaves x)
		1))
	      t)))


(define one (list (list 1 (list 2 3)) (list (list 4 5) (list 6))))

(count-leaves one)