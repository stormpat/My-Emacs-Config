;;------------------------------------------------------------------------------

(require 'multiple-cursors)

(global-set-key (kbd "M-<down>") 'mc/mark-next-like-this)
(global-set-key (kbd "M-<up>") 'mc/mark-next-like-this-symbol)

(provide 'setup-multiple-cursors)
