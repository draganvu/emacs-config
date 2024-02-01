;;; appearance.el

;; set font
(add-to-list 'default-frame-alist
	     '(font . "DejaVu Sans Mono-12"))

;; load theme
;(add-to-list 'custom-theme-load-path
;	     (concat user-emacs-directory "gruvbox-dark-soft-theme"))
;(load-theme 'gruvbox-dark-soft t)

;; turn off toolbar, menubar, scrollbar
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; change cursor to a horizontal bar
(setq-default cursor-type 'bar)

;; highlight the current line
(global-hl-line-mode t)

;; shows start and finish of buffer text with arrows
;(setq-default indicate-buffer-boundaries 'left)

;; shows empty lines at the bottom of buffer
;(setq-default indicate-empty-lines t)

;;; appearance.el ends here
