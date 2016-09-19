;;(enumerate 2 4) --> 2 3 4
(define (enumerate-interval low high)
  (if (> low high)
      ()
      (cons low (enumerate-interval (+ low 1) high))))


(define (accumulate op init list)
  (if (null? list)
      init
      (op
       (car list)
       (accumulate op init (cdr list)))))


(define (make-pair2 n)
  (accumulate append
	      ()
	      (map (lambda (i)
		     (map (lambda (j) (list i j))
			  (enumerate-interval 1 (- i 1))))
		   (enumerate-interval 1 n))))


;;make pair (i j) such that (1 <= j <= i <= n)
(define (make-pair num)
  (map (lambda (i)
	 (map (lambda (j) (list i j))
	      (enumerate-interval 1 (- i 1))))
       (enumerate-interval 1 num)))



;(accumulate append () (make-pair 3))
;(accumulate append () '(() ((2 1)) ((3 1) (3 2))))
;(prime? 3)
