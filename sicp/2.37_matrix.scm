(define one (list 3 4))	 
(define two (list 5 6))	 
(define matrix (list
		(list 2 2)
		(list 3 3)))

;(op list1 (op list2 (op list3 init)))
(define (accumulate op init list)
  (if (null? list)
      init
      (op 
       (car list)
       (accumulate op init (cdr list)))))


(define (car-n seqs)
  (map car seqs))
(define (cdr-n seqs)
  (map cdr seqs))

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      ()
      (cons (accumulate op init (car-n seqs))
	    (accumulate-n op init (cdr-n seqs)))))

(define matrix-one (list
		    (list 1 2 3 4)
		    (list 4 5 6 6)
		    (list 6 7 8 9)))

(accumulate-n * 1 matrix-one)
(define (matrix-vector m v)
  (map (lambda (x)
	 (accumulate * 1 (list x v)))
       m))
 
	       

;(map (lambda (x)
 ;      (* 2 x)) 
  ;   two)
     
(matrix-vector matrix one)
