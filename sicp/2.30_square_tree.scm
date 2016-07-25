;;apply each item proc in tree

(define (scale-tree proc tree)
  (cond ((null? tree) ())
	((not (pair? tree)) (proc tree))
	(else
	 (cons (scale-tree proc (car tree))
	       (scale-tree proc (cdr tree))))))

(define two (list 1 (list 2 (list 3 4))))


  

(define (scale tree factor)
  (map (lambda (sub-tree)
	 (if (pair? sub-tree)
	     (scale sub-tree factor)
	     (display sub-tree)))
       tree))

;(map (lambda (x) (+ x 1)) '(1 (2 4) 3))
;(scale two 2)
;(square-tree two)

(define (scale-test tree factor)
  (map (lambda (sub-tree)
	 (if (not (pair? sub-tree))
	     (display sub-tree)
	     (display (sub-tree))))
       tree))

(scale-test '(1 (2 4) 3) 99)
