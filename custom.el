(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("05692bda554c178fafe15cc3e6ab09539e7db4846eb9bb6272b97068c055a903" default))
 '(package-selected-packages
   '(better-defaults cider clay clojure-lsp clojure-mode csv-mode direnv gptel
                     just-mode kaocha-runner kdl-mode ligature ligatures
                     lsp-mode lsp-ui magit multiple-cursors nix-mode org-mode
                     paredit projectile rainbow-mode restclient smartparens
                     vterm yaml-mode))
 '(safe-local-variable-values
   '((eval progn (make-variable-buffer-local 'cider-jack-in-nrepl-middlewares)
           (add-to-list 'cider-jack-in-nrepl-middlewares
                        "shadow.cljs.devtools.server.nrepl/middleware"))
     (cider-ns-refresh-after-fn . "integrant.repl/resume")
     (cider-ns-refresh-before-fn . "integrant.repl/suspend"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
