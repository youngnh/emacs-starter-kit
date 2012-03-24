;; light color theme good for presentations
(add-to-list 'load-path (concat user-specific-dir "/solarized"))
(require 'color-theme-solarized)
(color-theme-solarized-light)

(setq org-log-done 'time)

;; ClojureScript files trigger clojure-mode
(add-to-list 'auto-mode-alist '("\\.cljs$" . clojure-mode))

;; indent let->> like let
(add-hook 'clojure-mode-hook '(lambda () (define-clojure-indent (let->> 1))))

;; bind the incredibly satisfying to use `align-regexp` command
(global-set-key (kbd "C-x a r") 'align-regexp)

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

;; alter what is displayed in a dired buffer
(setq dired-listing-switches "-alh --ignore=.hg --ignore=.git")

;; make default font size larger
(set-face-attribute 'default nil :height 120)

;; the Haskell program (GHC 7)
(setq haskell-program-name "/home/n/.opt/bin/ghci")