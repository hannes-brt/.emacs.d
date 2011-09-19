;; Configuration for LaTeX

;; Make sure the texlive distribution is found
(setenv "PATH" (concat "/usr/local/texlive/2011/bin/x86_64-linux:"
		       (getenv "PATH")))

;; TeX-mode options
(setq-default TeX-master nil) ; Query for master file.
(setq TeX-auto-save t)
(setq TeX-parse-self)
(add-hook 'latex-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'bibtex-mode-hook 'turn-on-auto-revert-mode)
(setq reftex-plug-into-auctex t)
(setq reftex-label-alist
      `((nil ?f nil "~\\cref{%s}" nil nil)
	(nil ?t nil "~\\cref{%s}" nil nil)
	(nil ?s nil "~\\cref{%s}" nil nil)))


(defun LaTeX-math-bs (char dollar)
  "Insert a \\bs{CHAR}.  If DOLLAR is non-nil, put $'s around it."
  (interactive "*c\nP")
  (if dollar (insert "$"))
  (insert "\\bs{" (char-to-string char) "}")
  (if dollar (insert "$")))

;; Find my bibliography
(setq reftex-bibpath-environment-variables
      '("$HOME/Library/texmf/tex/latex/bibliography/"))

;; Support for makefile
(eval-after-load "tex"
  '(add-to-list 'TeX-command-list '("Make" "make" TeX-run-command nil t)))
