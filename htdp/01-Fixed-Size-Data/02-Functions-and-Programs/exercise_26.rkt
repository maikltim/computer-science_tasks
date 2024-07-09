;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname exercise_26) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;; Exercise 27.
;; Collect all definitions in DrRacket’s definitions area and change them
;; so that all magic numbers are refactored into constant definitions.

;; Definitions
(define BASE-PRICE 5.0)
(define BASE-ATTENDEES 120)

(define PRICE-CHANGE 0.1)
(define ATTENDEES-CHANGE 15)

(define PERFORMANCE-COST 180)
(define ATTENDEE-COST 0.04)

;; Returns negative values for ticket-price > 5.8
(define (attendees ticket-price)
  (- BASE-ATTENDEES (* (- ticket-price BASE-PRICE) (/ ATTENDEES-CHANGE PRICE-CHANGE))))
;; same as
;;(- BASE-ATTENDEES (* (/ (- ticket-price BASE-PRICE) PRICE-CHANGE) ATTENDEES-CHANGE)))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ PERFORMANCE-COST (* ATTENDEE-COST (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

;; Application
(profit 1)
(profit 2)
(profit 3)
(profit 4)
(profit 5)