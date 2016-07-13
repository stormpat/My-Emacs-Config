;;------------------------------------------------------------------------------

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.ts\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(setq web-mode-content-types-alist
      '(("jsx" . "\\.ts[x]?\\'")))
(autoload 'web-mode "web-mode" "Web Mode" t)

(provide 'setup-web-mode)
