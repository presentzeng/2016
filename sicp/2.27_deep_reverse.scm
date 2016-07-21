;;((1 2) (3 4)) -> ((3 4) (1 2))

(define (reverse list)
  (define (reverse_1 list list_1)
    (if (null? list)
	list_1
	(reverse_1 (cdr list) (cons (car list) list_1))))
  (reverse_1 list ()))

(define x (list (list 1 2) (list 3 4) (list 5 6)))

;;binary tree deep reverse
;;((1 2) (3 4)) -> ((4 3) (2 1))
(define (deep-reverse x)
    (cond ((null? x) ())
	  ((not (pair? x)) x)
	  (else
	   (reverse (list (deep-reverse (car x))
			  (deep-reverse (cadr x)))))))


;;ordinary tree reverse
;;((1 2) (3 4) (5 6)) -> ((5 6) (3 4) (1 2))
(define (reverse1 items)
  (define (rev items result)
    (if (null? items)
	result
	(rev (cdr items) (cons (car items) result))))
  (rev items ()))

;;oridinary tree deep reverse
;;flag
(define (deep-tree list)
  (define (iter remain result)
    (if (null? remain)
	result
	(iter (cdr remain)
	      (cons (if (pair? (car remain))
			(deep-tree (car remain))
			(car remain))
		    result))))
  (iter list ()))
			       
;(reverse1 x)
(define one (list (list 1 2) (list 3 4 5)))
(define test (list 1 2))
(pair? (car test))
