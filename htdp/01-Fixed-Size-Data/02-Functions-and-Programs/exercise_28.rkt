;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname exercise_28) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;; Exercise 28.
;; Determine the potential profit for these ticket prices: $1, $2, $3, $4, and $5.
;; Which price maximizes the profit of the movie theater?
;; Determine the best ticket price to a dime.

;; Answer
;; See implementation in the Exercise-27.rkt file.
;; ----------------------
;; price ($) | profit ($)
;; ----------------------
;;   1       | 511.2
;;   2       | 937.2
;;   3       | 1063.2
;;   4       | 889.2
;;   5       | 415.2
;; ----------------------
;; $3 price maximizes the profit.