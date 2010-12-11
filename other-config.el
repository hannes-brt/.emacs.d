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


  
  
