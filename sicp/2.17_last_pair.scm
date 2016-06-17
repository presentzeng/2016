(define one (list 23 72 149 32)) 
(define two (list 23))


(define (last-pair list)
  (if (null? (cdr list))
      (car list)
      (last-pair (cdr list))))

(last-pair one)
	     


      