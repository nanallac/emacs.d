;; ;; (provide 'setup-lsp-mode)

;; (use-package lsp-mode
;;   :hook ((clojure-mode . lsp-deferred)
;;          (clojurescript-mode . lsp-deferred)
;;          (clojurec-mode . lsp-deferred)
;;          (lsp-mode . lsp-enable-which-key-integration))
;;   :init
;;   (setq lsp-headerline-breadcrumb-enable nil)
;;   (setq lsp-lens-enable nil)
;;   (setq lsp-enable-indentation nil)
;;   (setq lsp-eldoc-enable-hover nil)

;;   :commands lsp lsp-deferred)
