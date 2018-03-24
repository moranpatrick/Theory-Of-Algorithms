#lang racket

; Code adapted from: https://stackoverflow.com/a/36601853
; Our hamming-weight function declaration
(define (hamming-weight list)
  ; First check if the list is empty and return 0 if true
  (cond ((null? list) 0)
        ; Then check if the first element of the list is not a zero      
        ((not (= (car list) 0))
         ; Add 1 and start again
         (+ 1 (hamming-weight (cdr list)))) 
        (else
         ; Otherwise skip to the next element in the list  
         (hamming-weight (cdr list)))))


; Test Cases
(display "Hamming Weight of: (list 1 0 1 0 1 1 1 0) is: \n")
(hamming-weight (list 1 0 1 0 1 1 1 0))

(display "\nHamming Weight of: (list 0 0 1 0 1 1 1 0 1 1 0 1) is: \n")
(hamming-weight (list 0 0 1 0 1 1 1 0 1 1 0 1))

(display "\nHamming Weight of: (list 3 0 4 1 0 0 1 0 4 9) is: \n")
(hamming-weight (list 3 0 4 1 0 0 1 0 4 9))

(display "\nHamming Weight of: (list ) is: \n")
(hamming-weight (list ))



