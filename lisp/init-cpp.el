;; C/C++ settings

;; C++11 and onward syntax highlighting
(use-package modern-cpp-font-lock)

;; Read .h files in C++ mode
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
;; C/C++ mode settings
(setq-default c-basic-offset 2
              tab-width 2)

(provide 'init-cpp)
