(global-set-key (kbd "<f9>") 'compile)
(global-set-key (kbd "<f8>") 'gdb)

(global-set-key (kbd "<f5>") 'next-error)
(global-set-key (kbd "<f6>") 'previous-error)

(global-set-key (kbd "<f7>") 'shell)

(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<up>") 'shrink-window)
(global-set-key (kbd "S-C-<down>") 'enlarge-window)



(global-set-key (kbd "M-h") 'backward-char)
(global-set-key (kbd "C-M-h") 'backward-word) 
(global-set-key (kbd "M-k") 'forward-char)
(global-set-key (kbd "C-M-k") 'forward-word)
(global-set-key (kbd "M-u") 'previous-line)
(global-set-key (kbd "C-M-u") 'backward-paragraph)
(global-set-key (kbd "M-j") 'next-line)
(global-set-key (kbd "C-M-j") 'forward-paragraph)

(global-set-key (kbd "C-f") 'backward-delete-char-untabify)
(global-set-key (kbd "C-M-d") 'kill-sentence)

(global-set-key (kbd "M-g") 'goto-line)

(global-set-key (kbd "C-x w") 'slime-goto-repl-buffer)

(global-set-key (kbd "C-z") 'ido-switch-buffer)
(global-set-key (kbd "C-v") 'ido-switch-buffer)

(global-set-key (kbd "C-o") 'other-window)

(global-set-key (kbd "M-m") 'kill-current-buffer)

(global-set-key (kbd "C-<tab>") 'completion-at-point)

(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)
(define-key c-mode-base-map (kbd "C-c SPC") 'semantic-complete-analyze-inline)

(define-key lisp-mode-map (kbd "TAB") 'slime-indent-and-complete-symbol)

(define-key compilation-mode-map (kbd "C-o") 'other-window)

(global-unset-key (kbd "C-t")) ;; don't like transpose-chars



(provide 'user-keys)
