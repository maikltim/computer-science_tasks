;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1.32|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;; Recursive

(define (accumulate combine id term a next b)
  (if (> a b)
      id
      (combine (term a)
               (accumulate combine id term (next a) next b))))
;; Iterative

(define (accumulate combine id term a next b)
  (define (iter a acc)
    (if (> a b)
        acc
        (iter (next a) (combine (term a) acc))))
  (iter a id))

;; Implementing sum and product in terms of accumulate:
(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (product term a next b)
  (accumulate * 1 term a next b))

(sum identity 1 inc 10) => 55
(product identity 1 inc 10) => 3628800