;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "quantum_hw2"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8")))
   (TeX-run-style-hooks
    "latex2e"
    "preamble"
    "article"
    "art10"
    "inputenc"))
 :latex)

