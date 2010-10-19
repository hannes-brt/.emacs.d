;; Turn on longlines-mode
(add-hook 'text-mode-hook 'longlines-mode)

;; Turn on markdown-mode
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.text" . markdown-mode) auto-mode-alist))
