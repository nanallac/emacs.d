;; No more accidentally disappearing frame
(global-unset-key (kbd "C-z"))

;; Launch a shell
(global-set-key (kbd "C-x C-z") 'shell)

(provide 'extra-keybindings)
