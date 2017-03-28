;;; settings.el

;; ensure UTF-8 is used
(set-language-environment 'UTF-8)
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8-unix)

;; show keystrokes in minibuffer in realtime
(setq echo-keystrokes 0.1)

;; delete highlighted area when you type
(delete-selection-mode t)

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; paren mode settings
(setq show-paren-delay 0)
(show-paren-mode 1)

;; disable startup screen
(setq inhibit-startup-screen t)

;; set mode of scratch buffer and message
(setq initial-major-mode 'text-mode)
(setq initial-scratch-message "Welcome to GNU/Emacs!!!")

;; store all backup and autosave files in a emacs-backups dir
(setq backup-directory-alist
      `((".*" . "~/.emacs-backups")))
(setq auto-save-file-name-transforms
      `((".*" , "~/.emacs-backups" t)))

;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)

;; set user name and email
(setq user-full-name "Dragan Vujović"
      user-mail-address "dvujovic@protonmail.ch")

;;; settings.el ends here
