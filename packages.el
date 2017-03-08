;;; packages.el

(require 'package)

(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("gnu" . "http://elpa.gnu.org/packages/"))

(package-initialize)

(defvar my-required-packages
  '(ido-vertical-mode
    magit
    markdown-mode
    rainbow-mode
    smex)
  "Packages to be installed when Emacs is launched")

(defun install-my-packages ()
  "Ensure packages I used are installed"
  (interactive)
  (let ((missing-packages (cl-remove-if
			   #'package-installed-p my-required-packages)))
    (when missing-packages
      (message "Installing %d missing packages" (length missing-packages))
      (package-refresh-contents)
      (mapc #'package-install missing-packages))))

(install-my-packages)

;;; packages.el ends here
