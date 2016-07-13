;;------------------------------------------------------------------------------

;; 'Alt-tab' between two buffers with C-b
(global-set-key (kbd "C-b") (lambda () (interactive) (switch-to-buffer nil)))

;; Use C-k to kill entire line.
(global-set-key (kbd "C-k") 'kill-whole-line)

;; Shortcut to align lines by regexp.
(global-set-key (kbd "M-p") 'align-regexp)

(provide 'key-bindings)
