;; Helm settings.

;; Helm
(use-package helm
  :config
  (global-set-key (kbd "M-x") 'helm-M-x)
  (global-set-key (kbd "C-x C-f") #'helm-find-files)
  (setq helm-split-window-inside-p t)
  (setq helm-autoresize-max-height 50)
  (setq helm-autoresize-min-height 30)
  ;; Have more candidiates in search buffer
  (setq helm-candidate-number-limit 200)
  (helm-autoresize-mode 1)
  (helm-mode 1))

;; Helm-swoop
(use-package helm-swoop)

;; Helm-ag
(use-package helm-ag)

;; Helm descbinds
(use-package helm-descbinds
  :config
  (helm-descbinds-mode))

(provide 'init-helm)
