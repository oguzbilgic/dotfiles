(require 'package)
(add-to-list 'package-archives '("melpa" . "http://stable.melpa.org/packages/") t)
(package-initialize)

;; bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; load which-key
(use-package which-key
  :ensure t
  :init
  (which-key-mode))

;; load evil
(use-package evil
  :ensure t
  :init
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode))

;; load fzf
;; (use-package fzf
;;   :ensure t
;;   :config
;;   (when (memq window-system '(mac ns))
;;     (setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
;;     (setq exec-path (append exec-path '("/usr/local/bin")))))

;; Load gruvbox-theme
(use-package gruvbox-theme
  :ensure t
  :config
  (load-theme 'gruvbox-dark-medium t))

;; (use-package color-theme-sanityinc-tomorrow
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
        '(defaults pretty-parens evil))
  (add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
  (add-hook 'emacs-lisp-mode-hook #'parinfer-toggle-mode))

;; Set the default font
(set-frame-font "Roboto Mono Light 15")
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
;; Enable line highlight mode
(global-hl-line-mode t)
;; Let window resize pixelwise
(setq frame-resize-pixelwise t)
;; Increase line height, doesn't center horizontally
(setq-default line-spacing 0.3)
;; Don't create name~ files
(setq make-backup-files nil)
;; Don't create #name# files
(setq auto-save-default nil)
;; Prevent emacs adding custom-set-variables to .emacs.el
(setq custom-file (make-temp-file "emacs-custom"))
;; Don't ask to follow symlinks
(setq vc-follow-symlinks t)
;; Make background transparent
(set-frame-parameter (selected-frame) 'alpha '(97 97))
(add-to-list 'default-frame-alist '(alpha 97 97))

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
