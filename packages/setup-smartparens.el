(use-package smartparens
  :defer 2
  :init
  (require 'smartparens-config)
  (setq sp-auto-escape-string-quote nil)
  (--each '(css-mode-hook
            js-mode-hook
            markdown-mode)
    (add-hook it 'turn-on-smartparens-mode)))

(provide 'setup-smartparens)
