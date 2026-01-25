(use-package cider
  :ensure t
  :after (clojure-mode)
  :defer t

  :config
  (setq cider-repl-history-file "~/.config/emacs/cider-history")
  (setq cider-repl-display-help-banner t)
  (setq cider-repl-use-pretty-printing t)
  (setq cider-prompt-for-symbol nil)
  (setq cider-repl-pop-to-buffer-on-connect 'display-only)

  :custom
  (cider-save-file-on-load t)
  (cider-repl-pop-to-buffer-on-connect nil))

(provide 'setup-cider)
