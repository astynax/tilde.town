(menu-bar-mode -1)
(setq inhibit-startup-screen t)

(define-key global-map (kbd "M-o") #'other-window)

(setq backup-directory-alist
      (list (cons ".*" (format "%sbackup/" user-emacs-directory))))