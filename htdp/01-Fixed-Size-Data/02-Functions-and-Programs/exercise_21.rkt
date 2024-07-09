;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname exercise_21) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;;
;; Exercise 21.
;; Use DrRacket’s stepper to evaluate (ff (ff 1)) step-by-step.
;; Also try (+ (ff 1) (ff 1)).
;; Does DrRacket’s stepper reuse the results of computations?

;; Definitions

(define (ff a)
  (* 10 a))

;; Application
(ff (ff 1))

(+ (ff 1) (ff 1)) ; the stepper does not reuse the results of computation.