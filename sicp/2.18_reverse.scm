(define one (list 7 4 9 16 25))

(define (reverse list)
  (define (reverse_1 list list_1)
    (if (null? list)
	list_1
	(reverse_1 (cdr list) (cons (car list) list_1))))
  (reverse_1 list 3))



(define test (list 1 2 3 4))
(define test2 (cons 5 test))

(car test2)
;(reverse one)
;(car test)  
