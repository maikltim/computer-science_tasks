;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |1.05|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Note that ``p'' is recursively defined by itself. Therefore, for 
; the applicative-order evaluation, ``p'' will be evaluated in the 
; test, and this will lead to an infinite recursion. While in the 
; normal-order evaluation, the value of p is not evaluated, and 
; thus the test will return 0.

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p)) 