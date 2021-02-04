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
     "I like programming and programming languages. My favourite PLs:"
     (ul
      (li "Haskell")
      (li "Elm")
      (li "Racket")
      (li "Clojure")
      (li "Rust")
      (li "Emacs Lisp"))
     "Also I like reading, cycling and DIY electronics.")))

(define links
  `(section
    (ul
     (li ,(a "astynax@github" "https://github.com/astynax"))
     (li ,(a "Recursive.One" "https://recursive.one")
         " (personal site, kind of). Also has a Gemini"
         ,(super (a "?" "https://gemini.circumlunar.space/"))
         " "
         ,(a "capsule" "gemini://recursive.one"))
     (li ,(a "astynax.me" "https://astynax.me")
         " (personal site, another one)"))))

(display
 (->html
  (page
   `((title "~astynax") ,css)
   '(h1 "Welcome!")
   about
   links)))
