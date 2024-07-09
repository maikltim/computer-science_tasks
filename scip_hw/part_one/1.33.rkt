;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1.33|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define (filtered-accumulate combine pred? id term a next b)
  (define (iter a acc)
    (cond ((> a b) acc)
          ((pred? a)
           (iter (next a) (combine (term a) acc)))
          (else (iter (next a) acc))))
  (iter a id))

;; Sum of squares of primes in the interval from a to b:
(define (sum-squared-primes a b)
  (filtered-accumulate + prime? 0 square a inc b))

(sum-squared-primes 10 15) => 290

;; Product of positive integers below n relatively prime to n:
(define (product-rel-prime n)
  (define (rel-prime? i)
    (= (gcd i n) 1))
  (filtered-accumulate * rel-prime? 1 identity 1 inc (- n 1)))

(product-rel-prime 10) => (* 3 7 9)