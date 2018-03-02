#lang racket

(define (even-odd n)
  (if (even? n)
      ; If the number is even perform this equation
      (/ n 2)
      ; Otherwise perform This equation
      (+ 1 (* 3 n))))

; Function called collatz-list which returns a list by recursively
; performing an operation depending on if the input is odd or even
(define (collatz-list n)
    (if (= n 1)
        (cons n '())
        (cons n(collatz-list (even-odd n)))))

; Test Function with Set Numbers
(collatz-list 5)
(collatz-list 9)
(collatz-list 2)

(displayln "\n")

; Test with a number from the user
(displayln "Enter a positive number:")
(collatz-list (read))



  


