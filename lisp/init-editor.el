;; Misc editor settings

;; Increase amount of data emacs reads from process
(setq read-process-output-max (* 1024 1024))

;; Turn off scroll, tool, and menu bars
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Standard keys for copy, cut, paste
(cua-mode 1)

;; Wrap after 80 columns
(setq-default fill-column 80)

;; Show time
(display-time-mode 1)
;; Show current file size
(size-indication-mode 1)

;; Only single space after period ending sentence.
(setq-default sentence-end-double-space nil)
;; Inhibit splash screen
(setq inhibit-splash-screen t initial-scratch-message nil)

;; Use Shift+Arrows to switch windows
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; Show empty lines
(setq-default indicate-empty-lines t)
(when (not indicate-empty-lines)
  (toggle-indicate-empty-lines))

;; Show line numbers
(when (>= emacs-major-version 26)
  (global-display-line-numbers-mode))

;; Proper word wrapping
(global-visual-line-mode 1)
;; Show cursor position
(column-number-mode 1)
;; Auto insert closing bracket
(electric-pair-mode 1)
;; Highlight matching bracket
(show-paren-mode 1)

;; Set file encoding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;; Auto refresh file
(global-auto-revert-mode 1)
;; Save previously opened files
(desktop-save-mode 1)

;; Always indent with space
(setq-default indent-tabs-mode nil)
;; Set tab width to 2 spaces
(setq-default tab-width 2)
;; Tab always calls indent first, then completion
(setq-default tab-always-indent 'complete)

;; Return key also indents
(electric-indent-mode 1)

;; Set character encoding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;; Stop making autosave and lock files
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)

;; Shorten yes/no prompt
(defalias 'yes-or-no-p 'y-or-n-p)

;; Make tootips appear in echo area
(tooltip-mode -1)

;; Prettify symbols
(global-prettify-symbols-mode)
(defun prettify-string ()
  "Replace string with pretty Unicode symbols."
  (setq prettify-symbols-alist
        '(
          ("alpha" . 945) ; α
          ("beta" . 946) ; β
          ("gamma" . 947) ; γ
          ("delta" . 948) ; δ
          ("epsilon" . 949) ; ε
          ("theta" . 952) ; θ
          ("lambda" . 955) ; λ
          ("mu" . 956) ; μ
          ("pi" . 960) ; π
          ("sigma" . 963) ; σ
          ("tau" . 964) ; τ
          ("omega" . 969) ; ω
          ("<=" . 8804) ; ≤
          (">=" . 8805) ; ≥
          ("!=" . 8800) ; ≠
          ("->" . 8594)    ; →
          ("=>" . 8658)    ; ⇒
          ("map" . 8614)   ; ↦
          )))

;; Add as necessary
;; (add-hook 'emacs-lisp-mode-hook 'prettify-string)
;; (add-hook 'c++-mode-hook 'prettify-string)

;; Edit files in Docker containers
(use-package docker-tramp)

;; Profile emacs startup time
(use-package esup
  :commands (esup))

(use-package doom-themes
  :config
  (load-theme 'doom-monokai-pro t)
  ;; Flashing mode line on errors
  (doom-themes-visual-bell-config)
  ;; Treemacs theme
  (setq doom-themes-treemacs-theme "doom-colors")
  (doom-themes-treemacs-config))

;; Set default font
(set-face-attribute 'default nil
                    :family "Hack"
                    :height 130
                    :weight 'normal
                    :width 'normal)

(provide 'init-editor)
