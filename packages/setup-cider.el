(use-package cider
  :after (clojure-mode)
  :defer t

  :custom
  (cider-save-file-on-load t)
  (cider-repl-pop-to-buffer-on-connect nil))

(provide 'setup-cider)
