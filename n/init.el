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

;; haskell-indent-mode when we're in haskell-mode
(add-hook 'haskell-mode-hook 'haskell-indent-mode)

;; indent let->> like let
(add-hook 'clojure-mode-hook '(lambda () (define-clojure-indent (let->> 1))))

;; bind the incredibly satisfying to use `align-regexp` command
(global-set-key (kbd "C-x a r") 'align-regexp)