;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1.18|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;;Iterative, successive doubling: Θ(log⁡n)Θ(logn) time, Θ(1)Θ(1) space.

(define (fast-* a b)
  (define (iter c a b)
    (cond ((= b 0) c)
          ((even? b) (iter c (double a) (halve b)))
          (else (iter (+ c a) a (- b 1)))))
  (iter 0 a b))

(fast-* 5 4)