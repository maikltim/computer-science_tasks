;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1.45|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define (nth-root x n)
  (fixed-point
   ((repeated average-damp
              (floor (/ (log n) (log 2))))
    (lambda (y) (/ x (expt y (- n 1)))))
   1.0))

(nth-root 4 2) ~> 2.000000000000002
(nth-root 256 8) ~> 2.0000000000039666
(nth-root 1048576 20) ~> 1.999999063225966