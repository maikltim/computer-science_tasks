;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1.12|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;      1
;     1 1
;    1 2 1
;   1 3 3 1
;  1 4 6 4 1
;
;            / 1                              , c = 1 or r = c
; f(r, c) = <  
;            \ f(r - 1, c - 1) + f(r - 1, c)  , otherwise




(define (pascal i j)
  (if (or (= j 0) (= j i))
      1
      (+ (pascal (- i 1) (- j 1))
         (pascal (- i 1) j))))


(pascal 3 0)
(pascal 3 1) 
(pascal 3 2) 
(pascal 3 3)