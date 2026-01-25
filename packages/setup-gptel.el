(use-package gptel)

;; Used to load API key
(defun file-to-string (file)
  "File to string function"
  (with-temp-buffer
    (insert-file-contents file)
    (buffer-string)))

(setq gptel-model "openrouter/claude-opus-4.5"
      gptel-backend
      (gptel-make-openai "OpenRouter"
        :host "openrouter.ai"
        :endpoint "/api/v1/chat/completions"
        :stream t
        :key (file-to-string "~/.openrouter")
        :models '("openrouter/auto"
                  "anthropic/claude-opus-4.5")))

(provide 'setup-gptel)
