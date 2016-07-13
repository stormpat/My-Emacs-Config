(require 'column-marker)

(defface column-marker-4 '((t (:background "#f02020")))
  "Face used for a column marker.  Usually a background color."
  :group 'faces)

(defvar column-marker-4-face 'column-marker-4
    "Face used for a column marker.  Usually a background color.
Changing this directly affects only new markers." )

(column-marker-create column-marker-4 column-marker-4-face)
(add-hook 'find-file-hook (lambda () (interactive) (column-marker-4 80)))

(provide 'setup-column-marker)
