;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname exercise_13) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Exercise 13.
;; Define the function string-first, which extracts the first 1String from a non-empty string.

;; Definitions
(define (string-first str)
  (if (> (string-length str) 0)
      (substring str 0 1)
      ""))