(add-to-list 'load-path "~/emacs")

(require 'setup-load-paths)
(require 'load-libraries)
(require 'user-functions)
(require 'user-settings)
(require 'user-keys)
(require 'user-faces)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-section-hook (quote (LaTeX-section-heading LaTeX-section-title LaTeX-section-section)))
 '(TeX-PDF-mode t)
 '(global-semantic-idle-breadcrumbs-mode t nil (semantic/idle))
 '(global-semantic-idle-completions-mode t nil (semantic/idle))
 '(global-semantic-idle-scheduler-mode t)
 '(global-semantic-idle-summary-mode t)
 '(global-semantic-stickyfunc-mode t)
 '(global-semanticdb-minor-mode t)
 '(grep-command "grep -rnH -e ")
 '(haskell-mode-hook (quote (turn-on-haskell-indentation capitalized-words-mode turn-on-haskell-doc-mode turn-on-haskell-decl-scan)))
 '(hl-paren-background-colors nil)
 '(hl-paren-colors (quote ("red1" "orange1" "yellow1" "green1" "cyan1" "blue1" "magenta1" "firebrick1" "RosyBrown1")))
 '(indent-tabs-mode nil)
 '(inferior-lisp-program "sbcl")
 '(predictive-add-to-dict-ask nil)
 '(predictive-auto-add-to-dict t)
 '(predictive-auto-learn t)
 '(predictive-mode t)
 '(safe-local-variable-values (quote ((encoding . utf-8) (Syntax . Common-Lisp) (Base . 10) (Syntax . ANSI-Common-Lisp) (Syntax . Common-Lisp))))
 '(scheme-program-name "scsh")
 '(semantic-complete-inline-analyzer-displayor-class (quote semantic-displayor-tooltip))
 '(semantic-complete-inline-analyzer-idle-displayor-class (quote semantic-displayor-tooltip))
 '(semantic-completion-displayor-format-tag-function (quote semantic-format-tag-prototype))
 '(semantic-default-submodes (quote (global-semantic-stickyfunc-mode global-semantic-idle-completions-mode global-semantic-idle-scheduler-mode global-semanticdb-minor-mode global-semantic-idle-summary-mode)))
 '(semantic-idle-scheduler-idle-time 1)
 '(semantic-idle-scheduler-work-idle-time 60)
 '(semantic-idle-summary-function (quote semantic-format-tag-prototype))
 '(semantic-mode t)
 '(semanticdb-project-roots nil)
 '(show-trailing-whitespace t)
 '(vm-summary-show-threads t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "Grey15" :foreground "Grey" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 '(hl-paren-face ((t (:weight ultra-bold))) t))

