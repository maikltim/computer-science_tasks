;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1.31|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;; Recursive
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))


;; Iterative

(define (product term a next b)
  (define (iter a acc)
    (if (> a b)
        acc
        (iter (next a) (* acc (term a)))))
  (iter a 1))

;; Calculating factorials and approximating ππ using product:
(define (factorial n)
  (product identity 1 inc n))

(factorial 5) => 120
(factorial 7) => 5040

(define (approx-pi n)
  (define (term  k)
    (let ((r (remainder k 2)))
      (/ (+ k 2 (- r))
         (+ k 1 r))))
  (* 4 (product term 1.0 inc n)))

(approx-pi 00010) ~> 3.2751010413348065
(approx-pi 00100) ~> 3.1570301764551654
(approx-pi 01000) ~> 3.1431607055322552
(approx-pi 10000) ~> 3.1417497057380084