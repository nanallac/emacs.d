;; More defaults to complement those supplied by better-defaults.el

;; Start emacs server
(use-package server
  :defer 2
  :config (unless (server-running-p)
            (server-start)))

;; Turn off selecting with Shift
(setq shift-select-mode nil)

;; Transparently open compressed files
(auto-compression-mode t)

;; Why do I need to be so verbose?
(defalias 'yes-or-no-p 'y-or-n-p)

;; Move files to trash when deleting
(setq delete-by-moving-to-trash t)

;; UTF-8
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Overwrite selected text
(use-package delsel
  :defer 1
  :config (delete-selection-mode 1))

;; Don't zoom individual buffers
(global-unset-key (kbd "C-x C-+"))

;; Sentences don't need double spaces to end.
(set-default 'sentence-end-double-space nil)

;; No visual line breaks
(setq-default truncate-lines t)

;; 80 char line widths
(set-default 'fill-column 80)

;; Display column numbers
(setq column-number-mode t)

;; Auto refresh buffers
(use-package autorevert
  :defer 2
  :config (global-auto-revert-mode 1))

;; Auto refresh dired
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;; Ask to create parent directory if it doesn't exist
(defun my-create-non-existent-directory ()
  (let ((parent-directory (file-name-directory buffer-file-name)))
    (when (and (not (file-exists-p parent-directory))
               (y-or-n-p (format "Directory %s' does not exist! Create it?" parent-directory)))
      (make-directory parent-directory t))))

(add-to-list 'find-file-not-found-functions 'my-create-non-existent-directory)

(provide 'more-defaults)
