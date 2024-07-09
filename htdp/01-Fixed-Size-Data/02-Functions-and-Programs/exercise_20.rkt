;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname exercise_20) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;; Exercise 20.
;; Define the function string-delete,
;; which consumes a string plus a number i and deletes the ith position from str.
;; Assume i is a number between 0 (inclusive) and the length of the given string (exclusive).
;; See exercise 4 for ideas. Can string-delete deal with empty strings?

;; Definitions
(define (string-delete str i)
  (if (> (string-length str) 0)
      (string-append (substring str 0 i) (substring str (+ i 1)))
      ""))

;; Application
(string-delete "Funny_Faces" 5)