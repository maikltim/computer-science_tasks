;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1.27|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define (square2 x) (* x x))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
          (square2 (expmod base (/ exp 2) m))
          m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))



(define (carmichael-number? n)
  (define (try-it n a)
    (cond ((= a 1) #t)
          ((not (= (expmod a n n) a)) #f)
          (else (try-it n (- a 1)))))
  (try-it n (- n 1)))




(display (carmichael-number? 561))  (newline)
(display (carmichael-number? 1105)) (newline)
(display (carmichael-number? 1729)) (newline)
(display (carmichael-number? 2465)) (newline)
(display (carmichael-number? 2821)) (newline)
(display (carmichael-number? 6601)) (newline)