(defun compile-on-save-start ()
  (let ((buffer (compilation-find-buffer)))
    (unless (get-buffer-process buffer) 
      (recompile))))

(define-minor-mode compile-on-save-mode
  "Minor mode to automatically call `recompile' whenever the
current buffer is saved. When there is ongoing compilation,
nothing happens."
  :lighter " CoS"
    (if compile-on-save-mode
	(progn  (make-local-variable 'after-save-hook)
		(add-hook 'after-save-hook 'compile-on-save-start nil t))
      (kill-local-variable 'after-save-hook)))



(defun kill-current-buffer ()
  (interactive)
  (let ((buffer (current-buffer)))
    (kill-buffer-if-not-modified buffer)))

(defun slime-goto-repl-buffer ()
  (interactive)
  (set-window-buffer (selected-window) (slime-repl-buffer)))



(defun dwim-shared-lisp-mode-hook ()
  (font-lock-add-keywords
   'lisp-mode
   `(("[^-]\\(FIXME\\|TODO\\|KLUDGE\\|QUESTION\\|WARNING\\|#[+-]debug\\)" 1 'font-lock-todo-face t)
     ("(\\(in-package\\|in-suite\\|not-yet-implemented\\|ignore-errors\\|read-from-string\\|eval\\|production-only.?\\|break[^)]?\\|break/inspect.?\\|break/print.?\\|print\\)[ 	\n()]" 1 'font-lock-todo-face t)
     ("(\\(debug-only.? .*\\))" 1 'font-lock-logger-expression-face t)
     ("debug-only.?" 0 'font-lock-logger-expression-face t)
     ("\\*debug-io\\*" 0 'font-lock-todo-face t)
     (,(concatenate 'string "[ 	\n()]" (regexp-opt '("nil" "t" "#t" "#f" "true" "false" "undefined" "it") t)
                    ;; TODO fix #t #t #t alternating
                    "[ 	\n()]")
       1 font-lock-constant-face)
     (,(concatenate 'string "([ 	\n]*" (regexp-opt '("and" "or" "not" "xor") t) "[ 	\n()]")
       1 font-lock-builtin-face)
     ;;(,(concatenate 'string "(" (regexp-opt '("action") t) "[ 	\n()]")
     ;; 1 font-lock-builtin-face)
     ("(\\(<[^ 	\n()]*:[^ 	\n()]+\\)[ 	\n()]" 1 font-lock-preprocessor-face)
     (,(concatenate 'string "[(']\\(" (regexp-opt '("iter" "bind" "aif" "if-bind" "awhen" "when-bind"
                                                    "while" "until" "aprog1" "prog1-bind" "named-lambda"
                                                    "values" "append" "list" "list*" "unwind-protect-case" "setf"
                                                    "null" "apply" "funcall"
                                                    ) t)
                     "\\)[ 	\n()]")
       1 font-lock-keyword-face)
;;;       (,(concatenate 'string "[(']\\(" (regexp-opt '("progn") t)
;;;                      "\\)[ 	\n()]")
;;;         1 font-lock-comment-face)
     (,(concatenate 'string "[(']\\(" (regexp-opt '("catch" "throw" "return" "next-iteration" "call-next-method" "call-next-layered-method" "is" "signals" "not-signals" "finishes"
                                                    "handle-otherwise" "handle-otherwise*" "delay" "delay*" "force") t)
                    "\\|with.*?-lock.*?\\|recurse.*?\\)[ 	\n()]")
       1 font-lock-builtin-face t)
     ("(\\(block\\|return-from\\)[ 	\n()]+\\(.*?\\)[ 	\n()]"
      (1 font-lock-builtin-face)
      (2 font-lock-function-name-face nil t))
     (,(concatenate 'string "[ 	\n()]\\(" (regexp-opt '("this" "self") t) "\\)[ 	\n()]")
       1 font-lock-builtin-face t)
     (,(concatenate 'string "[ 	\n()]\\(-[-/a-zA-Z0-9]+-\\)") ;; -foo-
       1 font-lock-preprocessor-face t)
     ("\\<:\\sw+\\>" 0 font-lock-keyword-face prepend)))

  (let ((overrides
         '((define-backend-method defmethod)
           (define-layered-function defgeneric)
           (defmethod/cc defmethod)
           (defgeneric/cc defgeneric)
           (define-layered-method defmethod)
           (define-application-method defmethod)
           (define-form-method defmethod)
           (define-dynamic-context defclass)
           (defclass* defclass)
           (defcondition* defcondition)
           (def (4 4 (&whole 4 &rest 2) &body))
           (defresources (4 &rest (&whole 2 &lambda &body)))
           (make-xml-element (4 &lambda &body)))))
    (dolist (el overrides)
      (put (first el) 'common-lisp-indent-function
           (if (symbolp (second el))
               (get (second el) 'common-lisp-indent-function)
               (second el))))))

(provide 'user-functions)

