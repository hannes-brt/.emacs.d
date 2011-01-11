;; Turn on longlines-mode
(add-hook 'text-mode-hook 'longlines-mode)

;; Turn on markdown-mode
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.text" . markdown-mode) auto-mode-alist))

;; Turn region into Latex-picture
(defun latex-picture (start end)
  (interactive "r")
  (let ((hex-string (url-hexify-string 
		   (filter-buffer-substring start end))))
    (delete-region start end)
    (insert (concat "![](http://www.sitmo.com/gg/latex/latex2png.2.php?z=100&eq="
		    hex-string
		    ")"))))

;; Turn Sitmo-equation into Markdown/LaTeX code
(fset 'sitmo-to-md
   [?C-a ?\C-  ?\C-s ?e ?q ?= ?\C-m ?\M-x ?d ?e ?l ?e ?t ?e ?- ?r ?e ?g ?i ?o ?n return ?\C-e backspace ?\C-a ?\C-  ?\C-e ?\M-x ?u ?n ?h ?e ?x ?i ?f tab return ?\C-a ?\\ ?[ ?  ?\C-e ?  ?\\ ?]])


;; Unfill paragraph and region
(defun unfill-paragraph ()
  "Replace newline chars in current paragraph by single spaces.
This command does the reverse of `fill-paragraph'."
  (interactive)
  (let ((fill-column 90002000))
    (fill-paragraph nil)))

(defun unfill-region (start end)
  "Replace newline chars in region by single spaces.
This command does the reverse of `fill-region'."
  (interactive "r")
  (let ((fill-column 90002000))
    (fill-region start end)))