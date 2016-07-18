;;establishes a higher level of abstraction in dealing with lists
(define (map proc items)
  (if (null? items)
      ()
      (cons (proc (car items))
	    (map proc (cdr items)))))

;(scale-list (list 1 2 3 4) 10)
(map (lambda (x) (* x x)) (list 1 2 3 4))