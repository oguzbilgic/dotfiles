(require 'package)
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
  :config
  (setq evil-want-C-u-scroll t)
  :init
  (evil-mode))

(use-package good-scroll
  :ensure t
  :init
  (good-scroll-mode 1))

(use-package find-file-in-project
  :ensure t)

;; (use-package fzf
;;   :ensure t
;;   :config
;;   (when (memq window-system '(mac ns))
;;     (setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
;;     (setq exec-path (append exec-path '("/usr/local/bin")))))

(use-package evil-commentary
  :ensure t
  :init
  (evil-commentary-mode))

(use-package git-gutter
  :ensure t
  :init
  (global-git-gutter-mode 1)
  :config
  ;; these work
  (setq git-gutter:modified-sign "▎")
  (setq git-gutter:added-sign "▎")
  ;; but these don't work
  (set-face-foreground 'git-gutter:modified "orange")
  (set-face-foreground 'git-gutter:added "green")
  (set-face-foreground 'git-gutter:deleted "red")
  )

;; (use-package parinfer
;;   :ensure t
;;   :init
;;   (setq parinfer-extensions
;;         '(defaults pretty-parens evil))
;;   (add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
;;   (add-hook 'emacs-lisp-mode-hook #'parinfer-toggle-mode))

(use-package company
  :ensure t
  :init
  (global-company-mode))

(use-package doom-themes
  :ensure t
  :init
  (load-theme 'doom-tomorrow-night t))

;; General Settings ---------------------------------------------

;; TODO: Set startup directory
;; (setq default-directory "~/")

;; Don't create name~ files
(setq make-backup-files nil)

;; Don't create #name# files
(setq auto-save-default nil)

;; Don't add custom-set-variables to .emacs.el
(setq custom-file (make-temp-file "emacs-custom"))

;; Don't ask if the theme is safe
(setq custom-safe-themes t)

;; Don't ask to follow symlinks
(setq vc-follow-symlinks t)

;; Ido Mode
(ido-mode)
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)

;; JS mode
(setq js-indent-level 2)

;; Visual Settings ----------------------------------------------

;; Set the default font
;; (set-frame-font "JetBrains Mono Light 14")
;; (set-frame-font "JetBrains Mono 13")
(set-frame-font "Inconsolata Light 15")

;; Increase line height, doesn't center horizontally
(setq-default line-spacing 0.5)

;; Let window resize pixelwise
(setq frame-resize-pixelwise t)

;; Don't ring the bell
(setq ring-bell-function 'ignore)

;; Make background transparent
;; (set-frame-parameter (selected-frame) 'alpha '(95 95))
;; (add-to-list 'default-frame-alist '(alpha 95 95))

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

;; Make Emacs full screen on startup
(add-hook 'emacs-startup-hook 'toggle-frame-fullscreen)

;; Face Settings ------------------------------------------------

;; -- Window Divider Mode ---------------------------------------

;; (set-face-foreground `window-divider "gray97")
;; (set-face-foreground `window-divider-first-pixel "gray97")
;; (set-face-foreground `window-divider-last-pixel "gray97")

;; -- Line Number Mode ------------------------------------------

;; (set-face-foreground `line-number "gray80")

;; -- Mode Line -------------------------------------------------

;; Add margin to the Mode Line
;; (set-face-attribute `mode-line nil
;;         :box `(:line-width 8
;;                :color "black"
;;                :style nil))

;; (set-face-attribute `mode-line-inactive nil
;;         :box `(:line-width 4
;;                :color "#9B9C97"
;;                :style nil))
