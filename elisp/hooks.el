;; always autofill from company pkg
(add-hook 'after-init-hook 'global-company-mode)

;; 2 spaces in java
(add-hook 'java-mode-hook (lambda ()
                            (setq c-basic-offset 2)))

;; and 4 spaces in c
(add-hook 'c-mode-hook (lambda ()
                         (setq c-basic-offset 4)))

(provide 'hooks)
