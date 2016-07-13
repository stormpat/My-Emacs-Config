;;------------------------------------------------------------------------------

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(defun packages-install (packages)
  (dolist (it packages)
    (progn
      (when (not (package-installed-p it))
        (if (assoc it package-archive-contents)
            (package-install it)
          (progn
            (package-refresh-contents)
            (package-install it))))
      (require (intern (concat "setup-" (symbol-name it)))))))

(provide 'setup-package)
