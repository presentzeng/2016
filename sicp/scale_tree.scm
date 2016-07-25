;;apply each item proc in tree

(define (scale-tree proc tree)
  (cond ((null? tree) ())
	((not (pair? tree)) (proc tree))
	(else
	 (cons (scale-tree proc (car tree))
	       (scale-tree proc (cdr tree))))))

(define two (list 1 (list 2 (list 3 4))))

(scale-tree (lambda (x) (* 2 x)) two)
  