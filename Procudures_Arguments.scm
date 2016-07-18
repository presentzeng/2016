(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
	 (sum next (next a ) term b))))

(define (inc n) 
  (display n)
  (display "hello\n")
  (+ n 1))

(define (cube x)
  (display x)
  (display "test\n")
  (* x x x))

(define (sum-cubes a b)
  (sum inc a cube b))
;  (sum cube a inc b))

(sum-cubes 1 4)