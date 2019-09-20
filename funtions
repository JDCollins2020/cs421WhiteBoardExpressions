#lang racket
;;;functions
;;; id w/ all lowercase and dashes
;;;(define(id parameter1 parameter2 parameter3...parametern) body)

( define ( sum-of-squares x y ) ( + ( * x x ) ( * y y ) ) )
;   ( sum-of-squares 10 10 )

;;;Farenheit to celcius
;;;conversions name with arrow
( define ( farenheit->celcius f ) ( * 5/9 ( - f 32 ) ) )
 ; ( farenheit->celcius 33.0 )

;;;factorial
( define ( factorial n )
   ( cond ( (<= n 0)  1 )
          ( else ( * (factorial (- n 1) ) n ) ) ) )
;(factorial 5)

(define (list-maker n )
  ( cond ( ( = n 1) ( cons 1 '() ) )
         ( else ( append ( list-maker (- n 1) )  (list n) ) ) )
)
;(list-maker 8 )

;;;with append
(define (square xs)
  ( cond ( (null? xs) '() )
         ( else (append (list (* (car xs) (car xs) ) ) (square (cdr xs) ) ) ) ) )
;(square '(1 2 3 4) )
;;;with cons
(define (squares xs)
  ( cond ( (null? xs) '() )
         ( else ( cons (* (car xs) (car xs) )  (squares (cdr xs) ) ) ) ) ) 
;(squares '(1 2 3 4) )

(define (my-length xs)

  (cond ( (null? xs) 0)
        (else (+ 1 (my-length (cdr xs) ) ))
  )
)
;(my-length '(1 2 3 4 5 6 7 8) )

(define (my-append x y)
  (cond ( (null? x) y)
        (else (cons (car x)  (my-append ( cdr x) y ) ) )
  )
)
;(my-append '(1 2 3) '(5 6))

( define ( is-member e XS )
   ( cond
     ( ( null? XS ) '())
     ( ( equal? e ( car XS ) ) XS)
     ( else (is-member e (cdr XS)) )
   )
)

;(is-member 3 '(1 2 g f 3 d s))

;;;first order functions
( define ( scale-by x )
   ( lambda ( y )
      ( * x y )
   )
)

( (scale-by 3 ) 4 )

( define ( predication x )
   ( lambda (y)
      (equal? x y )
   )
)
( ( predication 4 ) 3 )
( ( predication 4 ) 4 )
;; double first order
( define ( logger f )
  ( lambda ( y x )
     ( display "Function was called");;is a side effect, don't use in HW
     ( newline )
     ( f y x )
  )
)
( ( logger list ) 4 5 )
( ( logger cons ) 4 5 )

( define ( mapper f xs)
   ( cond ((null? xs) '() )
          ( else ( cons (f (car xs))
                        (mapper f (cdr xs))))))
( mapper sqrt '(1 2 3 4) )
