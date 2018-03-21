#lang racket

; Created a custom append function to avoid using Rackets own Append
; Adapted: https://stackoverflow.com/a/29137191 
(define (my-append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (my-append (cdr list1) list2))))

; This Function Removes the last value of list
; Adapted: https://stackoverflow.com/a/5007129
(define (drop-last list)
    (if (null? (cdr list))
        '()
        (cons (car list) (drop-last (cdr list)))))

; This function gets the last element in a list
; Adapted From https://stackoverflow.com/a/13175325
(define (get-last l)
  (cond ((null? (cdr l)) (car l))
        (else (get-last (cdr l)))))



; Created lCycle Function - Adapted from: https://stackoverflow.com/a/13051387
(define (lCycle list)
  ; If the list is null return empty list
  (if (null? list)
      '()
      ; My-append takes two lists as params and appends them. First list is the cdr of the list 
      (my-append (cdr list)
                 ; The Second list is the the car of the list
                 (cons (car list)
                       '()))))

(define (rCycle list)
  ; If the list is null return empty list
  (if (null? list);
      '()
      ; Get the last element in list, drop the last element and append
      ; the list to the last element
       (cons (get-last list)
             (drop-last list))))

; Test lCycle
(display "\nThese lists are cyclically shifted one place to the left: \n\n")
(display "List\t\t\tOutput\n")

(display "(list 1 2 3 4 5)\t")
(lCycle (list 1 2 3 4 5))

(display "(list 4 5 6 7 8)\t")
(lCycle (list 4 5 6 7 8))

(display "(list -1 -2 -3 -4 -5)\t")
(lCycle (list -1 -2 -3 -4 -5))

(display "():\t\t\t")
(lCycle '())

; Test rCycle
(display "\nThese lists are cyclically shifted one place to the Right: \n\n")
(display "List\t\t\tOutput\n")

(display "(list 1 2 3 4 5):\t")
(rCycle '(1 2 3 4 5))

(display "(list 4 5 6 7 8):\t")
(rCycle (list 4 5 6 7 8))

(display "(list -1 -2 -3 -4 -5):\t")
(rCycle (list -1 -2 -3 -4 -5))

(display "():\t\t\t")
(rCycle '())








