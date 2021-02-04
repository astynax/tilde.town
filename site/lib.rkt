#lang racket
(require sxml)

(provide ->html page a super)

(define (->html tree)
  (string-append
   "<!DOCTYPE html>\n"
   (srl:sxml->html-noindent tree)))

(define (page heads . tails)
  `(html
    (head
     (meta (@ (charset "utf-8")))
     ,@heads)
    (body
     ,@tails)))

(define (a title url)
  `(a (@ (href ,url)) ,title))

(define (super . content)
  `(span (@ (class "super")) ,@content))
