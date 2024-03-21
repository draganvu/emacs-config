;;; core-packages.el --- Emacs package management

;; Initialize package management
(require 'package)

;; Add repositories for packages
(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; Initialize packages
(package-initialize)

;; Install `use-package' if not already installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Load `use-package'
(require 'use-package)

(setq use-package-always-ensure t)

(provide 'core-packages)

;;; core-packages.el ends here
