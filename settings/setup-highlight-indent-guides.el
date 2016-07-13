(require 'highlight-indent-guides)

(setq highlight-indent-guides-method 'fill)

(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)

(provide 'setup-highlight-indent-guides)
