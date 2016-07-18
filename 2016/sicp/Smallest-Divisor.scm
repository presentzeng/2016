;;找除了1以外最小因子
(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
	((devides? test-divisor n) test-divisor)
	(else (find-divisor n (+ test-divisor 1)))))

(define (devides? small big)
  (= (remainder big small) 0))

(smallest-divisor 13)