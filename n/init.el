(add-to-list 'load-path (concat user-specific-dir "/solarized"))

(require 'color-theme-solarized)
(color-theme-solarized-dark)

(when window-system
  (blink-cursor-mode 1))