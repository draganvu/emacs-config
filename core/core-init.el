;;; core-init.el

(defvar emacs-savefile-dir
  (expand-file-name ".emacs-savefiles" user-emacs-directory)
  "This directory stores all the automatically generated save/history-files.")

;; create savefile directory
(defun make-savefile-dir ()
  "Create directory only if it doesn't exist."
  (unless (file-exists-p emacs-savefile-dir)
    (make-directory emacs-savefile-dir)))

(add-hook 'emacs-startup-hook 'make-savefile-dir)


(provide 'core-init)

;;; core-init.el ends here
