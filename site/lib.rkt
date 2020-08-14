#lang racket
(require sxml)

(provide page build)

(define (page heads . tails)
  `(html
    (head
     (meta (@ (charset "utf-8")))
     ,@heads)
    (body
     ,@tails)))

(define (build tree)
  (string-append
   "<!DOCTYPE html>\n"
   (srl:sxml->html tree)))
