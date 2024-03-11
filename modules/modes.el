;;; modes.el

;; enable markdown mode
(use-package markdown-mode)

;; enable magit
(use-package magit
  :bind (("C-x g" . 'magit-status)))

;; enable web mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(defun my-web-hooks-mode ()
  "Hooks for Web mode"
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(add-hook 'web-mode-hook 'my-web-mode-hook)
  
;; enable 

(provide 'modes)

;;; modes.el ends here
