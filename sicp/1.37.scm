;;
(define (f n d k)
  (define (g i)
    (if (= k i)
	(/ (n i) (d i))
	(/ (n i)
	   (+ (d i) (g (+ 1 i))))))
  (g 1))

(f (lambda (i) 1.0) (lambda (i) 1.0) 10)
  