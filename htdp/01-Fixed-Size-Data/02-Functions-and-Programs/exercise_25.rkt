;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname exercise_25) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;; Exercise 25.
;; Take a look at this attempt to solve exercise 17:
;; <code follows>
;; Does stepping through an application suggest a fix?

(require 2htdp/image)

;; Exercise code
(define (image-classify img)
(cond
[(>= (image-height img) (image-width img)) "tall"]
[(= (image-height img) (image-width img)) "square"]
[(<= (image-height img) (image-width img)) "wide"]))

;; Square is not classified as "square"
(image-classify (square 20 "outline" "blue"))