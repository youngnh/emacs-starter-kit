(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; don't wrap lines
(setq-default truncate-lines t)

(when window-system
  (blink-cursor-mode 1))