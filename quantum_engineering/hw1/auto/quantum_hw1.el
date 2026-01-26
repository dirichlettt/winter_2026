(TeX-add-style-hook
 "quantum_hw1"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8")))
   (TeX-run-style-hooks
    "latex2e"
    "preamble"
    "article"
    "art10"
    "inputenc"))
 :latex)

