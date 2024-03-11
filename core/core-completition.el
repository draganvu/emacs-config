;;; core-completition.el

;; enable ido mode
(use-package ido-vertical-mode
  :config
  (ido-mode +1)
  (ido-vertical-mode +1)
  (setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right))

;; enable smex
(use-package smex
  :config
  (setq smex-save-file (expand-file-name ".smex-items" user-emacs-directory))
  (smex-initialize)
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands))

(provide 'core-completition)

;;; core-completition.el ends here
