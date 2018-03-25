#lang racket

; Define our hamming-distance function
(define (hamming-distance list1 list2)
  ; First Check if either list is null - if either is then return 0
  (cond [(null? list1) 0]
        [(null? list2) 0]
        ; Now Check if the first element of each list match
        [(if(= (car list1)(car list2))
            ; They are the same so just recurse on the cdr of each list
            (hamming-distance (cdr list1) (cdr list2))
            ; Otherise they are not so incement counter and recurse on cdr of each list
            (+ 1 (hamming-distance (cdr list1) (cdr list2))))]           
        ))

; Test Cases
(display "******************* HAMMING DISTANCE *************************\n\n")
(display "\tList 1\t\t\tList2\t\t\tAnswer\n")
(display "(list 1 0 1 1 1 0 1)\t(list 1 0 0 1 0 0 1)\tis:\t")
(hamming-distance (list 1 0 1 1 1 0 1)(list 1 0 0 1 0 0 1))

(display "(list 1 0 1 0 1 1 1 0)\t(list 1 1 1 1 0 0 0 0)\tis:\t")
(hamming-distance (list 1 0 1 0 1 1 1 0)(list 1 1 1 1 0 0 0 0))

(display "(list 2 1 7 3 8 9 6)\t(list 2 2 3 3 7 9 6)\tis:\t")
(hamming-distance (list 2 1 7 3 8 9 6)(list 2 2 3 3 7 9 6))

(display "(list 1 0 1 0 1 0 0)\t'()\t\t\tis:\t")
(hamming-distance (list 1 0 1 0 1 0 0)'())
