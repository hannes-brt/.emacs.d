(defun LaTeX-math-bs (char dollar)
  "Insert a \\bs{CHAR}.  If DOLLAR is non-nil, put $'s around it."
  (interactive "*c\nP")
  (if dollar (insert "$"))
  (insert "\\bs{" (char-to-string char) "}")
  (if dollar (insert "$")))
