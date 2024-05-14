;;; rc-latex.el --- LaTeX Auctex configuration

(use-package tex
  :ensure auctex)

;; Turn off large fonts for section headings 
(setq font-latex-fontify-sectioning 1.0)

(provide 'rc-latex)

;;; rc-latex.el ends here
