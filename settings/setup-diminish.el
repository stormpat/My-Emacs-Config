(require 'diminish)

(diminish 'auto-fill-function)
(diminish 'subword-mode)

(eval-after-load "abbrev" '(diminish 'abbrev-mode))
(eval-after-load "auto-fill-function" '(diminish 'auto-fill-function))
(eval-after-load "company" '(diminish 'company-mode))
(eval-after-load "highlight-parentheses" '(diminish 'highlight-parentheses-mode))
(eval-after-load "projectile" '(diminish 'projectile-mode))
(eval-after-load "rainbow-mode" '(diminish 'rainbow-mode))

(provide 'setup-diminish)
