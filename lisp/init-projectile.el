;; Projectile settings

(use-package projectile
  :config
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(use-package helm-projectile
  :after (helm projectile)
  :config
  (require 'projectile)
  (helm-projectile-on))

(provide 'init-projectile)
