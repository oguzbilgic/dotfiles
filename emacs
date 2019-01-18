; Add transparency
(set-frame-parameter (selected-frame) 'alpha '(95 . 95))
(add-to-list 'default-frame-alist '(alpha . (95 . 95)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (wombat)))
 '(display-line-numbers t)
 '(frame-resize-pixelwise t)
 '(fringe-mode 0 nil (fringe))
 '(horizontal-scroll-bar-mode nil)
 '(line-spacing 0.2)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(pixel-scroll-mode t)
 '(ring-bell-function (quote ignore))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 130 :family "Roboto Mono")))))
