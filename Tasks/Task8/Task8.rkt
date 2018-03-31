#lang racket

; Define our chse function
(define (chse x y z)
  (cond
    ; If x, y or z is null then return an empty list
    [(null? x)'()] 
    [(null? y)'()]
    [(null? y)'()]
    ; Check if the first element of x is 1
    [ (if(= (car x) 1)
         ; If it is = 1, cons the first element of y to the new list and recurse on the cdr of x y z
         (cons(car y)(chse(cdr x)(cdr y)(cdr z)))
         ; If its not = 1, cons the first element of z to the new list and recurse on the cdr of x y z
         (cons(car z)(chse(cdr x)(cdr y)(cdr z))))]
    )
  )

; Test Cases
(displayln "***************** CHSE Results *****************\n")
(displayln "(list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 ) (list 0 1 0 1 0 1 0 1) is:" )
(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))

(displayln "(list 0 1 0 1 0 1 0 1) (list 1 1 1 1 0 0 1 1) (list 1 1 0 1 0 0 0 1) is:" )
(chse (list 0 1 0 1 0 1 0 1) (list 1 1 1 1 0 0 1 1) (list 1 1 0 1 0 0 0 1))

(displayln "(list 0 1 0 1 0 1 0 1) (list 1 0 1 1 0 1 0 0) (list 0 0 0 1 1 1 0 1) is:" )
(chse (list 0 1 0 1 0 1 0 1) (list 1 0 1 1 0 1 0 0) (list 0 0 0 1 1 1 0 1))