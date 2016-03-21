;;Time-IsPrime-Thread n start-time
;;input : n start-time
;;output : if n is prime, elapsed-time

;;IsPrime
(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
	((devides? test-divisor n) test-divisor)
	(else (find-divisor n (next-odd test-divisor)))))
;	(else (find-divisor n (+ 1 test-divisor)))))
;just modify one line improve about 20% performance
				       

(define (devides? small big)
  (= (remainder big small) 0))

(define (IsPrime n)
  (= (smallest-divisor n) n))


;;

;;if n is odd
(define (odd? n)
  (if (= 0 (remainder n 2))
       false 
       true))
;(odd? 6)

;;find n's next odd
(define (next-odd n)
  (if (odd? n)
      (+ n 2)
      (+ n 1)))

;;return function
(define (Return n)
  (newline)
  (display "find Prime:")
  (display n))

;;search for prime that bigger or equal n
(define (search-for-prime n)
  (cond ((IsPrime n) (Return n))
	(else 
	 (search-for-prime (next-odd n)))))
	
(define (search-for-prime-topcount n count)
  (cond ((= count 0) display "all finished")
	((IsPrime n) (Return n) (search-for-prime-topcount (next-odd n) (- count 1)))
	(else
	 (search-for-prime-topcount (next-odd n) count ))))
      
;;display time
(define (Display-Time elapsed-time)
  (display "elapsed-time:-----\n")
  (display elapsed-time))

(define (test n)
  (cond ((= n 1) (display "hello") (display n))))

;(odd? 5)
;(remainder 5 2)
(define (timed-search-for-prime-topcount n count)
  (let ((start-time (real-time-clock)))
    (search-for-prime-topcount n count)
    (- (real-time-clock) start-time)))


(timed-search-for-prime-topcount 10000000000000 3)