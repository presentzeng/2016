(define (for-each proc list)
  (if (null? list)
      ()
      (begin
	(proc (car list))
	(for-each proc (cdr list)))))


(define (for proc list)
  (if (not (null? list))
      (begin
	(proc (car list))
	(for proc (cdr list)))))

;(for-each (lambda (x) (newline) (display x)) (list 1 2 3))

(for (lambda (x) (newline) (display x)) (list 1 4 3))