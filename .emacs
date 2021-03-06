
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(org-startup-truncated nil)
 '(package-archives
   (quote
    (("melpa" . "http://melpa.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(package-selected-packages
   (quote
    (elpy feature-mode groovy-mode dashboard ag memory-usage minimap projectile writeroom-mode visual-fill-column darkroom counsel-ebdb magithub magit flymd markdown-mode)))
 '(truncate-lines nil)
 '(word-wrap t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;(add-hook 'after-save-hook 'magit-after-save-refresh-status t)

(ivy-mode 1)
(tool-bar-mode -1)

(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)
(global-set-key (kbd "C-M-h") 'backward-kill-word)

(global-set-key (kbd "C-<tab>") 'bury-buffer)

(global-set-key (kbd "C-x g") 'magit-status)

(setq backup-directory-alist '(("" . "~/.emacs.d/emacs_backup"))
      backup-by-copying t    ; Don't delink hardlinks
      delete-old-versions t  ; Clean up the backups
      version-control t      ; Use version numbers on backups,
      kept-new-versions 50   ; keep some new versions
      kept-old-versions 2)   ; and some old ones, too

(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-items '((projects . 10)
			(recents  . 10)
                        (bookmarks . 10)))

(define-key org-mode-map (kbd "C-R") 'org-tree-to-indirect-buffer)
