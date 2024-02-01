;;; modes.el

;; enable ido mode
(require 'ido-vertical-mode)
(ido-mode 1)
(ido-vertical-mode t)
(setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)

;; enable smex
(require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; enable recentf
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-saved-items 50)

(defun ido-recentf-open ()
  (interactive)
  (if (find-file (ido-completing-read "Find recent file: " recentf-list))
      (message "Opening file...")
    (message "Aborting!")))

(global-set-key (kbd "C-c f") 'ido-recentf-open)

;; hack for ubuntu 16.10 // TO DO: investigate where .el file should be.
;(load-file "/usr/share/emacs/site-lisp/ratpoison.el")
;; enable ratpoison mode
;(require 'ratpoison)
;(add-to-list 'auto-mode-alist '("\\.ratpoisonrc$" . ratpoisonrc-mode))

;; enable markdown mode
(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; enable magit
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

;; enable web mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(defun my-web-hooks-mode ()
  "Hooks for Web mode"
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(add-hook 'web-mode-hook 'my-web-mode-hook)
  
;; enable 



;;; modes.el ends here
