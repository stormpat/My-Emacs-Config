;; Pre-init stuff
;; -----------------------------------------------------------------------------

(setq inhibit-startup-message t)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; -----------------------------------------------------------------------------
;; Paths.

(add-to-list 'load-path "~/.emacs.d/elpa")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; -----------------------------------------------------------------------------
;; Appearance.

(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (progn
    (set-frame-font "Consolas-10.0:antialias=subpixel")))
 ((string-equal system-type "darwin") ; Mac OS X
  (progn
    (message "Mac OS X")))
 ((string-equal system-type "gnu/linux") ; linux
  (progn
    (set-frame-font "Ubuntu Mono-12.0:antialias=subpixel"))))

(load-theme 'github t)

(blink-cursor-mode 0)
(fringe-mode 0)
(global-hl-line-mode t)
(global-linum-mode t)
(show-paren-mode t)

(setq-default line-spacing 5)
(setq-default linum-format "%5d   ")

;; -----------------------------------------------------------------------------
;; Behavior.

(column-number-mode t)
(delete-selection-mode t)
(electric-pair-mode t)

(set-buffer-file-coding-system 'utf-8-unix)

(setq-default ring-bell-function 'ignore)

(setq-default buffer-file-coding-system 'utf-8-unix)
(setq-default c-basic-offset 4)
(setq-default indent-tabs-mode nil)
(setq-default org-log-done 'time)
(setq-default tab-width 4)

(setq-default mouse-wheel-scroll-amount '(3))
(setq-default mouse-wheel-progressive-speed nil)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(put 'dired-find-alternate-file 'disabled nil)

;; -----------------------------------------------------------------------------
;; Extensions.

(require 'package)
(setq package-list '(auto-complete column-marker highlight-numbers hlinum magit multiple-cursors projectile web-mode))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; auto-complete
(require 'auto-complete)
(global-auto-complete-mode t)
(setq-default ac-modes '(c-mode csharp-mode web-mode))

;; column-marker
(require 'column-marker)
(add-hook 'find-file-hook (lambda () (interactive) (column-marker-3 80)))

;; highlight-numbers
(require 'highlight-numbers)
(add-hook 'prog-mode-hook 'highlight-numbers-mode)

;; hlinum
(require 'hlinum)
(hlinum-activate)
(set-face-attribute 'linum-highlight-face nil :background "#f8eec7" :foreground "#969896")

;; multiple-cursors
(require 'cl)
(require 'multiple-cursors)

;; projectile
(require 'projectile)
(setq-default projectile-require-project-root nil)
(projectile-global-mode)

;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.ts\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(setq web-mode-content-types-alist
      '(("jsx" . "\\.ts[x]?\\'")))
(autoload 'web-mode "web-mode" "web Mode" t)

;; -----------------------------------------------------------------------------
;; Keyboard mappings.

(global-set-key (kbd "C-b") (lambda () (interactive) (switch-to-buffer nil)))
(global-set-key (kbd "C-k") 'kill-whole-line)
(global-set-key (kbd "C-p") 'projectile-find-file)
(global-set-key (kbd "M-<down>") 'mc/mark-next-like-this)
(global-set-key (kbd "M-<up>") 'mc/mark-next-like-this-symbol)
(global-set-key (kbd "M-p") 'align-regexp)

;; Post-init stuff
;; -----------------------------------------------------------------------------

(when window-system (set-frame-size (selected-frame) 98 52))
;;(when window-system (set-frame-position (selected-frame) 100 60))
