;; No splash screen
(setq inhibit-startup-message t)

;; Colour all language features
(setq font-lock-maximum-decoration t)

;; Highlight current line
(global-hl-line-mode 1)

;; Include file path in buffer title
(setq frame-title-format '(buffer-file-name "%f" ("%b")))

;; Quieter pls
(blink-cursor-mode -1)
(tooltip-mode -1)
(setq ring-bell-function (lambda ()
                           (invert-face 'mode-line)
                           (run-with-timer 0.05 nil 'invert-face 'mode-line)))

;; Theme
(load-theme 'default-black)

(provide 'appearance)
