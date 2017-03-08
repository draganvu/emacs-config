;;; init.el --- Emacs init file 

(setq load-prefer-newer t)
(setq gc-cons-threshold 50000000)
(setq package--init-file-ensured t)
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

(defun load/elisp (file)
  (load-file (concat user-emacs-directory file ".el")))

(mapc #'load/elisp
      '("packages"
	"appearance"
	"settings"
	"functions"
	"keys"
	"modes"))

;;; init.el ends here
