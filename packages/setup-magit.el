(use-package magit
  :defer t

  :custom
  (magit-push-always-verify nil)

  :bind (("C-x m" . magit-status)))

(provide 'setup-magit)
