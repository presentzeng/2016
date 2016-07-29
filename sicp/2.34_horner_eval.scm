;a*x^3 + b*x^2 + c*x + d
;(..(a*x + b)x + c)x + d
(define (accumulate op init list)
  (if (null? list)
      init
      (op 
       (car list)
       (accumulate op init (cdr list)))))

;;(horner 2 (list 1 3 0 5))
;;(1 + 3*x + 5*x^3)
(define (horner base list)
  (accumulate (lambda (x y)
		(+ x (* y base)))
	      0
	      list))

(horner 2 (list 1 3 0 5 0 1))
		