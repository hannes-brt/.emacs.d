(setq load-path (cons (expand-file-name "~/emacs/site-lisp/") load-path))

(setq initial-frame-alist '((top . 20) (left .30) ;Make window bigger
			    (width . 200) (height . 53)))

(require `ess-site)			;Load ess
(autoload `ess-rdired "ess-rdired"
  "View *R* objects in dired-like buffer." t)
(require `essd-jags)

(require 'smooth-scrolling) 		;Enable smooth scrolling
;; scroll one line at a time (less "jumpy" than defaults)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time

(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling

(setq mouse-wheel-follow-mosue 't) ;; scroll window under mouse

(setq scroll-step 1) ;; keyboard scroll one line at a time

(defun my-bell-function ()		;disable bell when scrolling
  (unless (memq this-command
        '(isearch-abort abort-recursive-edit exit-minibuffer
              keyboard-quit mwheel-scroll down up next-line previous-line
              backward-char forward-char))
    (ding)))
(setq ring-bell-function 'my-bell-function)
(setq inhibit-splash-screen t)
(add-hook 'emacs-startup-hook 
	  '(lambda ()
	     (switch-to-buffer "*Bookmark List*")))

(autoload 'matlab-mode "matlab.el" "Enter Matlab mode." t) ;MATLAB mode
(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist)) 
(autoload 'matlab-shell "matlab.el" "Interactive Matlab mode." t)

(add-to-list 'load-path "~/emacs/site-lisp/color-theme-6.6.0") ;Color themes
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))
(eval-after-load "color-theme" '(color-theme-xemacs))

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

;; Own Macros
(fset 'kill-completion-buffer
   [?\C-x ?k ?* ?C ?o ?m tab return])
(global-set-key "\C-x\C-kC" 'kill-completion-buffer)

(fset 'copy-line
   [?\C-a ?\C-  ?\C-e ?\M-w])
(global-set-key "\C-x\C-kK" 'copy-line)

(fset 'copy-output-to-transcript
   [?\M-{ ?\C-  ?\M-} ?\M-w ?\C-x ?o ?\C-y ?\C-  ?\C-\M-r ?^ ?> ?\M-\;])

(fset 'previous-R-command-in-transcript
   [?\C-a ?\C-  ?\C-e ?\C-w ?\C-c ?\C-z ?\C-c ?\C-u ?\M-p ?\C-a ?\C-  ?\C-e ?\M-w ?\C-c ?\C-u ?\C-x ?o ?\C-y])

(fset 'col-to-latex-row
   "\336 &\C-n\C-e")

;; Own keybindings
(global-set-key "\C-xl" 'goto-line)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(LaTeX-float "htbp")
 '(TeX-PDF-mode t)
 '(TeX-electric-sub-and-superscript t)
 '(ess-language "R")
 '(latin1-display t nil (latin1-disp))
 '(mac-emulate-three-button-mouse t)
 '(reftex-label-alist (quote (("algorithm" 97 "alg:" "Algorithm~\\ref{%s}" nil ("algorithm" "alg.") -3))))
 '(safe-local-variable-values (quote ((TeX-master . \.\./\.\./cv-tufte))))
 '(show-paren-mode t)
 '(tex-default-mode (quote latex-mode))
 '(tool-bar-mode nil)
 '(transient-mark-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "red")))))

(put 'scroll-left 'disabled nil)

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

;; Autocomplete
(require 'auto-complete)
(global-auto-complete-mode t)

;; Yasnippet
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/yasnippet/snippets")

;; Python
(load-library "ryan-python")

;; Subversion
;; (load-library "ryan-subversion")

;; Git
(require 'egg)

;; WindMove
(windmove-default-keybindings)

;; Org-mode
;(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; Split window and show bookmarks
(split-window-horizontally)
(list-bookmarks)
(column-number-mode)







