(define (reverse list)
  (define (reverse_1 list list_1)
    (if (null? list)
	list_1
	(reverse_1 (cdr list) (cons (car list) list_1))))
  (reverse_1 list ()))



(define test (list 1 2 3 4))
(define test2 (list (list 1 2) (list 3 4)))


(reverse test2)
