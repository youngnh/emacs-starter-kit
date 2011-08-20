(color-theme-wombat)

;; enable these magnificently useful commands
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; column numbers
(column-number-mode 1)

;; don't wrap lines
(setq-default truncate-lines t)

;; so I can more easily tell where I am in a file
(when window-system
  (blink-cursor-mode 1))

;; when marking TODOs done, also note the time
(setq org-log-done 'time)

;; ClojureScript files trigger clojure-mode
(add-to-list 'auto-mode-alist '("\\.cljs$" . clojure-mode))
