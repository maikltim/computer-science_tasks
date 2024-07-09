;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname exercise_36) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;; Exercise 36
;; Design the function image-area,
;; which counts the number of pixels in a given image.

;; 1. Express how you wish to represent information as data.

; We use numbers to represent quantity of pixels.


;; 2. Write down:
;;   - a signature
;;   - a statement of purpose
;;   - a function header

; Image -> Number
; Counts the number of pixels in a given image.
; (define (f img) 0)


;; 3. Illustrate the signature and the purpose statement
;; with some functional examples.

; (square 10 "solid" "red") -> 100
; (rectangle 30 40 "outline" "blue") -> 1200


;; 4. Write down function prototype: header and body template.

; (define (image-area img) (... img ...))


;; 5. Write down the function.
(require 2htdp/image)
(define (image-area img)
  (* (image-width img) (image-height img)))




;; 6. Test the function on the step 3 examples.

(image-area (square 10 "solid" "red"))

(image-area (rectangle 30 40 "outline" "blue"))