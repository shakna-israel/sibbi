;
; Object
;

(load "alist.scm")

; example usage
; (define a (new))
; (a is number)
; (a + 6)
; (a print)
; 6

(define object/heap '()) ; an alist

(define (object/new)
  (alist
    '(values funcs)
    '(() ())))

(define (object/accessor position)
 `(lambda args
    (let
      [(first (car args))
       (values (alist/ref (alist/ref object/heap ,position) values))
       (funcs (alist/ref (alist/ref object/heap ,position) funcs))
      ]
      (cond
        (

(define (new)
  (alist/set!
    (+ 1 (length object/heap)) ;key
    (object/new) ;value
    object/heap)
  (object/accessor (length object/heap)))) ;returns function that accesses our heaped object
