;; Configuration for LaTeX

;; TeX-mode options
(setq-default TeX-master nil) ; Query for master file.
(setq TeX-auto-save t)
(setq TeX-parse-self)
(add-hook 'latex-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(setq reftex-plug-into-auctex t)
(setq reftex-label-alist
      `((nil ?f nil "Figure~\ref{%s}" nil nil)
	(nil ?t nil "Table~\ref{%s}" nil nil)
	(nil ?s nil "Section~\ref{%s}" nil nil)))


(defun LaTeX-math-bs (char dollar)
  "Insert a \\bs{CHAR}.  If DOLLAR is non-nil, put $'s around it."
  (interactive "*c\nP")
  (if dollar (insert "$"))
  (insert "\\bs{" (char-to-string char) "}")
  (if dollar (insert "$")))

;; Find my bibliography
(setq reftex-bibpath-environment-variables
      '("$HOME/Library/texmf/tex/latex/bibliography/"))
