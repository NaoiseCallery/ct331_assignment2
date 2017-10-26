#lang racket
(cons 2 1)
(cons 3 (cons 2 (cons 1 '())))
(cons "DrRacket"(cons 4 (cons 3(cons 2(cons 1 '())))))
(list "DrRacket" 4 (list 3 2 1))
(append '(DrRacket) '(4) '(( 3 2 1)))