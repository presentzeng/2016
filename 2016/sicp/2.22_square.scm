`;;square each item
(define (square-list items)
  (if (null? items)
      ()
      (cons (square (car items))
		    (square-list (cdr items)))))



(define (square-list_2 items)
  (define (iter things answer)
    (if (null? things)
	answer
	(iter (cdr things)
	      (cons  (square (car things))
		   answer ))))
  (iter items ()))


(define test (list 1 2 3 4 5))

(square-list_2 test)