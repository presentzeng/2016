(define (accumulate op init list)
  (if (null? list)
      init
      (op
       (car list)
       (accumulate op init (cdr list)))))


(define (flatmap proc list)
  (accumulate append ()
	      (map proc list)))

(define (enumerate-interval low high)
  (if (> low high)
      ()
      (cons low (enumerate-interval (+ low 1) high))))


;;1 <= k <= j <= i <= n
;;such that k + j + i = s
;;by myself 
(define (make-triple n)
  (map (lambda (i)
	 (map (lambda (j)
		(map (lambda (k) (list k j i))
			     (enumerate-interval 1 (- j 1))))
		(enumerate-interval 1 (- i 1))))
	 (enumerate-interval 1 n)))

;;improve
(define (make-triple2 n)
  (flatmap 
   (lambda (i)
     (flatmap (lambda (j)
		(map (lambda (k) (list k j i))
		     (enumerate-interval 1 (- j 1))))
	      (enumerate-interval 1 (- i 1))))
     (enumerate-interval 1 n)))

(make-triple2 4)
		      
		      
