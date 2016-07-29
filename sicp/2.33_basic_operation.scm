;;flag
;;(op list1 (op list2 (op init)))
(define (accumulate op init list)
  (if (null? list)
      init
      (op 
       (car list)
       (accumulate op init (cdr list)))))


;;use accumulate to finish some basic operations

(define (map1 proc list)
  (accumulate (lambda (x y) 
		(cons (proc x) y))
	      () list))


(define (append1 se1 se2)
  (accumulate cons se2 se1))
	      
;;;wrong example

;(define (length list)
;  (accumulate (lambda (x y)
;		(cond ((null? y) 0)
;		      ((not (pair y)) 1)
;		      (else
;		       (+ x (length (cdr y))))))
;		0 list))

   
(define (length1 list)
  (accumulate (lambda (x y)
		(+ 1 y))
	      0 list))
		
(define one (list 1 2 3))
(define two (list 5 6 7))

(length1 one)
;(append1 one two)
;(map1 square one)    		   
