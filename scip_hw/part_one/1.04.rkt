;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |1.04|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; This procedure receives two arguments, namely a and b, and
; returns the sum of a and the absolute value of b
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))