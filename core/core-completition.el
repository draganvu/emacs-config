;;; core-completition.el --- My completition frameworks for Emacs

;; Enable ido mode
(use-package ido-vertical-mode
  :config
  (ido-mode +1)
  (ido-vertical-mode +1)
  (setq ido-save-directory-list-file (expand-file-name "ido.last" emacs-savefile-dir))
  (setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right))

;; Enable smex
(use-package smex
  :config
  (smex-initialize)
  (setq smex-save-file (expand-file-name ".smex-items" emacs-savefile-dir))
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands))

;; Enable Company mode
(use-package company
  :diminish company-mode
  :config
  (setq company-idle-delay 0.5)
  (global-company-mode))

(provide 'core-completition)

;;; core-completition.el ends here
