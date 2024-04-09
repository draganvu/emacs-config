;;; core-packages.el --- Emacs package management

;; Initialize package management
(require 'package)

;; Add repositories for packages
(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; Initialize packages
(package-initialize)

;; Install `use-package' if not already installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Load `use-package'
(require 'use-package)

;; Ensure all packages are installed automatically
(setq use-package-always-ensure t)

;; Install `diminish' package to keep modeline tidy
(use-package diminish)

(provide 'core-packages)

;;; core-packages.el ends here
