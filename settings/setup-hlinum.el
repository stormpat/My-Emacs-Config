;;------------------------------------------------------------------------------

(require 'hlinum)

;; TODO: Should not be hard coded here.
(set-face-attribute 'linum-highlight-face nil :background "#f8eec7" :foreground "#969896")

;;(set-face-attribute 'linum-highlight-face nil :background "#252634" :foreground "#4c406d")

(hlinum-activate)

(provide 'setup-hlinum)
