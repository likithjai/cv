;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "publications"
 (lambda ()
   (LaTeX-add-bibitems
    "likith2018thermodynamic"
    "likith2020chalcogenide"
    "stan2020doping"
    "likith2024interlayer"
    "tewary2022modeling"
    "jai2022structure"
    "finfrock2022elucidating"))
 '(or :bibtex :latex))

