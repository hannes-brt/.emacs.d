;; Ido-Mode
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ;; enable fuzzy matching

;; Fullscreen
(setq initial-frame-alist '((top . 20) (left .30) ;Make window bigger
			    (width . 200) (height . 53)))

;; Modify mouse scrolling
(require 'smooth-scrolling) 		;Enable smooth scrolling
;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
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

;; Theming
(add-to-list 'load-path "~/emacs/site-lisp/color-theme-6.6.0") 
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))
(eval-after-load "color-theme" '(color-theme-xemacs))

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

;; WindMove
(windmove-default-keybindings)

;; Autocomplete
(require 'auto-complete)
(global-auto-complete-mode t)

;; Yasnippet
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/yasnippet/snippets")

;; Split window and show bookmarks
(split-window-horizontally)
(list-bookmarks)
(column-number-mode)

;; Load longlines-mode
(autoload 'longlines-mode
  "longlines.el"
  "Minor mode for automatically wrapping long lines." t)