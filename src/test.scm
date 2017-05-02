; unittest/ namespaced stuff is not for end user use.

(define unittest/count 0)
(define unittest/passes 0)
(define unittest/failures 0)
(define unittest/tests '())

(define (unittest/run-test a b msg)
  (if (equal? a b)
    (begin
    (set! unittest/count (+ 1 unittest/count))
    (set! unittest/passes (+ 1 unittest/passes))
    (display "PASS: ")
    (display msg)
    (newline))
    
    (begin
    (set! unittest/count (+ 1 unittest/count))
    (set! unittest/failures (+ 1 unittest/failures))
    (display "FAIL: ")
    (display msg)
    (newline)
    (display "Expected: ")
    (display b)
    (newline)
    (display "Received: ")
    (display a)
    (newline))))

(define (unittest/finish)
  (newline)
  (display "PASSED: ")
  (display unittest/passes)
  (display "/")
  (display unittest/count)
  (newline)
  (display "FAILED: ")
  (display unittest/failures)
  (display "/")
  (display unittest/count)
  (newline)
  (if (not (= unittest/passes unittest/count))
    (exit 1)
    (exit 0)))

(define (test msg a b)
  (set! unittest/tests (cons (list a b msg) unittest/tests)))

(define (test/all)
  (let loop [(unittest/tests unittest/tests)]
    (cond
      [(null? unittest/tests) (unittest/finish)]
      [else (begin
            (unittest/run-test
              (list-ref (car unittest/tests) 0) ; a
              (list-ref (car unittest/tests) 1) ; b
              (list-ref (car unittest/tests) 2)) ; msg
            (loop (cdr unittest/tests)))])))
