;;; core-ui.el

;; Set font
(add-to-list 'default-frame-alist
	     '(font . "DejaVu Sans Mono-14"))

;; Load personal theme or theme from melpa if personal theme is not found
(use-package dracula-theme)

(defun load-mytheme ()
  "Load my personal theme Zemun if found else load Dracula theme"
  (let ((theme-file (expand-file-name "zemun-theme.el" emacs-themes-dir)))
    (if (file-exists-p theme-file)
	(load-theme 'zemun t)
      (load-theme 'dracula t))))

(add-hook 'emacs-startup-hook 'load-mytheme)

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
