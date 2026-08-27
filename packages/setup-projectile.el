(use-package projectile

  :bind
  ("C-x p p" . projectile-switch-project)
  ("C-x C-k" . projectile-kill-buffers)

  :config
  (projectile-mode +1))
