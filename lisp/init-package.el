;; Package management settings

;; Set up package repositories and package manager
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives
               '("gnu" . "http://elpa.gnu.org/packages/") t)
  (add-to-list 'package-archives
               '("melpa-stable" . "http://stable.melpa.org/packages/") t)
  (add-to-list 'package-archives
               '("melpa" . "http://melpa.org/packages/") t))

;; Finds all installed packages and activates them
;; Only need when emacs < 27
(when (< emacs-major-version 27)
  (package-initialize))

;; use-package to manage package installation and settings
(eval-when-compile
  (require 'use-package))

;; Automatically install packages if not present
(setq-default use-package-always-ensure t)

(provide 'init-package)
