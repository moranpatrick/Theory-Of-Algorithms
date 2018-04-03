#lang racket

; Define our maj function
(define (maj x y z)
  (cond ; If x is null return an empty list
        [(null? x) '()]
        ; Check if the first element of x and y are the same 
        [ (= (car x) (car y))
          ; If so, cons the first element of x to the new list and recurse on the cdr of the remaining lists
          (cons (car x) (maj (cdr x) (cdr y) (cdr z)))]
        ; If the the first element of x and z are the same 
        [(= (car x) (car z))
         ; If so, cons the first element of x to the new list and recurse on the cdr of the remaining lists
         (cons (car x) (maj (cdr x) (cdr y) (cdr z)))]
        ; Otherwise cons the first element of y to the new list and recurse on the cdr of the remaining lists
        [else (cons (car y) (maj (cdr x) (cdr y) (cdr z)))]
        )
  )

; Test Results
(displayln "***************** MAJ Results *****************\n")
(displayln "(list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1) is:" )
(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))

(displayln "\n(list 1 0 1 0 1 0) (list 0 0 1 0 1 1) (list 0 0 0 1 1 1) is:" )
(maj (list 1 0 1 0 1 0) (list 0 0 1 0 1 1) (list 0 0 0 1 1 1)) 

(displayln "\n(list 1 0 1 1 0 0) (list 1 1 1 0 1 0) (list 0 1 0 0 1 1) is:" )
(maj (list 1 0 1 1 0 0) (list 1 1 1 0 1 0) (list 0 1 0 0 1 1)) 

