;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname exercise_11) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Exercise 11.
;; Define a function that consumes two numbers, x and y,
;; and that computes the distance of point (x,y) to the origin.

;; Definitions
(define (calculate-distance x y) (sqrt (+ (sqr x) (sqr y))))

(calculate-distance 5 5)