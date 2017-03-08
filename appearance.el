;;; appearance.el

;; set font
(add-to-list 'default-frame-alist
	     '(font . "DejaVu Sans Mono-10"))

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

;;; appearance.el ends here
