;;; init.el --- My Emacs configuration entry point 

;; Copyright (C) 2017-2024 Dragan Vujovic <dvujovic@protonmail.ch>

;; Author: Dragan Vujovic
;; URL: https://github.com/draganvu/emacs-config

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; My Emacs configuation

;; always load newest byte code
(setq load-prefer-newer t)

;(setq gc-cons-threshold 50000000)
(setq package--init-file-ensured t)
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)


(add-to-list 'load-path (expand-file-name "core" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "modules" user-emacs-directory))

(require 'core-packages)
(require 'core-ui)
(require 'core-settings)
(require 'core-keys)
(require 'core-functions)

(require 'modes)

;;; init.el ends here
