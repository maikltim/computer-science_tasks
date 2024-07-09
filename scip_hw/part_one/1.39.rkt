;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1.39|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define (tan-cf x k)
  (cont-frac
   (lambda (i) (if (= i 1) x (- (square x))))
   (lambda (i) (- (* i 2) 1))
   k))

(define quarter-pi (atan 1))

(tan-cf quarter-pi 1) ~> 0.7853981633974483
(tan-cf quarter-pi 2) ~> 0.9886892399342050
(tan-cf quarter-pi 3) ~> 0.9997876809149684
(tan-cf quarter-pi 4) ~> 0.9999978684156948
(tan-cf quarter-pi 5) ~> 0.9999999865263550
(tan quarter-pi) ~> 1