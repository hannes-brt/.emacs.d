;; Python mode settings

(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))
(require 'cython-mode)

;; Ipython
(setq ipython-command "/Library/Frameworks/Python.framework/Versions/6.2/bin/ipython")
(require 'ipython)
(setq ipython-completion-command-string "print(';'.join(__IP.Completer.all_completions('%s')))\n")

(setq interpreter-mode-alist
      (cons '("python" . python-mode)
	    interpreter-mode-alist)
      python-mode-hook
      '(lambda () (progn
		    (set-variable 'py-indent-offset 4)
		    (set-variable 'py-smart-indentation nil)
		    (set-variable 'indent-tabs-mode nil) 
		    ;;(highlight-beyond-fill-column)
                    (define-key python-mode-map "\C-m" 'newline-and-indent)
		    (pabbrev-mode)
		    (abbrev-mode)
	 )
      )
)

;; pyflakes
;; (when (load "flymake" t) 
;;  (defun flymake-pyflakes-init () 
;;  (let* ((temp-file (flymake-init-create-temp-buffer-copy 
;;  'flymake-create-temp-inplace)) 
;;  (local-file (file-relative-name 
;;  temp-file 
;;  (file-name-directory buffer-file-name)))) 
;;  (list "pyflakes" (list local-file)))) 
 
;;  (add-to-list 'flymake-allowed-file-name-masks 
;;  '("\\.py\\'" flymake-pyflakes-init))) 

;; (when (load "flymake" t) 
;;          (defun flymake-pyflakes-init () 
;;            (let* ((temp-file (flymake-init-create-temp-buffer-copy 
;;                               'flymake-create-temp-inplace)) 
;;               (local-file (file-relative-name 
;;                            temp-file 
;;                            (file-name-directory buffer-file-name)))) 
;;              (list "pyflakes" (list local-file)))) 

;;          (add-to-list 'flymake-allowed-file-name-masks 
;;                   '("\\.py\\'" flymake-pyflakes-init))) 

;;    (add-hook 'find-file-hook 'flymake-find-file-hook)

;; (add-hook 'find-file-hook 'flymake-find-file-hook)
(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
               'flymake-create-temp-inplace))
       (local-file (file-relative-name
            temp-file
            (file-name-directory buffer-file-name))))
      (list "pycheckers"  (list local-file))))
   (add-to-list 'flymake-allowed-file-name-masks
             '("\\.py\\'" flymake-pyflakes-init)))
(load-library "flymake-cursor")
(global-set-key [f10] 'flymake-goto-prev-error)
(global-set-key [f11] 'flymake-goto-next-error)

;; pymacs
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(eval-after-load "pymacs"
  '(add-to-list 'pymacs-load-path "~/site-packages/"))
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)

(require 'pycomplete)


