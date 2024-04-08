;;; core-functions.el --- Utility functions for Emacs

(defun move-line-up ()
  "Move the current line up."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(defun move-line-down ()
  "Move the current line down."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

(defun create-scratch-buffer (mode)
  "Create a new scratch buffer in the specified mode and switch to it."
  (let ((buffer (generate-new-buffer "*scratch*")))
    (with-current-buffer buffer
      (funcall mode))
    (switch-to-buffer buffer)))

(defun create-scratch-org-buffer ()
  "Create a new Org-mode scratch buffer."
  (interactive)
  (create-scratch-buffer 'org-mode))

(defun create-scratch-latex-buffer ()
  "Create a new LaTeX scratch buffer."
  (interactive)
  (create-scratch-buffer 'latex-mode))

(defun create-scratch-elisp-buffer ()
  "Create a new Emacs Lisp scratch buffer."
  (interactive)
  (create-scratch-buffer 'emacs-lisp-mode))

(provide 'core-functions)

;;; core-functions.el ends here
