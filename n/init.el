(add-to-list 'load-path (concat user-specific-dir "/solarized"))

(require 'color-theme-solarized)
(color-theme-solarized-dark)

;; don't wrap lines
(setq-default truncate-lines t)

(when window-system
  (blink-cursor-mode 1))