;; Changes to the Emacs UI (3rd party)

;; Dashboard
(use-package dashboard
  :config
  (dashboard-setup-startup-hook))

;; Magit
(use-package magit)

(use-package undo-tree
  :init (global-undo-tree-mode))

;; Doom modeline
(use-package doom-modeline
  :config
  (doom-modeline-mode))

;; Show whitespace
(use-package whitespace
  :config
  (setq-default whitespace-line-column 120)
  (setq-default whitespace-display-mappings
    '((space-mark 32 [183] [46])
     (newline-mark 10 [172 10])
     (tab-mark 9 [187 9] [92 9])))
  (global-whitespace-mode))

;; Display keybindings
(use-package which-key
  :config
  (which-key-mode))

;; Show line at column 80
(use-package fill-column-indicator
  :config
  (fci-mode)
  (setq-default fci-rule-column 80)
  (add-hook 'after-change-major-mode-hook 'fci-mode))

;; Rainbow delimiters
(use-package rainbow-delimiters
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(provide 'init-ui)
