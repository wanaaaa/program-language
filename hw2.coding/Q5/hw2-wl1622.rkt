;Question a
(define (foldr myList)  
    (cond
      ((null? myList) 0)
      (else (+ (car myList) (foldr(cdr myList)))))
);end define 
;;;;;
'('Question5.a)
(define myList '(1 2 3))
(foldr myList)
;==============================
;==============================
;Question b
(define eList '())
(define ( reverse2 in out)
	(if (null? in)
		out
		( reverse2 (cdr in) (cons (car in) out))))

(define (reverse1 in) (reverse2 in eList))
;;;;;

(define (minus x y) (- x y) )
;;;;;
(define (paramReverse function myList)  
    (cond
      ((null? myList) 0)
      (else (function (car (reverse1 myList)) (paramReverse function (cdr (reverse1 myList) )))))) 
;;;;;
'('Question5.b)
(define myList '(2 1))
(paramReverse minus myList)
;==============================
;==============================
;Question C
(define (maxFun maxNum iList)
  (let maxLet ( (maxNum  maxNum) (iList iList)  );variable
      (if (null? iList)
          maxNum;then
          ( if (< maxNum (car iList));if
               (maxLet (car ilist) (cdr iList));then
               (maxLet maxNum (cdr iList))
           );else then
       );end of if
   );end of let
);end of define
;;;;;
(define (noMaxL iList maxEle eList) 
  (if (= maxEle  (car iList))
      (append(cdr iList) eList  );if then
      (noMaxL (cdr iList) maxEle (cons (car iList) eList )  );else then
   );end of if 
 
);end of define
;;;;;
(define (highestCountTwo L k count eList)
  (if(= k count);if
     eList;then
     (highestCountTwo (noMaxL L (maxFun -10000 L) eList ) k (+ count 1) (cons (maxFun -100 L) eList )  );else
   );;end of if
);end of highest 
;;;;;
(define (highestCount L k ) (highestCountTwo L k 0 '()))
;;;;;
'('Question5.c)
(define L '(1 7 4 5 3))
(highestCount L 2)
;==============================================
;==============================================
;Question d
(define eList '())
(define ( reverse2 in out)
	(if (null? in)
		out
		( reverse2 (cdr in) (cons (car in) out))))

(define (reverse1 in) (reverse2 in eList))
;;;;;
(define (mapfunR FL L)
  (let mapLet( (FL FL) (L L) (rList '()) );variable end
      ( if (null? L);if
           rlist;then
         (if (null? FL) rlist
             (mapLet (cdr FL) (cdr L) (cons ((car FL) (car L) ) rList) );else
          );end of null FK  
           
       );let expression
   );end of let  
);end of define

(define (mapfun FL L) (reverse1 (mapfunR FL L) )
);define end
;;;;;
(define FL (list cadr car cdr))
(define L '((A B) (C D) (E F)) )

'('Question5.d)
(mapfun FL L)
;======================================================
;======================================================
;Question e
(define eList '())
(define ( reverse2 in out)
	(if (null? in)
		out
		( reverse2 (cdr in) (cons (car in) out))))

(define (reverse1 in) (reverse2 in eList))
;;;;;
(define (filterR pred L)
  (let filterLet((pred pred) (L L) (rList '()) );variable end
      (if (null? L);if
          rList;then
          ( if (pred (car L) );inner if
               (filterLet pred (cdr L) (cons (car L) rList ) ); inner if then
               (filterLet pred (cdr L) rList ); inner else
           );end of big else
       
       );if end 
   );let end
  
);define end
(define (filter pred L)(reverse1 (filterR pred L) ) )
;;;;;
'('Question5.e)
(define pred even?)
(filter pred '(1 2 3 4 ))