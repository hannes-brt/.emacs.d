;; Emacs-dot file for Mac
;; Hannes Bretschneider

;; Load emacs-directories
(add-to-list 'load-path "~/.emacs.d")
(progn (cd "~/.emacs.d") (normal-top-level-add-subdirs-to-load-path))
(add-to-list 'load-path "~/emacs")
(progn (cd "~/emacs") (normal-top-level-add-subdirs-to-load-path))
(setq load-path (cons (expand-file-name "~/emacs/site-lisp/") load-path))

;; Load setting for version-control
(load-library "vc-config.el")

;; Load settings for text mode
(load-library "text-config.el")

;; Load all modes and settings that improve the interface 
(load-library "interface-config.el")

;; Load settings for LaTeX
(load-library "tex-config.el")

;; Load settings for using Emacs as an IDE
(load-library "ide-config.el")

;; Load settings for Python
;; (load-library "python-config.el")
(load-library "init_python.el")

;; Load settings for R)
(load-library "r-config.el")

;; Other modes
(load-library "other-config.el")

;; Own macros
(load-library "macros-keybindings.el")

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ConTeXt-Omega-engine "omega")
 '(LaTeX-float "htbp")
 '(LaTeX-math-list (quote (("1 b" LaTeX-math-bs "Bold symbol" nil))))
 '(TeX-PDF-mode t)
 '(TeX-check-path (quote ("." "/usr/local/texlive/texmf-local" "/usr/local/texlive/2011/texmf-dist/tex/" "/usr/local/texlive/2011/texmf-dist/bibtex/bst" "/usr/share/texmf-texlive/bibtex/bst/" "/usr/share/texmf-texlive/tex/" "/usr/share/texmf/tex/" "/var/lib/texmf/tex/")))
 '(TeX-electric-sub-and-superscript t)
 '(TeX-macro-global (quote ("/usr/local/texlive/texmf-local/tex/" "/usr/local/texlive/texmf-local/bibtex/bst/" "/usr/local/texlive/2011/texmf-dist/tex/" "/usr/local/texlive/2011/texmf-dist/bibtex/bst/" "/usr/share/texmf-texlive/bibtex/bst/" "/usr/share/texmf-texlive/tex/" "/usr/share/texmf/tex/" "/var/lib/texmf/tex/")))
 '(TeX-macro-private (quote ("~/texmf/tex")))
 '(c-default-style (quote ((c-mode . "k&r") (java-mode . "java") (awk-mode . "awk") (other . "gnu"))))
 '(ecb-options-version "2.32")
 '(ecb-source-path (quote ("~/git/")))
 '(ecb-wget-setup (quote cons))
 '(ess-language "R")
 '(latin1-display t nil (latin1-disp))
 '(mac-emulate-three-button-mouse t)
 '(py-python-command "/usr/lib/epd-python-7.1.2/bin/python")
 '(reftex-bibpath-environment-variables (quote ("BIBINPUTS" "TEXBIB")))
 '(reftex-default-bibliography (quote ("~/Library/texmf/tex/latex/bibliography/hannes_bib.bib")))
 '(reftex-label-alist (quote ((nil 102 nil "~\\cref{%s}" nil nil) (nil 116 nil "~\\cref{%s}" nil nil) (nil 115 nil "~\\cref{%s}" nil nil) (nil 101 nil "~\\cref{%s}" nil nil) ("algorithm" 97 nil "~\\cref{%s}" nil nil))))
 '(safe-local-variable-values (quote ((TeX-master . t) (TeX-master . \.\./cv-tufte\.tex) (TeX-master . \.\./\.\./cv-tufte))))
 '(show-paren-mode t)
 '(tex-default-mode (quote latex-mode))
 '(tool-bar-mode nil)
 '(transient-mark-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
<<<<<<< HEAD
 '(default ((t (:stipple nil :background "gray85" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 115 :width normal :family "Liberation Mono"))))
=======
 '(default ((t (:inherit nil :stipple nil :background "gray80" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 70 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
>>>>>>> e1ee6638a32a3435620a028d0aaeffca5037520f
 '(cursor ((t (:background "red")))))

