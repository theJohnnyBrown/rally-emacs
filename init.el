;; Rally emacs config

;; Enable a backtrace when problems occur
;; (setq debug-on-error t)

(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/vendor")

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; These three loads need to come before the vendor list below
(load "rally/package")
(load "rally/defuns")
(load "rally/global")

;; vendor is in rally/defuns.el. Will automatically load rally/<vendor-name>.el
(vendor 'idle-highlight-mode)
(vendor 'windsize)
(vendor 'expand-region)
(vendor 'multiple-cursors)
(vendor 'markdown-mode 'markdown-mode 'gfm-mode)
(vendor 'ruby-mode)
(vendor 'yaml-mode)
(vendor 'haml-mode)
(vendor 'inf-ruby)
(vendor 'outline-magic)
(vendor 'clojure-mode)
(vendor 'groovy-mode)
(vendor 'align-cljlet)
(vendor 'paredit)
(vendor 'cider)
;;(vendor 'jtags)
(vendor 'scala-mode)
(vendor 'projectile)
;; ack-and-a-half has been abandonwared
;;(vendor 'ack-and-a-half 'ack-and-a-half 'ack-and-a-half-same 'ack-and-a-half-find-file 'ack-and-a-half-find-file-same 'ack-and-a-half-interactive)
(vendor 'smex)
(vendor 'color-theme)
(vendor 'magit)
(vendor 'yasnippet)
(vendor 'multiple-cursors 'mc/edit-lines 'mc/mark-next-like-this 'mc/mark-previous-like-this 'mc/mark-all-like-this 'set-rectangular-region-anchor)
(vendor 'key-chord)
(vendor 'ace-jump-mode)
(vendor 'puppet-mode)
(vendor 'smooth-scrolling)
(vendor 'rainbow-delimiters)
(vendor 'powerline)
(vendor 'clj-refactor)
(vendor 'git-gutter+)
(vendor 'elixir-mode)
(vendor 'dockerfile-mode)
(vendor 'company)
(vendor 'git-timemachine)
(vendor 'highlight-symbol)
(vendor 'indent-guide)
(vendor 'gist)
(vendor 'project-explorer)

;; org has to be different
(ensure-package-is-installed 'org-plus-contrib)
(load-library "rally/org.el")

(vendor 'epresent)
(vendor 'window-numbering)
(vendor 'hideshow-org)
(vendor 'pbcopy)

(load "rally/mac")
(load "rally/bindings")
(load "rally/zsh")
(load "rally/uniquify")
(load "rally/ido")
(load "rally/ruby")
(load "rally/prog-mode")
(load "rally/hippie-expand")
(load "rally/grep")
(load "rally/ibuffer")
(load "rally/faces")
(load "rally/dired")
(load "rally/window")
(load "rally/server")
(load "rally/recentf")
(load "rally/oracle")
(load "rally/refactor")
(load "rally/mouse")
(load "rally/webdev")
(load "rally/git-gutter")

;;; Automatically open gists in the browser after creation
;;; * doesn't work in spoon!
(set-variable 'gist-view-gist t)

;;; Load user-init.
;;; NOTE: Keep this last, so that the user-init can override stuff that was set in this file.
(let ((user-init (concat user-emacs-directory "user.init.el")))
  (when (file-exists-p user-init)
    (load-file user-init)))
