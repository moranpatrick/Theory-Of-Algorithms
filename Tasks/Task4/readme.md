# Task 4 Sublsum

# Problem
<img src="images/task4.png">

### Subset Sum Problem
The Subset sum problem is: Given a set of integers, is there a non empty subset that sums to zero. This problem is one of the [NP Complete](https://en.wikipedia.org/wiki/NP-completeness) problems.

# My Solution
Full Solution with comments can be found [here](https://github.com/moranpatrick/Theory-Of-Algorithms/blob/master/Tasks/Task3/Task4.rkt).
```Racket
#lang racket

(define (sum list)
  (if (null? list)
      0
      (+ (car list) (sum (cdr list)))))

(define (sublsum list)
  (for ([i (in-list (combinations list) )])
    (if(= 0 (sum i))
       (display i)
       '() )))

(display "Subsets equalling zero for (list 1 2 3 4 -5)\n")
(sublsum (list 1 2 3 4 -5))
(display "\n\nSubsets equalling zero for (list 1 2 3 4 5)\n")
(sublsum (list 1 2 3 4 5))

```

## Output
<img src="images/output.png">

# Conclusion
This Task allowed the use of the [combinations](https://docs.racket-lang.org/reference/pairs.html?q=combinations#%28def._%28%28lib._racket%2Flist..rkt%29._combinations%29%29) function. After going over the docs and researching the function, this Task was relatively straight forward and completed quickly. 

# References
https://docs.racket-lang.org/reference/pairs.html?q=combinations#%28def._%28%28lib._racket%2Flist..rkt%29._combinations%29%29    
https://en.wikipedia.org/wiki/Subset_sum_problem


