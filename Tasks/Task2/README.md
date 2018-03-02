# Task 2  Collatz-list

# Problem
<img src="images/task2.png">

## Background
The Collatz conjecture, also known as the 3n + 1 conjecture, was introduced as an idea in 1937 by Lothar Collatz. The conjecture in mathematics concerns a sequence defined as follows: 

![Collatz Formula](https://wikimedia.org/api/rest_v1/media/math/render/svg/f69ea6c9163eefcadeb36c93a68626610f1f4e75)

* Start with a positive number (n)
* Each new n is obtained from the previous n
* If the previous n is even: the next n is n / 2
* If the previous n is odd: the next n is 3n + 1

The conjecture states that no matter the value of n, the sequence will always reach 1.

### Example
Where n = 12, this is the sequence:
> 12, 6, 3, 10, 5, 16, 8, 4, 2, 1.


# My Solution
```Racket
#lang racket

(define (even-odd n)
  (if (= (modulo n 2) 0)
      ; If the remainder of the number dived by 2 = 0 then its an even number
      ; Perform this equation
      (/ n 2)
      ; Otherwise perform this equation
      (+ 1 (* 3 n))))

; Function called collatz-list which returns a list by recursively
; performing an operation depending on if the input is odd or even
(define (collatz-list n)
  (cond
    ; Check for a positive num
    [(< n 1) (displayln "You Did not Enter a positive number!")]
    ; Check when number is 1
    [(= n 1)(cons n '())] 
    ; Keep adding to the list using recursion until the number is 1
    [(> n 1)(cons n(collatz-list (even-odd n)))]))

; Test Function with Set Numbers
(collatz-list 5)
(collatz-list 9)
(collatz-list 2)

(displayln "\n")

; Test with a number from the user
(displayln "Enter a positive number:")
(collatz-list (read))

```

## Output
<img src="images/output.png">

# References
http://cs.umw.edu/~finlayson/class/fall13/cpsc401/notes/10-racket.html     
https://docs.racket-lang.org/reference/if.html    
https://en.wikipedia.org/wiki/Collatz_conjecture    
     [https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._modulo%29%29](https://docs.racket-lang.org/reference/generic-numbers.html#%28def._%28%28quote._~23~25kernel%29._modulo%29%29)
   

