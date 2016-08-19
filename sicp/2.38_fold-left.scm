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

(accumulate / 1 '(1 2 3))
;(fold-left / 1 '(1 2 3))

