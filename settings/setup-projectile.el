;;------------------------------------------------------------------------------
(require 'projectile)

;; Make sure Projectile ignores irrelevant directories.
(setq projectile-globally-ignored-directories
  (append '(".git"
            ".svn"
            "bin"
            "node_modules"
            "obj"
            "out"
            "repl"
            "target"
            "venv")
          projectile-globally-ignored-directories))

(setq projectile-globally-ignored-files
  (append '("#*#"
            "*.pyc"
            "*~"
            ".#*")
          projectile-globally-ignored-files))

;; Attempt to use alien method for indexing since it's faster.
(setq projectile-indexing-method 'alien)

;; Use Projectile without project files.
(setq projectile-require-project-root nil)

;; Enable Projectile everywhere.
(projectile-mode)

;; Make it easy to use Projectile.
(global-set-key (kbd "C-p") 'projectile-find-file)

(provide 'setup-projectile)
