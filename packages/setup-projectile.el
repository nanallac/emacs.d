(use-package projectile
  :bind-keymap
  (("s-p" . projectile-command-map))

  :bind
  ("C-x p p" . projectile-switch-project)

  :config
  (projectile-mode +1)
  (define-key projectile-command-map (kbd "s-p") #'projectile-switch-project))
