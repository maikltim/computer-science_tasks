;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1.37|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;; Recursive process:
(define (cont-frac n d k)
  (define (helper i)
    (if (= i k)
        0
        (/ (n i)
           (+ (d i) (helper (+ i 1))))))
  (helper 1))

;; Iterative process:
(define (cont-frac n d k)
  (define (iter i acc)
    (if (zero? i)
        acc
        (iter (- i 1) (/ (n i)
                         (+ (d i) acc)))))
  (iter k 0))