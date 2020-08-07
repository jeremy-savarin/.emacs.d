;; Company for code completion

(use-package company
  :init (global-company-mode)
  :config
  (require 'cc-mode)
  ;; No delay until autocomplete
  (setq company-idle-delay 0)
  ;; Don't automatically autocomplete to lowercase
  (setq company-dabbrev-downcase nil)
  ;; Keybindings to TAB for autocomplete
  (define-key c-mode-map [(tab)] 'company-complete)
  (define-key c++-mode-map [(tab)] 'company-complete)
  ;; Remove conflicting backends
  (setq company-backends (delete 'company-semantic company-backends))
  (setq company-backends (delete 'company-clang company-backends)))

;; Add icons
(use-package company-box
  :hook (company-mode . company-box-mode))

(provide 'init-company)
