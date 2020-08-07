;; General language settings

;; Snippets
(use-package yasnippet
  :config (yas-global-mode 1))

;; Doxygen support
(use-package highlight-doxygen
  :config (highlight-doxygen-global-mode 1))

;; Docker mode
(use-package dockerfile-mode)

;; CMake mode
(use-package cmake-mode)

(provide 'init-lang)
