      
(define (up i)
  (cond ((= i 1) 2) 
	((even? i)
	 (+ i 2)) 
	(else  
	 (+ i 1))))

(define (down i)
  (cond ((odd? i) (+ 2 i))
	 (else
	  (+ 1 i))))


(define (product term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))))

(define (pi n)
  (* 4
     (/
      (product up 1 (lambda (x) (+ x 1)) n)
      (product down 1 (lambda (x) (+ x 1)) n))))

(pi 10)