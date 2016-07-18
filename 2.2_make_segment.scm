;;print 
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-segment x y)
  (cons x y))

(define (x-point z)
  (car z))

(define (y-point z)
  (cdr z))

(define start (make-segment 1 3))
(define end (make-segment 4 3))
  

;(define (mid-segment z1 z2)
;  (