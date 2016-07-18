;;derivative of a function
;;Dg(x) = (/ (g(x+dx) - g(x)) dx)
(define (derive func x)
  (let ((dx 0.00001))
  (/
   (- (func (+ x dx)) (func x)) 
   dx)))

(define (f x)
  (square x))

;(derive f 2)

