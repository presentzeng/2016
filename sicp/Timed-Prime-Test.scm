;;Time-IsPrime-Thread n start-time
;;input : n start-time
;;output : if n is prime, elapsed-time

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
	((devides? test-divisor n) test-divisor)
	(else (find-divisor n (+ test-divisor 1)))))

(define (devides? small big)
  (= (remainder big small) 0))

;;add one
(define (IsPrime n)
  (= (smallest-divisor n) n))

(define (Time-IsPrime n)
  (newline)
  (display n)
  (Time-IsPrime-Thread n (real-time-clock)))


(define (Time-IsPrime-Thread n start-time)
  (display start-time)
  (display "test")
  (if (IsPrime n)
;      (display (- (real-time-clock) start-time))))
      (Display-Time (- (real-time-clock) start-time))))


(define (Display-Time elapsed-time)
  (display "elapsed-time:-----\n")
  (display elapsed-time))



(Time-IsPrime-Thread 23 (real-time-clock))

