(require 'color-theme)
(load-library "color-theme-library")
(color-theme-charcoal-black)

(defface font-lock-todo-face
   '((((class color) (background light)) (:foreground "Red" :weight bold)))
  "Face for the lambda character.")

(defface font-lock-paren-face
  '((((class color) (background light))
     :foreground "dark gray"))
  "Face for the parenthesis"
  :group 'font-lock-faces)

(defvar font-lock-paren-face 'font-lock-paren-face)

(font-lock-add-keywords 'lisp-mode '(("\\([\(\)]+\\)" 0 font-lock-paren-face t)))


(provide 'user-faces)
