;;; core-ui.el

;; Set font
(add-to-list 'default-frame-alist
	     '(font . "DejaVu Sans Mono-14"))

;; Load theme
;(add-to-list 'custom-theme-load-path
;	     (concat user-emacs-directory "gruvbox-dark-soft-theme"))
					;(load-theme 'gruvbox-dark-soft t)

(use-package zenburn-theme
  :ensure t
  :config (load-theme 'zenburn t))

;; Turn off toolbar, menubar, scrollbar
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; Change cursor to a horizontal bar
(setq-default cursor-type 'bar)

;; Highlight the current line
(global-hl-line-mode t)

(provide 'core-ui)

;;; core-ui.el ends here
