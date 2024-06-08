
(use-package clay
 :after clojure-mode
 :defer t

 :bind
 ((:map clojure-mode-map
               ("C-c C-x c" . clay-start)
               ("C-x c" . clay-make-ns-html))))

(provide 'setup-clay)
