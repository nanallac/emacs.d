(use-package org
  :bind (("C-c c" . org-capture)
         ("C-c a" . org-agenda)
         ("C-c l" . org-store-link))
  :config
  (setq org-directory (expand-file-name "my" (getenv "HOME"))

        org-agenda-files (list org-directory)
        org-default-notes-file (expand-file-name "my/inbox.org" (getenv "HOME"))

        org-capture-templates
        '(
          ("i" "Inbox" entry
           (file org-default-notes-file)
           "* TODO %^{Brief Description}\nAdded: %U\n%?" :empty-lines 1 :prepend t)
          )
  ))

(provide 'setup-org-mode)
