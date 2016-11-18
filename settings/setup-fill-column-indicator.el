(require 'fill-column-indicator)

(setq fci-dash-pattern 0.5)
(setq fci-rule-color "#969896")
(setq fci-rule-use-dashes t)
(setq fci-rule-width 1)

;; Activate fci-mode automatically after a file is loaded.
(add-hook 'after-change-major-mode-hook 'fci-mode)

(provide 'setup-fill-column-indicator)
