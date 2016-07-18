(define (make-rat a b)
  (cons a b))

(define (print-rat x)
  (newline)
  (display (car x))
  (display "/")
  (display (cdr x)))

(define one-third (make-rat 1 -3))

;-n/-d = n/d   n/-d = -n/d
(define (make-rat-neg a b)
  (if (< b 0)
      (cons (- a) (- b))
      (cons a b)))
	    
(define one-fourth (make-rat-neg -1 4))
	      
(print-rat one-third)
