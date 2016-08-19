(define (accumulate op init list)
  (if (null? list)
      init
       (op
	(car list)
	(accumulate op init (cdr list)))))


(define (fold-left op init seq)
  (if (null? seq)
      init
      (fold-left op (op init (car seq))
		 (cdr seq))))

;;
(define (reverse seq)
  (accumulate (lambda (x y)
		(append  y (list x)))
	      () seq))

(define (reverse_1 seq)
  (fold-left (lambda (x y)
; 	       (append  (list y)  x))
	       (cons y x))
	     () seq))

;(reverse_1 '(1 2 3))
;(fold-left / 1 '(1 2 3))

		    
;(cons 2 (cons 1 ())) --> (2 1)
;(cons (cons 2 '()) 1)  --> ((2) . 1) 
;(cons 2 3) --> (2 . 3)
;(cons 2 '(3)) --> (2 3)