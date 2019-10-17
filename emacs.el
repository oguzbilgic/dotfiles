(require 'package)
(add-to-list 'package-archives '("melpa" . "http://stable.melpa.org/packages/") t)
(package-initialize)

;; bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; load evil
(use-package evil
  :ensure t
  :config
  (evil-mode))

;; load gruvbox-theme
;; (use-package gruvbox-theme
;;   :ensure t)

;; load evil-commentary
(use-package evil-commentary
  :ensure t
  :config
  (evil-commentary-mode))

;; load git-gutter
(use-package git-gutter
  :ensure t
  :config
  (global-git-gutter-mode +1)
  (setq git-gutter:modified-sign "▎")
  (setq git-gutter:added-sign "▎")
  (set-face-foreground 'git-gutter:modified "orange")
  (set-face-foreground 'git-gutter:added "green")
  (set-face-foreground 'git-gutter:deleted "red"))

;; load parinfer
(use-package parinfer
  :ensure t
  :init
  (setq parinfer-extensions
    '(defaults       ; should be included.
      pretty-parens  ; different paren styles for different modes.
      evil           ; If you use Evil.
      smart-tab      ; C-b & C-f jump positions and smart shift with tab & S-tab.
      smart-yank))   ; Yank behavior depend on mode.
  (add-hook 'clojure-mode-hook #'parinfer-mode) 
  (add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
  (add-hook 'lisp-mode-hook #'parinfer-mode))

;; Set the default font
(set-frame-font "Roboto Mono 16")
;; Remove the toolbar
(tool-bar-mode -1)
;; Don't blink the cursor
(blink-cursor-mode 0)
;; Disable scroll bar
(scroll-bar-mode -1)
;; Show matching paren
(show-paren-mode 1)
;; Don't show vertical borders in the frame
(set-fringe-mode 0)
;; Let window resize pixelwise
(setq frame-resize-pixelwise t)
;; Increase line height - not working
(setq line-spacing 0.15)
;; Increase line height
(setq make-backup-files nil)

;; Show line numbers
;; (global-display-line-numbers-mode)

;; Flash the mode line instead of bell
(setq ring-bell-function 'flash-mode-line)
(defun flash-mode-line ()
  (invert-face 'mode-line)
  (run-with-timer 0.1 nil #'invert-face 'mode-line))

;; Remove macOS title bar
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(setq ns-use-proxy-icon nil)
(setq frame-title-format nil)
