(require 'clj-refactor)
(add-hook 'clojure-mode-hook (lambda ()
                               (clj-refactor-mode 1)
                               (lambda () (yas/minor-mode 1))
                               (cljr-add-keybindings-with-prefix "C-c m")))

(global-auto-complete-mode 1)
