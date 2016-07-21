(define (make-mobile left right)
  (cons left right))

(define (make-branch length struct)
  (cons length struct))


(define mobile (make-mobile (make-branch 10 25)
			    (make-branch 5 20)))

;;definition of weight
;;mobile: weight = left_branch + right_branch
;;branch: if the struct is mobile then follow upper rule 
;;        if the struct is a number then the number is the weight


(define (total-weight mobile)
  (cond ((null? mobile) 0) 
	((not (pair? (cadr mobile))) (cadr mobile))
	(else
	 (+ (total-weight (car mobile))
	    (total-weight (cadr mobile))))))


;;check if mobile is balanced
;;for list
(define (torque branch)
  (cond ((null? branch) 0) 
	((not (pair? (cadr branch))) (* (car branch) (cadr branch)))
	(else
	 (+ (total-weight (car branch))
	    (total-weight (cadr branch))))))

;(torque (car mobile))
  
(define (total-cons mobile)
  (cond ((null? mobile) 0) 
	((not (pair? (cdr mobile))) (cdr mobile))
	(else
	 (+ (total-cons (car mobile))
	    (total-cons (cdr mobile))))))


(define (test mobile)
  (cond ((null? mobile) 0) 
	((not (pair? mobile)) mobile)
	(else
	 (+ 
	  (total-cons (car mobile))
	  (total-cons (cdr mobile))))))


			  
(define one (cons 1 2))
(define two  (cons 3 4))
(define three (cons one two))
(cdr one)
;(test mobile)
