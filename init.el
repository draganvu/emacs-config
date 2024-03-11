;;; init.el --- My Emacs configuration entry point 

;; Copyright (C) 2017-2024 Dragan Vujović <dvujovic@protonmail.ch>

;; Author: Dragan Vujović
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
;(setq package--init-file-ensured t)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; define emacs directory structure
(defvar emacs-core-dir (expand-file-name "core" user-emacs-directory)
  "This directory contains Emacs core functionality files.")
(defvar emacs-modules-dir (expand-file-name "modules" user-emacs-directory)
  "This directory contains Emacs modules files for programming languages.")

;; set load paths
(add-to-list 'load-path emacs-core-dir)
(add-to-list 'load-path emacs-modules-dir)

;; core files
(require 'core-packages)
(require 'core-init)
(require 'core-ui)
(require 'core-completition)
(require 'core-settings)
(require 'core-functions)
(require 'core-keys)

;; module files
(require 'modes)

;;; init.el ends here
