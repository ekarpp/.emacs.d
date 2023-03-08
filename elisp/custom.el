;; save buffers on exit. remove lock on machine boot? if unexpected shutdown, desktop remains locked
(desktop-save-mode 1)
(setq desktop-dirname             "~/.emacs.d/desktop/"
      desktop-base-file-name      "emacs.desktop"
      desktop-base-lock-name      "lock"
      desktop-path                desktop-dirname)
;;      desktop-save                nil
      desktop-files-not-to-save   "^$" ;reload tramp paths
      desktop-load-locked-desktop nil)

;;;; some tex stuff
;; to use pdfview with auctex
(setq TeX-view-program-selection '((output-pdf "PDF Tools"))
    TeX-view-program-list '(("PDF Tools" TeX-pdf-tools-sync-view))
    TeX-source-correlate-start-server t) ;; not sure if last line is neccessary

;; to have the buffer refresh after compilation
(add-hook 'TeX-after-compilation-finished-functions
        #'TeX-revert-document-buffer)

;; automatically update file if changed on disk
(global-auto-revert-mode t)

;; highlight matching parentheses
(show-paren-mode 1)

;; ffmpeg style
(c-add-style "ffmpeg"
             '("k&r"
               (c-basic-offset . 4)
               (indent-tabs-mode . nil)
               (show-trailing-whitespace . t)
               (c-offsets-alist
                (statement-cont . (c-lineup-assignments +)))))

;; use spaces instead of tabs
(setq-default indent-tabs-mode nil
              truncate-lines   nil)



(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\/.*\\.js" . rjsx-mode))
;; cuda files in c++ mode
(add-to-list 'auto-mode-alist '("\\.cu\\'" . c++-mode))

;; Delete trailing whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)


(provide 'custom)
