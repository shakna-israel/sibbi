(define (string/nth str position)
  ; Get a string of a character within a string, from a positive or negative integer
  ; example: (string/nth "Hello, World!" -3) => "r"
  ; Returns false for a misuse
  (cond
    [(= 0 position) (string (string-ref str position))]
    [(positive? position) (string (string-ref str position))]
    [(negative? position) (string (string-ref str (+ (string-length str) position)))]
    [else #f]))

(define (string/slice str start finish)
  ; Substring based on positive and negative integers
  ; example: (string/slice "Hello, World!" 3 -4) => "lo, Wo"
  ; Returns false for a misuse
  (cond
    [(negative? start) #f]
    [(= 0 finish) (string/nth str 0)]
    [(positive? finish) (substring str start finish)]
    [(negative? finish) (substring str start (+ (string-length str) finish))]
    [else #f]))
