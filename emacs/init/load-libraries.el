;(require 'package)
;(package-initialize)

;; (add-to-list 'load-path "~/programowanie/biblioteki/clbuild/source/slime/")
;; (add-to-list 'load-path "~/programowanie/biblioteki/clbuild/source/slime/contrib")

(add-to-list 'load-path "~/emacs/lib/slime")
(add-to-list 'load-path "~/emacs/lib/slime/contrib")
(require 'slime)
(slime-setup '(slime-repl slime-fuzzy))
(slime-require :swank-listener-hooks)

 

;(load-library "swank-clojure")

(add-to-list 'load-path "~/emacs/lib/cedet/common/")


(require 'cc-mode)
(require 'paren)
(require 'highlight-parentheses)
(require 'browse-kill-ring)
(require 'erc)
(require 'erc-plugins)
(require 'server)
(require 'magit)
;(require 'predictive)


(provide 'load-libraries)


