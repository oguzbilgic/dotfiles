(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; Load Packages ------------------------------------------------

;; Can't find the binary since the $PATH isn't set correctly in emacs
(use-package lsp-mode
  :ensure t
  :init
  ;; set $path for packages that use bin such as lsp
  (setq exec-path (append exec-path '("/opt/homebrew/bin")))
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook
  (js-mode . lsp)
  ;;if you want which-key integratio
  (lsp-mode . lsp-enable-which-key-integration)
  :commands lsp)

(use-package which-key
  :ensure t
  :init
  (which-key-mode))

(use-package evil
  :ensure t
  :init
  (evil-mode)
  (setq evil-want-C-u-scroll t))

;; Good scroll half page
(defun good-scroll-up-half-screen ()
  (interactive)
  (good-scroll-move (/ (good-scroll--window-usable-height) 2)))

;; Good scroll half page
(defun good-scroll-down-half-screen ()
  (interactive)
  (good-scroll-move (- (/ (good-scroll--window-usable-height) 2))))

(use-package good-scroll
  :after evil
  :config
  (good-scroll-mode 1)
  ;; Overwrite evil's scrool with good-scroll commands
  (evil-define-key nil evil-motion-state-map (kbd "C-d") #'good-scroll-up-half-screen)
  (evil-define-key nil evil-motion-state-map (kbd "C-u") #'good-scroll-down-half-screen)
  (evil-define-key nil evil-motion-state-map (kbd "C-e") #'good-scroll-up)
  (evil-define-key nil evil-motion-state-map (kbd "C-y") #'good-scroll-down)
  (evil-define-key nil evil-motion-state-map (kbd "C-f") #'good-scroll-up-full-screen)
  (evil-define-key nil evil-motion-state-map (kbd "C-b") #'good-scroll-down-full-screen)
  (global-set-key [next] #'good-scroll-up-full-screen)
  (global-set-key [prior] #'good-scroll-down-full-screen))

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
  (set-face-foreground 'git-gutter:deleted "red"))

;; Package has been deprecated by the author
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
  :ensure t)

;; Changes theme based on date and time. i.e. dark/light
(use-package theme-changer
  :ensure t
  :config
  (setq calendar-location-name "Los Angeles, CA")
  (setq calendar-latitude 34.052)
  (setq calendar-longitude -118.243)
  (change-theme 'doom-one-light 'doom-tomorrow-night))

;; General Settings ---------------------------------------------

;; Don's show the welcome page
(setq inhibit-startup-screen t)

;; Don't show message in scratch buffer
(setq initial-scratch-message nil)

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

;; Increase line height, doesn't center horizontally
;; (setq-default line-spacing 0.5)

;; Increase line height while keeping it centered?
(defun set-bigger-spacing ()
  (interactive)
  (setq-local default-text-properties '(line-spacing 0.25 line-height 1.25)))
(add-hook 'text-mode-hook 'set-bigger-spacing)
(add-hook 'prog-mode-hook 'set-bigger-spacing)

;; Make Emacs full screen on startup
(add-hook 'emacs-startup-hook 'toggle-frame-fullscreen)

;; Face Settings ------------------------------------------------

;; Doom One Light
(when (custom-theme-enabled-p 'doom-one-light)
  (set-frame-font "Inconsolata 15")
  (set-face-foreground `window-divider "gray97")
  (set-face-foreground `window-divider-first-pixel "gray97")
  (set-face-foreground `window-divider-last-pixel "gray97")
  (set-face-foreground `line-number "gray80")
  (set-face-attribute `mode-line nil
                      :box `(:line-width 8 :color "#e7e7e7" :style nil))
  (set-face-attribute `mode-line-inactive nil
                      :box `(:line-width 8 :color "#e1e1e1" :style nil)))

;; Doom Tomorrow Night
(when (custom-theme-enabled-p 'doom-tomorrow-night)
  (set-face-attribute `mode-line nil
                      :box `(:line-width 8 :color "#0f1011" :style nil))
  (set-face-attribute `mode-line-inactive nil
                      :box `(:line-width 8 :color "#1d1f21" :style nil)))
