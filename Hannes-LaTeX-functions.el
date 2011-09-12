(defun LaTeX-math-bs (char dollar)
  "Insert a \\bs{CHAR}.  If DOLLAR is non-nil, put $'s around it."
  (interactive "*c\nP")
  (if dollar (insert "$"))
  (insert "\\bs{" (char-to-string char) "}")
  (if dollar (insert "$")))

(defun BibTeX-protect-acronyms ()
  "Protect acronyms in titles by braces."
  (interactive)
  (query-replace-regexp "\\(Title\s?=\s?{[^{]+?\\)\\([A-Z]\\{2,\\}\\)" "\\1{\\2}"))

(defun BibTeX-remove-extra-braces ()
  "Remove brace protection of full titles."
  (interactive)
  (query-replace-regexp "\\(Title\s?=\s?\\){{\\(.*?\\)}}" "\\1{\\2}"))
