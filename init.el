;; Heavily inspired by (stolen from) magnars (https://github.com/magnars)


;; Add settings to load path
(add-to-list 'load-path (expand-file-name "settings" user-emacs-directory))

;; Fast start-up
(require 'fast-startup)

;; Move Custom-settings to separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;; Appearance
(require 'appearance)

;; Configure package manager
(require 'packages)

;; More defaults
(require 'more-defaults)

;; Utilities
(require 'extra-keybindings)
(require 'editing)

;; Load all packages
(dolist (file (directory-files packages-dir t "^[^#].*el$"))
  (when (file-regular-p file)
    (with-demoted-errors "Error loading %s: %%S"  (load file))))

(put 'downcase-region 'disabled nil)
