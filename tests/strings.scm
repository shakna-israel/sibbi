(load "src/test.scm")
(load "src/strings.scm")

; (test "TEST MESSAGE" test-value expected-value)

;
; string/nth
;
(test "string/nth 0"
      (string/nth "Hello, World!" 0)
      "H")

(test "string/nth negative"
      (string/nth "Hello, World!" -1)
      "!")

(test "string/nth positive"
      (string/nth "Hello, World!" 1)
      "e")

;
; string/slice
;

(test "string/slice 0 0"
      (string/slice "Hello, World!" 0 0)
      "H")

(test "string/slice positive"
      (string/slice "Hello, World!" 0 4)
      "Hell")

(test "string/slice negative"
      (string/slice "Hello, World!" 0 -2)
      "Hello, Worl")

(test/all)
