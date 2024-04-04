;;; rc-scripts.el

;; Make script files executable automatically
(add-hook 'after-save-hook
	  'executable-make-buffer-file-executable-if-script-p)

(provide 'rc-scripts)

;;; rc-scripts.el ends here
