(use-package gptel)

;; Used to load API key
(defun file-to-string (file)
  "File to string function"
  (with-temp-buffer
    (insert-file-contents file)
    (buffer-string)))

(setq gptel-model "openrouter/auto"
      gptel-backend
      (gptel-make-openai "OpenRouter"
        :host "openrouter.ai"
        :endpoint "/api/v1/chat/completions"
        :stream t
        :key (file-to-string "~/.openrouter")
        :models '("openrouter/auto"
                  "openai/gpt-4-turbo")))

(provide 'setup-gptel)
