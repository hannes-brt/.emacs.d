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
(load-library "python-config.el")

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
 '(LaTeX-float "htbp")
 '(TeX-PDF-mode t)
 '(TeX-electric-sub-and-superscript t)
 '(ecb-options-version "2.32")
 '(ecb-source-path (quote ("~/git/")))
 '(ecb-wget-setup (quote cons))
 '(ess-language "R")
 '(latin1-display t nil (latin1-disp))
 '(mac-emulate-three-button-mouse t)
 '(reftex-label-alist (quote (("algorithm" 97 "alg:" "Algorithm~\\ref{%s}" nil ("algorithm" "alg.") -3))) t)
 '(safe-local-variable-values (quote ((TeX-master . \.\./cv-tufte\.tex) (TeX-master . \.\./\.\./cv-tufte))))
 '(show-paren-mode t)
 '(tex-default-mode (quote latex-mode))
 '(tool-bar-mode nil)
 '(transient-mark-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "gray85" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :family "apple-monaco"))))
 '(cursor ((t (:background "red")))))

