# Task 5 Hamming-Weight

# Problem
<img src="images/task5a.png">
<img src="images/task5b.png">

### About the Problem
The Hamming Weight of a string is the total number of symbols that are different to zero symbol. For Example the Hamming Weight of the following string:  
> 0 1 1 0 0 1 1  

is 4.

# My Solution
Full Solution with comments can be found [here](https://github.com/moranpatrick/Theory-Of-Algorithms/blob/master/Tasks/Task5/Task5.rkt).
```Racket
#lang racket

(define (hamming-weight list)
  (cond ((null? list) 0)    
        ((not (= (car list) 0))
         (+ 1 (hamming-weight (cdr list)))) 
        (else
         (hamming-weight (cdr list)))))

(display "Hamming Weight of: (list 1 0 1 0 1 1 1 0) is: \n")
(hamming-weight (list 1 0 1 0 1 1 1 0))

(display "\nHamming Weight of: (list 0 0 1 0 1 1 1 0 1 1 0 1) is: \n")
(hamming-weight (list 0 0 1 0 1 1 1 0 1 1 0 1))

(display "\nHamming Weight of: (list 3 0 4 1 0 0 1 0 4 9) is: \n")
(hamming-weight (list 3 0 4 1 0 0 1 0 4 9))

(display "\nHamming Weight of: (list ) is: \n")
(hamming-weight (list ))

```

## Output
<img src="images/output.png">

# Conclusion
Because the most typical use of the hamming weight refers to bits I assumed input would be 1's and 0's. I simply added the the list and that give me the total number of non-zero elements in the list. I then changed the function and added some conditions so input could now include any numbers not just 0 and 1.

# References
https://docs.racket-lang.org/reference/if.html  
https://stackoverflow.com/a/36601853  


