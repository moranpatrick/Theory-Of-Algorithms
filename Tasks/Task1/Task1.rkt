#lang racket

; Step 1
; As 1 is not a prime number we define a constant called
; range and assign it the value 2
(define range 2) 

; Step 2
; Define a function called decide-prime
(define (decide-prime? n)
  ; A check to to make sure the number is positive and greater that 1 otherwise return false (#f)
  (if (<= n 1)
      #f
      (not   (for/or [(x (in-range range n))]=
               (= 0 (remainder n x))))))

; Step 3
; Test our Function by passing it some numbers
; If the number passed is a prime number #t will be displayed otherwise #f

(decide-prime? 1)  ; Returns false (as 1 isn't a prime number)
(decide-prime? -8) ; Returns false (as all prime are positive)
(decide-prime? 4)  ; Returns false
(decide-prime? 11) ; Returns true 
(decide-prime? 75) ; Returns fasle
(decide-prime? 13) ; Returns true



