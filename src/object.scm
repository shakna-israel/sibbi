;
; Object
;

; example usage
; (define a (new))
; (a is number)
; (a + 6)
; (a print)
; 6

(define object/heap '()) ; an alist

(define (object/new)
  '((values '())
    (funcs '())))
  
;(define (object/type! position type)
  ; TODO: set middle of a list, new object.
  ; values = (cons '(default (type/default type)) values)
;)

;(define (object/values! position types values)
;)

;(define (list/contains? list value)
;)

(define (object/accessor position)
  (lambda args
     (cond
       [(equal? (car args) 'is) #f] ;todo: set type of object
       [(equal? (car args) 'uses) #f] ;todo: set several values as given values
       [#t #f] ;todo: try and lookup inside funcs to see if it exists. If so, apply, else error.
)))

(define (new)
    (set! object/heap
      (cons
        (cons
          (+ 1 (length object/heap)) ;key
          (object/new)) ;value
      object/heap))
  (object/accessor (length object/heap))) ;returns function that accesses our heaped object
