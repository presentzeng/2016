		  
(define one (list (list 1 2) (list 3 4)))
(define two (list 3 4))

;;you cannot append  1 and 2 but you can change it to list then append it
;;append (list 1) (list 2)
(define (fringe tree);;flag
  (cond ((null? tree) ())                   
	((not (pair? tree)) (list tree))    
	(else
	 (append (fringe (car tree))
		 (fringe (cadr tree))))))

;(fringe two)
(append two two)