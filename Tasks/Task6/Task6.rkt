#lang racket

(define (hamming-distance list1 list2)
    (cond [(null? list1) 0]
          [(if(= (car list1)(car list2))
             (hamming-distance (cdr list1) (cdr list2))
             (+ 1 (hamming-distance (cdr list1) (cdr list2))))]           
          ))


(hamming-distance (list 1 0 1 1 1 0 1)(list 1 0 0 1 0 0 1))
(hamming-distance (list 1 0 1 0 1 1 1 0)(list 1 1 1 1 0 0 0 0))
(hamming-distance (list 2 1 7 3 8 9 6)(list 2 2 3 3 7 9 6))
(hamming-distance (list 1 0 1 1 0 0 1 0 0 1)(list 1 0 0 1 0 0 0 0 1 1))

