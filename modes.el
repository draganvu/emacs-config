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

;; hack for ubuntu 16.10 // TO DO: investigate 16.04
(load-file "/usr/share/emacs/site-lisp/ratpoison.el")
;; enable ratpoison mode
(require 'ratpoison)
(add-to-list 'auto-mode-alist '("\\.ratpoisonrc$" . ratpoisonrc-mode))

;; enable markdown mode
(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

; enable


;;; modes.el ends here
