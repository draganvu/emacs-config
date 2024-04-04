;;; core-settings.el

;; Ensure UTF-8 is used
(set-language-environment 'UTF-8)
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8-unix)

;; Set user name and email
(setq user-full-name "Dragan Vujović"
      user-mail-address "dvujovic@protonmail.ch")

;; Show keystrokes in minibuffer in realtime
(setq echo-keystrokes 0.1)

;; Delete highlighted area when you type
(delete-selection-mode t)

;; Enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; Paren mode settings
(setq show-paren-delay 0)
(show-paren-mode 1)

;; Disable startup screen
(setq inhibit-startup-screen t)

;; Set mode of scratch buffer and message
(setq initial-major-mode 'text-mode)
(setq initial-scratch-message "Welcome to GNU/Emacs!!!")

;; Warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)

;; Disable bell sound
(setq ring-bell-function 'ignore)

(provide 'core-settings)

;;; core-settings.el ends here
