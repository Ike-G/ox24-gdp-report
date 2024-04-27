(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "margin=1in")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "geometry"
    "graphicx"
    "hyperref")
   (LaTeX-add-labels
    "sec:intro"
    "subsec:context"
    "subsec:spec"
    "sec:logistics"
    "subsec:timeline"
    "subsec:delegation"
    "sec:implementation"
    "subsec:sensors"
    "subsec:label"
    "sec:development"
    "sec:conclusion"))
 :latex)

