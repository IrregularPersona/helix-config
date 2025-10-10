(require-builtin steel/random as rand::)
(require (prefix-in helix. "helix/commands.scm"))
(require (prefix-in helix.static. "helix/static.scm"))
(require "smooth-scroll/smooth-scroll.scm") 
(require "markplus-hx/markplus-hx.scm")
; (require "mattwparas-helix-package/splash.scm")
; (require "mattwparas-helix-package/cogs/package.scm")

(define possible-themes '("carbon"))

(define (select-random lst)
  (let ([index (rand::rng->gen-range 0 (length lst))]) (list-ref lst index)))

(define (randomly-pick-theme options)
  (helix.theme (select-random options)))

(randomly-pick-theme possible-themes)

