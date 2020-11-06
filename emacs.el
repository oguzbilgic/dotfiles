(require 'package)
;; (add-to-list 'package-archives '("melpa" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; Load Packages ------------------------------------------------

(use-package which-key
  :ensure t
  :init
  (which-key-mode))

(use-package evil
  :ensure t
  :init
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode))

;; (use-package fzf
;;   :ensure t
;;   :config
;;   (when (memq window-system '(mac ns))
;;     (setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
;;     (setq exec-path (append exec-path '("/usr/local/bin")))))

(use-package evil-commentary
  :ensure t
  :config
  (evil-commentary-mode))

(use-package git-gutter
  :ensure t
  :config
  (global-git-gutter-mode +1)
  (setq git-gutter:modified-sign "▎")
  (setq git-gutter:added-sign "▎")
  (set-face-foreground 'git-gutter:modified "orange")
  (set-face-foreground 'git-gutter:added "green")
  (set-face-foreground 'git-gutter:deleted "red")
  (set-face-background 'git-gutter:modified "orange")
  (set-face-background 'git-gutter:added "green")
  (set-face-background 'git-gutter:deleted "red"))

(use-package parinfer
  :ensure t
  :init
  (setq parinfer-extensions
        '(defaults pretty-parens evil))
  (add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
  (add-hook 'emacs-lisp-mode-hook #'parinfer-toggle-mode))

(use-package company
  :ensure t
  :init
  (global-company-mode))

;; Load themes --------------------------------------------------

;; (use-package sublime-themes
;;   :ensure t)

;; (use-package gruvbox-theme
;;   :ensure t)

;; (use-package color-theme-sanityinc-tomorrow
;;   :ensure t)

;; (use-package spacegray-theme
;;   :ensure t)

;; (use-package modus-operandi-theme
;;   :ensure t)

;; General Settings ---------------------------------------------

;; TODO: Set startup directory
;; (setq default-directory "~/")

;; Don't create name~ files
(setq make-backup-files nil)

;; Don't create #name# files
(setq auto-save-default nil)

;; Prevent emacs adding custom-set-variables to .emacs.el
(setq custom-file (make-temp-file "emacs-custom"))

;; Don't ask to follow symlinks
(setq vc-follow-symlinks t)

;; Ido Mode
(ido-mode)
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)

;; Visual Settings ----------------------------------------------

;; Set theme
(load-theme 'leuven t)

;; Set the default font
(set-frame-font "JetBrains Mono Light 14")
;; (set-frame-font "JetBrains Mono 13")

;; Increase line height, doesn't center horizontally
(setq-default line-spacing 0.5)

;; Let window resize pixelwise
(setq frame-resize-pixelwise t)

;; Flash the mode line instead of bell
(setq ring-bell-function 'ignore)

;; Make background transparent
(set-frame-parameter (selected-frame) 'alpha '(95 95))
(add-to-list 'default-frame-alist '(alpha 95 95))

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

;; Highlight the current line
;; (global-hl-line-mode t)

;; Show line numbers
(global-display-line-numbers-mode)

;; Enable customizable window divider
(window-divider-mode 1)
(setq window-divider-default-right-width 8)

;; Remove macOS title bar
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(setq ns-use-proxy-icon nil)
(setq frame-title-format nil)

;; Increase line height while keeping it centered?
;; (defun set-bigger-spacing ()
;;   (setq-local default-text-properties '(line-spacing 0.25 line-height 1.25)))
;; (add-hook 'text-mode-hook 'set-bigger-spacing)
;; (add-hook 'prog-mode-hook 'set-bigger-spacing)

;; Mode Settings ------------------------------------------------

;; -- Window Divider Mode ---------------------------------------

(set-face-foreground `window-divider "gray97")
(set-face-foreground `window-divider-first-pixel "gray97")
(set-face-foreground `window-divider-last-pixel "gray97")

;; -- Line Number Mode ------------------------------------------

(set-face-foreground `line-number "gray80")

;; -- Mode Line -------------------------------------------------

(set-face-attribute `mode-line nil
        :box `(:line-width 4
               :color "#335EA8"
               :style nil))

(set-face-attribute `mode-line-inactive nil
        :box `(:line-width 4
               :color "#9B9C97"
               :style nil))

;; -- Javascript Mode -------------------------------------------

(setq js-indent-level 2)
