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

;; Copy the whole buffer to the clipboard
(fset 'copy-buffer
   [?\M-x ?m ?a ?r ?k ?- ?w ?h tab return ?\M-w])

;; Own keybindings
(global-set-key "\C-xl" 'goto-line)
(global-set-key "\C-c\C-r" 'revert-buffer)