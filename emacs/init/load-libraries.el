(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'cc-mode)
(require 'paren)
(require 'browse-kill-ring)
(require 'server)
(require 'magit)
(require 'compile)

(provide 'load-libraries)


