;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq initial-scratch-message "Hello
Don't forget about C-h b
(package-refresh-contents)

")
(setq inhibit-startup-screen t)

(load-theme 'tango-dark)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(toggle-frame-fullscreen)
(linum-mode 1)

(set-default-font "Fira Code-12")

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (elm-mode clojure-mode-extra-font-locking chess roguel-ike typit poker rust-mode lua-mode bongo emmet-mode js2-mode inf-clojure haskell-mode cider clojure-mode smex idomenu))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'ido)
(ido-mode 1)

(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
		  ; when Smex is auto-initialized on its first run.

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(require 'cider)
(global-set-key (kbd "M-RET c") 'cider-connect)
(global-set-key (kbd "M-RET e") 'cider-eval-last-sexp) 
(global-set-key (kbd "M-RET r") 'cider-eval-region)

(require 'inf-clojure)
(global-set-key (kbd "M-RET i c") 'inf-clojure-connect)
(global-set-key (kbd "M-RET i e") 'inf-clojure-eval-last-sexp) 
(global-set-key (kbd "M-RET i r") 'inf-clojure-eval-region) 

(require 'emmet-mode)
(global-set-key (kbd "M-RET w e") 'emmet-expand-line)
