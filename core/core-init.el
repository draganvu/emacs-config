;;; core-init.el

(defvar emacs-savefile-dir
  (expand-file-name ".emacs-savefiles" user-emacs-directory)
  "This directory stores all the automatically generated save/history files.")

;; Create savefile directory
(defun make-savefile-dir ()
  "Create directory only if it doesn't exist."
  (unless (file-exists-p emacs-savefile-dir)
    (make-directory emacs-savefile-dir)))

(add-hook 'emacs-startup-hook 'make-savefile-dir)

;; Set location of customize file
(setq custom-file (expand-file-name "custom.el" emacs-savefile-dir))
(load custom-file 'noerror)

;; Store all backup and autosave files in a emacs-backups dir
(setq backup-directory-alist
      `((".*" . "~/.emacs.d/.emacs-backups")))
(setq auto-save-file-name-transforms
      `((".*" , "~/.emacs.d/.emacs-backups" t)))

(provide 'core-init)

;;; core-init.el ends here
