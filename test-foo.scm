;;test how much time foo has cost
(define (test-foo n)
  (let ((start-time (real-time-clock)))
	(plus 21000 123123)
	(- (real-time-clock) start-time)))

(define (plus x y)
  (+ x y))



(test-foo 2)

  