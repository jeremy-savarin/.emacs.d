;; Markup language settings

;; Markdown mode
(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "pandoc")
  :hook (markdown-mode .
                       (lambda() (flycheck-add-next-checker 'markdown-markdownlint-cli
                                                        '(warning . proselint))
                         (flycheck-add-next-checker 'proselint
                                                    '(warning . textlint)))))

;; AsciiDoc mode
(use-package adoc-mode
  :mode (("\\.adoc\\'" . adoc-mode)))

;; Yaml mode
(use-package yaml-mode)

(provide 'init-markup)
