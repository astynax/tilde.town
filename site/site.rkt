#lang racket
(require "lib.rkt")

(define css
  '(link (@ (rel "stylesheet")
            (type "text/css")
            (href "styles.css"))))

(define logo
  (let* [(span (lambda (cls)
                 (lambda (x) `(span (@ (class ,cls)) ,x))))
         (f (span "fst"))
         (e (span "eye"))
         (s (span "snd"))]
    `(pre (@ (class "logo"))
          ,(s "  \\  /")(br)
          ,(f "<"),(e "o"),(f "\\"),(s "\\/")(br)
          ,(f "  /\\"),(e "o"),(s ">")(br)
          ,(f " /  \\"))))

(define about
  `(section
    (p "I'm " (strong "~astynax") " and this is my tilde page.")
    ,logo
    (p
     "I like programming and programming languages. My favourite PLs are "
     "Haskell, Elm, Racket, Clojure, Rust, Emacs Lisp. Also I like reading, "
     "cycling and DIY electronics.")))

(define links
  (let [(a (lambda (title url) `(a (@ (href ,url)) ,title)))]
    `(section
      (ul
       (li ,(a "astynax@github" "https://github.com/astynax"))
       (li ,(a "Recursive.One" "https://recursive.one")
           " (personal site, kind of). Also available from Gemini")
       (li ,(a "astynax.me" "https://astynax.me")
           " (personal site, another one)")))))

(display
 (build
  (page
   `((title "~astynax") ,css)
   '(h1 "Welcome!")
   about
   links)))
