;; Language server protocols

;; Use LSP servers
(use-package lsp-mode
  :config
  ;; Set keymap prefix
  (setq lsp-keymap-prefix "C-c l")
  ;; Prefer using lsp-ui (flycheck) over flymake.
  (setq lsp-diagnostic-package nil)
    ;; Use company-capf
  (setq lsp-prefer-capf t)
  ;; Semantic highligting
  (setq lsp-enable-semantic-highlighting t)
  ;; Use project scope for modeline
  (setq lsp-diagnostics-modeline-scope :project)
  :hook
  ;; Languages to use LSP with
  (c-mode . lsp)
  (c++-mode . lsp)
  (python-mode . lsp)
  (sh-mode . lsp)
  (yaml-mode . lsp)
  (cmake-mode . lsp)
  (dockerfile-mode . lsp)
  (verilog-mode . lsp)
  ;; Which-key integration
  (lsp-mode . lsp-enable-which-key-integration)
  ;; Code actions on modeline
  (lsp-managed-mode . lsp-diagnostics-modeline-mode)
  ;; Breadcrumb on headerline
  (lsp-managed-mode . lsp-headerline-breadcrumb-mode)
  :commands lsp)

;; For Flycheck integration and other UI enhancements
(use-package lsp-ui
  :after (flycheck)
  :config
  ;; Doc
  (setq lsp-ui-doc-enable t)
  ;; Enable header
  (setq lsp-ui-doc-header t)
  ;; Display in childframe
  (setq lsp-ui-doc-use-childframe t)
  ;; Display at top
  (setq lsp-ui-doc-position 'top)
  ;; Include object signature and type
  (setq lsp-ui-doc-include-signature t)
  ;; Sideline
  (setq lsp-ui-sideline-enable t)

  ;; Flycheck
  (setq lsp-ui-flycheck-enable t)
  (setq lsp-ui-flycheck-list-position 'right)
  (setq lsp-flycheck-live-reporting t)

  ;; Peek
  (setq lsp-ui-peek-enable t
        lsp-ui-peek-list-width 60
        lsp-ui-peek-peek-height 25)
  :commands lsp-ui-mode)

;; Use with treemacs
(use-package lsp-treemacs
  :config
  ;; Sync workspace folders and treemacs projects
  (lsp-treemacs-sync-mode 1)
  :commands lsp-treemacs-errors-list)

;; Use with helm
(use-package helm-lsp :commands helm-lsp-workspace-symbol)

(provide 'init-lsp)
