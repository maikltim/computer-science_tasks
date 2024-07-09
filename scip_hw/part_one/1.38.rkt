;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1.38|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define (approx-e k)
  (define (d i)
    (if (zero? (remainder (+ i 1) 3))
        (* 2/3 (+ i 1))
        1))
  (+ 2 (cont-frac always-one d k)))

(approx-e 1) ~> 3.0
(approx-e 2) ~> 2.6666666666666665
(approx-e 3) ~> 2.75
(approx-e 4) ~> 2.7142857142857144
(approx-e 5) ~> 2.71875
(approx-e 1000) ~> 2.7182818284590455