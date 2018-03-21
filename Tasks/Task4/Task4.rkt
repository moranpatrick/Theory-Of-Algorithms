#lang racket

; This Sum function calculates the sum of a list of numbers
(define (sum list)
  (if (null? list)
      0
      (+ (car list) (sum (cdr list)))))

; Our sublsum function declaration
(define (sublsum list)
  ; Iterate through all combinations of the list
  (for ([i (in-list (combinations list) )])
    ; Add each combination, check == 0 and diaplay if so 
    (if(= 0 (sum i))
       (display i)
       '() )))

; Test Cases
(sublsum (list 1 2 3 4 -5))
(display "\n\n")
(sublsum (list 1 2 3 4 5))


  