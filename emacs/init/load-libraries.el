(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'cc-mode)
(require 'paren)
(require 'highlight-parentheses)
(require 'browse-kill-ring)
(require 'server)
(require 'magit)

(provide 'load-libraries)


