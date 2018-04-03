#lang racket

(define (sod2 x y z)
  (cond
     ; Check of x y or z are null if so return '()
     [(null? x)'()]
     [(null? y)'()]
     [(null? z)'()]
     ; Find out if the sum of the first elements in each list is odd or even by using modulo
     ; If the sum of car x y and z modulo 2 = 0
     [(if(= 0 (modulo (+ (car x) (car y) (car z)) 2))
         ; Then cons to the new list a 0
         (cons 0 (sod2 (cdr x) (cdr y) (cdr z)))
         ; Otherwise cons to the new list a 1
         (cons 1 (sod2 (cdr x) (cdr y) (cdr z))))]
     )
  )

; Test Cases

(displayln "***************** SOD2 Results *****************\n")
(displayln "(list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1) is:" )
(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))

(displayln "(list 0 0 1 0 1 0 0 1) (list 1 1 0 1 0 0 0 0) (list 1 1 1 0 0 1 0 0) is:" )
(sod2 (list 0 0 1 0 1 0 0 1) (list 1 1 0 1 0 0 0 0) (list 1 1 1 0 0 1 0 0))

(displayln "(list 0 1 1 1 0 0 0 1) (list 1 0 1 0 1 1 1 0) (list 1 0 1 0 1 1 0 0) is:" )
(sod2 (list 0 1 1 1 0 0 0 1) (list 1 0 1 0 1 1 1 0) (list 1 0 1 0 1 1 0 0))

