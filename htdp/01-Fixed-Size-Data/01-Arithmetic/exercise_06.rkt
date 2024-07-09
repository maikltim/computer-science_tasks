;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname exercise_06) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;;
;; Exercise 6.
;; Add the following line to the definitions area:
;; (define cat <image>)
;; Create an expression that counts the number of pixels in the image.

(require 2htdp/image)

;; Definitions
(define cat (bitmap "./images/cat.png")) ; load image to keep this file in a human-readable format 

;; Application
(* (image-width cat) (image-height cat))