# Task 3  lCycle rCycle

# Problem
<img src="images/task3.png">

# About This Problem
After researching this problem I quickly found solutions to both shifting a list left and right. These solutions however used many of Rackets built in functions like append, last, drop-right and so on.

### lCycle
To return a list cyclically shifted one place to the left I would need the append function, so I tried to create my own. After adapting some code from stackoverflow I was successful.

### rCycle
To return a list cyclically shifted one place to the right proved much trickier. I created a drop-last function which removes the last element in a list. I created another function called get-last which returned the last element of a list which we then add to the start of the list. Code for both of these functions were adapted from stackoverflow, references below.

# My Solution
Full Solution with comments can be found [here](https://github.com/moranpatrick/Theory-Of-Algorithms/blob/master/Tasks/Task3/Task3.rkt).
```Racket
#lang racket

(define (my-append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (my-append (cdr list1) list2))))

(define (drop-last list)
    (if (null? (cdr list))
        '()
        (cons (car list) (drop-last (cdr list)))))

(define (get-last l)
  (cond ((null? (cdr l)) (car l))
        (else (get-last (cdr l)))))


(define (lCycle list)

  (if (null? list)
      '() 
      (my-append (cdr list)
                 (cons (car list)
                       '()))))

(define (rCycle list)
  ; If the list is null return empty list
  (if (null? list);
      '()
       (cons (get-last list)
             (drop-last list))))

(lCycle (list 1 2 3 4 5))
(lCycle (list 4 5 6 7 8))
(lCycle (list -1 -2 -3 -4 -5))
(lCycle '())

(rCycle '(1 2 3 4 5))
(rCycle (list 4 5 6 7 8))
(rCycle (list -1 -2 -3 -4 -5))
(rCycle '())

```

## Output
<img src="images/output.png">

# Conclusion
Overall this was a challenging task. Ignoring Rackets built in functions and getting a better understanding of recursion was key here and though it took longer than I had hoped, I feel I have a greater understanding as a result.

# References
https://stackoverflow.com/a/13051387    
https://stackoverflow.com/a/29137191    
https://stackoverflow.com/a/5007129    
 https://stackoverflow.com/a/13175325
