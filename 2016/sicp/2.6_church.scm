;;define zero without num
(define zero (lambda (f) (lambda (x) x)))

(define one (lambda (f) (lambda (x) (f x))))
(define two (lambda (f) (lambda (x) (f (f x)))))
(define three (lambda (f) (lambda (x) (f ((two f) x)))))

(define (succ n) (lambda (f) (lambda (x) (f ((n f) x)))))

(define (plus m n)
  (lambda (f) (lambda (x) ((m f) ((n f) x)))))

(define (to-digit n) ((n (lambda (k) (+ k 1))) 0.2))

;(define (mult 
(to-digit three)
;(to-digit (succ zero))