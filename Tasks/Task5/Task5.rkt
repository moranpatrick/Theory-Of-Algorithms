#lang racket

; This Sum function calculates the sum of a list of numbers
(define (sum list)
  (if (null? list)
      0
      (+ (car list) (sum (cdr list)))))

; Our hamming-weight function declaration
(define (hamming-weight list)
  ; Display the number of non zero elements
  (display (sum list)))

; Test Cases
(display "Hamming Weight of: (list 1 0 1 0 1 1 1 0) is: \n")
(hamming-weight (list 1 0 1 0 1 1 1 0))

(display "\nHamming Weight of: (list 0 0 1 0 1 1 1 0 1 1 0 1) is: \n")
(hamming-weight (list 0 0 1 0 1 1 1 0 1 1 0 1))
  