;;------------------------------------------------------------------------------

(setq echo-keystrokes 0.1)
(setq shift-select-mode nil)

;; Show column and line numbers.
(setq column-number-mode t)
(setq line-number-mode t)

;; Don't use tabs.
(setq-default indent-tabs-mode nil)

;; Prefer utf-8.
(prefer-coding-system 'utf-8)

;; Prefer Unix line endings.
(setq-default buffer-file-coding-system 'utf-8-unix)

;; Delete selection when typing.
(delete-selection-mode 1)

;; Match parentheses automatically.
(electric-pair-mode t)

;; Stop on 'subwords'.
(global-subword-mode 1)

;; Tweak mouse wheel scrolling.
(setq-default mouse-wheel-scroll-amount '(1))
(setq-default mouse-wheel-progressive-speed nil)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'sane-defaults)
