(define one (list (list 1 2 3) (list 4 5 6)))


;(op list1 (op list2 (op list3 init)))
(define (accumulate op init list)
  (if (null? list)
      init
      (op 
       (car list)
       (accumulate op init (cdr list)))))


(define (car-n seqs)
  (map car seqs))
(define (cdr-n seqs)
  (map cdr seqs))

;(cdr-n one)

;;combine all first elements of the seqs, thes second of the seqs and so on
;;((1 2 3) (4 5 6)) -> (5 7 9)
;;(cons seq1 (cons seq2 (cons seq3 init)))
;;seq1 = (op seq11 (op seq12 (op seq13 init)))

;(accumulate-n + 0 (list (list 1 2 3) (list 4 5 6)))
;(cons (accumulate + 0 (list 1 4))
;      (accumulate-n + 0 (list (list 2 3) (list 5 6)))

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      ()
      (cons (accumulate op init (car-n seqs))
	    (accumulate-n op init (cdr-n seqs)))))

(accumulate-n + 0 one)
