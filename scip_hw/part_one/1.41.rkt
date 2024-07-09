;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1.41|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "abstraction.rkt" "teachpack" "2htdp") (lib "web-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define (double f)
  (lambda (x)
    (f (f x))))

(((double (double double)) inc) 5)
=> (((double (lambda (f) (double (double f)))) inc) 5)
=> (((lambda (f) (double (double (double (double f))))) inc) 5)
=> ((double (double (double (double inc)))) 5)
=> ((double (double (double (lambda (x) (inc (inc x)))))) 5)
=> ((double (double (lambda (x) (inc (inc (inc (inc x))))))) 5)
=> ((double (lambda (x) (inc (inc (inc (inc (inc (inc (inc (inc x)))))))))) 5)
=> ((lambda (x) (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc
      (inc (inc (inc (inc x))))))))))))))))) 5)
=> (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc
     (inc 5))))))))))))))))
=> 21