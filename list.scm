(define one (list 2 2 3 4))

;list iterate
(define (list-ref item n)
  (if (= n 0)
      (car item)
      (list-ref (cdr item) (- n 1))))

;;list length
(define (length items)
  (if (null? items)
      0
      (+ (length (cdr items)) 1)))

;(list-ref one 3) 
(length one)