;;------------------------------------------------------------------------------

(require 'projectile)

;; -----------------------------------------------
;; Make sure Projectile ignores irrelevant directories.
(setq projectile-globally-ignored-directories
      (append '(".git"
                ".svn"
                "node_modules"
                "out"
                "repl"
                "target"
                "venv")
              projectile-globally-ignored-directories))

;; -----------------------------------------------
;; Use Projectile without project files.
(setq projectile-require-project-root nil)

;; -----------------------------------------------
;; Enable Projectile everywhere.
(projectile-global-mode)

;; -----------------------------------------------
;; Make it easy to use Projectile.
(global-set-key (kbd "C-p") 'projectile-find-file)

(provide 'setup-projectile)
