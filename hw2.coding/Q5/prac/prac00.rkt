#lang racket

(define (addTen x) (+ x 10))

(append (list 1 2) (list 3 4))







#|(+ 1 76)

(define (extract str)
  (substring str 4 7))
 
(extract "the cat out of the bag")

(define (members elem lis)
      (cond
         ((null? lis) #f)
         ((= elem (car lis)) lis)
         (else (members elem (cdr lis)))))

(members 5 '(1 4 6 7)) |#

;asdfasdf