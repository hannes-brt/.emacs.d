;; Load ssh
(require 'ssh)

;; Load MATLAB mode 
(autoload 'matlab-mode "matlab.el" "Enter Matlab mode." t)
(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist)) 
(autoload 'matlab-shell "matlab.el" "Interactive Matlab mode." t)

;; Interactive functions to hexify and unhexify urls
(defun hexify-region (start end)
  (interactive "r")
  (let ((hex-string (url-hexify-string 
		   (filter-buffer-substring start end))))
    (delete-region start end)
    (insert hex-string)))

(defun unhexify-region (start end)
  (interactive "r")
  (let ((hex-string (url-unhex-string 
		   (filter-buffer-substring start end))))
    (delete-region start end)
    (insert hex-string)))

;; Textmate-mode
(require 'textmate)
(textmate-mode)

;; Processing-mode
(autoload 'processing-mode "processing-mode" "Processing mode" t)
(add-to-list 'auto-mode-alist '("\\.pde$" . processing-mode))
(setq processing-location "/System/Library/Java/JavaVirtualMachines/2.10/Resources")

;; Hack to enable Textexpander
(setq ns-alternate-modifier 'alt)
(define-key global-map [(alt ?v)] 'scroll-down)
(define-key global-map [(meta ?v)] 'yank)
