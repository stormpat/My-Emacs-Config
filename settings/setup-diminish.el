(require 'diminish)

(diminish 'subword-mode)

(eval-after-load "abbrev" '(diminish 'abbrev-mode))
(eval-after-load "auto-complete" '(diminish 'auto-complete-mode))
(eval-after-load "autorevert" '(diminish 'auto-revert-mode))
(eval-after-load "highlight-indent-guides" '(diminish 'highlight-indent-guides-mode))
(eval-after-load "highlight-parentheses" '(diminish 'highlight-parentheses-mode))
(eval-after-load "projectile" '(diminish 'projectile-mode))
(eval-after-load "rainbow-mode" '(diminish 'rainbow-mode))

(provide 'setup-diminish)
