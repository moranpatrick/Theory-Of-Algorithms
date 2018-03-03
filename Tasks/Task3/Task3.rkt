#lang racket

; Created a custom append function to avoid using Rackets own Append
; Adapted: https://stackoverflow.com/a/29137191 
(define (my-append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (my-append (cdr list1) list2))))


; Created lCycle Function
(define (lCycle list)
  ; If the list is null return empty list
  (if (null? list)
      '()
      (my-append (cdr list)
                 (cons (car list)
                       '()))))


; Test lCycle
(lCycle (list 1 2 3 4 5))
(lCycle (list 4 5 6 7 8))
(lCycle (list -1 -2 -3 -4 -5))
(lCycle '())


