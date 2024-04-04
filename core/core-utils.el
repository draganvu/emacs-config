;;; core-utils.el

(use-package recentf
  :init
  (setq recentf-save-file (expand-file-name "recentf" emacs-savefile-dir))
  (setq recentf-max-menu-items 50)
  :config
  (recentf-mode 1))

(defun ido-recentf-open ()
  "Use `ido-completing-read' to find a recent file."
  (interactive)
  (if (find-file (ido-completing-read "Find recent file: " recentf-list))
      (message "Opening file...")
    (message "Aborting")))

(global-set-key (kbd "C-c r") 'ido-recentf-open)

(use-package which-key
  :config
  (setq which-key-idle-delay 3)
  (which-key-mode 1))

(use-package rainbow-mode)

(provide 'core-utils)

;;; core-utils.el ends here
