;; Flycheck for syntax checking

;; Enable flycheck
(use-package flycheck
  :config
  ;; Max amount of allowed errors
  (setq flycheck-checker-error-threshold 1000)
  :hook (prog-mode . flycheck-mode)
  :hook (markdown-mode . flycheck-mode)
  :hook (adoc-mode . flycheck-mode)
  :hook (lsp-after-initialize .
                              (lambda() (flycheck-add-next-checker
                                    'lsp '(warning . c/c++-cppcheck))
                                (flycheck-add-next-checker
                                 'lsp '(warning . c/c++-clang-tidy))
                                (flycheck-add-next-checker
                                    'lsp '(warning . sh-bash))
                                (flycheck-add-next-checker
                                    'lsp '(warning . sh-shellcheck)))))

(use-package flycheck-clang-tidy
  :after flycheck
  :hook
  (flycheck-mode . flycheck-clang-tidy-setup))

(provide 'init-flycheck)
