;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1.15|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine theta)
  (if (<= (abs theta) 0.1)
      theta
      (p (sine (/ theta 3.0)))))


;; (sine 12.15)
;; (p (sine (4.05)))
;; (p (p (sine (1.35))))
;; (p (p (p (sine (0.45)))))
;; (p (p (p (p (sine (0.15))))))
;; (p (p (p (p (p (sine (0.05)))))))
;;
;; `p' is applied five times.
;; The order of grown is O(log a).
;; The number of steps is (ceil (\ (log (\ a 0.1) (log 3))))