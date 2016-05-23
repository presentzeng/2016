;;derivative of a function
;;Dg(x) = (/ (g(x+dx) - g(x)) dx)
(define (derive func x)
  (let ((dx 0.00001))
  (/
   (- (func (+ x dx)) (func x)) 
   dx)))

(define (f x)
  (square x))

;;f(x) = f(x0) + f'(x0)(x-x0)
;; x1 = x0 - f(x0)/f'(x0)
(define (newton_func_trans g)
  (lambda(x)
    (- x (/ (g x) (derive g x)))))

(define (f x)
  (square x))

(define (close-enough? v1 v2 tolerance)
  (if (< (abs (- v1 v2)) tolerance) 
      true
      false))
  

(define (fixed-point f first-guess)
  (let ((next-guess (f first-guess)))
  (if (close-enough? first-guess next-guess 0.000001)
      next-guess
      (fixed-point f next-guess))))

;(fixed-point cos 1.0)

(define (newton-method func guess)
  (fixed-point (newton_func_trans func) guess))

;x^3 + a*x^2 + b*x + c
(define (cubic a b c)
  (lambda (x) 
    (+
     (* x x x)
     (* a x x)
     (* b x)
     c)))

((cubic 1 1 1) 1)
;(newton-method (cubic 3 2 1) 1.0)