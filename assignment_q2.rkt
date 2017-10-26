#lang racket

(provide ins_beg)
(provide ins_end)
(provide count_top_level)
(provide count_instances)
(provide count_instances_tr)
(provide helper_instances)
(provide count_instances_deep)

;A
(define (ins_beg el lst)
  (cons el lst)
  (ins_beg 'a '(b c d));test
  )
  
;B
(define (ins_end el lst)
  (cons lst (list el))
  (ins_end 'a '(b c d));test
  )

;C
(define (count_top_level list)
  (if (empty? list)
      0
      (+ 1 (count_top_level (cdr list)))
  )
)

;D
(define (count_instances el lst)
  (
   ((equal? el (car lst))(+ 1(count_instances el (cdr lst))))
    ((count_instances el (cdr lst)))
   )
  )

;E
(define (count_instances_tr el lst)
  (helper_instances el 0 lst)
 )

(define (helper_instances el total lst)
   (cond ((null? lst)0)
   ((equal? el (car lst))(+ 1 total(helper_instances el total (cdr lst))))
    ((helper_instances el total (cdr lst)))
   )
)

;F
(define (count_instances_deep el lst)
  (cond[(empty? lst) 0]
       [(equal? el (car lst)) (+ 1 (count_instances_deep el (cdr lst)))]
       [(list? (car lst)) (+ (count_instances_deep el (car lst)) (count_instances_deep el (cdr lst)))]
       [else (count_instances_deep el (cdr lst))]))







