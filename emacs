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
;; (use-package
;;   gruvbox-theme
;;   :ensure t)

;; Set the default font
(set-frame-font "Roboto Mono 15")
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
;; Increase line height - not working?
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
