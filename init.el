;;; init.el --- My Emacs configuration entry point 

;; Copyright (C) 2017-2024 Dragan Vujović

;; Author: Dragan Vujović <dvujovic@protonmail.ch>
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

;; My Emacs configuration

;; Always load newest byte code
(setq load-prefer-newer t)

;; Define emacs directory structure
(defvar emacs-core-dir (expand-file-name "core" user-emacs-directory)
  "This directory contains Emacs core functionality files.")
(defvar emacs-modules-dir (expand-file-name "modules" user-emacs-directory)
  "This directory contains Emacs modules files for programming languages.")
(defvar emacs-themes-dir (expand-file-name "themes" user-emacs-directory)
  "This directory contains my Emacs themes.")

;; Set load paths
(add-to-list 'load-path emacs-core-dir)
(add-to-list 'load-path emacs-modules-dir)

;; Load core files
(require 'core-packages)
(require 'core-init)
(require 'core-ui)
(require 'core-completition)
(require 'core-settings)
(require 'core-utils)
(require 'core-functions)
;(require 'core-transient)
(require 'core-keys)

;; Load module files
(require 'rc-latex)
(require 'rc-magit)
(require 'rc-markdown)
(require 'rc-scripts)
(require 'rc-web)
(require 'rc-yaml)

;;; init.el ends here
